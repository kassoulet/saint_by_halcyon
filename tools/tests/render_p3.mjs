import fs from 'fs'; import { P3 } from '/home/gautier/SynologyDrive/code/current/demos/saint/site/js/parts/p3.js';
const D='/home/gautier/SynologyDrive/code/current/demos/saint/site/', A=D+'assets/p3/';
const b=n=>new Uint8Array(fs.readFileSync(A+n)); const f=n=>new Float32Array(b(n).slice().buffer), i=n=>new Int32Array(b(n).slice().buffer);
const j=n=>JSON.parse(fs.readFileSync(A+n));
const a={grid:f('grid.f32'),keysA:f('keysA.f32'),keysB:f('keysB.f32'),keysF:f('keysF.f32'),tex:b('tex.bin'),shade:b('shade.bin'),ease:i('ease.i32'),palA:b('palA.bin'),palB:b('palB.bin'),overlay:b('overlay.bin'),filter:b('filter.bin'),sprites:b('sprites.bin'),sprTbl:b('sprite_tbl.bin'),meta:j('objects.json'),consts:j('consts.json')};
a.m0v=f('obj0_v.f32');a.m0fi=i('obj0_fi.i32');a.m0fn=f('obj0_fn.f32');a.lines=[1,2,3].map(k=>({v:f(`obj${k}_v.f32`),l:i(`obj${k}_l.i32`)}));
const ot=JSON.parse(fs.readFileSync(D+'assets/audio/order_times.json')); const st=Object.entries(ot).map(([o,t])=>[+o,t]);
const orderRow=t=>{let o=0,s=0;for(const [oo,tt] of st){if(tt<=t){o=oo;s=tt}else break}return [o,Math.min(63,Math.floor((t-s)/(2.5*6/135)+1e-9))]};
const p=new P3(a), out=new Uint8Array(64000), pal=new Uint8Array(768); const START=81.778;
for(const lt of process.argv.slice(2).map(Number)){ p.advance(Math.floor(lt*70.086),k=>orderRow(START+k/70.086)); const [o,r]=orderRow(START+lt); p.render(out,pal,o,r);
  fs.writeFileSync(`/tmp/js_p3_${lt}.raw`,Buffer.concat([Buffer.from(pal),Buffer.from(out)])); console.log(lt,o,r,p.S.warp,p.S.blendOn,p.S.idx1,p.S.starOn); }
