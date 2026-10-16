import { loadP2, P2, TICK } from '../parts/p2.js';
import { orderRow, ready } from '../musicpos.js';
const START = 35.111;
let p2 = null, loading = null;
const prepare = () => { loading ??= Promise.all([loadP2(), ready]).then(([a]) => { p2 = new P2(a); }); return loading; };
export const part2 = { name: 'part 2 — black hole & star', start: START, end: 78.222, prepare,
  render(scr, lt, t) {
    if (!p2) { prepare(); return; }
    const n = Math.floor(lt * TICK);
    if (n < p2.ticks) p2.reset();
    p2.advance(n, k => orderRow(START + k / TICK));
    const [o, r] = orderRow(t);
    p2.render(scr.idx, scr.pal, o, r);
  } };
