// Tunnel renderer of the "kolmedee" engine (ported from the P1/P2/P3 main loops).
// Pipeline: 41x26 grid of view-space vertices -> rotate by camera matrix + camera position -> warp (ray cast) -> (u,v,shade) per vertex
// -> bilinear interpolation over 8x8 blocks in 16.8 fixed point -> two table lookups per pixel: shade[z][tex[v][u]].
const f32 = Math.fround, W = 320, GW = 41, GH = 26;

// Warp functions: ray from camera O (pos) to grid point P (world) -> [u, v, shade] (each scaled later by 65535). Returns null when the ray misses.
export const warps = {
  // 0x2a30b : inside a sphere of radius sqrt(190000) centred on the origin; u,v = hit coordinates*1.5 (wrapping texture), fog by distance
  sphere(O, P, k) {
    const dx = P[0] - O[0], dy = P[1] - O[1], dz = P[2] - O[2];
    const a = dx * dx + dy * dy + dz * dz, b = 2 * (dx * O[0] + dy * O[1] + dz * O[2]), c = O[0] * O[0] + O[1] * O[1] + O[2] * O[2] - 190000;
    let t = (-Math.sqrt(b * b - 4 * a * c) - b) / (2 * a);
    if (k.flagA) t += Math.sin(k.stale * k.s1) * k.s2;
    return [(O[2] + dz * t) * 1.5, (O[0] + dx * t) * 1.5, 63 - Math.min(-t * 1200, 63)];
  },
  // 0x29d9a : inside a cylinder of radius 32 around the z axis (quadratic), wobble on t, u = angle, v = along the axis, fog by distance
  cylinder(O, P, k) {
    const dx = P[0] - O[0], dy = P[1] - O[1], dz = P[2] - O[2];
    const a = dx * dx + dy * dy, b = 2 * O[0] * dx + 2 * O[1] * dy, c = O[0] * O[0] + O[1] * O[1] - 1024;
    const t = -(Math.sqrt(b * b - 4 * a * c) + b) / (2 * a);
    const hx = k.flagA ? P[0] : O[0] + dx * t;
    const tw = t + Math.sin(hx * k.a1) * k.a2;
    const u = Math.abs(Math.atan2(dx * tw + O[0], dy * tw + O[1]) * (1 / Math.PI)) * 255, v = O[2] + dz * tw;
    return [u, v, 63 - Math.min(Math.max(-tw * 3500, 0), 63)];
  },
  // 0x2a22a : intersection with the plane z=-300, (u,v) = hit point * 0.16 + 128, fog by distance (part C)
  plane2(O, P, k) {
    const t = (-300 - O[2]) / (P[2] - O[2]);
    if (!(f32(t) < 0)) return [0, 0, 0];
    const u = f32(f32((O[0] + (P[0] - O[0]) * t) * f32(0.16)) + 128), v = f32(f32((O[1] + (P[1] - O[1]) * t) * f32(0.16)) + 128);
    return [u, v, 63 - Math.min(-t * 600, 63)];
  },
  // 0x2a0f5 : intersection with the plane z=-400, sinusoidal "water" wobble of the hit parameter, fog by distance
  plane(O, P, k) {
    const t = (-400 - O[2]) / (P[2] - O[2]);
    const hx = O[0] + (P[0] - O[0]) * t, hy = O[1] + (P[1] - O[1]) * t;
    const tw = t + Math.sin(hx * k.w1) * k.w2 + Math.cos(hy * k.w1) * k.w2;
    if (!(tw < 0)) return [0, 0, 0];
    const u = ((O[0] + (P[0] - O[0]) * tw) * 0.16 + 128), v = ((O[1] + (P[1] - O[1]) * tw) * 0.16 + 128);
    return [u, v, 63 - Math.min(-tw * 300, 63)];
  },
};

// grid: Float32Array(GH*GW*3); st = {pos[3], M[9], warp, k:{w1,w2}}; out: Uint8Array(64000), already cleared
export function renderTunnel(out, grid, tex, shade, st) {
  const V = new Int32Array(GH * GW * 3), O = st.pos, M = st.M, warp = warps[st.warp];
  for (let i = 0; i < GH * GW; i++) {
    const x = grid[i * 3], y = grid[i * 3 + 1], z = grid[i * 3 + 2];
    const P = [f32(M[0] * x + M[1] * y + M[2] * z + O[0]), f32(M[3] * x + M[4] * y + M[5] * z + O[1]), f32(M[6] * x + M[7] * y + M[8] * z + O[2])];
    let r = warp(O, P, st.k);
    if (st.warp2 && st.blend > 0) {                       // morph between two warps: new*b + old*(1-b), in float32 like the original
      const q = warps[st.warp2](O, P, st.k), b = st.blend;
      r = r.map((v, j) => f32(f32(f32(q[j]) * b) + f32(f32(1 - b) * f32(v))));
    }
    V[i * 3] = Math.round(r[0] * 65535); V[i * 3 + 1] = Math.round(r[1] * 65535); V[i * 3 + 2] = Math.round(r[2] * 65535);
  }
  blit8(out, V, tex, shade);
}
// 8x8 bilinear block interpolation of a 41x26 grid of (u,v,shade) 16.16 values, then shade[z][tex[v][u]]   [shared by parts D and the tunnels]
export function blit8(out, V, tex, shade) {
  for (let by = 0; by < GH - 1; by++) for (let bx = 0; bx < GW - 1; bx++) {
    const a = (by * GW + bx) * 3, b = a + 3, c = a + GW * 3, d = c + 3;
    if (V[a + 2] + V[b + 2] + V[c + 2] + V[d + 2] === 0) continue;
    let Lx = V[a], Ly = V[a + 1], Lz = V[a + 2], Rx = V[b], Ry = V[b + 1], Rz = V[b + 2];
    const dLx = (V[c] - Lx) >> 3, dLy = (V[c + 1] - Ly) >> 3, dLz = (V[c + 2] - Lz) >> 3;
    const dRx = (V[d] - Rx) >> 3, dRy = (V[d + 1] - Ry) >> 3, dRz = (V[d + 2] - Rz) >> 3;
    for (let k = 0; k < 8; k++) {
      const sx = (Rx - Lx) >> 11, sy = (Ry - Ly) >> 11, sz = (Rz - Lz) >> 11;
      let x = Lx >> 8, y = Ly >> 8, z = Lz >> 8, o = (by * 8 + k) * W + bx * 8;
      for (let i = 0; i < 8; i++) {
        out[o++] = shade[(((z >> 8) & 255) << 8) | tex[(((y >> 8) & 255) << 8) | ((x >> 8) & 255)]];
        x += sx; y += sy; z += sz;
      }
      Lx += dLx; Ly += dLy; Lz += dLz; Rx += dRx; Ry += dRy; Rz += dRz;
    }
  }
}
