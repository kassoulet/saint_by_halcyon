import { loadD, PD } from '../parts/pd.js';
import { orderRow, ready } from '../musicpos.js';
const START = 113.778, TICK = 70.086;
let pd = null, loading = null;
const prepare = () => { loading ??= Promise.all([loadD(), ready]).then(([a]) => { pd = new PD(a); }); return loading; };
export const partD = { name: 'part 4 — metaballs & titles', start: START, end: 120.889, prepare,
  render(scr, lt) {
    if (!pd) { prepare(); return; }
    const n = Math.floor(lt * TICK);
    if (n + 1 < pd.ticks) pd.reset();
    pd.advance(n + 1, k => orderRow(START + k / TICK));
    pd.render(scr.idx, scr.pal);
  } };
