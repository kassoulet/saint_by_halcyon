// Part 1 ("saint" tunnel), orders 3-5. State advances on 70 Hz ticks (tickP1), a frame samples it.
import { tickP1 } from './p1_tick.js';
import { spline, lookAt } from '../engine/camera.js';
import { renderTunnel } from '../engine/tunnel.js';
import { cullObjects, processObject, sortList, clipTri, filterTri, flareItems, drawFlare } from '../engine/mesh.js';
const f32 = Math.fround, TICK = 70.086;      // VGA retrace rate (mode 13h)

export async function loadP1(base = 'assets/p1/') {
  const bin = async n => new Uint8Array(await (await fetch(base + n)).arrayBuffer());
  const f = async n => new Float32Array((await bin(n)).buffer), i = async n => new Int32Array((await bin(n)).buffer);
  return { grid: await f('grid.f32'), keys: await f('keys.f32'), tex: await bin('tex.bin'), shade: await bin('shade.bin'), ease: await i('ease.i32'),
    palA: await bin('palA.bin'), palB: await bin('palB.bin'), overlay: await bin('overlay.bin'), filter: await bin('filter.bin'), sprites: await bin('sprites.bin'), sprTbl: await bin('sprite_tbl.bin'),
    objs: await (await fetch(base + 'objects.json')).json() };
}

export class P1 {
  constructor(a) { this.a = a; this.reset(); }
  reset() {                                      // initial values: pristine EXE data + the part's init code (0x2c7db..0x2c885)
    this.S = { frame: 0, palC: new Uint8Array(768).fill(63), blink: 0, v4698: 0, v4694: 0x10, fade: 1023, pulse: 0, pulseStep: f32(0.200393944978714),
      t1: 0, t2: 0, speed: f32(0.007), scroll: 0, a7f30: 0, a7f34: f32(0.005), a7f38: 0, a7f3c: f32(0.04), blendOn: 0, blendT: 0, idx1: 0, blend: 0, blendV: 0,
      blendA: f32(1e-5), warp: 'plane', warp2: 'cylinder', rot: 0, dacEdi: 0, dacEbp: 0 };
    this.sp1 = { t: 0, idx: 0, count: 640 }; this.sp2 = { t: 0, idx: 0xf0, count: 640 };
    this.ticks = 0;
    // the exported positions come from a snapshot taken after 741 ticks of the cluster's global Z rotation (0x4d9/65536 rad per tick): undo it
    const th0 = 741 * 0x4d9 / 65536, c = Math.cos(-th0), s = Math.sin(-th0);
    this.objs = this.a.objs.objs.map(o => ({ ...o, rot: [0, 0, 0], pos0: [f32(o.pos[0] * c - o.pos[1] * s), f32(o.pos[0] * s + o.pos[1] * c), o.pos[2]], faces: o.faces.map(f => ({ ...f })) }));
    const dv = new DataView(this.a.sprTbl.buffer, this.a.sprTbl.byteOffset, 512);
    this.spr = { ptr: Array.from({ length: 64 }, (_, i) => dv.getUint32(i * 4, true)), scale: Array.from({ length: 64 }, (_, i) => dv.getFloat32(256 + i * 4, true)), spr: this.a.sprites, filter: this.a.filter };
  }
  // advance to absolute tick n; orderRow(tick) gives the music position at that tick
  advance(n, orderRow) {
    const S = this.S;
    while (this.ticks < n) {
      const [o, r] = orderRow(this.ticks); tickP1(S, o, r, this.a.ease); this.ticks++;
      this.sp1.t = S.t1; spline(this.a.keys, this.sp1); S.t1 = this.sp1.t; S.idx1 = this.sp1.idx;           // the renderer's spline call wraps t / advances the key index
      this.sp2.t = S.t2; spline(this.a.keys, this.sp2); S.t2 = this.sp2.t;
    }
  }
  // 33 translucent "crystals": filter triangles (table lookup on the pixels underneath), depth-sorted
  crystals(out, L, ch) {
    const a = this.a, n = this.ticks, cam = [L.M[0], L.M[1], L.M[2], 0, L.M[3], L.M[4], L.M[5], 0, L.M[6], L.M[7], L.M[8], 0, L.trans[0], L.trans[1], L.trans[2], 1];
    const K = { near: -0.1, far: -4000, w: 320, h: 200, zoom: ch[9], zoomY: ch[9] * 0.8333333333299999, k150c4: 21000, k150c8: 1e6 };
    this.objs.forEach((o, k) => { const d = a.objs.delta[k], e = k === 0 ? [100, 135, 230] : [0, 0, 0]; o.rot = [0, 1, 2].map(j => n * (d[j] + e[j])); });
    const th = n * 0x4d9 / 65536, ct = Math.cos(th), st = Math.sin(th);
    for (const o of this.objs) o.pos = [f32(o.pos0[0] * ct - o.pos0[1] * st), f32(o.pos0[0] * st + o.pos0[1] * ct), o.pos0[2]];
    cullObjects(this.objs, cam, K);
    const list = [], eye = L.eye;
    for (const o of this.objs) if (!o.hidden) processObject(o, cam, eye, K, list);
    flareItems(this.objs, cam, K, list);
    for (const it of sortList(list)) {
      if (it.kind === 'flare') { drawFlare(out, it, this.spr, K); continue; }
      const { a: A, b: B, c: C, f } = it;
      const lvl = Math.min(255, Math.max(0, Math.trunc(f.lvl + A.z * 0.1) << 2));
      if (!(A.code | B.code | C.code)) filterTri(out, a.filter, A, B, C, lvl);
      else { const P = clipTri(A, B, C); for (let i = 1; i + 1 < P.length; i++) filterTri(out, a.filter, P[0], P[i], P[i + 1], lvl); }
    }
  }
  render(out, scrPal, order, row) {
    const S = this.S, a = this.a;
    const ch = spline(a.keys, { ...this.sp1 }), L = lookAt(ch);
    const k = { w1: Math.sin(S.a7f30) * 0.02, w2: Math.cos(S.a7f38) * 0.011, a1: Math.sin(S.a7f30) * 0.333333333, a2: Math.cos(S.a7f38) * 0.0021, flagA: 0 };
    out.fill(0);
    renderTunnel(out, a.grid, a.tex, a.shade, { pos: L.eye.map(f32), M: L.M, warp: S.warp, warp2: S.blendOn ? S.warp2 : null, blend: S.blend, k });
    this.crystals(out, L, ch);
    if ((order === 3 && row >= 0x20) || (order === 4 && row <= 0x20)) for (let i = 0; i < 0x3840; i++) if (a.overlay[i]) out[0x6040 + i] = a.overlay[i];
    // DAC: lerp(lerp(A,B,edi/1024), C, ebp/1024)
    for (let i = 0; i < 768; i++) { const A = a.palA[i], B = a.palB[i], C = S.palC[i];
      const x = (((A - B) * S.dacEdi) >> 10) + B; scrPal[i] = (((x - C) * S.dacEbp) >> 10) + C; }
  }
}
export { TICK };
