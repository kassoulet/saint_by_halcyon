// usage: node pd_frames.mjs <frames-dir> <start-time> k1,k2,...
import fs from 'fs'; import { PD } from '../../site/js/parts/pd.js';
const [dir, t0s, ks] = [process.argv[2], +process.argv[3], process.argv[4].split(',').map(Number)], A = '../../site/assets/pd/';
const b = n => new Uint8Array(fs.readFileSync(A + n)); const a = {}; for (const n of ['tex', 'shade', 'sheet', 'palA', 'palB', 'palC']) a[n] = b(n + '.bin'); a.sched = new Int32Array(b('sched.i32').slice().buffer);
import { makeOrderRow } from '../../site/js/musicpos.js';
const orderRow = makeOrderRow(JSON.parse(fs.readFileSync('../../site/assets/audio/order_times.json')), JSON.parse(fs.readFileSync('../../site/assets/audio/row_times.json')));
const p = new PD(a), out = new Uint8Array(64000), pal = new Uint8Array(768);
for (const k of ks) {
  p.advance(k + 1, q => orderRow(t0s + q / 70.086)); p.render(out, pal);
  const ref = fs.readFileSync(`${dir}/f${k}.bin`); let d = 0, dp = 0; const mk = new Uint8Array(64000);
  for (let q = 0; q < 64000; q++) if (out[q] !== ref[q]) { d++; mk[q] = 255; }
  for (let q = 0; q < 768; q++) if (pal[q] !== ref[64000 + q]) dp++;
  console.log('k', k, 'px diff', d, 'pal diff', dp);
  fs.writeFileSync(`${dir}/mine${k}.bin`, out);
}
