import fs from 'fs'; import { P2 } from '/home/gautier/SynologyDrive/code/current/demos/saint/site/js/parts/p2.js';
const D='/home/gautier/SynologyDrive/code/current/demos/saint/site/', A=D+'assets/p2/';
const b=n=>new Uint8Array(fs.readFileSync(A+n)); const f=n=>new Float32Array(b(n).slice().buffer), i=n=>new Int32Array(b(n).slice().buffer);
const a={grid:f('grid.f32'),keys:f('keys.f32'),tex:b('tex.bin'),shade:b('shade.bin'),ease:i('ease.i32'),palA:b('palA.bin'),palB:b('palB.bin'),overlay:b('overlay.bin'),filter:b('filter.bin'),sprites:b('sprites.bin'),sprTbl:b('sprite_tbl.bin'),
  objs:JSON.parse(fs.readFileSync(A+'objects.json')),flares:JSON.parse(fs.readFileSync(A+'flares.json'))};
const ot=JSON.parse(fs.readFileSync(D+'assets/audio/order_times.json')); const st=Object.entries(ot).map(([o,t])=>[+o,t]);
const orderRow=t=>{let o=0,s=0;for(const [oo,tt] of st){if(tt<=t){o=oo;s=tt}else break}return [o,Math.min(63,Math.floor((t-s)/(2.5*6/135)+1e-9))]};
const p=new P2(a), out=new Uint8Array(64000), pal=new Uint8Array(768); const START=42.667;
for(const lt of process.argv.slice(2).map(Number)){ p.advance(Math.floor(lt*70.086),k=>orderRow(START+k/70.086)); const [o,r]=orderRow(START+lt); p.render(out,pal,o,r);
  fs.writeFileSync(`/tmp/js_p2_${lt}.raw`,Buffer.concat([Buffer.from(pal),Buffer.from(out)])); console.log(lt,o,r,p.S.warp,p.S.blendOn,p.S.idx1,p.S.starOn); }
