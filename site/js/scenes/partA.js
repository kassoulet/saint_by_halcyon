import { loadA, PA, TICK } from '../parts/pa.js';
import { orderRow, ready } from '../musicpos.js';
const START = 120.889;
let pa = null, loading = null;
const prepare = () => { loading ??= Promise.all([loadA(), ready]).then(([a]) => { pa = new PA(a); }); return loading; };
export const partA = { name: 'part 5 — landscape', start: START, end: 128, prepare,
  render(scr, lt, t) {
    if (!pa) { prepare(); return; }
    const n = Math.floor(lt * TICK);
    if (n < pa.ticks) pa.reset();
    pa.advance(n, k => orderRow(START + k / TICK));
    pa.render(scr.idx, scr.pal);
  } };
