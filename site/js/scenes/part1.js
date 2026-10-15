import { loadP1, P1, TICK } from '../parts/p1.js';
import { orderRow, ready } from '../musicpos.js';
const START = 21.333;
let p1 = null, loading = null;
export const part1 = { name: 'part 1 — "saint" tunnel', start: START, end: 42.222,
  render(scr, lt, t) {
    if (!p1) { loading ??= Promise.all([loadP1(), ready]).then(([a]) => { p1 = new P1(a); }); return; }
    const n = Math.floor(lt * TICK);
    if (n < p1.ticks) p1.reset();                                    // backwards seek: replay from the start of the part
    p1.advance(n, k => orderRow(START + k / TICK));
    const [o, r] = orderRow(t);
    p1.render(scr.idx, scr.pal, o, r);
  } };
