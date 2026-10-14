import fs from 'fs'; import { renderTunnel } from '/home/gautier/SynologyDrive/code/current/demos/saint/site/js/engine/tunnel.js';
const A='/home/gautier/SynologyDrive/code/current/demos/saint/site/assets/p2/', T='/tmp/p2test/';
const b=n=>new Uint8Array(fs.readFileSync(A+n)); const grid=new Float32Array(b('grid.f32').slice().buffer);
const s=JSON.parse(fs.readFileSync(T+'state.json')); const nm={'0x29d9a':'cylinder','0x2a0f5':'plane','0x2a30b':'sphere'};
const out=new Uint8Array(64000);
renderTunnel(out,grid,b('tex.bin'),b('shade.bin'),{pos:s.pos,M:s.M,warp:nm[s.warp],warp2:s.blendOn?nm[s.warp2]:null,blend:s.blend,
  k:{a1:s.k['0x7ed0'],a2:s.k['0x7ed8'],w1:s.k['0x7ee0'],w2:s.k['0x7ee8'],s1:s.k['0x7ef0'],s2:s.k['0x7ef8'],flagA:s.flagA,stale:s.k296b0}});
const ref=fs.readFileSync(T+'stage_tunnel.bin'); let d=0; for(let i=0;i<64000;i++) if(out[i]!==ref[i]) d++; console.log('P2 tunnel diff',d,'warp',s.warp,s.warp2,s.blend);
