import fs from 'fs'; import {spline,lookAt} from '/home/gautier/SynologyDrive/code/current/demos/saint/site/js/engine/camera.js';
const s=JSON.parse(fs.readFileSync('/tmp/p1test/state.json'));
const sp={t:s.spl.t1,idx:s.spl.i1,count:s.spl.c1}; const ch=spline(s.keys,sp);
console.log('ch err',Math.max(...ch.map((v,i)=>Math.abs(v-s.ch1[i]))));
const L=lookAt(ch); console.log('M err',Math.max(...L.M.map((v,i)=>Math.abs(v-s.M[i]))),'trans',L.trans,s.trans);
