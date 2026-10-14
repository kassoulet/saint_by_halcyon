// Part F (orders 35-38): flight through a textured cave lit by a rotating glowing star at its centre; a 1-bit animated overlay appears at the end.
import { spline, wrapSpline, lookAt } from '../engine/camera.js';
import { texTriExact as texTri } from '../engine/texmap.js';
import { cullObjects, processObject, sortList, clipTri, clipPoly, filterTri, flareItems, drawFlare, rint } from '../engine/mesh.js';
const f32 = Math.fround, TICK = 70.086;

export async function loadF(base = 'assets/pf/') {
  const bin = async n => new Uint8Array(await (await fetch(base + n)).arrayBuffer());
  const f = async n => new Float32Array((await bin(n)).buffer), i = async n => new Int32Array((await bin(n)).buffer);
  const a = { meta: await (await fetch(base + 'objects.json')).json(), keys: await f('keys.f32'), ease: await i('ease.i32'), tex: await bin('tex.bin'), shade: await bin('shade.bin'), filter: await bin('filter.bin'),
    sprites: await bin('sprites.bin'), sprTbl: await bin('sprite_tbl.bin'), palA: await bin('palA.bin'), palB: await bin('palB.bin'), palC: await bin('palC.bin'), overlay: await bin('overlay.bin'), o: [] };
  for (let k = 0; k < a.meta.objs.length; k++) a.o.push({ v: await f(`obj${k}_v.f32`), uv: await f(`obj${k}_uv.f32`), vn: await f(`obj${k}_vn.f32`), fi: await i(`obj${k}_fi.i32`), fn: await f(`obj${k}_fn.f32`) });
  return a;
}
export class PF {
  constructor(a) {
    this.a = a;
    const dv = new DataView(a.sprTbl.buffer, a.sprTbl.byteOffset, 512);
    this.spr = { ptr: Array.from({ length: 64 }, (_, i) => dv.getUint32(i * 4, true)), scale: Array.from({ length: 64 }, (_, i) => dv.getFloat32(256 + i * 4, true)), spr: a.sprites, filter: a.filter };
    this.objs = a.meta.objs.map((m, k) => { const d = a.o[k], n = m.nv;
      return { pos: m.pos, rad: m.rad, scale: m.scale, rot: m.rot.slice(), textured: m.hdr[1] === '0x1fefc',
        verts: Array.from({ length: n }, (_, i) => [d.v[i * 3], d.v[i * 3 + 1], d.v[i * 3 + 2], d.uv[i * 2], d.uv[i * 2 + 1]]), vnorm: Array.from({ length: n }, (_, i) => [d.vn[i * 3], d.vn[i * 3 + 1], d.vn[i * 3 + 2]]),
        faces: Array.from({ length: m.nf }, (_, i) => ({ v: [d.fi[i * 4], d.fi[i * 4 + 1], d.fi[i * 4 + 2]], n: [d.fn[i * 4], d.fn[i * 4 + 1], d.fn[i * 4 + 2], d.fn[i * 4 + 3]], idx: i })) }; });
    this.flares = a.meta.flares.map(fl => ({ pos: fl.pos })); this.fsize = a.meta.flares[0].size;
    this.reset();
  }
  reset() {   // state of the first tick of the part, reconstructed from the order-36 snapshot (tools/patch_f_start.py)
    this.S = { v46a8: 10671328, v46ac: 9295664, v4694: 0, v4698: 0, speed: f32(0.0094), dacEdi: 0, dacEbp: 0, rot1: [0, 0, 0], aspect: 0.8333333333333333, on: 0, cnt: 0, frame: 0 };
    this.S.v4698 = (rint(Math.sin(Math.sin((this.S.v46ac + 369) / 65536 * 3) * Math.cos((this.S.v46a8 - 0xd6) / 65536 * 3)) * 0x46) + 0x40) & 0x7f;
    this.sp1 = { t: 0, idx: 840, count: 1760 }; this.sp2 = { t: 0, idx: 880, count: 1760 }; this.ticks = 0;
  }
  step(order, row) {
    const S = this.S;
    S.dacEdi = this.a.ease[S.v4698]; S.dacEbp = S.v4694;                                   // ISR 0x49080
    if (order < 0x27 && (order < 0x26 || (row & 0x3f) < 0x10)) S.v4698 = (rint(Math.sin(Math.sin(S.v46ac / 65536 * 3) * Math.cos(S.v46a8 / 65536 * 3)) * 0x46) + 0x40) & 0x7f;
    S.v4694 = Math.min(0x3ff, S.v4694 + 4);
    this.sp1.t += S.speed; this.sp2.t += S.speed;
    S.v46a8 += 0xd6; S.v46ac -= 0x171;
    S.rot1 = [S.rot1[0] + 0x3b8, S.rot1[1] + 0x1b3, S.rot1[2] + 0x72c];
    if (this.sp1.idx >= 0x5f0) S.on = 1;
    if (S.on && ++S.cnt >= 0xe) { S.cnt = 0; if (++S.frame >= 0x16) { S.frame = 0x15; S.cnt = -100; } }
    if (order < 0x26) {                                                                      // main loop: pulsing aspect ratio
      const x = Math.cos(S.v46a8 / 65536) * Math.sin(S.v46ac / 65536), x2 = x * x, x4 = x2 * x2, x8 = x4 * x4;
      S.aspect = -Math.abs(x8 * x8) * 50 + 0.8333333333333333;
    }
    wrapSpline(this.sp1); wrapSpline(this.sp2);
  }
  advance(n, orderRow) { while (this.ticks < n) { const [o, r] = orderRow(this.ticks); this.step(o, r); this.ticks++; } }
  render(out, scrPal) {
    const S = this.S, a = this.a, o0 = this.objs[0], o1 = this.objs[1];
    const ch = spline(a.keys, { ...this.sp1 }), L = lookAt(ch);
    out.fill(0);
    const cam = [L.M[0], L.M[1], L.M[2], 0, L.M[3], L.M[4], L.M[5], 0, L.M[6], L.M[7], L.M[8], 0, L.trans[0], L.trans[1], L.trans[2], 1];
    const K = { near: -0.1, far: -4000, w: 320, h: 200, zoom: ch[9], zoomY: ch[9] * S.aspect, k150c4: 21000, k150c8: 1e6, nearClip: true, lightK: 10 };
    o1.rot = S.rot1;
    cullObjects([o0, o1], cam, K);
    const list = [], zero = [0, 0, 0];
    for (const o of [o0, o1]) if (!o.hidden) { const n = list.length; processObject(o, cam, L.eye, { ...K, textured: o.textured }, list, zero); for (let i = n; i < list.length; i++) list[i].tex = o.textured; }
    flareItems(this.flares, cam, K, list, this.fsize);
    for (const it of sortList(list)) {
      if (it.kind === 'flare') drawFlare(out, it, this.spr, K, this.fsize);
      else if (it.tex && f32(f32(it.a.I + it.b.I) + it.c.I) === 0) {                         // handler 0x48d9c: a face whose three vertices are unlit is filled flat with colour 0
        const { a: A, b: B, c: C } = it;
        if (!(A.code | B.code | C.code)) filterTri(out, null, A, B, C, 0);
        else { const P = clipTri(A, B, C); for (let i = 1; i + 1 < P.length; i++) filterTri(out, null, P[0], P[i], P[i + 1], 0); }
      } else if (it.tex) {
        const P = [it.a, it.b, it.c].map(v => ({ sx: v.sx, sy: v.sy, iz: v.iz, u: v.u, v: v.v, I: v.I, code: v.code }));
        const q = P.some(v => v.code) ? clipPoly(P) : P;
        for (let i = 1; i + 1 < q.length; i++) texTri(out, a.tex, a.shade, q[0], q[i], q[i + 1]);
      } else {
        const { a: A, b: B, c: C, f } = it, v = Math.trunc(f.lvl + A.z * 0.1), lvl = Math.min(255, Math.max(0, ((v >>> 1) << 2)));
        if (!(A.code | B.code | C.code)) filterTri(out, a.filter, A, B, C, lvl);
        else { const P = clipTri(A, B, C); for (let i = 1; i + 1 < P.length; i++) filterTri(out, a.filter, P[0], P[i], P[i + 1], lvl); }
      }
    }
    if (S.on) {                                                                              // 216x158 one-bit animation frame (LSB first), colour index 1
      let s = S.frame * 0x10aa, d = 0x34ee;
      for (let y = 0; y < 0x9e; y++, d += 0x68) for (let x = 0; x < 27; x++) { let b = a.overlay[s++]; for (let k = 0; k < 8; k++, d++, b >>= 1) if (b & 1) out[d] = 1; }
    }
    for (let i = 0; i < 768; i++) { const Av = a.palA[i], Bv = a.palB[i], C = a.palC[i], x = (((Av - Bv) * S.dacEdi) >> 10) + Bv; scrPal[i] = (((x - C) * S.dacEbp) >> 10) + C; }
  }
}
export { TICK };
