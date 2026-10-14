import fs from 'fs'; import { tickP3 } from '/home/gautier/SynologyDrive/code/current/demos/saint/site/js/parts/p3_tick.js';
const A='/home/gautier/SynologyDrive/code/current/demos/saint/site/assets/p3/';
const j=JSON.parse(fs.readFileSync('/tmp/p3test/ticks.json')), c=JSON.parse(fs.readFileSync(A+'consts.json')); const ease=new Int32Array(new Uint8Array(fs.readFileSync(A+'ease.i32')).buffer.slice(0));
const i0=j.init, f=Math.fround;
const S={frame:0,palC:new Uint8Array(768),f3272c:i0.f3272c,v4694:i0.v4694,v4698:i0.v4698,pulse:i0.pulse,pulseStep:f(c.k.pulseStep),speedA:f(0.0952),speedB:f(0.0059),
 A:{t:i0.At,idx:i0.Ai,count:15000},A2:{t:i0.A2t,idx:0,count:15000},B:{t:i0.Bt,idx:i0.Bi,count:1920},a7f30:i0.a7f30,a7f34:f(c.k.a7f34),a7f38:0,a7f3c:f(c.k.a7f3c),
 blendOn:i0.bOn,blendT:i0.bT,blend:i0.bf,blendRate:f(c.k.blendRate),warp:'s',warp2:'s',ptr:i0.ptr/12,sel:i0.sel,flp:[0,1,2,49].map((k,q)=>({t:i0.fl[q],rate:0}))};
// flare rates from the LCG not needed: compare only camera/palette/script state; give flares the rates recorded implicitly
let bad=0; const chk=(n,name,a,b,tol=1e-9)=>{ if(Math.abs(a-b)>tol){ if(bad++<8) console.log('tick',n,name,a,b);} };
j.ticks.forEach((t,n)=>{ tickP3(S,t.order,t.row,ease,c.script); chk(n,'v4694',S.v4694,t.v4694); chk(n,'v4698',S.v4698,t.v4698); chk(n,'At',S.A.t,t.At); chk(n,'Ai',S.A.idx,t.Ai); chk(n,'Bt',S.B.t,t.Bt); chk(n,'Bi',S.B.idx,t.Bi); chk(n,'sel',S.sel,t.sel); chk(n,'ptr',S.ptr,t.ptr/12); chk(n,'bf',S.blend,t.bf,1e-6); chk(n,'bOn',S.blendOn,t.bOn); chk(n,'f3272c',S.f3272c,t.f3272c); chk(n,'a7f30',S.a7f30,t.a7f30,1e-5); });
console.log('P3 tick mismatches',bad,'over',j.ticks.length,'ticks');
