import fs from 'fs'; import { cullObjects, processObject, sortList, meshNormals, clipPoly, texTri } from '/home/gautier/SynologyDrive/code/current/demos/saint/site/js/engine/mesh.js';
const A='/home/gautier/SynologyDrive/code/current/demos/saint/site/assets/p2/', T='/tmp/p2test/';
const b=n=>new Uint8Array(fs.readFileSync(A+n)); const tex=b('tex.bin'),shade=b('shade.bin');
const s=JSON.parse(fs.readFileSync(T+'state.json')), O=JSON.parse(fs.readFileSync(A+'objects.json'));
const out=new Uint8Array(fs.readFileSync(T+'stage_tunnel.bin'));
const d=s.obj0, o={rot:d.rot,pos:d.pos,rad:15.7,scale:1,verts:d.verts.map(v=>v.slice(0,5)),faces:O.objs[0].faces.map(f=>({...f}))};
meshNormals(o);
const K={near:-0.1,far:-4000,w:320,h:200,zoom:s.zoom,zoomY:s.zoom*0.8333333333299999,k150c4:21000,k150c8:1e6,textured:true};
cullObjects([o],s.cam,K); console.log('hidden',o.hidden,'zrange',K.zmin,K.zmax);
const list=[]; if(!o.hidden) processObject(o,s.cam,s.eye,K,list,s.eye2); console.log('items',list.length,'oracle list',s.list);
// vertex checks vs oracle: I and sx
let eI=0,n=0; o.verts.forEach((m,i)=>{}); 
for(const it of sortList(list)){ const P=[it.a,it.b,it.c]; const clipped=P.some(v=>v.code); 
  const pts=clipped?clipPoly(P.map(v=>({sx:v.sx,sy:v.sy,iz:v.iz,u:v.u,v:v.v,I:v.I}))):P;
  for(let i=1;i+1<pts.length;i++) texTri(out,tex,shade,pts[0],pts[i],pts[i+1]); }
const ref=fs.readFileSync(T+'stage_all.bin'), t0=fs.readFileSync(T+'stage_tunnel.bin');
let changed=0,same=0,diff=0; for(let i=0;i<64000;i++){ if(ref[i]!==t0[i]){changed++; if(out[i]===ref[i]) same++;} if(out[i]!==ref[i]) diff++; }
console.log('oracle star pixels',changed,'matched',same,'total diff vs oracle',diff);
fs.writeFileSync('/tmp/star_js.raw',out);
// vertex-level compare
const dv=s.obj0.verts; let maxE=0,cnt=0,worst=null; const used=new Set(); for(const it of list) for(const v of [it.a,it.b,it.c]) used.add(v);
const idx=new Map(o.verts.map((m,i)=>[m,i]));
for(const v of used){ const i=idx.get(v.m); const g=dv[i]; const e=Math.abs(v.I-g[10]); cnt++; if(e>maxE){maxE=e;worst=[i,v.I,g[10],v.sx,g[5],v.sy,g[6],v.iz,g[8]];} }
console.log('verts',cnt,'max I err',maxE.toFixed(3),'worst',worst&&worst.map(x=>+x.toFixed(3)).join(','));
let ne=0; for(const v of used){ const g=dv[idx.get(v.m)]; ne=Math.max(ne,Math.abs(v.sx-g[5]),Math.abs(v.sy-g[6])); } console.log('max screen err',ne.toFixed(4));
