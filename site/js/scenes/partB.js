import { loadB, PB, TICK } from '../parts/pb.js';
import { orderRow, ready } from '../musicpos.js';
const START = 131.556;
let pb = null, loading = null;
export const partB = { name: 'part 6 — wire cone & shards', start: START, end: 138.69,
  render(scr, lt, t) {
    if (!pb) { loading ??= Promise.all([loadB(), ready]).then(([a]) => { pb = new PB(a); }); return; }
    const n = Math.floor(lt * TICK);
    if (n < pb.ticks) pb.reset();
    pb.advance(n, k => orderRow(START + k / TICK));
    pb.render(scr.idx, scr.pal);
  } };
