// Perspective-correct textured + Gouraud triangle: port of raster 0x1fefc.
// The x87 runs in extended precision here (JS doubles); values are rounded to float32 only where the original stores them to memory (Math.fround).
// Per pixel: texel = tex[V<<8|U]; colour = shade[I<<8|texel], with U,V,I stepped in carry-chained fixed point exactly like the original loop
// (V frac in ecx hi, I in ecx lo, U frac in edx hi, V int in dl, U int in bl). Exact division every 16 pixels, linear in between.
const f = Math.fround, W = 320;
const edge = (a, b) => {                                // slopes along y of x, 1/z, u/z, v/z, I/z from vertex a to b (stored as float32)
  const r = 1 / (b.sy - a.sy);
  return [f((b.sx - a.sx) * r), f((b.iz - a.iz) * r), f((b.u * b.iz - a.u * a.iz) * r), f((b.v * b.iz - a.v * a.iz) * r), f((b.I * b.iz - a.I * a.iz) * r)];
};
const conv = (v) => { const z = 1 / v[0]; return [Math.trunc(v[1] * z * 65536), Math.trunc(v[2] * z * 65536), Math.trunc(v[3] * z * 256)]; };   // [U, V, I] fixed point
const tab = Array.from({ length: 17 }, (_, i) => i ? f(1 / i) : 0);

function run(buf, o, n, S, st, tex, shade) {           // n pixels from fixed-point start S=[U,V,I], steps st=[dU,dV,dI]
  let ecx = (((S[1] << 16) | (S[2] & 0xffff)) >>> 0), edx = (((S[0] << 16) | ((S[1] >>> 16) & 255)) >>> 0), bl = (S[0] >>> 16) & 255;
  const sE = (((st[1] << 16) | (st[2] & 0xffff)) >>> 0), sD = (((st[0] << 16) | ((st[1] >>> 16) & 255)) >>> 0), sB = (st[0] >>> 16) & 255;
  for (; n > 0; n--, o++) {
    buf[o] = shade[(((ecx >>> 8) & 255) << 8) | tex[((edx & 255) << 8) | bl]];
    let s = ecx + sE; const c1 = s > 0xffffffff ? 1 : 0; ecx = s >>> 0;
    s = edx + sD + c1; const c2 = s > 0xffffffff ? 1 : 0; edx = s >>> 0;
    bl = (bl + sB + c2) & 255;
  }
}
function span(buf, o, n, val, g, g16, tex, shade) {     // val=[1/z,u/z,v/z,I/z] at the left pixel, g per-pixel gradients, g16 = 16*g (float32)
  let r = n & 15, blocks = n >> 4, S = conv(val), regs = val.slice();
  if (r) {
    regs = regs.map((x, k) => x + g[k] * r); const E = conv(regs), t = tab[r];
    run(buf, o, r, S, [0, 1, 2].map(k => Math.trunc((E[k] - S[k]) * t)), tex, shade); o += r; S = E;
  }
  while (blocks-- > 0) {
    regs = regs.map((x, k) => x + g16[k]); const E = conv(regs);
    run(buf, o, 16, S, [(E[0] - S[0]) >> 4, (E[1] - S[1]) >> 4, (E[2] - S[2]) >> 4], tex, shade); o += 16; S = E;
  }
}
export function texTriExact(buf, tex, shade, A, B, C) {
  let [v0, v1, v2] = [A, B, C];
  if (!(v1.sy < v2.sy)) [v1, v2] = [v2, v1];
  if (!(v0.sy < v1.sy)) { [v0, v1] = [v1, v0]; if (!(v1.sy < v2.sy)) [v1, v2] = [v2, v1]; }
  const y0 = Math.trunc(v0.sy), y1 = Math.trunc(v1.sy), y2 = Math.trunc(v2.sy);
  if (y2 === y0) return;
  const eA = edge(v0, v2);
  let g, g16;
  const gradient = (L, R) => { const r = 1 / (R[0] - L[0]); g = [1, 2, 3, 4].map(k => f((R[k] - L[k]) * r)); g16 = g.map(x => f(x * 16)); };
  const base = (v, y, E) => { const dy = y - v.sy; return [f(dy * E[1] + v.iz), f(dy * E[2] + v.u * v.iz), f(dy * E[3] + v.v * v.iz), f(dy * E[4] + v.I * v.iz)]; };
  let xl, xr, start, fct = 1, xA = 0;
  const rows = (ybase, nrows, L, R) => {
    for (let r = 0; r < nrows; r++) {
      xr += R[0]; xl += L[0];
      const Lp = Math.trunc(xl), Rp = Math.trunc(xr);
      xr = f(xr); xl = f(xl);                                                    // float32 round trip through memory ([0x1fef4], [0x1fef0])
      const frac = f(Lp - xl + 1);
      const val = [0, 1, 2, 3].map(k => L[k + 1] * fct + start[k] + g[k] * frac);
      fct = f(fct + 1);
      const n = Rp - Lp;
      if (n > 0) span(buf, (ybase + r) * W + Lp, n, val, g, g16, tex, shade);
    }
  };
  const rows1 = y1 - y0;
  if (rows1 !== 0) {
    const eB = edge(v0, v1), leftA = !(f(eB[0] - eA[0]) < 0), L = leftA ? eA : eB, R = leftA ? eB : eA;
    gradient(L, R); const dy = y0 - v0.sy; start = base(v0, y0, L);
    xl = dy * L[0] + v0.sx; xr = dy * R[0] + v0.sx; fct = 1;
    rows(y0, rows1, L, R);
    xA = leftA ? xl : xr;
  } else xA = (y1 - v0.sy) * eA[0] + v0.sx;
  const rows2 = y2 - y1; if (rows2 === 0) return;
  const eC = edge(v1, v2), leftIsC = f(eC[0] - eA[0]) >= 0, dy1 = y1 - v1.sy;
  const L = leftIsC ? eC : eA, R = leftIsC ? eA : eC;
  if (rows1 === 0) gradient(L, R);
  if (leftIsC) { xl = dy1 * eC[0] + v1.sx; xr = xA; start = base(v1, y1, eC); fct = 1; }
  else { xl = xA; xr = dy1 * eC[0] + v1.sx; if (rows1 === 0) { start = base(v0, y1, eA); fct = 1; } }
  rows(y1, rows2, L, R);
}
