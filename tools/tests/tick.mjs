import fs from 'fs'; import { tickP1 } from '/home/gautier/SynologyDrive/code/current/demos/saint/site/js/parts/p1_tick.js';
const j=JSON.parse(fs.readFileSync('/tmp/p1test/ticks.json')); const i=j.init.i,f=j.init.f,d=j.init.d;
const S={frame:i['0x46a4'],palC:new Uint8Array(768),blink:i['0x2aed0'],v4698:i['0x4698'],v4694:i['0x4694'],fade:i['0x2b7e0'],pulse:f['0x2b7d4'],pulseStep:f['0x2b7d8'],
 t1:d['0x17898'],t2:d['0x178c8'],speed:d['0x178a0'],scroll:d['0x4bb0'],a7f30:f['0x7f30'],a7f34:f['0x7f34'],a7f38:f['0x7f38'],a7f3c:f['0x7f3c'],
 blendOn:i['0x2b7e4'],blendT:i['0x2b7f4'],idx1:i['0x178a8'],blend:f['0x2b7e8'],blendV:f['0x2b7ec'],blendA:f['0x2b7f0'],warp:i['0x4c00'],warp2:i['0x2b7f8'],rot:i['0x2aec4']};
let bad=0;
for(const [n,t] of j.ticks.entries()){ tickP1(S,t.order,t.row,j.tbl);
  const chk=(name,a,b,tol=1e-9)=>{ if(Math.abs(a-b)>tol){ if(bad++<8) console.log('tick',n,name,a,b);} };
  chk('v4698',S.v4698,t.i['0x4698']); chk('v4694',S.v4694,t.i['0x4694']); chk('fade',S.fade,t.i['0x2b7e0']); chk('blink',S.blink,t.i['0x2aed0']);
  chk('t1',S.t1,t.d['0x17898'],1e-9); chk('scroll',S.scroll,t.d['0x4bb0'],1e-6); chk('a7f30',S.a7f30,t.f['0x7f30'],1e-5); chk('rot',S.rot,t.i['0x2aec4']); chk('pulse',S.pulse,t.f['0x2b7d4'],1e-4);}
console.log('mismatches',bad);
