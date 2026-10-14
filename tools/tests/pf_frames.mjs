// usage: node pf_frames.mjs <frames-dir> <start-time> k1,k2,...   (frames from tools/export_e_frames.py on the F_start snapshot)
import fs from 'fs'; import { PF } from '../../site/js/parts/pf.js';
const [dir, t0s, ks] = [process.argv[2], +process.argv[3], process.argv[4].split(',').map(Number)], A = '../../site/assets/pf/';
const b = n => new Uint8Array(fs.readFileSync(A + n)), f = n => new Float32Array(b(n).slice().buffer), i = n => new Int32Array(b(n).slice().buffer);
const meta = JSON.parse(fs.readFileSync(A + 'objects.json'));
const a = { meta, keys: f('keys.f32'), ease: i('ease.i32'), tex: b('tex.bin'), shade: b('shade.bin'), filter: b('filter.bin'), sprites: b('sprites.bin'), sprTbl: b('sprite_tbl.bin'), palA: b('palA.bin'), palB: b('palB.bin'), palC: b('palC.bin'), overlay: b('overlay.bin'),
  o: meta.objs.map((_, k) => ({ v: f(`obj${k}_v.f32`), uv: f(`obj${k}_uv.f32`), vn: f(`obj${k}_vn.f32`), fi: i(`obj${k}_fi.i32`), fn: f(`obj${k}_fn.f32`) })) };
import { makeOrderRow } from '../../site/js/musicpos.js';
const orderRow = makeOrderRow(JSON.parse(fs.readFileSync('../../site/assets/audio/order_times.json')), JSON.parse(fs.readFileSync('../../site/assets/audio/row_times.json')));
const p = new PF(a), out = new Uint8Array(64000), pal = new Uint8Array(768);
for (const k of ks) {
  p.advance(k + 1, q => orderRow(t0s + q / 70.086)); p.render(out, pal);
  const ref = fs.readFileSync(`${dir}/f${k}.bin`); let d = 0, dp = 0; const mk = new Uint8Array(64000);
  for (let q = 0; q < 64000; q++) if (out[q] !== ref[q]) { d++; mk[q] = 255; }
  for (let q = 0; q < 768; q++) if (pal[q] !== ref[64000 + q]) dp++;
  console.log('k', k, 'order/row', orderRow(t0s + k / 70.086), 'px diff', d, 'pal diff', dp);
  fs.writeFileSync(`${dir}/mine${k}.bin`, out); fs.writeFileSync(`${dir}/mask${k}.bin`, mk);
}
