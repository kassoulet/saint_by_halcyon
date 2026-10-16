import { loadB, PB, TICK } from '../parts/pb.js';
import { orderRow, ready } from '../musicpos.js';
const START = 128;
let pb = null, loading = null;
const prepare = () => { loading ??= Promise.all([loadB(), ready]).then(([a]) => { pb = new PB(a); }); return loading; };
export const partB = { name: 'part 6 — wire cone & shards', start: START, end: 135.111, prepare,
  render(scr, lt, t) {
    if (!pb) { prepare(); return; }
    const n = Math.floor(lt * TICK);
    if (n < pb.ticks) pb.reset();
    pb.advance(n, k => orderRow(START + k / TICK));
    pb.render(scr.idx, scr.pal);
  } };
