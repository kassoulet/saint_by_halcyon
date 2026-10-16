import { loadC, PC, TICK } from '../parts/pc.js';
import { orderRow, ready } from '../musicpos.js';
const START = 211.417, END = 262.3;
let pc = null, loading = null;
const prepare = () => { loading ??= Promise.all([loadC(), ready]).then(([a]) => { pc = new PC(a); }); return loading; };
export const partC = { name: 'part 9 — gem, shards & dancer', start: START, end: END, prepare,
  render(scr, lt, t) {
    if (!pc) { prepare(); return; }
    const n = Math.floor(lt * TICK);
    if (n + 1 < pc.ticks || pc.S.final) pc.reset();
    pc.advance(n + 1, k => orderRow(START + k / TICK));
    const [o, r] = orderRow(t);
    pc.render(scr.idx, scr.pal, o, r);
  } };
// after the last order the demo shows a full-screen picture for 700 ticks (silence: the module has ended)
export const partFinal = { name: 'final picture', start: END, end: END + 10, prepare,
  render(scr, lt) {
    if (!pc) { prepare(); return; }
    const n = Math.floor(lt * TICK);
    if (!pc.S.final || n < pc.S.fticks) pc.startFinal();
    pc.advanceFinal(n + 1);
    pc.render(scr.idx, scr.pal, 45, 0);
  } };
