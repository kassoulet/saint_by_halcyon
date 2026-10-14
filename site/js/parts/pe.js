// Part E (orders 28-34): a textured sphere that is squashed by the walls of an invisible 200-unit box (it rotates cumulatively and is
// clamped every frame), a wire-frame grid cage, one glow and the bull sprite overlaid on the top-left corner.
import { spline, wrapSpline, lookAt } from '../engine/camera.js';
import { texTriExact as texTri } from '../engine/texmap.js';
import { cullObjects, processObject, sortList, clipPoly, meshNormals, flareItems, drawFlare, objMatrix, rint } from '../engine/mesh.js';
import { drawLine } from '../engine/lines.js';
import { PB } from './pb.js';
const f32 = Math.fround, TICK = 70.086, LIM = 100;

export async function loadE(base = 'assets/pe/') {
  const bin = async n => new Uint8Array(await (await fetch(base + n)).arrayBuffer());
  const f = async n => new Float32Array((await bin(n)).buffer), i = async n => new Int32Array((await bin(n)).buffer);
  const meta = await (await fetch(base + 'objects.json')).json();
  return { meta, keys: await f('keys.f32'), ease: await i('ease.i32'), tex: await bin('tex.bin'), shade: await bin('shade.bin'), filter: await bin('filter.bin'), sprites: await bin('sprites.bin'),
    sprTbl: await bin('sprite_tbl.bin'), palA: await bin('palA.bin'), palB: await bin('palB.bin'), palC: await bin('palC.bin'), bull: await bin('bull.bin'),
    mv: await f('obj0_v.f32'), muv: await f('obj0_uv.f32'), mfi: await i('obj0_fi.i32'), lv: await f('obj1_v.f32'), ll: await i('obj1_l.i32') };
}
const triple = (a, n) => Array.from({ length: n }, (_, i) => [a[i * 3], a[i * 3 + 1], a[i * 3 + 2]]);
export class PE {
  constructor(a) {
    this.a = a; const [o0, o1] = a.meta.objs;
    const dv = new DataView(a.sprTbl.buffer, a.sprTbl.byteOffset, 512);
    this.spr = { ptr: Array.from({ length: 64 }, (_, i) => dv.getUint32(i * 4, true)), scale: Array.from({ length: 64 }, (_, i) => dv.getFloat32(256 + i * 4, true)), spr: a.sprites, filter: a.filter };
    this.o0 = o0;
    this.cage = { pos: o1.pos, rad: o1.rad, scale: o1.scale, rot: o1.rot, verts: triple(a.lv, o1.nv), lines: Array.from({ length: o1.nf }, (_, i) => [a.ll[i * 2], a.ll[i * 2 + 1]]) };
    this.flares = a.meta.flares.map(fl => ({ pos: fl.pos })); this.fsize = a.meta.flares[0]?.size ?? -7;
    this.reset();
  }
  reset() {
    const a = this.a, o = this.o0;
    this.mesh = { pos: [0, 0, 0], rad: o.rad, scale: o.scale, rot: [0, 0, 0],
      verts: Array.from({ length: o.nv }, (_, i) => [a.mv[i * 3], a.mv[i * 3 + 1], a.mv[i * 3 + 2], a.muv[i * 2], a.muv[i * 2 + 1]]),
      faces: Array.from({ length: o.nf }, (_, i) => ({ v: [a.mfi[i * 4], a.mfi[i * 4 + 1], a.mfi[i * 4 + 2]], n: [0, 0, 0, 0], idx: i })) };
    // state as found 4 ticks after the loop starts (snapshot at the first order of the part)
    this.S = { v46a8: 4948220, v46ac: 6160000, amp: 0, ampStep: f32(0.0556), v4694: 1023, v4698: 21, speed: f32(0.0086), dacEdi: 0, dacEbp: 1023,
      rot: [3008, 1740, 4544], lastRot: [0, 0, 0], pos: [0, 0, 0] };
    this.sp1 = { t: f32(0.0344), idx: 0, count: 1120 }; this.sp2 = { t: f32(0.0344), idx: 0, count: 1120 };
    this.ticks = 0;
  }
  // one retrace tick (ISR 0x45a10) followed by one pass of the main loop's state update (position + cumulative rotation/clamp of the sphere)
  step(order, row) {
    const S = this.S, a = this.a;
    S.rot = [S.rot[0] + 0x2f0, S.rot[1] + 0x1b3, S.rot[2] + 0x470];
    this.isr(order, row);
    this.frame(order >= 0x1f);
  }
  isr(order, row) {
    const S = this.S;
    S.dacEdi = a_ease(this.a, S.v4698); S.dacEbp = S.v4694;
    if (order >= 0x22 && row >= 0x20) { S.v4694 -= 10; if (S.v4694 <= 0) S.v4694 = 0; }
    S.v4698 = (rint(Math.sin(Math.sin(S.v46ac / 65536 * 3) * Math.cos(S.v46a8 / 65536 * 3)) * 0x46) + 0x40) & 0x7f;
    const s = ((1023 - S.dacEbp) * S.speed) / 300 + S.speed;
    this.sp1.t += s; this.sp2.t += s;
    if (order >= 0x1f) { S.amp = f32(S.amp + S.ampStep); S.v46a8 += 0xad1; S.v46ac += 0x5f2; }
  }
  frame(meshOn) {   // the sphere is flagged invisible (obj+4 = 0x10000) until the ISR clears it at order 0x1f; its rotation counters keep running meanwhile
    const S = this.S, m = this.mesh;
    const A = S.v46a8 / 65536, B = S.v46ac / 65536;
    S.pos = [f32(Math.sin(Math.sin(A) * Math.cos(B)) * S.amp), f32(Math.sin(B) * S.amp), f32(Math.sin(Math.cos(A)) * S.amp)];
    wrapSpline(this.sp1); wrapSpline(this.sp2);
    S.meshOn = meshOn; if (!meshOn) return;
    m.pos = S.pos.slice(); m.rot = S.rot; S.lastRot = S.rot; S.rot = [0, 0, 0];
    const Mo = objMatrix(m.rot[0] / 65536, m.rot[1] / 65536, m.rot[2] / 65536, m.scale, m.pos);     // 0x14b00: rotate every vertex, clamp to the box
    for (const v of m.verts) {
      const x = v[0], y = v[1], z = v[2];
      for (let j = 0; j < 3; j++) {
        const r = x * Mo[j] + y * Mo[4 + j] + z * Mo[8 + j], hi = LIM - m.pos[j], lo = -LIM - m.pos[j];
        v[j] = f32(r > hi ? hi : r <= lo ? lo : r);
      }
    }
  }
  advance(n, orderRow) {
    while (this.ticks < n) { const [o, r] = orderRow(this.ticks); this.step(o, r); this.ticks++; }
  }
  render(out, scrPal, order, row) {
    const S = this.S, a = this.a, m = this.mesh;
    const ch = spline(a.keys, { ...this.sp1 }), L = lookAt(ch), eye2 = lookAt(spline(a.keys, { ...this.sp2 })).eye;
    out.fill(0);
    const cam = [L.M[0], L.M[1], L.M[2], 0, L.M[3], L.M[4], L.M[5], 0, L.M[6], L.M[7], L.M[8], 0, L.trans[0], L.trans[1], L.trans[2], 1];
    const K = { near: -0.1, far: -4000, w: 320, h: 200, zoom: ch[9], zoomY: ch[9] * 0.8333333333299999, k150c4: 21000, k150c8: 1e6, textured: true, nearClip: true };
    const o = { ...m, rot: S.lastRot }; if (S.meshOn) meshNormals(o);
    const stand = S.meshOn ? [o, this.cage] : [this.cage]; cullObjects(stand, cam, K);
    const list = [];
    if (S.meshOn && !o.hidden) processObject(o, cam, L.eye, K, list, eye2);
    if (!this.cage.hidden) { const n = list.length; PB.prototype.wireItems.call(null, this.cage, cam, K, list); for (let i = n; i < list.length; i++) list[i].key = 0; }   // [0x17024] = 0: line keys are masked to 0, lines keep their index order
    flareItems(this.flares, cam, K, list, -6);                 // 0x465c is computed from the size field of the *next* record (-6), the sprite radius from its own (-7)
    for (const it of sortList(list)) {
      if (it.kind === 'flare') drawFlare(out, it, this.spr, K, this.fsize);
      else if (it.kind === 'line') drawLine(out, a.filter, [it.a.sx, it.a.sy], [it.b.sx, it.b.sy]);
      else {
        const P = [it.a, it.b, it.c].map(v => ({ sx: v.sx, sy: v.sy, iz: v.iz, u: v.u, v: v.v, I: v.I, code: v.code }));
        const q = P.some(v => v.code) ? clipPoly(P) : P;
        for (let i = 1; i + 1 < q.length; i++) texTri(out, a.tex, a.shade, q[0], q[i], q[i + 1]);
      }
    }
    const off = (order >= 0x1f && (row & 3) >= 2) ? 0x94 : 0;                    // bull sprite, 118x200 strip of a 320-wide picture, drawn at the top-left
    for (let y = 0; y < 200; y++) for (let x = 0; x < 0x76; x++) { const p = a.bull[y * 320 + off + x]; if (p) out[y * 320 + x] = (p << 2) & 255; }
    for (let i = 0; i < 768; i++) { const Av = a.palA[i], Bv = a.palB[i], C = a.palC[i], x = (((Av - Bv) * S.dacEdi) >> 10) + Bv; scrPal[i] = (((x - C) * S.dacEbp) >> 10) + C; }
  }
}
const a_ease = (a, i) => a.ease[i];
export { TICK };
