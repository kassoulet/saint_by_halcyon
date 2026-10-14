import { loadP3, P3, TICK } from '../parts/p3.js';
import { orderRow, ready } from '../musicpos.js';
const START = 81.778;
let p3 = null, loading = null;
export const part3 = { name: 'part 3 — space', start: START, end: 117.34,
  render(scr, lt, t) {
    if (!p3) { loading ??= Promise.all([loadP3(), ready]).then(([a]) => { p3 = new P3(a); }); return; }
    const n = Math.floor(lt * TICK);
    if (n < p3.ticks) p3.reset();
    p3.advance(n, k => orderRow(START + k / TICK));
    const [o, r] = orderRow(t);
    p3.render(scr.idx, scr.pal, o, r);
  } };
