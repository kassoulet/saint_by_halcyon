// Part 3 (orders 12-21): space scene. Sphere-warp background, flat-shaded girder mesh, anti-aliased wire tubes, 50 dust glows on spline paths, overlay sprites.
import { tickP3 } from './p3_tick.js';
import { spline, wrapSpline, lookAt } from '../engine/camera.js';
import { renderTunnel } from '../engine/tunnel.js';
import { cullObjects, processObject, sortList, clipTri, filterTri, flareItems, drawFlare, mul4, objMatrix } from '../engine/mesh.js';
import { nearClipLines, drawLine } from '../engine/lines.js';
const f32 = Math.fround, TICK = 70.086;

export async function loadP3(base = 'assets/p3/') {
  const bin = async n => new Uint8Array(await (await fetch(base + n)).arrayBuffer());
  const f = async n => new Float32Array((await bin(n)).buffer), i = async n => new Int32Array((await bin(n)).buffer), j = async n => (await fetch(base + n)).json();
  const a = { grid: await f('grid.f32'), keysA: await f('keysA.f32'), keysB: await f('keysB.f32'), keysF: await f('keysF.f32'), tex: await bin('tex.bin'), shade: await bin('shade.bin'),
    ease: await i('ease.i32'), palA: await bin('palA.bin'), palB: await bin('palB.bin'), overlay: await bin('overlay.bin'), filter: await bin('filter.bin'), sprites: await bin('sprites.bin'),
    sprTbl: await bin('sprite_tbl.bin'), meta: await j('objects.json'), consts: await j('consts.json') };
  a.m0v = await f('obj0_v.f32'); a.m0fi = await i('obj0_fi.i32'); a.m0fn = await f('obj0_fn.f32');
  a.lines = []; for (const k of [1, 2, 3]) a.lines.push({ v: await f(`obj${k}_v.f32`), l: await i(`obj${k}_l.i32`) });
  return a;
}
const rol = (v, n) => ((v << n) | (v >>> (32 - n))) >>> 0, ror = (v, n) => ((v >>> n) | (v << (32 - n))) >>> 0;
function flarePaths() {                       // same LCG as the part-2 init: per dust glow a rate and a start key
  let a = 0x9128745, b = 0x23894175, c = 0x1838415; const out = [];
  for (let k = 0; k < 50; k++) { a = rol((a + 0x40903484) >>> 0, 5); b = rol((b + 0x2935081) >>> 0, 7); c = ror((c + 0x9234785) >>> 0, 4); out.push({ t: 0, rate: ((a & 0x1f) - 16) / 100, idx: (a & 0xff) * 0x28, count: 15000 }); }
  return out;
}
export class P3 {
  constructor(a) {
    this.a = a; const c = a.consts;
    this.script = c.script;
    const dv = new DataView(a.sprTbl.buffer, a.sprTbl.byteOffset, 512);
    this.spr = { ptr: Array.from({ length: 64 }, (_, i) => dv.getUint32(i * 4, true)), scale: Array.from({ length: 64 }, (_, i) => dv.getFloat32(256 + i * 4, true)), spr: a.sprites, filter: a.filter };
    const m = a.meta[0], nv = m.nv, nf = m.nf;
    this.mesh = { pos: m.pos, rad: m.rad, scale: m.scale, rot: m.rot, verts: Array.from({ length: nv }, (_, i) => [a.m0v[i * 3], a.m0v[i * 3 + 1], a.m0v[i * 3 + 2]]),
      faces: Array.from({ length: nf }, (_, i) => ({ idx: i, v: [a.m0fi[i * 4], a.m0fi[i * 4 + 1], a.m0fi[i * 4 + 2]], n: [a.m0fn[i * 4], a.m0fn[i * 4 + 1], a.m0fn[i * 4 + 2], a.m0fn[i * 4 + 3]] })) };
    this.wires = a.lines.map((L, k) => { const o = a.meta[k + 1]; return { pos: o.pos, rad: o.rad, scale: o.scale, rot: o.rot, verts: Array.from({ length: L.v.length / 3 }, (_, i) => [L.v[i * 3], L.v[i * 3 + 1], L.v[i * 3 + 2]]), lines: Array.from({ length: L.l.length / 2 }, (_, i) => [L.l[i * 2], L.l[i * 2 + 1]]) }; });
    this.reset();
  }
  reset() {
    const k = this.a.consts.k;
    this.S = { frame: 0, palC: new Uint8Array(768), f3272c: 0x3ff, v4694: 0x10, v4698: 0, pulse: 0, pulseStep: f32(k.pulseStep), speedA: f32(0.0952), speedB: f32(0.0059),
      A: { t: 0, idx: 0, count: 15000 }, A2: { t: 0, idx: 0x28, count: 15000 }, B: { t: 0, idx: 0, count: 1920 }, a7f30: 0, a7f34: f32(k.a7f34), a7f38: 0, a7f3c: f32(k.a7f3c),
      blendOn: 0, blendT: 0, blend: 0, blendRate: f32(k.blendRate), warp: 'sphere', warp2: 'sphere', ptr: 0, sel: 0, dacEdi: 0, dacEbp: 0 };
    this.flp = flarePaths(); this.S.flp = this.flp; this.ticks = 0;
  }
  advance(n, orderRow) {
    const S = this.S;
    while (this.ticks < n) {
      const [o, r] = orderRow(this.ticks); tickP3(S, o, r, this.a.ease, this.script); this.ticks++;
      for (const fp of this.flp) wrapSpline(fp);
    }
  }
  render(out, scrPal, order, row) {
    const S = this.S, a = this.a, keys = S.sel ? a.keysB : a.keysA, sp = S.sel ? S.B : S.A;
    const ch = spline(keys, { ...sp }), L = lookAt(ch);
    const k = { w1: 0, w2: 0, a1: 0, a2: 0, s1: 0, s2: 0, flagA: 0, stale: 0 };
    out.fill(0);
    renderTunnel(out, a.grid, a.tex, a.shade, { pos: L.eye.map(f32), M: L.M, warp: S.warp, warp2: S.blendOn ? S.warp2 : null, blend: S.blend, k });
    const cam = [L.M[0], L.M[1], L.M[2], 0, L.M[3], L.M[4], L.M[5], 0, L.M[6], L.M[7], L.M[8], 0, L.trans[0], L.trans[1], L.trans[2], 1];
    const K = { near: -0.1, far: -4000, w: 320, h: 200, zoom: ch[9], zoomY: ch[9] * 0.8333333333299999, k150c4: 21000, k150c8: 1e6, nearClip: true, faceLevel: i => ((i >> 1) & 1) ? 24 : 16 };   // faces keep a per-face glow level that decays to 16/24
    const all = [this.mesh, ...this.wires]; cullObjects(all, cam, K);
    const list = [], fl = this.flp.map(fp => { const c = spline(a.keysF, { ...fp }); return { pos: [f32(c[6]), f32(c[7]), f32(c[8])] }; });
    if (!this.mesh.hidden) processObject(this.mesh, cam, L.eye, K, list);
    for (const w of this.wires) if (!w.hidden) this.wireItems(w, cam, K, list);
    flareItems(fl, cam, K, list, -6);
    for (const it of sortList(list)) {
      if (it.kind === 'flare') drawFlare(out, it, this.spr, K, -6);
      else if (it.kind === 'line') drawLine(out, a.filter, [it.a.sx, it.a.sy], [it.b.sx, it.b.sy]);
      else {
        const { a: A, b: B, c: C, f } = it, lvl = Math.min(255, Math.max(0, Math.trunc(f.lvl + A.z * 0.1) << 2));
        if (!(A.code | B.code | C.code)) filterTri(out, null, A, B, C, lvl);
        else { const P = clipTri(A, B, C); for (let i = 1; i + 1 < P.length; i++) filterTri(out, null, P[0], P[i], P[i + 1], lvl); }
      }
    }
    const ent = this.script[S.ptr], mode = ent[2];
    if (mode === 1) for (let y = 0; y < 0x7e; y++) for (let x = 0; x < 0x8a; x++) { const p = a.overlay[0x5c80 + y * 320 + x]; if (p) out[0x5c80 + y * 320 + x] = (p << 2) + 3 & 255; }
    else if (mode === 2) for (let y = 0; y < 0x44; y++) for (let x = 0; x < 0xcd; x++) { const p = a.overlay[0xa500 + y * 320 + x]; if (p) out[0xa500 + y * 320 + x] = (p << 2) + 3 & 255; }
    for (let i = 0; i < 768; i++) { const Av = a.palA[i], Bv = a.palB[i], C = S.palC[i], x = (((Av - Bv) * S.dacEdi) >> 10) + Bv; scrPal[i] = (((x - C) * S.dacEbp) >> 10) + C; }
  }
  // transform + project + near-clip one wire object and push its visible lines
  wireItems(o, cam, K, list) {
    const Mo = objMatrix(o.rot[0] / 65536, o.rot[1] / 65536, o.rot[2] / 65536, o.scale, o.pos), Mv = mul4(Mo, cam);
    const V = o.verts.map(m => { const x = f32(m[0] * Mv[0] + m[1] * Mv[4] + m[2] * Mv[8] + Mv[12]), y = f32(m[0] * Mv[1] + m[1] * Mv[5] + m[2] * Mv[9] + Mv[13]), z = f32(m[0] * Mv[2] + m[1] * Mv[6] + m[2] * Mv[10] + Mv[14]);
      const v = { x, y, z, need: f32(K.near - z) < 0 ? 1 : 0, sx: 0, sy: 0, iz: 0, code: 0 };
      if (!v.need) { const iz = f32(1 / z); v.sy = f32(f32(f32(y * K.zoomY) * iz) + 100); v.sx = f32(f32(f32(x * K.zoom) * iz) + 160); v.iz = iz;
        v.code = (v.sy < 0 ? 8 : 0) | (f32(200 - v.sy) < 0 ? 4 : 0) | (v.sx < 0 ? 2 : 0) | (f32(320 - v.sx) < 0 ? 1 : 0); }
      return v; });
    for (const [a, b] of nearClipLines(V, o.lines, K)) {
      if (a.code & b.code) continue;
      if (f32(K.far - a.z) >= 0 && f32(K.far - b.z) >= 0) continue;         // both beyond the far plane
      const key = (0xffff - Math.round(-(f32(f32(f32(a.z - K.zmax) * K.zscale) + f32(f32(b.z - K.zmax) * K.zscale)) * 1.5))) & 0xffff;
      list.push({ key, kind: 'line', a, b });
    }
  }
}
export { TICK };
