// Part 2 timer-ISR (0x31530) ported: orange black-hole tunnel with the morphing star. (order,row) come from the music.
const f32 = Math.fround;
export function tickP2(S, order, row, ease) {
  S.frame++;
  const fadeOut = order >= 0xb && row >= 0x30;
  if (fadeOut) { S.speed += 0.0006145599763840437; S.palC.fill(63); S.fade -= 12; if (S.fade <= 0) S.fade = 0; }   // final fade to white
  let ebp = ease[S.v4694];
  if (fadeOut) ebp = S.fade;
  S.dacEdi = S.v4698; S.dacEbp = ebp;
  S.v4694 += 2; if (S.v4694 >= 0x7f) S.v4694 = 0x7f;
  if (!(order === 6 && row === 0) && row === 0) S.v4694 = 0;                                                    // palette flash at every order start
  let x = (Math.cos(S.pulse) + 1) / 2; if (order >= 0xa) x = 0;
  x = x * S.speed + S.speed; S.t1 += x; S.t2 += x;
  S.v4698 = 1023 - Math.round(Math.cos(S.pulse) * 511 + 511); S.pulse = f32(S.pulse + S.pulseStep);
  S.flagA = order === 7 ? 1 : 0;
  S.a7f30 = f32(S.a7f30 + S.a7f34); S.a7f38 = f32(S.a7f38 + S.a7f3c);
  if (S.idx1 >= 0x78) S.starOn = 1;
  if (S.idx1 >= 0x168) S.flares = 0;
  if (S.blendT === 0 && !S.blendOn && S.idx1 >= 0x1b8) { S.speed = 0x42 / 0x2710; S.blendOn = 1; S.blendT = 0; }
  if (S.blendOn) {
    S.blend = f32(S.blend + 0.0010204081190750003); S.blendT++;
    if (S.blend >= 1) { S.blend = 0; S.blendOn = 0; const w = S.warp; S.warp = S.warp2; S.warp2 = w; }
  }
  S.morph = Math.sin(Math.sin(S.v46ac / 65536 * 3) * Math.cos(S.v46a8 / 65536 * 3)) * 4;                       // star morph weight (not limited to 0..1)
  S.v46a8 += 0x26c; S.v46ac += 0x460;
  S.rot += 1; 
}
