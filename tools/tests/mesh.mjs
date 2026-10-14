import fs from 'fs'; import { cullObjects, processObject, sortList } from '/home/gautier/SynologyDrive/code/current/demos/saint/site/js/engine/mesh.js';
const A='/home/gautier/SynologyDrive/code/current/demos/saint/site/assets/p1/';
const D=JSON.parse(fs.readFileSync('/tmp/p1test/objs_dump.json')), O=JSON.parse(fs.readFileSync(A+'objects.json'));
const objs=O.objs.map((o,k)=>({...o,rot:D.objs[k].rot,pos:D.objs[k].pos,faces:o.faces.map(f=>({...f}))}));
const K={near:-0.1,far:-4000,w:320,h:200,zoom:D.zoom,zoomY:D.zoom*0.8333333333299999,k150c4:21000,k150c8:1e6};
cullObjects(objs,D.M,K);
console.log('z range js',K.zmin,K.zmax,K.zscale,'oracle',D.z150);
let bad=0; objs.forEach((o,k)=>{ if((o.hidden?1:0)!==(D.objs[k].flag&1)){bad++;} }); console.log('flag mismatches',bad);
const list=[]; const eye=D.eye;
for(const o of objs) if(!o.hidden) processObject(o,D.M,eye,K,list);
console.log('list js',list.length,'oracle',D.list.length);
// compare vertices
let vb=0,vn=0,fb=0,fn=0;
objs.forEach((o,k)=>{ if(o.hidden) return; });
const keysJ=sortList(list).map(e=>e.key), keysO=D.list.map(e=>e[0]).sort((a,b)=>a-b);
let kd=0; for(let i=0;i<Math.min(keysJ.length,keysO.length);i++) if(keysJ[i]!==keysO[i]) kd++; console.log('sorted key diffs',kd,keysJ.slice(0,5),keysO.slice(0,5));
// face levels vs oracle for visible objects
let ld=0,lc=0; objs.forEach((o,k)=>{ if(o.hidden) return; o.faces.forEach((f,i)=>{ const g=D.objs[k].faces[i]; if(g.vis!==f.vis) vb++; if(f.vis===0){lc++; if(f.lvl!==undefined && g.lvl!==f.lvl) ld++;}})});
console.log('vis mismatch',vb,'lvl mismatch',ld,'of',lc);
