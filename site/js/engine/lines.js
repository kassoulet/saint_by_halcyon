// Wire-frame objects: near-plane line clipping (0x15a18), line list (0x17028) and the anti-aliased line drawer (0x293a4).
// A line pixel pair is remapped through rows (31-frac) and (frac) of the 64x256 filter table: light is added, never replaced.
const f32 = Math.fround, W = 320;
export function nearClipLines(V, L, K) {          // V: projected+transformed vertices {x,y,z,need}; L: [a,b] index pairs -> [[va,vb]]
  const out = [], clipped = [];                                    // lines cut by the near plane get new records appended after all the others
  for (const [ia, ib] of L) {
    const a = V[ia], b = V[ib], oa = a.need === 1, ob = b.need === 1;
    if (oa && ob) continue;
    if (!oa && !ob) { out.push([a, b]); continue; }
    const inside = oa ? b : a, outside = oa ? a : b;                       // new end point on the near plane
    const t = f32(f32(K.near - inside.z) / f32(outside.z - inside.z));
    const n = { x: f32(f32(f32(outside.x - inside.x) * t) + inside.x), y: f32(f32(f32(outside.y - inside.y) * t) + inside.y), z: K.near, need: 0 };
    const iz = f32(1 / n.z); n.sy = f32(f32(f32(n.y * K.zoomY) * iz) + 100); n.sx = f32(f32(f32(n.x * K.zoom) * iz) + 160); n.iz = iz;
    n.code = (n.sy < 0 ? 8 : 0) | (f32(200 - n.sy) < 0 ? 4 : 0) | (n.sx < 0 ? 2 : 0) | (f32(320 - n.sx) < 0 ? 1 : 0);
    clipped.push([inside, n]);
  }
  return out.concat(clipped);
}
// Draw a line between two screen points (floats). table = filter table (64*256). Returns nothing.
export function drawLine(buf, tbl, p0, p1) {
  let x0 = f32(p0[0] - 0.5), y0 = f32(p0[1] - 0.5), x1 = f32(p1[0] - 0.5), y1 = f32(p1[1] - 0.5);
  const tr = Math.trunc;
  for (let pass = 0; pass < 2; pass++) {            // clip the first end point against the 4 edges, then swap and clip the other
    if (x0 < 0) { const d = tr(x1 - x0); if (d === 0) return; y0 = f32(f32(f32(0 - x0) * f32(y1 - y0)) / f32(x1 - x0)) + y0; x0 = 0; }
    if (y0 < 0) { const d = tr(y1 - y0); if (d === 0) return; x0 = f32(f32(f32(0 - y0) * f32(x1 - x0)) / f32(y1 - y0)) + x0; y0 = 0; }
    if (f32(319 - x0) < 0) { const d = tr(x1 - x0); if (d === 0) return; y0 = f32(f32(f32(319 - x0) * f32(y1 - y0)) / f32(x1 - x0)) + y0; x0 = 319; }
    if (f32(199 - y0) < 0) { const d = tr(y1 - y0); if (d === 0) return; x0 = f32(f32(f32(199 - y0) * f32(x1 - x0)) / f32(y1 - y0)) + x0; y0 = 199; }
    [x0, y0, x1, y1] = [x1, y1, x0, y0];
  }
  const xa = tr(x0), ya = tr(y0), xb = tr(x1), yb = tr(y1);
  if (Math.abs(yb - ya) >= Math.abs(xb - xa)) {      // y-major: one step per row, two pixels per row
    let sx = x0, sy = y0, ex = x1, ey = y1, ys = ya, ye = yb;
    if (!(ya < yb)) { [sx, sy, ex, ey, ys, ye] = [ex, ey, sx, sy, ye, ys]; }
    const m = f32(f32(ex - sx) / f32(ey - sy));
    let x = tr(f32(f32(f32(ys - sy) * m) + sx) * 65536); const step = tr(m * 65536); let n = ye - ys; if (n === 0) return;
    let row = ys * W;
    for (; n > 0; n--) { x += step; row += W; const xi = x >>> 16, fr = (x >>> 11) & 31; const o = row + xi; buf[o] = tbl[((31 - fr) << 8) | buf[o]]; buf[o + 1] = tbl[(fr << 8) | buf[o + 1]]; }
  } else {                                           // x-major
    let sx = x0, sy = y0, ex = x1, ey = y1, xs = xa, xe = xb;
    if (!(xa < xb)) { [sx, sy, ex, ey, xs, xe] = [ex, ey, sx, sy, xe, xs]; }
    const m = f32(f32(ey - sy) / f32(ex - sx));
    let y = tr(f32(f32(f32(xs - sx) * m) + sy) * 65536); const step = tr(m * 65536); let n = xe - xs; if (n === 0) return;
    let col = xs;
    for (; n > 0; n--) { y += step; col++; const yi = y >>> 16, fr = (y >>> 11) & 31; const o = yi * W + col; buf[o] = tbl[((31 - fr) << 8) | buf[o]]; buf[o + W] = tbl[(fr << 8) | buf[o + W]]; }
  }
}
