// usage: node pe_frames.mjs <frames-dir> <start-time> <assets-dir> k1,k2,...   (frames produced by tools/export_e_frames.py)
import fs from 'fs'; import { PE } from '../../site/js/parts/pe.js';
const [dir, t0s, A, ks] = [process.argv[2], +process.argv[3], process.argv[4] || '../../site/assets/pe/', (process.argv[5] || '0').split(',').map(Number)];
const b = n => new Uint8Array(fs.readFileSync(A + n)), f = n => new Float32Array(b(n).slice().buffer), i = n => new Int32Array(b(n).slice().buffer);
const a = { meta: JSON.parse(fs.readFileSync(A + 'objects.json')), keys: f('keys.f32'), ease: i('ease.i32'), tex: b('tex.bin'), shade: b('shade.bin'), filter: b('filter.bin'), sprites: b('sprites.bin'), sprTbl: b('sprite_tbl.bin'),
  palA: b('palA.bin'), palB: b('palB.bin'), palC: b('palC.bin'), bull: b('bull.bin'), mv: f('obj0_v.f32'), muv: f('obj0_uv.f32'), mfi: i('obj0_fi.i32'), lv: f('obj1_v.f32'), ll: i('obj1_l.i32') };
import { makeOrderRow } from '../../site/js/musicpos.js';
const orderRow = makeOrderRow(JSON.parse(fs.readFileSync('../../site/assets/audio/order_times.json')), JSON.parse(fs.readFileSync('../../site/assets/audio/row_times.json')));
const p = new PE(a), out = new Uint8Array(64000), pal = new Uint8Array(768);
for (const k of ks) {
  p.advance(k + 1, q => orderRow(t0s + q / 70.086));
  const [o, r] = orderRow(t0s + k / 70.086); p.render(out, pal, o, r);
  const ref = fs.readFileSync(`${dir}/f${k}.bin`); let d = 0, dp = 0; const mk = new Uint8Array(64000);
  for (let q = 0; q < 64000; q++) if (out[q] !== ref[q]) { d++; mk[q] = 255; }
  for (let q = 0; q < 768; q++) if (pal[q] !== ref[64000 + q]) dp++;
  console.log('k', k, 'order/row', o, r, 'px diff', d, 'pal diff', dp);
  fs.writeFileSync(`${dir}/mine${k}.bin`, out); fs.writeFileSync(`${dir}/mask${k}.bin`, mk);
}
