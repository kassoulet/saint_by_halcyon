import fs from 'fs'; import { renderTunnel } from '/home/gautier/SynologyDrive/code/current/demos/saint/site/js/engine/tunnel.js';
import { cullObjects, processObject, sortList, clipTri, filterTri, rint, flareItems, drawFlare } from '/home/gautier/SynologyDrive/code/current/demos/saint/site/js/engine/mesh.js';
const A='/home/gautier/SynologyDrive/code/current/demos/saint/site/assets/p1/', T='/tmp/p1test/';
const b=n=>new Uint8Array(fs.readFileSync(A+n)); const grid=new Float32Array(b('grid.f32').slice().buffer);
const tex=b('tex.bin'),shade=b('shade.bin'),filter=b('filter.bin');
const D=JSON.parse(fs.readFileSync(T+'objs_dump.json')), O=JSON.parse(fs.readFileSync(A+'objects.json')), s=JSON.parse(fs.readFileSync(T+'state2.json'));
const out=new Uint8Array(64000);
renderTunnel(out,grid,tex,shade,{pos:s.pos,M:s.M,warp:s.warp=='0x2a0f5'?'plane':'cylinder',k:{w1:s.k['0x7ee0'],w2:s.k['0x7ee8'],a1:s.k['0x7ed0'],a2:s.k['0x7ed8'],flagA:0}});
const ref0=fs.readFileSync(T+'stage_tunnel.bin'); let d0=0; for(let i=0;i<64000;i++) if(out[i]!==ref0[i]) d0++; console.log('tunnel diff',d0);
const objs=O.objs.map((o,k)=>({...o,rot:D.objs[k].rot,pos:D.objs[k].pos,faces:o.faces.map(f=>({...f}))}));
const K={near:-0.1,far:-4000,w:320,h:200,zoom:D.zoom,zoomY:D.zoom*0.8333333333299999,k150c4:21000,k150c8:1e6};
cullObjects(objs,D.M,K); const list=[]; for(const o of objs) if(!o.hidden) processObject(o,D.M,D.eye,K,list); flareItems(objs,D.M,K,list);
const tb=b('sprite_tbl.bin'), dv=new DataView(tb.buffer,tb.byteOffset,tb.byteLength); const S={ptr:[],scale:[],spr:b('sprites.bin'),filter}; for(let i=0;i<64;i++){S.ptr.push(dv.getUint32(i*4,true));S.scale.push(dv.getFloat32(256+i*4,true));}
for(const it of sortList(list)){ if(it.kind==='flare'){drawFlare(out,it,S,K);continue;} const {a:Av,b:B,c:C,f}=it; const lvl=Math.min(255,Math.max(0,Math.trunc(f.lvl+Av.z*0.1)<<2));
  if(!(Av.code|B.code|C.code)) filterTri(out,filter,Av,B,C,lvl); else { const P=clipTri(Av,B,C); for(let i=1;i+1<P.length;i++) filterTri(out,filter,P[0],P[i],P[i+1],lvl); } }
const ref=fs.readFileSync(T+'stage_all.bin'); let d=0; const mask=new Uint8Array(64000); for(let i=0;i<64000;i++) if(out[i]!==ref[i]){d++;mask[i]=1;}
console.log('all diff',d,''); fs.writeFileSync('/tmp/diffmask.raw',mask);
