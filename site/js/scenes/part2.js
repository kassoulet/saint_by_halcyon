import { loadP2, P2, TICK } from '../parts/p2.js';
import { orderRow, ready } from '../musicpos.js';
const START = 42.667;
let p2 = null, loading = null;
export const part2 = { name: 'part 2 — black hole & star', start: START, end: 81.778,
  render(scr, lt, t) {
    if (!p2) { loading ??= Promise.all([loadP2(), ready]).then(([a]) => { p2 = new P2(a); }); return; }
    const n = Math.floor(lt * TICK);
    if (n < p2.ticks) p2.reset();
    p2.advance(n, k => orderRow(START + k / TICK));
    const [o, r] = orderRow(t);
    p2.render(scr.idx, scr.pal, o, r);
  } };
