// Part 1 timer-ISR (0x2d8d0) ported: per-tick state of the "saint" tunnel. Called once per 70 Hz retrace tick with the music's (order,row).
const f32 = Math.fround;
export function tickP1(S, order, row, tbl) {
  S.frame++;
  if (order === 4 && row >= 0x3c) { S.palC.fill(0); S.blink++; S.v4698 = ((S.blink & 3) >> 1) << 10; }      // black flash pulses before order 5
  let edi = S.v4698, ebp = tbl[S.v4694];
  if (order >= 5 && row >= 0x30) { S.palC.fill(63); S.fade -= 12; if (S.fade <= 0) S.fade = 0; }              // final fade to white
  if (order >= 5) ebp = S.fade;
  S.dacEdi = edi; S.dacEbp = ebp;                                                                                // DAC = lerp(lerp(palA,palB,edi),palC,ebp), see palette()
  S.v4694 += 2; if (S.v4694 >= 0x7f) S.v4694 = 0x7f;
  S.v4698 = 1023 - Math.round(Math.cos(S.pulse) * 511 + 511); S.pulse = f32(S.pulse + S.pulseStep);          // palette A/B pulsing
  if (order >= 3) {
    if (row >= 0x20) ebp = tbl[0x7f];
    if (order !== 5 && row === 0x1e) S.v4694 = 0;
  }
  if (order === 4) ebp = tbl[0x7f];
  ebp = 1023 - ebp;                                                                                              // camera speed rises while the palette ramp is "open"
  const s = ebp * S.speed / 150 + S.speed;
  S.t1 += s; S.t2 += s; S.scroll += 0.05;
  S.a7f30 = f32(S.a7f30 + S.a7f34); S.a7f38 = f32(S.a7f38 + S.a7f3c);                                           // wobble phases
  if (S.blendOn === 0 && S.blendT === 0 && S.idx1 >= 0x140) { S.blendOn = 1; S.blendT = 0; }                    // start morphing plane-warp -> cylinder-warp
  if (S.blendOn) {
    S.blend = f32(S.blend + S.blendV); S.blendV = f32(S.blendV + S.blendA); S.blendT++;
    if (S.blendT >= 500) { S.blend = 0; S.blendOn = 0; const w = S.warp; S.warp = S.warp2; S.warp2 = w; }
  }
  S.rot += 0x4d9;
}
