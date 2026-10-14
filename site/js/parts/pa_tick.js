// Part A timer-ISR (0x3a9e0): camera speed constant, palette fade-in (+16/tick up to 1023) and fade-out in the last half-order.
const f32 = Math.fround;
export function tickA(S, order, row, fadeOrder = 0x19) {
  S.frame++;
  S.dacEdi = S.v4698; S.dacEbp = S.v4694;
  if (order >= fadeOrder && row >= 0x20) { S.v4694 -= 0x10; if (S.v4694 <= 0) S.v4694 = 0; }
  else { S.v4694 += 0x10; if (S.v4694 >= 0x3ff) S.v4694 = 0x3ff; }
  S.v4698 = 0x3ff - Math.round(Math.cos(S.pulse) * 511 + 511); S.pulse = f32(S.pulse + S.pulseStep);
  S.t1 += S.speed; S.t2 += S.speed;
}
