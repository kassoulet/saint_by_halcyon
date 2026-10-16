import { loadI, PI } from '../parts/pi.js';
import { orderRow, ready } from '../musicpos.js';
const TICK = 70.086, START = 135.111;
// the sequencer calls the intro routine again between B and E (until order 30): footage from frame 100, no logos (orders 28-29), white-flash rows
// state at its first tick, read from the running original: [49ba8]=16, [49b8c]=120240, [49b90]=160320, [49948]=100, palette C all 0x3f
const INIT = { stage: 100, ba8: 16, b8c: 120240, b90: 160320, white: true };
let pi = null, loading = null;
export const partI2 = { name: 'intro footage, again', start: START, end: 145.963,
  render(scr, lt, t) {
    if (!pi) { loading ??= Promise.all([loadI(), ready]).then(([a]) => { pi = new PI(a, INIT); }); return; }
    const n = Math.floor(lt * TICK);
    if (n + 1 < pi.ticks) pi.reset();
    pi.advance(n + 1, k => orderRow(START + k / TICK));
    pi.render(scr.idx, scr.pal, orderRow(t)[0]);
  } };
