import { loadE, PE, TICK } from '../parts/pe.js';
import { orderRow, ready } from '../musicpos.js';
const START = 145.963;
let pe = null, loading = null;
export const partE = { name: 'part 7 — bull & squashed sphere', start: START, end: 182.326,
  render(scr, lt, t) {
    if (!pe) { loading ??= Promise.all([loadE(), ready]).then(([a]) => { pe = new PE(a); }); return; }
    const n = Math.floor(lt * TICK);
    if (n + 1 < pe.ticks) pe.reset();
    pe.advance(n + 1, k => orderRow(START + k / TICK));
    const [o, r] = orderRow(t);
    pe.render(scr.idx, scr.pal, o, r);
  } };
