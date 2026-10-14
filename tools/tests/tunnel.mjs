import fs from 'fs'; import { renderTunnel } from '/home/gautier/SynologyDrive/code/current/demos/saint/site/js/engine/tunnel.js';
const A='/home/gautier/SynologyDrive/code/current/demos/saint/site/assets/p1/', T=process.argv[3]||'/tmp/p1test/';
const grid=new Float32Array(new Uint8Array(fs.readFileSync(A+'grid.f32')).buffer);
const tex=fs.readFileSync(A+'tex.bin'), shade=fs.readFileSync(A+'shade.bin'), exp=fs.readFileSync(T+'tunnel.bin'), s=JSON.parse(fs.readFileSync(T+'state.json'));
const st={pos:s.pos,M:s.M,warp:process.argv[2]||'plane',k:{w1:s.k['0x7ee0'],w2:s.k['0x7ee8'],a1:s.k['0x7ed0'],a2:s.k['0x7ed8'],flagA:s.flagA}};
const out=new Uint8Array(64000); renderTunnel(out,grid,tex,shade,st);
let diff=0; for(let i=0;i<64000;i++) if(out[i]!==exp[i]) diff++;
console.log('differing pixels',diff,'/64000'); 
console.log('nonzero out',out.filter(x=>x).length,'exp',[...exp].filter(x=>x).length);
