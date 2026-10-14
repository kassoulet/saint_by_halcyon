// usage: node pi_frames.mjs <frames-dir> <start-time> k1,k2,...   (oracle frames = filtered picture before the logos)
import fs from 'fs'; import { PI } from '../../site/js/parts/pi.js'; import { makeOrderRow } from '../../site/js/musicpos.js';
const [dir, t0s, ks] = [process.argv[2], +process.argv[3], process.argv[4].split(',').map(Number)], A = '../../site/assets/pi/';
const b = n => new Uint8Array(fs.readFileSync(A + n + '.bin')); const a = {}; for (const n of ['frames', 'mask', 'overlay', 'palA', 'palB', 'palC', 'tail']) a[n] = b(n);
a.ptrs = new Uint32Array(b('ptrs').slice().buffer); a.ease1 = new Int32Array(b('ease1').slice().buffer); a.ease2 = new Int32Array(b('ease2').slice().buffer);
const orderRow = makeOrderRow(JSON.parse(fs.readFileSync('../../site/assets/audio/order_times.json')), JSON.parse(fs.readFileSync('../../site/assets/audio/row_times.json')));
const p = new PI(a);
for (const k of ks) {
  p.advance(k + 1, q => orderRow(t0s + q / 70.086)); const pic = p.picture(p.S.stage), pal = p.S.pal;
  const ref = fs.readFileSync(`${dir}/f${k}.bin`); let d = 0, dp = 0;
  for (let q = 0; q < 64000; q++) if (pic[q] !== ref[q]) d++;
  for (let q = 0; q < 768; q++) if (pal[q] !== ref[64000 + q]) dp++;
  console.log('k', k, 'stage', p.S.stage, 'px diff', d, 'pal diff', dp);
}
