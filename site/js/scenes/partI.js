import { loadI, PI } from '../parts/pi.js';
import { orderRow, ready } from '../musicpos.js';
const TICK = 70.086;
let pi = null, loading = null;
export const partI = { name: 'intro — footage & logos', start: 0, end: 21.333,
  render(scr, lt, t) {
    if (!pi) { loading ??= Promise.all([loadI(), ready]).then(([a]) => { pi = new PI(a); }); return; }
    const n = Math.floor(lt * TICK);
    if (n + 1 < pi.ticks) pi.reset();
    pi.advance(n + 1, k => orderRow(k / TICK));
    pi.render(scr.idx, scr.pal, orderRow(t)[0]);
  } };
