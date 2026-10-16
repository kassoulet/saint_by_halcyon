import { loadI, PI } from '../parts/pi.js';
import { orderRow, ready } from '../musicpos.js';
const TICK = 70.086, PRE = 27;   // the footage starts ~27 ticks before the music (measured: stage 141 at order 1 row 60)
let pi = null, loading = null;
export const partI = { name: 'intro — footage & logos', start: 0, end: 14.222,
  render(scr, lt, t) {
    if (!pi) { loading ??= Promise.all([loadI(), ready]).then(([a]) => { pi = new PI(a); }); return; }
    const n = Math.floor(lt * TICK) + PRE;
    if (n + 1 < pi.ticks) pi.reset();
    pi.advance(n + 1, k => orderRow(Math.max(0, (k - PRE) / TICK)));
    pi.render(scr.idx, scr.pal, orderRow(t)[0]);
  } };
