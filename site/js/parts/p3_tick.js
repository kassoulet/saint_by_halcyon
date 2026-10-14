// Part 3 timer-ISR (0x35740) ported. Two camera paths (A/B) that the script cuts between, a warp morph, palette flashes at some order starts.
const f32 = Math.fround;
const FLASH = new Set([0xc, 0xe, 0x11, 0x12, 0x14, 0x15]);
export function tickP3(S, order, row, ease, script) {
  S.frame++;
  if (order >= 0x15) { S.palC.fill(0); S.f3272c -= 6; if (S.f3272c <= 0) S.f3272c = 0; }                   // end: fade to black
  let ebp = ease[S.v4694]; if (order >= 0x15) ebp = S.f3272c;
  S.dacEdi = S.v4698; S.dacEbp = ebp;
  S.v4694 += 2; if (S.v4694 >= 0x7f) S.v4694 = 0x7f;
  if (FLASH.has(order) && row === 0) S.v4694 = 0;
  S.v4698 = 1023 - Math.round(Math.cos(S.pulse) * 511 + 511); S.pulse = f32(S.pulse + S.pulseStep);
  ebp = 1023 - ebp;
  const sA = ebp * S.speedA / 300 + S.speedA; S.A.t += sA; S.A2.t += sA;
  if (f32(S.A.t) < 0) { S.A.t += 1; S.A.idx -= 0x28; if (S.A.idx <= 0) S.A.idx = S.A.count - 0x78; }
  if (!(S.A.t < 1)) { S.A.t -= 1; S.A.idx += 0x28; if (S.A.idx >= S.A.count - 0x78) S.A.idx = 0; }
  const sB = ebp * S.speedB / 300 + S.speedB; S.B.t += sB;
  if (f32(S.B.t) < 0) { S.B.t += 1; S.B.idx -= 0x28; if (S.B.idx <= 0) S.B.idx = S.B.count - 0x78; }
  if (!(S.B.t < 1)) { S.B.t -= 1; S.B.idx += 0x28; if (S.B.idx >= S.B.count - 0x78) S.B.idx = 0; }
  S.a7f30 = f32(S.a7f30 + S.a7f34); S.a7f38 = f32(S.a7f38 + S.a7f3c);
  for (const fp of S.flp) fp.t += fp.rate;                                                                // dust paths
  if (S.blendT === 0 && !S.blendOn && S.A.idx >= 0x410) { S.blendOn = 1; S.blendT = 0; }
  if (S.blendOn) { S.blend = f32(S.blend + S.blendRate); S.blendT++; if (S.blend >= 1) { S.blend = 0; S.blendOn = 0; const w = S.warp; S.warp = S.warp2; S.warp2 = w; } }
  const e = script[S.ptr];
  if (order >= e[0] && row >= e[1]) { S.ptr++; S.sel ^= 1; }                                              // script: advance + cut to the other camera path
}
