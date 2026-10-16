import { loadF, PF, TICK } from '../parts/pf.js';
import { orderRow, ready } from '../musicpos.js';
const START = 182.326;
let pf = null, loading = null;
export const partF = { name: 'part 8 — cave & glowing star', start: START, end: 211.417,
  render(scr, lt, t) {
    if (!pf) { loading ??= Promise.all([loadF(), ready]).then(([a]) => { pf = new PF(a); }); return; }
    const n = Math.floor(lt * TICK);
    if (n + 1 < pf.ticks) pf.reset();
    pf.advance(n + 1, k => orderRow(START + k / TICK));
    pf.render(scr.idx, scr.pal);
  } };
