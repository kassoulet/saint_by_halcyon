import fs from 'fs'; import { PA } from '/home/gautier/SynologyDrive/code/current/demos/saint/site/js/parts/pa.js';
const A='/home/gautier/SynologyDrive/code/current/demos/saint/site/assets/pa/', T='/tmp/patest/';
const b=n=>new Uint8Array(fs.readFileSync(A+n));
const a={keys:new Float32Array(b('keys.f32').slice().buffer),tex:b('tex.bin'),shade:b('shade.bin'),palA:b('palA.bin'),palB:b('palB.bin'),filter:b('filter.bin'),sprites:b('sprites.bin'),sprTbl:b('sprite_tbl.bin'),obj:JSON.parse(fs.readFileSync(A+'objects.json'))};
const s=JSON.parse(fs.readFileSync(T+'state.json')); const p=new PA(a); p.sp1={t:s.A.t,idx:s.A.i,count:680}; p.sp2={t:s.A.t2,idx:s.A.i2,count:680};
const out=new Uint8Array(64000),pal=new Uint8Array(768); p.render(out,pal);
const ref=fs.readFileSync(T+'stage_all.bin'); let d=0; for(let i=0;i<64000;i++) if(out[i]!==ref[i]) d++; console.log('A stage diff',d,'/64000');
fs.writeFileSync('/tmp/pa_js.raw',out);
import { cullObjects, processObject, sortList } from '/home/gautier/SynologyDrive/code/current/demos/saint/site/js/engine/mesh.js';
import { spline, lookAt } from '/home/gautier/SynologyDrive/code/current/demos/saint/site/js/engine/camera.js';
const ch=spline(a.keys,{...p.sp1}), L=lookAt(ch), eye2=lookAt(spline(a.keys,{...p.sp2})).eye;
console.log('cam err',Math.max(...L.M.map((v,i)=>Math.abs(v-[s.cam[0],s.cam[1],s.cam[2],s.cam[4],s.cam[5],s.cam[6],s.cam[8],s.cam[9],s.cam[10]][i]))),'zoom',ch[9],s.zoom,'eye2',eye2.map(x=>x.toFixed(3)).join(),s.eye2.map(x=>x.toFixed(3)).join());
const cam=[L.M[0],L.M[1],L.M[2],0,L.M[3],L.M[4],L.M[5],0,L.M[6],L.M[7],L.M[8],0,L.trans[0],L.trans[1],L.trans[2],1];
const K={near:-0.1,far:-4000,w:320,h:200,zoom:ch[9],zoomY:ch[9]*0.8333333333299999,k150c4:21000,k150c8:1e6,textured:true,nearClip:true,lightK:192};
const m=p.mesh; cullObjects([m],cam,K); console.log('zr',K.zmin,K.zmax,'oracle',s.z150);
const list=[]; processObject(m,cam,L.eye,K,list,eye2); console.log('items',list.length,'oracle',s.list,'(incl flare)');
const idx=new Map(m.verts.map((v,i)=>[v,i])); let eI=0,eS=0,n=0,worst=null; const used=new Set(); for(const it of list) for(const v of [it.a,it.b,it.c]) used.add(v);
for(const v of used){ const i=idx.get(v.m); if(i===undefined) continue; const g=s.verts[i]; n++; const e=Math.abs(v.I-g[4]); if(e>eI){eI=e;worst=[i,v.I,g[4]];} eS=Math.max(eS,Math.abs(v.sx-g[0]),Math.abs(v.sy-g[1])); }
console.log('verts',n,'max I err',eI.toFixed(3),worst,'max screen err',eS.toFixed(4));
const ref2=fs.readFileSync(T+'stage_all.bin'); const mk=new Uint8Array(64000); for(let i=0;i<64000;i++) if(out[i]!==ref2[i]) mk[i]=255; fs.writeFileSync('/tmp/pa_mask.raw',mk);
const oc=JSON.parse(fs.readFileSync('/tmp/pa_calls.json'));
import { clipPoly } from '/home/gautier/SynologyDrive/code/current/demos/saint/site/js/engine/mesh.js';
const K2={...K,lightK:192}; m.hidden=0; const l2=[]; for(const f of m.faces) { delete f.lvl; } m.verts.forEach(()=>0);
const m2={...m, faces:m.faces.map(f=>({...f}))}; cullObjects([m2],cam,K2); processObject(m2,cam,L.eye,K2,l2,eye2);
const mine=[]; for(const it of sortList(l2)){ if(it.kind==='flare') continue; const P=[it.a,it.b,it.c].map(v=>({sx:v.sx,sy:v.sy,iz:v.iz,u:v.u,v:v.v,I:v.I,code:v.code}));
  const dark=P[0].I+P[1].I+P[2].I===0; const q=P.some(v=>v.code)?clipPoly(P):P; for(let i=1;i+1<q.length;i++) mine.push({r:dark?'flat':'tex',v:[q[0],q[i],q[i+1]]}); }
console.log('mine',mine.length,'oracle',oc.length,'flat mine',mine.filter(x=>x.r==='flat').length);
let first=-1; for(let i=0;i<Math.min(mine.length,oc.length);i++){ const a=mine[i],b=oc[i]; const ok=a.r===b.r&&a.v.every((v,j)=>Math.abs(v.sx-b.v[j][0])<1e-3&&Math.abs(v.sy-b.v[j][1])<1e-3); if(!ok){first=i;break;} }
console.log('first mismatch',first, first>=0&&JSON.stringify([mine[first].r,mine[first].v.map(v=>[v.sx,v.sy,v.I]),oc[first].r,oc[first].v]).slice(0,400));
let bad=0, ex=null; for(let i=0;i<mine.length;i++){ const a=mine[i],b=oc[i]; for(let j=0;j<3;j++){ const v=a.v[j],g=b.v[j]; const e=Math.max(Math.abs(v.iz-g[2]),Math.abs(v.u-g[3]),Math.abs(v.v-g[4]),Math.abs(v.I-g[5])*0.0+Math.abs(v.I-g[5])); if(e>1e-3){bad++; if(!ex) ex=[i,j,[v.iz,v.u,v.v,v.I],g.slice(2)];} } }
console.log('attr mismatches',bad,JSON.stringify(ex));
