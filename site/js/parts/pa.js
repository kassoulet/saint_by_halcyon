// Part A (orders 22-25): a textured, Gouraud-lit landscape mesh (203 vertices / 353 triangles) flown over by a spline camera, one glow, fade in/out.
import { tickA } from './pa_tick.js';
import { spline, wrapSpline, lookAt } from '../engine/camera.js';
import { cullObjects, processObject, sortList, clipPoly, meshNormals, flareItems, drawFlare, filterTri } from '../engine/mesh.js';
import { texTriExact } from '../engine/texmap.js';
const f32 = Math.fround, TICK = 70.086;

export async function loadA(base = 'assets/pa/') {
  const bin = async n => new Uint8Array(await (await fetch(base + n)).arrayBuffer());
  return { keys: new Float32Array((await bin('keys.f32')).buffer), tex: await bin('tex.bin'), shade: await bin('shade.bin'), palA: await bin('palA.bin'), palB: await bin('palB.bin'),
    filter: await bin('filter.bin'), sprites: await bin('sprites.bin'), sprTbl: await bin('sprite_tbl.bin'), obj: await (await fetch(base + 'objects.json')).json() };
}
export class PA {
  constructor(a) {
    this.a = a; const o = a.obj;
    const dv = new DataView(a.sprTbl.buffer, a.sprTbl.byteOffset, 512);
    this.spr = { ptr: Array.from({ length: 64 }, (_, i) => dv.getUint32(i * 4, true)), scale: Array.from({ length: 64 }, (_, i) => dv.getFloat32(256 + i * 4, true)), spr: a.sprites, filter: a.filter };
    this.mesh = { pos: o.pos, rad: o.rad, scale: o.scale, rot: o.rot, verts: o.verts.map(v => v.slice(0, 5)), vnorm: o.verts.map(v => v.slice(5, 8)), faces: o.faces.map(f => ({ ...f })) };
    this.flares = o.flares.map(fl => ({ pos: fl.pos })); this.fsize = o.flares[0]?.size ?? -7;
    this.reset();
  }
  reset() {
    this.S = { frame: 0, v4694: 0, v4698: 0, pulse: 0, pulseStep: f32(0.200393944978714), speed: f32(0.0173), t1: 0, t2: 0, dacEdi: 0, dacEbp: 0 };
    this.sp1 = { t: 0, idx: 0, count: 680 }; this.sp2 = { t: 0, idx: 0, count: 680 }; this.ticks = 0;
  }
  advance(n, orderRow) {
    const S = this.S;
    while (this.ticks < n) { const [o, r] = orderRow(this.ticks); tickA(S, o, r); this.ticks++;
      this.sp1.t = S.t1; wrapSpline(this.sp1); S.t1 = this.sp1.t; this.sp2.t = S.t2; wrapSpline(this.sp2); S.t2 = this.sp2.t; }
  }
  render(out, scrPal) {
    const S = this.S, a = this.a;
    const ch = spline(a.keys, { ...this.sp1 }), L = lookAt(ch), eye2 = lookAt(spline(a.keys, { ...this.sp2 })).eye;
    out.fill(0);
    const cam = [L.M[0], L.M[1], L.M[2], 0, L.M[3], L.M[4], L.M[5], 0, L.M[6], L.M[7], L.M[8], 0, L.trans[0], L.trans[1], L.trans[2], 1];
    const K = { near: -0.1, far: -4000, w: 320, h: 200, zoom: ch[9], zoomY: ch[9] * 0.8333333333299999, k150c4: 21000, k150c8: 1e6, textured: true, nearClip: true, lightK: 192 };
    const m = this.mesh; cullObjects([m], cam, K);
    const list = []; if (!m.hidden) processObject(m, cam, L.eye, K, list, eye2);
    flareItems(this.flares, cam, K, list, this.fsize);
    for (const it of sortList(list)) {
      if (it.kind === 'flare') { drawFlare(out, it, this.spr, K, this.fsize); continue; }
      const P = [it.a, it.b, it.c].map(v => ({ sx: v.sx, sy: v.sy, iz: v.iz, u: v.u, v: v.v, I: v.I, code: v.code }));
      const dark = P[0].I + P[1].I + P[2].I === 0;                 // fully unlit face: flat black fill instead of texturing
      const q = P.some(v => v.code) ? clipPoly(P) : P;
      for (let i = 1; i + 1 < q.length; i++) { if (dark) filterTri(out, null, q[0], q[i], q[i + 1], 0); else texTriExact(out, a.tex, a.shade, q[0], q[i], q[i + 1]); }
    }
    for (let i = 0; i < 768; i++) { const Av = a.palA[i], Bv = a.palB[i], x = (((Av - Bv) * S.dacEdi) >> 10) + Bv; scrPal[i] = ((x * S.dacEbp) >> 10); }   // C = black
  }
}
export { TICK };
