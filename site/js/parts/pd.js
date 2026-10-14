// Part D (orders 22-23): a two-centre "metaball" distortion of a texture, drawn through the 41x26 interpolated grid used by the tunnels, plus
// text sprites that appear in a scripted order/row sequence.
import { blit8 } from '../engine/tunnel.js';
const f32 = Math.fround, P = 65536, GW = 41, GH = 26;

export async function loadD(base = 'assets/pd/') {
  const bin = async n => new Uint8Array(await (await fetch(base + n)).arrayBuffer());
  const a = {}; for (const n of ['tex', 'shade', 'sheet', 'palA', 'palB', 'palC']) a[n] = await bin(n + '.bin');
  a.sched = new Int32Array((await bin('sched.i32')).buffer); return a;
}
export class PD {
  constructor(a) { this.a = a; this.V = new Int32Array(GW * GH * 3); this.reset(); }
  reset() { this.S = { c: [0, 0, 0, 0, 0], bright: 1023, idx: 0, dacEbp: 1023 }; this.ticks = 0; }
  step(order, row) {                                    // ISR 0x37e00 (+ the sprite schedule of the main loop)
    const S = this.S; S.dacEbp = S.bright;
    S.bright = Math.min(0x3ff, S.bright + 0x23);
    if ((row & 0x1f) === 0x10 || (row & 0x1f) === 0x18) S.bright = 0;
    const c = S.c; c[0] += 0x26c; c[1] += 0x460; c[2] += 0x6f; c[3] += 0x2e6; c[4] += 0x1a5;
    const e = this.a.sched, i = S.idx / 4;                // the entry shown now is advanced once its own (order,row) is reached
    S.sprite = i; if (order >= e[i] && row >= e[i + 1]) S.idx += 0x20;
  }
  advance(n, orderRow) { while (this.ticks < n) { const [o, r] = orderRow(this.ticks); this.step(o, r); this.ticks++; } }
  render(out, scrPal) {
    const S = this.S, a = this.a, V = this.V;
    // the frame interpolates the grid computed by the previous frame (the grid is rebuilt after the blit), i.e. from the counters one tick ago
    const [c7c, c80, c84, c88, c8c] = [S.c[0] - 0x26c, S.c[1] - 0x460, S.c[2] - 0x6f, S.c[3] - 0x2e6, S.c[4] - 0x1a5];
    const F1 = f32(Math.sin(c8c / P) + Math.cos(c88 / P)), F2 = f32(Math.cos(c84 / P) / f32(1.25) + f32(1.25)), F3 = f32((Math.sin(c8c / P) + 1) / 20);
    const Ax = f32(Math.cos(c80 / P) * 20), Ay = f32(Math.sin(c7c / P) * 12), Bx = f32(Math.sin(Math.cos(c7c / P)) * 20 + 20), By = f32(Math.sin(c80 / P) * 12 + 12);
    let o = 0;
    for (let y = -13; y < 13; y++) for (let x = -20; x <= 20; x++, o += 3) {
      const w = (Math.hypot(y - Ay, x - Ax) + Math.hypot(y - By, x - Bx)) * F3;
      const q = Math.sin(Math.sin(c80 / P + w) * Math.cos((c7c + w) / P)) + 1, q32 = f32(q);
      const rr = q * F2, th = (rr - 1) * 0.5 + F1, cs = Math.cos(th), sn = Math.sin(th);
      const U = f32(x * cs - y * sn), Vv = f32(y * cs + x * sn);
      V[o] = Math.round(U * rr * 65535 * 6) + 0x800000; V[o + 1] = Math.round(Vv * rr * 65535 * 6) + 0x800000; V[o + 2] = Math.round(q32 * 31 * 65535);
    }
    blit8(out, V, a.tex, a.shade);
    const e = a.sched, i = S.sprite * 1, [sx, sy, w, h, dx, dy] = [e[i + 2], e[i + 3], e[i + 4], e[i + 5], e[i + 6], e[i + 7]];
    for (let yy = 0; yy < h; yy++) for (let xx = 0; xx < w; xx++) { const p = a.sheet[(sy + yy) * 320 + sx + xx]; if (p) out[(dy + yy) * 320 + dx + xx] = (p << 3) & 255; }
    for (let k = 0; k < 768; k++) { const A = a.palA[k], B = a.palB[k], C = a.palC[k], x = (((A - B) * 0x3ff) >> 10) + B; scrPal[k] = ((((x - C) * S.dacEbp) >> 10) + C) & 63; }
  }
}
