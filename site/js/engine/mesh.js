// 3D mesh pipeline of the engine (ports of 0x150d4 cull, 0x15f1b/0x160b5 matrices, 0x16100 back-face, 0x16244 transform,
// 0x162fd project, 0x16ea7 face list, 0x170f7 radix sort, 0x14d54.. clipper, 0x1fc7b filter-triangle raster).
const f32 = Math.fround, W = 320, H = 200;
export const rint = v => { const r = Math.round(v); return (Math.abs(v - Math.trunc(v)) === 0.5 && (r & 1)) ? r - 1 : r; };   // fistp: round half to even

// object -> world 4x4 (row vectors) from three angles (radians) , scale and position   [0x15f1b]
export function objMatrix(a, b, c, s, p) {
  const ca = Math.cos(a), sa = Math.sin(a), cb = Math.cos(b), sb = Math.sin(b), cc = Math.cos(c), sc = Math.sin(c);
  return [ (cc * cb + sc * sa * sb) * s, sc * ca * s, (cc * -sb + sc * sa * cb) * s, 0,
           (-sc * cb + cc * sa * sb) * s, cc * ca * s, (sc * sb + cc * sa * cb) * s, 0,
           ca * sb * s, -sa * s, ca * cb * s, 0,
           p[0], p[1], p[2], 1 ];
}
export function mul4(A, B) { const R = new Array(16); for (let i = 0; i < 4; i++) for (let j = 0; j < 4; j++) R[i * 4 + j] = A[i * 4] * B[j] + A[i * 4 + 1] * B[4 + j] + A[i * 4 + 2] * B[8 + j] + A[i * 4 + 3] * B[12 + j]; return R; }

// Frustum/sphere cull of all objects (sets obj.hidden) and the depth range used for the sort keys   [0x150d4]
export function cullObjects(objs, cam, K) {
  const ax = Math.atan2(K.zoom, K.w / 2), ay = Math.atan2(K.zoomY, K.h / 2);
  let zmin = K.k150c8, zmax = -K.k150c8;
  for (const o of objs) {
    const p = o.pos, vx = f32(p[0] * cam[0] + p[1] * cam[4] + p[2] * cam[8] + cam[12]), vy = f32(p[0] * cam[1] + p[1] * cam[5] + p[2] * cam[9] + cam[13]), z = f32(p[0] * cam[2] + p[1] * cam[6] + p[2] * cam[10] + cam[14]);
    const x = -Math.abs(vx), y = -Math.abs(vy);                    // the original flips the sign of positive x/y: both end up <= 0
    // signed distance of the bounding sphere centre from the side planes of the view frustum; outside -> hidden
    if (!(f32(Math.sqrt(x * x + z * z) * Math.sin(Math.atan2(z, x) - ax) - o.rad) < 0)) { o.hidden = 1; continue; }
    if (!(f32(Math.sqrt(y * y + z * z) * Math.sin(Math.atan2(z, y) - ay) - o.rad) < 0)) { o.hidden = 1; continue; }
    o.hidden = 0;
    const lo = f32(z - o.rad); if (f32(lo - zmin) < 0) zmin = lo;
    const hi = f32(z + o.rad); if (!(f32(hi - zmax) < 0)) zmax = hi;
  }
  K.zmin = zmin; K.zmax = zmax; K.zscale = f32(K.k150c4 / f32(zmax - zmin));
}

// transform + project the visible faces of one object, append (key, face) items to list   [0x16100,0x16244,0x162fd,0x16ea7]
export function processObject(o, cam, eye, K, list, eye2) {
  const Mo = objMatrix(o.rot[0] / 65536, o.rot[1] / 65536, o.rot[2] / 65536, o.scale, o.pos), Mv = mul4(Mo, cam);
  const d = [eye[0] - o.pos[0], eye[1] - o.pos[1], eye[2] - o.pos[2]];
  const ev = [0, 0, 0];                                                   // eye in object space: w * Mo^T, out_j = sum_k w_k Mo[j][k]
  for (let j = 0; j < 3; j++) ev[j] = d[0] * Mo[j * 4] + d[1] * Mo[j * 4 + 1] + d[2] * Mo[j * 4 + 2];
  const V = o.verts.map((v, i) => ({ m: v, need: 1, x: 0, y: 0, z: 0, sx: 0, sy: 0, iz: 0, code: 0, u: v[3], v: v[4], I: 0, nrm: o.vnorm ? o.vnorm[i] : null })), F = o.faces;
  for (const f of F) { f.vis = (ev[0] * f.n[0] + ev[1] * f.n[1] + ev[2] * f.n[2] + f.n[3]) < 0 ? 1 : 0; if (!f.vis) for (const i of f.v) V[i].need = 0; }
  for (const v of V) if (!v.need) {                                    // view space
    const m = v.m; v.x = f32(m[0] * Mv[0] + m[1] * Mv[4] + m[2] * Mv[8] + Mv[12]); v.y = f32(m[0] * Mv[1] + m[1] * Mv[5] + m[2] * Mv[9] + Mv[13]); v.z = f32(m[0] * Mv[2] + m[1] * Mv[6] + m[2] * Mv[10] + Mv[14]);
    v.need = (f32(K.near - v.z) < 0) ? 1 : 0;
  }
  if (K.faceLevel) for (const f of F) f.lvl = K.faceLevel(f.idx);
  const E2 = eye2 || eye, d2 = [E2[0] - o.pos[0], E2[1] - o.pos[1], E2[2] - o.pos[2]], l2 = [0, 1, 2].map(j => d2[0] * Mo[j * 4] + d2[1] * Mo[j * 4 + 1] + d2[2] * Mo[j * 4 + 2]);
  const lit = v => {                                     // 0x1653f: I = 128 * (d.N)/|d|^2 clamped to 0..63, d = (second eye - vertex) in object space
    const dx = l2[0] - v.m[0], dy = l2[1] - v.m[1], dz = l2[2] - v.m[2];
    let i = ((dx * v.nrm[0] + dy * v.nrm[1] + dz * v.nrm[2]) / (dx * dx + dy * dy + dz * dz)) * (K.lightK ?? 128); v.I = i < 0 ? 0 : Math.min(63, i);
  };
  const extra = [];                                                         // near-plane clipping of faces (0x1592e): partly-behind faces become fans of new faces
  if (K.nearClip) F.forEach((f, fi) => {
    if (f.vis) return;
    const vs = f.v.map(i => V[i]), nb = vs.reduce((n, v) => n + (v.need === 1 ? 1 : 0), 0);
    if (nb === 0) return;
    f.vis = 1; if (nb === 3) return;
    const poly = [];
    if (o.vnorm) for (const v of vs) if (v.lit !== 1) { lit(v); v.lit = 1; }       // 0x15860 lights vertices before interpolating
    for (let e = 0; e < 3; e++) {
      const A = vs[e], B = vs[(e + 1) % 3];
      if (A.need !== 1) poly.push({ ...A, need: 0 });
      if ((A.need === 1) !== (B.need === 1)) {
        const t = f32(f32(K.near - A.z) / f32(B.z - A.z)), lerp = (p, q) => f32(f32(f32(q - p) * t) + p);
        poly.push({ m: A.m, need: 0, lit: 1, x: lerp(A.x, B.x), y: lerp(A.y, B.y), z: K.near, sx: 0, sy: 0, iz: 0, code: 0, u: lerp(A.u, B.u), v: lerp(A.v, B.v), I: lerp(A.I, B.I) });
      }
    }
    for (let k = 1; k + 1 < poly.length; k++) extra.push({ vv: [poly[0], poly[k], poly[k + 1]], n: f.n, lvl: f.lvl, vis: 0, c: f.c });
    V.push(...poly);
  });
  for (const v of V) if (v.need !== 1) {                               // perspective
    const iz = f32(1 / v.z), y = f32(f32(f32(v.y * K.zoomY) * iz) + 100), x = f32(f32(f32(v.x * K.zoom) * iz) + 160);
    v.sx = x; v.sy = y; v.iz = iz;
    v.code = (y < 0 ? 8 : 0) | (f32(H - y) < 0 ? 4 : 0) | (x < 0 ? 2 : 0) | (f32(W - x) < 0 ? 1 : 0);
  }
  for (const v of V) v.need = 1;
  for (const f of [...F, ...extra]) {
    if (f.vis === 1) continue;
    const [a, b, c] = f.vv || [V[f.v[0]], V[f.v[1]], V[f.v[2]]];
    if (a.code & b.code & c.code) continue;
    const s = [a, b, c].reduce((n, v) => n + (f32(K.far - v.z) < 0 ? -1 : 0), 0);
    if (s === 0) continue;
    a.need = b.need = c.need = 0;
    if (o.vnorm) for (const v of [a, b, c]) if (v.lit !== 1) { lit(v); v.lit = 1; }
    if (K.faceLevel) { /* preset above */ } else if (!K.textured) f.lvl = Math.min(0x3f, Math.max(0, rint(f.n[0] * Mv[2] + f.n[1] * Mv[6] + f.n[2] * Mv[10])));      // filter strength = how much the face looks at the camera
    const sum = f32(f32(f32(a.z - K.zmax) * K.zscale) + f32(f32(b.z - K.zmax) * K.zscale) + f32(f32(c.z - K.zmax) * K.zscale));
    list.push({ key: (0xffff - rint(-sum)) & 0xffff, kind: 'tri', f, a, b, c });
  }
}
// stable radix sort on the 16-bit key, low byte first   [0x170f7]
export const sortList = L => L.map((e, i) => [e, i]).sort((p, q) => (p[0].key - q[0].key) || (p[1] - q[1])).map(p => p[0]);

// Sutherland-Hodgman against y>=0, y<=200, x>=0, x<=320 like 0x14d54/0x14e3a/0x14f28/0x14fed
export function clipTri(a, b, c) {
  let P = [a, b, c].map(v => ({ sx: v.sx, sy: v.sy, iz: v.iz }));
  const edges = [ // [axis(0=y,1=x), side(keep>=bound: 0 / keep<=bound: 1), bound]
    ['sy', 0, 0], ['sy', 1, H], ['sx', 0, 0], ['sx', 1, W] ];
  for (const [ax, hi, bound] of edges) {
    const Q = [], n = P.length;
    for (let i = 0; i < n; i++) {
      const c = P[i], d = P[(i + 1) % n], oc = hi ? f32(bound - c[ax]) < 0 : c[ax] < 0, od = hi ? f32(bound - d[ax]) < 0 : d[ax] < 0;
      if (!oc) Q.push(c);
      if (oc !== od) {
        const t = f32(f32(bound - c[ax]) / f32(d[ax] - c[ax])), o = ax === 'sy' ? 'sx' : 'sy', v = { sx: 0, sy: 0, iz: 0 };
        v[ax] = bound; v[o] = f32(f32(f32(d[o] - c[o]) * t) + c[o]); v.iz = f32(f32(f32(d.iz - c.iz) * t) + c.iz); Q.push(v);
      }
    }
    P = Q; if (P.length < 3) return [];
  }
  return P;
}

// NOTE: the drawing stage runs with the FPU in round-toward-zero mode (fldcw 0xC00), hence Math.trunc below.
// Filter triangle raster 0x1fc7b: every covered pixel p becomes table[(level>>2)*256 + p]
export function filterTri(buf, tbl, a, b, c, level) {                    // tbl === null -> flat fill with colour `level` (raster 0x1fa32)
  let [s, e, p] = [a, b, c].sort((u, v) => u.sy - v.sy);                     // unsigned float-bit compare == ascending for y >= 0
  const y0 = Math.trunc(s.sy), y1 = Math.trunc(e.sy), y2 = Math.trunc(p.sy);
  if (y2 - y0 === 0) return;
  const lv = (level >> 2) << 8;
  const sl = f32(f32(p.sx - s.sx) / f32(p.sy - s.sy));                                       // long edge slope  [0x1f92c]
  let xl = Math.trunc(f32(f32(f32(y0 - s.sy) * sl) + s.sx) * 65536);                               // long edge x at y0 [0x1f940]
  const A = { slope: sl, x: xl }, Bv = { slope: 0, x: 0 };
  const row = (y, ls, rs, lx, rx, n) => {                                                    // returns final lx, rx
    for (let i = 0; i < n; i++, y++) { rx += rs; lx += ls; let L = lx >> 16, cnt = (rx >> 16) - L, o = y * W + L; if (tbl) for (; cnt > 0; cnt--, o++) buf[o] = tbl[lv + buf[o]]; else for (; cnt > 0; cnt--, o++) buf[o] = level; }
    return [lx, rx];
  };
  let n1 = y1 - y0;
  if (n1 !== 0) {
    Bv.slope = f32(f32(e.sx - s.sx) / f32(e.sy - s.sy)); Bv.x = Math.trunc(f32(f32(f32(y0 - s.sy) * Bv.slope) + s.sx) * 65536);
    let L = A, R = Bv; if (f32(Bv.slope - A.slope) < 0) { L = Bv; R = A; }
    const [lx, rx] = row(y0, Math.trunc(f32(L.slope * 65536)), Math.trunc(f32(R.slope * 65536)), L.x, R.x, n1);
    L.x = lx; R.x = rx;
  }
  const n2 = y2 - y1;
  if (n2 === 0) return;
  Bv.slope = f32(f32(p.sx - e.sx) / f32(p.sy - e.sy)); Bv.x = Math.trunc(f32(f32(f32(y1 - e.sy) * Bv.slope) + e.sx) * 65536);
  let L = A, R = Bv; if (!(f32(Bv.slope - A.slope) < 0)) { L = Bv; R = A; }
  row(y1, Math.trunc(f32(L.slope * 65536)), Math.trunc(f32(R.slope * 65536)), L.x, R.x, n2);
}

// ---- flares (handler 0x2d417 + scaled sprite blit 0x298b7) ----
export function flareItems(objs, cam, K, list, size = -16, num = 255) {
  const k28 = f32(num / f32(f32(f32(size) * 2) * K.zoom));
  objs.forEach((o, k) => {
    const p = o.pos, x = f32(p[0] * cam[0] + p[1] * cam[4] + p[2] * cam[8] + cam[12]), y = f32(p[0] * cam[1] + p[1] * cam[5] + p[2] * cam[9] + cam[13]), z = f32(p[0] * cam[2] + p[1] * cam[6] + p[2] * cam[10] + cam[14]);
    if (!(z < 0)) return;
    const iz = f32(1 / z), sy = f32(f32(f32(y * K.zoomY) * iz) + 100), sx = f32(f32(f32(x * K.zoom) * iz) + 160);
    list.push({ key: (0xffff - rint(-(f32(f32(z - K.zmax) * K.zscale) * 3))) & 0xffff, kind: 'flare', z, iz, sx, sy, k28 });
  });
}
// sprites: 64KB-addressed glow bitmaps (256 wide), sprPtr/sprScale: 64-entry tables by size index
export function drawFlare(buf, fl, S, K, size = -16) {
  const t = fl.k28 * fl.z * 255, idx = Math.min(0x3f, (Math.trunc(t) >>> 8)), spr = S.ptr[idx];
  const sc = f32(fl.k28 * fl.z * S.scale[idx]), step = Math.trunc(sc * 255);
  const r = f32(f32(f32(size) * K.zoom) * fl.iz);
  const x0 = f32(fl.sx - r), y0 = f32(fl.sy - r), x1 = f32(fl.sx + r), y1 = f32(fl.sy + r);
  let xi0 = Math.trunc(x0), yi0 = Math.trunc(y0), xi1 = Math.trunc(x1), yi1 = Math.trunc(y1);
  if (yi1 < 0 || yi0 > 199 || xi1 < 0 || xi0 > 319) return;
  let u0 = Math.trunc((xi0 - x0) * sc * 255), v0 = Math.trunc((yi0 - y0) * sc * 255);
  if (xi0 <= 0) { xi0 = -xi0; u0 += xi0 * step; xi0 = 0; }
  if (xi1 >= 0x140) xi1 = 0x140;
  if (yi0 <= 0) { yi0 = -yi0; v0 += yi0 * step; yi0 = 0; }
  if (yi1 >= 0xc8) yi1 = 0xc8;
  const w = xi1 - xi0, rows = yi1 - yi0; if (w === 0 || rows === 0) return;
  let v = v0;
  for (let j = 0; j < rows; j++) {
    v += step; let u = u0 + step, o = (yi0 + j) * 320 + xi0;
    for (let i = 0; i < w; i++, o++) { const lv = S.spr[spr + (((v >> 8) & 255) << 8 | ((u >> 8) & 255))]; buf[o] = S.filter[(lv << 8) | buf[o]]; u += step; }
  }
}

// ---- smooth-shaded textured mesh support (part 2 star) ----
// face planes and averaged vertex normals, recomputed every frame because the mesh morphs   [0x1725c]
export function meshNormals(o) {
  const cnt = new Array(o.verts.length).fill(0), vn = o.verts.map(() => [0, 0, 0]);
  for (const f of o.faces) {
    const [a, b, c] = f.v.map(i => o.verts[i]);
    const e1 = [b[0] - a[0], b[1] - a[1], b[2] - a[2]], e2 = [c[0] - a[0], c[1] - a[1], c[2] - a[2]];
    const cr = [e1[1] * e2[2] - e2[1] * e1[2], e1[2] * e2[0] - e1[0] * e2[2], e1[0] * e2[1] - e2[0] * e1[1]], k = 63 / Math.hypot(cr[0], cr[1], cr[2]);
    const n = [cr[0] * k, cr[1] * k, cr[2] * k];
    f.n = [n[0], n[1], n[2], -(n[0] * a[0] + n[1] * a[1] + n[2] * a[2])];
    for (const i of f.v) { cnt[i]++; vn[i][0] += n[0]; vn[i][1] += n[1]; vn[i][2] += n[2]; }
  }
  o.vnorm = vn.map((v, i) => cnt[i] ? [v[0] / cnt[i], v[1] / cnt[i], v[2] / cnt[i]] : v);
}
// clip a textured polygon: attributes are interpolated as attr/z (perspective-correct) like 0x14d54
export function clipPoly(P) {
  for (const [ax, hi, bound] of [['sy', 0, 0], ['sy', 1, H], ['sx', 0, 0], ['sx', 1, W]]) {
    const Q = [], n = P.length;
    for (let i = 0; i < n; i++) {
      const c = P[i], d = P[(i + 1) % n], oc = hi ? f32(bound - c[ax]) < 0 : c[ax] < 0, od = hi ? f32(bound - d[ax]) < 0 : d[ax] < 0;
      if (!oc) Q.push(c);
      if (oc !== od) {
        const t = (bound - c[ax]) / (d[ax] - c[ax]), o = ax === 'sy' ? 'sx' : 'sy', v = {};
        v[ax] = bound; v[o] = (d[o] - c[o]) * t + c[o]; v.iz = (d.iz - c.iz) * t + c.iz;
        for (const k of ['u', 'v', 'I']) v[k] = ((d[k] * d.iz - c[k] * c.iz) * t + c[k] * c.iz) / v.iz;
        Q.push(v);
      }
    }
    P = Q; if (P.length < 3) return [];
  }
  return P;
}
// perspective-correct textured + Gouraud triangle: colour = shade[I][tex[v][u]]
export function texTri(buf, tex, shade, a, b, c) {
  const [s, e, p] = [a, b, c].sort((u, v) => u.sy - v.sy);
  const y0 = Math.trunc(s.sy), y1 = Math.trunc(e.sy), y2 = Math.trunc(p.sy); if (y2 === y0) return;
  const g = v => [v.iz, v.u * v.iz, v.v * v.iz, v.I * v.iz];
  const A = g(s), B = g(e), C = g(p), area = (e.sx - s.sx) * (p.sy - s.sy) - (p.sx - s.sx) * (e.sy - s.sy);
  if (area === 0) return;
  const gx = [], gy = [];                                                  // plane gradients of the 4 interpolants
  for (let k = 0; k < 4; k++) {
    gx[k] = ((B[k] - A[k]) * (p.sy - s.sy) - (C[k] - A[k]) * (e.sy - s.sy)) / area;
    gy[k] = ((C[k] - A[k]) * (e.sx - s.sx) - (B[k] - A[k]) * (p.sx - s.sx)) / area;
  }
  const sl = (p.sx - s.sx) / (p.sy - s.sy);
  for (let y = y0; y < y2; y++) {
    const ya = y + 1, xl0 = s.sx + (ya - s.sy) * sl;
    let xs = ya < e.sy ? s.sx + (ya - s.sy) * (e.sx - s.sx) / (e.sy - s.sy) : e.sx + (ya - e.sy) * (p.sx - e.sx) / (p.sy - e.sy);
    let L = Math.trunc(Math.min(xl0, xs)), Rr = Math.trunc(Math.max(xl0, xs)), o = y * W + L;
    for (let x = L; x < Rr; x++, o++) {
      const dx = x - s.sx, dy = ya - s.sy, iz = A[0] + gx[0] * dx + gy[0] * dy;
      const u = Math.floor((A[1] + gx[1] * dx + gy[1] * dy) / iz) & 255, v = Math.floor((A[2] + gx[2] * dx + gy[2] * dy) / iz) & 255;
      const I = Math.max(0, Math.min(63, Math.floor((A[3] + gx[3] * dx + gy[3] * dy) / iz)));
      buf[o] = shade[(I << 8) | tex[(v << 8) | u]];
    }
  }
}
