// Part B (orders 26-27): cylinder tunnel, a wire-frame grid cone (anti-aliased lines) and a mesh of "filter" triangles (shards), one glow; fade in/out.
import { tickA } from './pa_tick.js';
import { spline, wrapSpline, lookAt } from '../engine/camera.js';
import { renderTunnel } from '../engine/tunnel.js';
import { cullObjects, processObject, sortList, clipTri, filterTri, flareItems, drawFlare, mul4, objMatrix } from '../engine/mesh.js';
import { nearClipLines, drawLine } from '../engine/lines.js';
const f32 = Math.fround, TICK = 70.086;

export async function loadB(base = 'assets/pb/') {
  const bin = async n => new Uint8Array(await (await fetch(base + n)).arrayBuffer());
  const f = async n => new Float32Array((await bin(n)).buffer), i = async n => new Int32Array((await bin(n)).buffer);
  const meta = await (await fetch(base + 'objects.json')).json();
  return { grid: await f('grid.f32'), keys: await f('keys.f32'), tex: await bin('tex.bin'), shade: await bin('shade.bin'), palA: await bin('palA.bin'), palB: await bin('palB.bin'),
    filter: await bin('filter.bin'), sprites: await bin('sprites.bin'), sprTbl: await bin('sprite_tbl.bin'), meta,
    lv: await f('obj0_v.f32'), ll: await i('obj0_l.i32'), mv: await f('obj1_v.f32'), mfi: await i('obj1_fi.i32'), mfn: await f('obj1_fn.f32') };
}
const triple = (a, n) => Array.from({ length: n }, (_, i) => [a[i * 3], a[i * 3 + 1], a[i * 3 + 2]]);
export class PB {
  constructor(a) {
    this.a = a; const [o0, o1] = a.meta.objs;
    const dv = new DataView(a.sprTbl.buffer, a.sprTbl.byteOffset, 512);
    this.spr = { ptr: Array.from({ length: 64 }, (_, i) => dv.getUint32(i * 4, true)), scale: Array.from({ length: 64 }, (_, i) => dv.getFloat32(256 + i * 4, true)), spr: a.sprites, filter: a.filter };
    this.wire = { pos: o0.pos, rad: o0.rad, scale: o0.scale, rot: o0.rot, verts: triple(a.lv, o0.nv), lines: Array.from({ length: o0.nf }, (_, i) => [a.ll[i * 2], a.ll[i * 2 + 1]]) };
    this.mesh = { pos: o1.pos, rad: o1.rad, scale: o1.scale, rot: o1.rot, verts: triple(a.mv, o1.nv), faces: Array.from({ length: o1.nf }, (_, i) => ({ v: [a.mfi[i * 4], a.mfi[i * 4 + 1], a.mfi[i * 4 + 2]], n: [a.mfn[i * 4], a.mfn[i * 4 + 1], a.mfn[i * 4 + 2], a.mfn[i * 4 + 3]] })) };
    this.flares = a.meta.flares.map(fl => ({ pos: fl.pos })); this.fsize = a.meta.flares[0]?.size ?? -7;
    this.reset();
  }
  reset() {
    this.S = { frame: 0, v4694: 0, v4698: 0, pulse: 0, pulseStep: f32(0.200393944978714), speed: f32(0.0134), t1: 0, t2: 0, dacEdi: 0, dacEbp: 0 };
    this.sp1 = { t: 0, idx: 0x78, count: 640 }; this.sp2 = { t: 0, idx: 0xa0, count: 640 }; this.ticks = 0;
  }
  advance(n, orderRow) {
    const S = this.S;
    while (this.ticks < n) { const [o, r] = orderRow(this.ticks); tickA(S, o, r, 0x1b); this.ticks++;
      this.sp1.t = S.t1; wrapSpline(this.sp1); S.t1 = this.sp1.t; this.sp2.t = S.t2; wrapSpline(this.sp2); S.t2 = this.sp2.t; }
  }
  render(out, scrPal) {
    const S = this.S, a = this.a;
    const ch = spline(a.keys, { ...this.sp1 }), L = lookAt(ch);
    out.fill(0);
    renderTunnel(out, a.grid, a.tex, a.shade, { pos: L.eye.map(f32), M: L.M, warp: 'cylinder', warp2: null, blend: 0, k: { a1: 0, a2: 0, flagA: 0, w1: 0, w2: 0 } });
    const cam = [L.M[0], L.M[1], L.M[2], 0, L.M[3], L.M[4], L.M[5], 0, L.M[6], L.M[7], L.M[8], 0, L.trans[0], L.trans[1], L.trans[2], 1];
    const K = { near: -0.1, far: -4000, w: 320, h: 200, zoom: ch[9], zoomY: ch[9] * 0.8333333333299999, k150c4: 21000, k150c8: 1e6, nearClip: true };
    cullObjects([this.wire, this.mesh], cam, K);
    const list = [];
    if (!this.wire.hidden) this.wireItems(this.wire, cam, K, list);
    if (!this.mesh.hidden) processObject(this.mesh, cam, L.eye, K, list);
    flareItems(this.flares, cam, K, list, this.fsize);
    for (const it of sortList(list)) {
      if (it.kind === 'flare') drawFlare(out, it, this.spr, K, this.fsize);
      else if (it.kind === 'line') drawLine(out, a.filter, [it.a.sx, it.a.sy], [it.b.sx, it.b.sy]);
      else {
        const { a: A, b: B, c: C, f } = it, lvl = Math.min(255, Math.max(0, (Math.trunc(f.lvl + A.z * 0.1) << 2) + 0x80));   // this part adds a +0x80 base level
        if (!(A.code | B.code | C.code)) filterTri(out, a.filter, A, B, C, lvl);
        else { const P = clipTri(A, B, C); for (let i = 1; i + 1 < P.length; i++) filterTri(out, a.filter, P[0], P[i], P[i + 1], lvl); }
      }
    }
    for (let i = 0; i < 768; i++) { const Av = a.palA[i], Bv = a.palB[i], x = (((Av - Bv) * S.dacEdi) >> 10) + Bv; scrPal[i] = ((x * S.dacEbp) >> 10); }
  }
  wireItems(o, cam, K, list) {
    const Mo = objMatrix(o.rot[0] / 65536, o.rot[1] / 65536, o.rot[2] / 65536, o.scale, o.pos), Mv = mul4(Mo, cam);
    const V = o.verts.map(m => { const x = f32(m[0] * Mv[0] + m[1] * Mv[4] + m[2] * Mv[8] + Mv[12]), y = f32(m[0] * Mv[1] + m[1] * Mv[5] + m[2] * Mv[9] + Mv[13]), z = f32(m[0] * Mv[2] + m[1] * Mv[6] + m[2] * Mv[10] + Mv[14]);
      const v = { x, y, z, need: f32(K.near - z) < 0 ? 1 : 0, sx: 0, sy: 0, iz: 0, code: 0 };
      if (!v.need) { const iz = f32(1 / z); v.sy = f32(f32(f32(y * K.zoomY) * iz) + 100); v.sx = f32(f32(f32(x * K.zoom) * iz) + 160); v.iz = iz;
        v.code = (v.sy < 0 ? 8 : 0) | (f32(200 - v.sy) < 0 ? 4 : 0) | (v.sx < 0 ? 2 : 0) | (f32(320 - v.sx) < 0 ? 1 : 0); }
      return v; });
    for (const [a, b] of nearClipLines(V, o.lines, K)) {
      if (a.code & b.code) continue;
      if (f32(K.far - a.z) >= 0 && f32(K.far - b.z) >= 0) continue;
      list.push({ key: (0xffff - Math.round(-(f32(f32(f32(a.z - K.zmax) * K.zscale) + f32(f32(b.z - K.zmax) * K.zscale)) * 1.5))) & 0xffff, kind: 'line', a, b });
    }
  }
}
export { TICK };
