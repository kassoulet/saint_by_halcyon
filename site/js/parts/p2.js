// Part 2 (orders 6-11): orange black-hole tunnel (cylinder->sphere warp morph), 50 dust glows, a morphing 105-vertex star, logo sprite.
import { tickP2 } from './p2_tick.js';
import { spline, lookAt } from '../engine/camera.js';
import { renderTunnel } from '../engine/tunnel.js';
import { texTriExact as texTri } from '../engine/texmap.js';
import { cullObjects, processObject, sortList, clipPoly, meshNormals, flareItems, drawFlare } from '../engine/mesh.js';
const f32 = Math.fround, TICK = 70.086;

export async function loadP2(base = 'assets/p2/') {
  const bin = async n => new Uint8Array(await (await fetch(base + n)).arrayBuffer());
  const f = async n => new Float32Array((await bin(n)).buffer), i = async n => new Int32Array((await bin(n)).buffer);
  return { grid: await f('grid.f32'), keys: await f('keys.f32'), tex: await bin('tex.bin'), shade: await bin('shade.bin'), ease: await i('ease.i32'),
    palA: await bin('palA.bin'), palB: await bin('palB.bin'), overlay: await bin('overlay.bin'), filter: await bin('filter.bin'), sprites: await bin('sprites.bin'),
    sprTbl: await bin('sprite_tbl.bin'), objs: await (await fetch(base + 'objects.json')).json(), flares: await (await fetch(base + 'flares.json')).json() };
}
export class P2 {
  constructor(a) {
    this.a = a;
    const dv = new DataView(a.sprTbl.buffer, a.sprTbl.byteOffset, 512);
    this.spr = { ptr: Array.from({ length: 64 }, (_, i) => dv.getUint32(i * 4, true)), scale: Array.from({ length: 64 }, (_, i) => dv.getFloat32(256 + i * 4, true)), spr: a.sprites, filter: a.filter };
    this.palC0 = Uint8Array.from(a.palA, v => Math.min(63, 63 - v));   // initial fade colour: the negative of the palette
    this.reset();
  }
  reset() {
    this.S = { frame: 0, palC: this.palC0.slice(), v4698: 0, v4694: 0x10, fade: 1023, pulse: 0, pulseStep: f32(0.200393944978714), speed: f32(0.004), t1: 0, t2: 0,
      a7f30: 0, a7f34: f32(0.005), a7f38: 0, a7f3c: f32(0.04), idx1: 0, starOn: 0, flares: 50, blendOn: 0, blendT: 0, blend: 0, warp: 'cylinder', warp2: 'sphere',
      flagA: 0, morph: 0, v46a8: 0, v46ac: 0, rot: 0, dacEdi: 0, dacEbp: 0 };
    this.sp1 = { t: 0, idx: 0, count: 1200 }; this.sp2 = { t: 0, idx: 0, count: 1200 }; this.ticks = 0;
    const O = this.a.objs.objs;
    this.star = { pos: O[0].pos, rad: O[0].rad, scale: 1, rot: [0, 0, 0], verts: O[0].verts.map(v => v.slice()), faces: O[0].faces.map(f => ({ ...f })) };
    this.dust = this.a.flares.map(([x, y, z]) => ({ pos: [x, y, z] }));
  }
  advance(n, orderRow) {
    const S = this.S;
    while (this.ticks < n) {
      const [o, r] = orderRow(this.ticks); tickP2(S, o, r, this.a.ease); this.ticks++;
      this.sp1.t = S.t1; spline(this.a.keys, this.sp1); S.t1 = this.sp1.t; S.idx1 = this.sp1.idx;
      this.sp2.t = S.t2; spline(this.a.keys, this.sp2); S.t2 = this.sp2.t;
    }
  }
  render(out, scrPal, order, row) {
    const S = this.S, a = this.a;
    const ch = spline(a.keys, { ...this.sp1 }), L = lookAt(ch), ch2 = spline(a.keys, { ...this.sp2 }), eye2 = lookAt(ch2).eye;
    const k = { w1: 0, w2: 0, a1: Math.sin(S.a7f30) * 0.333333333, a2: Math.cos(S.a7f38) * 0.0021, s1: Math.sin(S.a7f30) * 0.25, s2: Math.cos(S.a7f38) * 0.01, flagA: S.flagA, stale: 1042.64306640625 };
    out.fill(0);
    renderTunnel(out, a.grid, a.tex, a.shade, { pos: L.eye.map(f32), M: L.M, warp: S.warp, warp2: S.blendOn ? S.warp2 : null, blend: S.blend, k });
    const cam = [L.M[0], L.M[1], L.M[2], 0, L.M[3], L.M[4], L.M[5], 0, L.M[6], L.M[7], L.M[8], 0, L.trans[0], L.trans[1], L.trans[2], 1];
    const K = { near: -0.1, far: -4000, w: 320, h: 200, zoom: ch[9], zoomY: ch[9] * 0.8333333333299999, k150c4: 21000, k150c8: 1e6, textured: true };
    // star: morph between the two stored shapes, rotate, relight
    const st = this.star, A = a.objs.objs[1].verts, B = a.objs.objs[2].verts, w = S.morph, w1 = 1 - w;
    st.verts.forEach((v, i) => { for (let j = 0; j < 3; j++) v[j] = f32(f32(A[i][j] * w) + f32(B[i][j] * w1)); });
    st.rot = [S.rot * 0x205 | 0, S.rot * 0x27b | 0, S.rot * 0x169 | 0]; meshNormals(st);
    // depth range is taken over all three mesh objects (star + its two morph targets), exactly like the original's cull pass
    const O = a.objs.objs, stand = O.map(o => ({ pos: o.pos, rad: o.rad })); cullObjects(stand, cam, K); st.hidden = stand[0].hidden;
    const dust = S.flares ? this.dust : [];
    const list = [];
    if (S.starOn && !st.hidden) processObject(st, cam, L.eye, K, list, eye2);
    if (dust.length) flareItems(dust, cam, K, list, -6);
    for (const it of sortList(list)) {
      if (it.kind === 'flare') { drawFlare(out, it, this.spr, K, -6); continue; }
      const P = [it.a, it.b, it.c].map(v => ({ sx: v.sx, sy: v.sy, iz: v.iz, u: v.u, v: v.v, I: v.I, code: v.code }));
      const q = P.some(v => v.code) ? clipPoly(P) : P;
      for (let i = 1; i + 1 < q.length; i++) texTri(out, a.tex, a.shade, q[0], q[i], q[i + 1]);
    }
    if ((order === 6 && row >= 0x20) || (order === 7 && row <= 0x20)) {                 // "halcyon & jormas" vending-machine sprite, right side
      for (let y = 0; y < 195; y++) for (let x = 0; x < 106; x++) { const p = a.overlay[y * 320 + 214 + x]; if (p) out[0x716 + y * 320 + x] = (p << 2) & 255; }
    }
    for (let i = 0; i < 768; i++) { const Av = a.palA[i], Bv = a.palB[i], C = S.palC[i], x = (((Av - Bv) * S.dacEdi) >> 10) + Bv; scrPal[i] = (((x - C) * S.dacEbp) >> 10) + C; }
  }
}
export { TICK };
