import { loadP1, P1, TICK } from '../parts/p1.js';
import { orderRow, ready } from '../musicpos.js';
const START = 14.222;
let p1 = null, loading = null;
const prepare = () => { loading ??= Promise.all([loadP1(), ready]).then(([a]) => { p1 = new P1(a); }); return loading; };
export const part1 = { name: 'part 1 — "saint" tunnel', start: START, end: 35.111, prepare,
  render(scr, lt, t) {
    if (!p1) { prepare(); return; }
    const n = Math.floor(lt * TICK);
    if (n < p1.ticks) p1.reset();                                    // backwards seek: replay from the start of the part
    p1.advance(n, k => orderRow(START + k / TICK));
    const [o, r] = orderRow(t);
    p1.render(scr.idx, scr.pal, o, r);
  } };
