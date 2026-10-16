// Music time -> S3M (order,row), from tools/s3m_timeline.py (order start times and the start time of every row; speed/tempo changes included).
let starts = null, rows = null;
export const makeOrderRow = (orderTimes, rowTimes) => {
  const st = Object.entries(orderTimes).map(([o, t]) => [+o, t]);
  return t => {
    let o = 0; for (const [oo, tt] of st) { if (tt <= t) o = oo; else break; }
    const R = rowTimes[o]; let r = 0; while (r < 63 && R[r + 1] <= t + 1e-9) r++;
    return [o + 1, r];   // the demo's order counter [12bf] is the S3M order + 1
  };
};
let fn = null;
export const ready = typeof location === 'undefined' ? Promise.resolve() : Promise.all([fetch('assets/audio/order_times.json').then(r => r.json()), fetch('assets/audio/row_times.json').then(r => r.json())]).then(([o, r]) => { fn = makeOrderRow(o, r); });
export const orderRow = t => fn(t);
