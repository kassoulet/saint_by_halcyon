// Camera spline + look-at matrix of the engine (ports of 0x1f2c0 "spline" and 0x15d91 "look-at").
const f32 = Math.fround;
// Cubic Hermite (Catmull-Rom tangents) through 10-float keys. sp = {t, idx(bytes), count(bytes)}; returns 10 channels. Mutates sp like the original.
export function wrapSpline(sp) {
  if (f32(sp.t) < 0) { sp.t += 1; sp.idx -= 0x28; if (sp.idx <= 0) sp.idx = sp.count - 0x78; }
  if (!(sp.t < 1)) { sp.t -= 1; sp.idx += 0x28; if (sp.idx >= sp.count - 0x78) sp.idx = 0; }
}
export function spline(keys, sp) {
  wrapSpline(sp);
  const k = sp.idx / 4 + 10, t = sp.t, out = new Array(10);          // keys[] is a flat float array, 10 floats per key; P1 = key idx/40+1
  for (let c = 0; c < 10; c++) {
    const p0 = keys[k - 10 + c], p1 = keys[k + c], p2 = keys[k + 10 + c], p3 = keys[k + 20 + c];
    const m = (p2 - p0) / 2, c2 = (p2 - p1) * 3 + -(m * 2) + -((p3 - p1) / 2), c3 = p2 - c2 - m - p1;
    out[c] = c3 * t * t * t + (c2 * t * t + (m * t + p1));
  }
  return out;
}
const norm = v => { const r = 1 / Math.sqrt(v[0] * v[0] + v[1] * v[1] + v[2] * v[2]); return [v[0] * r, v[1] * r, v[2] * r]; };
const cross = (a, b) => [a[2] * b[1] - a[1] * b[2], a[0] * b[2] - a[2] * b[0], a[1] * b[0] - a[0] * b[1]];   // sic: b x a, as in the original
// ch = spline output: ch[0..2] up, ch[3..5] target, ch[6..8] eye. Returns M (row-major 3x3, rows = [x.x y.x z.x],...) and translation.
export function lookAt(ch) {
  const up = [ch[0], ch[1], ch[2]], tg = [ch[3], ch[4], ch[5]], eye = [ch[6], ch[7], ch[8]];
  const z = norm([eye[0] - tg[0], eye[1] - tg[1], eye[2] - tg[2]]);
  const x = norm(cross(z, up)), y = norm(cross(z, x));
  const M = [x[0], y[0], z[0], x[1], y[1], z[1], x[2], y[2], z[2]];
  const d = v => -(eye[0] * v[0] + eye[1] * v[1] + eye[2] * v[2]);
  return { M, trans: [d(x), d(y), d(z)], eye };
}
