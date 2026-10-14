// Part C (orders 39-44): plane tunnel that melts into a sphere, a big textured gem with five rotating pentagon stars, 36 spinning shards, an
// angle-dependent sprite, and a dancer strip on the right; after the last order the demo ends on a full-screen picture.
import { spline, wrapSpline, lookAt } from '../engine/camera.js';
import { renderTunnel } from '../engine/tunnel.js';
import { texTriExact as texTri } from '../engine/texmap.js';
import { cullObjects, processObject, sortList, clipTri, clipPoly, filterTri, flareItems, drawFlare, rint } from '../engine/mesh.js';
const f32 = Math.fround, TICK = 70.086;

export async function loadC(base = 'assets/pc/') {
  const bin = async n => new Uint8Array(await (await fetch(base + n)).arrayBuffer());
  const f = async n => new Float32Array((await bin(n)).buffer), i = async n => new Int32Array((await bin(n)).buffer);
  const meta = await (await fetch(base + 'objects.json')).json();
  const a = { meta, grid: await f('grid.f32'), keys: await f('keys.f32'), ease: await i('ease.i32'), tex: await bin('tex.bin'), shade: await bin('shade.bin'), filter: await bin('filter.bin'), sprites: await bin('sprites.bin'),
    sprTbl: await bin('sprite_tbl.bin'), palA: await bin('palA.bin'), palB: await bin('palB.bin'), palC: await bin('palC.bin'), strip: await bin('strip.bin'), pic: await bin('pic.bin'), picpal: await bin('picpal.bin'), sheet: await bin('sheet.bin') };
  a.o = await Promise.all(meta.objs.map(async (_, k) => ({ v: await f(`obj${k}_v.f32`), uv: await f(`obj${k}_uv.f32`), vn: await f(`obj${k}_vn.f32`), fi: await i(`obj${k}_fi.i32`), fn: await f(`obj${k}_fn.f32`) })));
  return a;
}
export class PC {
  constructor(a) {
    this.a = a;
    const dv = new DataView(a.sprTbl.buffer, a.sprTbl.byteOffset, 512);
    this.spr = { ptr: Array.from({ length: 64 }, (_, i) => dv.getUint32(i * 4, true)), scale: Array.from({ length: 64 }, (_, i) => dv.getFloat32(256 + i * 4, true)), spr: a.sprites, filter: a.filter };
    this.objs = a.meta.objs.map((m, k) => { const d = a.o[k], n = m.nv;
      return { pos: m.pos, rad: m.rad, scale: m.scale, rot: m.rot.slice(), textured: m.hdr[1] === '0x1fefc',
        verts: Array.from({ length: n }, (_, i) => [d.v[i * 3], d.v[i * 3 + 1], d.v[i * 3 + 2], d.uv[i * 2], d.uv[i * 2 + 1]]), vnorm: Array.from({ length: n }, (_, i) => [d.vn[i * 3], d.vn[i * 3 + 1], d.vn[i * 3 + 2]]),
        faces: Array.from({ length: m.nf }, (_, i) => ({ v: [d.fi[i * 4], d.fi[i * 4 + 1], d.fi[i * 4 + 2]], n: [d.fn[i * 4], d.fn[i * 4 + 1], d.fn[i * 4 + 2], d.fn[i * 4 + 3]], idx: i })) }; });
    this.rot0 = this.objs.map(o => o.rot.slice());
    this.flares = a.meta.flares; this.reset();
  }
  reset() {
    this.S = { v4694: 0, v4698: 1, theta: 0, speed: f32(0.0081), dacEdi: 0, dacEbp: 0, bOn: 0, b: 0, bDone: 0, warpOld: 'plane2', warpNew: 'sphere', final: 0, ft: 0 };
    this.objs.forEach((o, k) => { o.rot = this.rot0[k].slice(); });
    this.sp1 = { t: 0, idx: 0, count: 1480 }; this.sp2 = { t: 0, idx: 0, count: 1480 }; this.ticks = 0;
  }
  step() {                                                                                    // ISR 0x421a0
    const S = this.S, a = this.a;
    S.dacEdi = S.v4698; S.dacEbp = a.ease[S.v4694];
    S.v4694 = Math.min(0x7f, S.v4694 + 2);
    S.v4698 = 0x3ff - rint(Math.cos(S.theta) * 0x1ff + 0x1ff); S.theta = f32(S.theta + f32(0.200393944978714));
    if (!S.final) {
      const s = ((1023 - S.dacEbp) * S.speed) / 300 + S.speed; this.sp1.t += s; this.sp2.t += s;
      if (!S.bDone && !S.bOn && this.sp1.idx >= 0x410) { S.bOn = 1; S.bDone = 1; }
      if (S.bOn) { S.b = f32(S.b + f32(0.0009523800108581781)); if (S.b >= 1) { S.b = 0; S.bOn = 0; [S.warpOld, S.warpNew] = [S.warpNew, S.warpOld]; } }
      for (let k = 6, m = 0; k < this.objs.length; k++, m++) { const r = this.objs[k].rot; r[0] += -200 + 10 * m; r[1] += 412 + 25 * m; r[2] += -502 - 52 * m; }
      wrapSpline(this.sp1); wrapSpline(this.sp2);
    }
  }
  startFinal() { this.S.final = 1; this.S.v4694 = 0; this.S.fticks = 0; }
  advanceFinal(n) { while (this.S.fticks < n) { this.step(); this.S.fticks++; } }
  advance(n, orderRow) { while (this.ticks < n) { const [o, r] = orderRow(this.ticks); this.step(o, r); this.ticks++; } }
  render(out, scrPal, order, row) {
    const S = this.S, a = this.a;
    if (S.final) return this.renderFinal(out, scrPal);
    const ch = spline(a.keys, { ...this.sp1 }), L = lookAt(ch), eye2 = lookAt(spline(a.keys, { ...this.sp2 })).eye;
    out.fill(0);
    renderTunnel(out, a.grid, a.tex, a.shade, { pos: L.eye.map(f32), M: L.M, warp: S.warpOld, warp2: S.bOn ? S.warpNew : null, blend: S.b, k: { w1: 0, w2: 0, a1: 0, a2: 0, s1: 0, s2: 0, flagA: 0, stale: 0 } });
    const cam = [L.M[0], L.M[1], L.M[2], 0, L.M[3], L.M[4], L.M[5], 0, L.M[6], L.M[7], L.M[8], 0, L.trans[0], L.trans[1], L.trans[2], 1];
    const K = { near: -0.1, far: -4000, w: 320, h: 200, zoom: ch[9], zoomY: ch[9] * 0.8333333333333333, k150c4: 21000, k150c8: 1e6, nearClip: true };
    cullObjects(this.objs, cam, K);
    const list = [];
    for (const o of this.objs) if (!o.hidden) { const n = list.length; processObject(o, cam, L.eye, { ...K, textured: o.textured }, list, eye2); for (let i = n; i < list.length; i++) list[i].tex = o.textured; }
    const fl = this.flares, A = fl[0], B = fl[1];
    flareItems([B], cam, K, list, B.size);
    const n0 = list.length; flareItems([A], cam, K, list, A.size, 40); for (let i = n0; i < list.length; i++) list[i].ang = A;
    for (const it of sortList(list)) {
      if (it.kind === 'flare') { if (it.ang) this.drawAngle(out, it, K, L.eye); else drawFlare(out, it, this.spr, K, B.size); }
      else if (it.tex && f32(f32(it.a.I + it.b.I) + it.c.I) === 0) {
        const { a: A_, b: B_, c: C_ } = it;
        if (!(A_.code | B_.code | C_.code)) filterTri(out, null, A_, B_, C_, 0);
        else { const P = clipTri(A_, B_, C_); for (let i = 1; i + 1 < P.length; i++) filterTri(out, null, P[0], P[i], P[i + 1], 0); }
      } else if (it.tex) {
        const P = [it.a, it.b, it.c].map(v => ({ sx: v.sx, sy: v.sy, iz: v.iz, u: v.u, v: v.v, I: v.I, code: v.code }));
        const q = P.some(v => v.code) ? clipPoly(P) : P;
        for (let i = 1; i + 1 < q.length; i++) texTri(out, a.tex, a.shade, q[0], q[i], q[i + 1]);
      } else {
        const { a: A_, b: B_, c: C_, f } = it, lvl = Math.min(255, Math.max(0, (Math.trunc(f.lvl + A_.z * 0.1) << 2) + 0x80));
        if (!(A_.code | B_.code | C_.code)) filterTri(out, a.filter, A_, B_, C_, lvl);
        else { const P = clipTri(A_, B_, C_); for (let i = 1; i + 1 < P.length; i++) filterTri(out, a.filter, P[0], P[i], P[i + 1], lvl); }
      }
    }
    if (order >= 0x29) {                                                                      // 144x200 strip on the right, alternating between two poses from order 0x2a
      const off = (order >= 0x2a && (row & 3) >= 2) ? 0 : 0xaf;
      for (let y = 0; y < 200; y++) for (let x = 0; x < 0x90; x++) { const p = a.strip[y * 320 + off + x]; if (p) out[y * 320 + 0xb0 + x] = ((p << 2) + 1) & 255; }
    }
    this.pal(scrPal, a.palA, a.palB, a.palC);
  }
  pal(scrPal, A, B, C) {
    const S = this.S;
    for (let i = 0; i < 768; i++) { const x = (((A[i] - B[i]) * S.dacEdi) >> 10) + B[i]; scrPal[i] = (((x - C[i]) * S.dacEbp) >> 10) + C[i]; }
  }
  // the final stage (0x420df): full-screen picture; the interrupt keeps pulsing three tables built from its palette (normal, doubled, negative)
  renderFinal(out, scrPal) {
    const a = this.a, P = a.picpal; out.set(a.pic);
    const A = P, B = Uint8Array.from(P, v => Math.min(63, v * 2)), C = Uint8Array.from(P, v => 63 - v);
    this.pal(scrPal, A, B, C);
  }
  // handler 0x41d51: sprite picked from a sheet by the viewing angle, drawn as a plain (unfiltered) rectangle   [0x296d8]
  drawAngle(out, it, K, eye) {
    const a = this.a, f = it.ang, sheet = a.sheet, zoom = K.zoom;
    const ang = rint(Math.atan2(eye[0] - f.pos[0], eye[1] - f.pos[1]) / (2 * Math.PI) * 65536) & 0xffff, q = Math.trunc(ang / 0x690);
    const base = (q >> 2) * 0x5300 + (q & 3) * 0x28;
    const step = Math.trunc(f32(it.k28 * it.z) * 255);
    const rx = f32(f32(f32(f.size) * zoom) * it.iz), ry = f32(f32(f32(f.size2) * zoom) * it.iz);
    const x0 = f32(it.sx - rx), y0 = f32(it.sy - ry), x1 = f32(it.sx + rx), y1 = f32(it.sy + ry);
    let xi0 = Math.trunc(x0), yi0 = Math.trunc(y0), xi1 = Math.trunc(x1), yi1 = Math.trunc(y1);
    if (yi1 < 0 || yi0 > 199 || xi1 < 0 || xi0 > 319) return;
    let u0 = Math.trunc((xi0 - x0) * f32(it.k28 * it.z) * 255), v0 = Math.trunc((yi0 - y0) * f32(it.k28 * it.z) * 255);
    if (xi0 <= 0) { xi0 = -xi0; u0 += xi0 * step; xi0 = 0; }
    if (xi1 >= 0x140) xi1 = 0x140;
    if (yi0 <= 0) { yi0 = -yi0; v0 += yi0 * step; yi0 = 0; }
    if (yi1 >= 0xc8) yi1 = 0xc8;
    const w = xi1 - xi0, rows = yi1 - yi0; if (w === 0 || rows === 0) return;
    let v = v0;
    for (let j = 0; j < rows; j++) {
      v += step; let u = u0 + step, o = (yi0 + j) * 320 + xi0;
      for (let i = 0; i < w; i++, o++) { const p = sheet[base + ((((v >> 8) & 255) << 8) | ((u >> 8) & 255))]; if (p) out[o] = p; u += step; }
    }
  }
}
export { TICK };
