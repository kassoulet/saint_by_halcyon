// Intro (orders 0-2): a 160x100 4-bit footage (142 frames at 10 fps, RLE nibbles in 4x4 tiles) doubled with linear smoothing, smeared towards the edges
// through a radial alpha mask (two recursive table-lookup passes), then the "da HALCYON / da JORMAS" logos copied on top.
import { rint } from '../engine/mesh.js';
const f32 = Math.fround, OFF = 512;

export async function loadI(base = 'assets/pi/') {
  const bin = async n => new Uint8Array(await (await fetch(base + n + '.bin')).arrayBuffer());
  const a = {}; for (const n of ['frames', 'mask', 'overlay', 'palA', 'palB', 'palC', 'tail']) a[n] = await bin(n);
  a.ptrs = new Uint32Array((await bin('ptrs')).buffer); a.ease1 = new Int32Array((await bin('ease1')).buffer); a.ease2 = new Int32Array((await bin('ease2')).buffer); return a;
}
export class PI {
  constructor(a, init = {}) {
    this.a = a; this.init = init; this.tile = new Uint8Array(16000 + 4096); this.buf = new Uint8Array(OFF + 64000 + 2048); this.cachedStage = -1; this.reset();
  }
  reset() {
    const i = this.init;   // second run (orders 28-29) starts from the state the first one and part B left: see scenes/partI2.js
    this.S = { frozen: null, stage: i.stage ?? 0, cnt: 0, ba8: i.ba8 ?? 0, bac: 0x7f, b8c: i.b8c ?? 0, b90: i.b90 ?? 0, last: -1, C: i.white ? new Uint8Array(768).fill(0x3f) : Uint8Array.from(this.a.palC), dacEdi: 0, dacEbp: 0 };
    this.tile.fill(0); this.tile.set(this.a.tail, 16000); this.ticks = 0;
  }
  step(order, row) {                                                        // ISR 0x4bd70
    const S = this.S, a = this.a;
    S.dacEdi = a.ease1[S.bac]; S.dacEbp = a.ease2[S.ba8];
    if (order >= 2 && row >= 0x30 && row <= 0x3c) {                           // white flash on the first tick of each of the last rows
      if (S.last !== row) { S.last = row; S.dacEbp = (0x40 - row) << 6; S.C.fill(0x3f); } else { S.dacEbp = 0x3ff; S.C.fill(0); }
    }
    S.pal = this.palette();
    S.ba8 = Math.min(0x7f, S.ba8 + 2);
    if (order === 2 && row === 0x3c) { S.C.fill(0x3f); S.ba8 = 0; }
    if (order === 1 && row === 0x3c) S.ba8 = 0;
    if (order === 2 && row === 0x3c) S.ba8 = 0;
    S.bac = order === 1 ? (rint(Math.sin(Math.sin(S.b90 / 65535 * 3) * Math.cos(S.b8c / 65535 * 3)) * 0x46) + 0x40) & 0x7f : 0x7f;
    S.b8c += 0x78; S.b90 += 0xa0;
    if (order === 2 && row >= 0x3c && S.frozen == null) S.frozen = S.stage;     // the loop ends here: the last picture stays up while the palette keeps fading
    if (++S.cnt >= 7) { S.cnt = 0; if (++S.stage >= this.a.ptrs.length) S.stage = 0; }
  }
  palette() {
    const S = this.S, a = this.a, p = new Uint8Array(768);
    for (let i = 0; i < 768; i++) { const A = a.palA[i], B = a.palB[i], C = S.C[i], x = (((A - B) * S.dacEdi) >> 10) + B; p[i] = ((((x - C) * S.dacEbp) >> 10) + C) & 63; }
    return p;
  }
  advance(n, orderRow) { while (this.ticks < n) { const [o, r] = orderRow(this.ticks); this.step(o, r); this.ticks++; } }
  decode(stage) {                                                           // RLE nibble stream -> 4x4-tiled 160x100 buffer
    const a = this.a, d = a.frames, tile = this.tile; let s = a.ptrs[stage], p = 0;
    const put = v => { const b = p >> 4; tile[((b / 40) | 0) * 640 + (b % 40) * 4 + (p & 3) + ((p >> 2) & 3) * 160] = v; p++; };
    while (p < 16000) { const b = d[s++]; if (b !== 0xf0) { put(b >> 4); put(b & 15); } else { const c = d[s] >> 4, v = d[s] & 15; s++; for (let k = 0; k < c; k++) put(v); } }
  }
  // decoded frame -> doubled and filtered 320x200 picture (no logos); returns the 64000-byte view into the work buffer
  picture(stage) {
    if (stage === this.cachedStage) return this.view;
    this.decode(stage);
    const a = this.a, t = this.tile, buf = this.buf; buf.fill(0);
    for (let r = 0; r < 100; r++) for (let c = 0; c < 160; c++) {
      const i = r * 160 + c, d = OFF + r * 640 + c * 2;
      const al = (t[i] << 3) & 255, bl0 = (t[i + 160] << 3) & 255, bl = (((bl0 + al) & 255) >> 1);
      let ah = (t[i + 1] << 3) & 255, bh = (t[i + 161] << 3) & 255; bh = ((bh + ah) & 255) >> 1; ah = ((ah + al) & 255) >> 1; bh = ((bh + bl) & 255) >> 1;
      buf[d] = al; buf[d + 320] = bl; buf[d + 1] = ah; buf[d + 321] = bh;
    }
    for (let i = 64000; i < 64640; i++) buf[OFF + i] = 0;
    for (let i = -320; i < 0; i++) buf[OFF + i] = 0;
    const m = a.mask, t0 = (h, l) => h === 255 ? 0 : h * l, t1 = (h, l) => (255 - h) * l;
    let al = 0;
    for (let i = 0; i < 64000; i++) {                                         // forward pass: blend the pixel with the one up-right, weight = mask
      const ch = m[i], cl = buf[OFF + i - 318], dl = buf[OFF + i];
      const d1 = ((t0(ch, cl) + t1(ch, dl)) >>> 8) & 255;
      al = ((t0(ch, al) + t1(ch, d1)) >>> 8) & 255; buf[OFF + i] = al;
    }
    for (let j = 0; j < 64000; j++) {                                         // backward pass, down-left neighbour
      const i = 64000 - j, ch = m[i], cl = buf[OFF + i + 318], dl = buf[OFF + i];
      const d1 = ((t0(ch, cl) + t1(ch, dl)) >>> 8) & 255;
      al = ((t0(ch, al) + t1(ch, d1)) >>> 8) & 255; buf[OFF + i] = al;
    }
    this.cachedStage = stage; this.view = buf.subarray(OFF, OFF + 64000); return this.view;
  }
  render(out, scrPal, order) {
    const S = this.S, a = this.a, pic = this.picture(S.frozen ?? S.stage);
    out.set(pic);
    const n = order === 2 ? 64000 : (order === 1 ? 32000 : 0);                                        // logos: top half from order 1 row 60, everything in order 2
    for (let i = 0; i < n; i++) { const p = a.overlay[i]; if (p) out[i] = p; }
    scrPal.set(S.pal || this.palette());
  }
}
