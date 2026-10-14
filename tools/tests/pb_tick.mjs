import fs from 'fs'; import { tickA } from '/home/gautier/SynologyDrive/code/current/demos/saint/site/js/parts/pa_tick.js';
const j=JSON.parse(fs.readFileSync('/tmp/pbtest/ticks.json')), i0=j.init, f=Math.fround;
const S={frame:0,v4694:i0.v4694,v4698:i0.v4698,pulse:i0.pulse,pulseStep:f(0.200393944978714),speed:f(0.0134),t1:i0.t1,t2:i0.t2};
let bad=0; j.ticks.forEach((t,n)=>{ tickA(S,t.order,t.row,0x1b); for(const [a,b,tol] of [[S.v4694,t.v4694,0],[S.v4698,t.v4698,0],[S.t1,t.t1,1e-6],[S.pulse,t.pulse,1e-4]]) if(Math.abs(a-b)>tol&&bad++<5) console.log('tick',n,a,b); });
console.log('B tick mismatches',bad);
