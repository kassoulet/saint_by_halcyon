"""Export P1 static assets (grid, tables, palettes) and a mid-frame test vector (inputs + expected tunnel buffer) from a snapshot."""
import sys, struct, os, json
sys.path.insert(0,'.')
from oracle import *
snap=sys.argv[1]; nframes=int(sys.argv[2]); out='../site/assets/p1/'; os.makedirs(out,exist_ok=True); os.makedirs(os.environ.get('OUT','/tmp/p1test/'),exist_ok=True)
o=Oracle(snap,1); mu=o.mu; R=lambda a,n:bytes(mu.mem_read(a,n))
for i in range(nframes): o.frame()
# static assets
open(out+'grid.f32','wb').write(R(0x4c84,26*41*12))
tb=o.u32(0x4670); open(out+'tex.bin','wb').write(R(tb,65536)); open(out+'shade.bin','wb').write(R(tb+0x10000,65536))
open(out+'keys.f32','wb').write(R(0x2b7fc,640)); open(out+'ease.i32','wb').write(R(0x2a6c4,512)); ptr=o.u32(0x2b7dc); open(out+'overlay.bin','wb').write(R(ptr,0x3840))
open(out+'sprites.bin','wb').write(R(0x3d0000,0x20000)); open(out+'sprite_tbl.bin','wb').write(R(0x4558,256)+R(0x4458,256))
open(out+'filter.bin','wb').write(R(o.u32(0x48bc),64*256))
for n,a in (('palA',0x2aed4),('palB',0x2b1d4),('palC',0x2b4d4)): open(out+n+'.bin','wb').write(R(a,768))
# test vector at the end of the tunnel stage
import os
if os.environ.get('FORCE_WARP'): mu.mem_write(0x4c00,struct.pack('<I',int(os.environ['FORCE_WARP'],0)))
o.run_to(0x2cff9)
T=os.environ.get('OUT','/tmp/p1test/')
open(T+'tunnel.bin','wb').write(R(o.u32(0x466c),64000))
f32=lambda a:struct.unpack('<f',R(a,4))[0]; f64=lambda a:struct.unpack('<d',R(a,8))[0]
st=dict(pos=[f32(0x4c1c),f32(0x4c20),f32(0x4c24)],
  M=[f64(a) for a in (0x15be0,0x15be8,0x15bf0,0x15c00,0x15c08,0x15c10,0x15c20,0x15c28,0x15c30)],
  warp=hex(o.u32(0x4c00)), blend=o.u32(0x2b7e4),
  k={hex(a):f64(a) for a in (0x4988,0x4998,0x7e90,0x7e98,0x7ed0,0x7ed8,0x7ee0,0x7ee8,0x29a98,0x7ea0)},
  kf={hex(a):f32(a) for a in (0x7e7c,0x7e80,0x7f40)})
st['flagA']=o.u32(0x29aa0)
st['keys']=list(struct.unpack('<%df'%(16*10),R(0x2b7fc,640)))
st['spl']=dict(t1=f64(0x17898),t2=f64(0x178c8),i1=o.u32(0x178a8),i2=o.u32(0x178d8),c1=o.u32(0x178ac),c2=o.u32(0x178dc),k3=f64(0x4990))
st['ch1']=[f64(0x17830+8*k) for k in range(10)]
st['eye']=[f64(0x49f0),f64(0x49f8),f64(0x4a00)]; st['up']=[f64(0x4af0),f64(0x4af8),f64(0x4b00)]; st['tgt']=[f64(0x4a20),f64(0x4a28),f64(0x4a30)]
st['trans']=[f64(0x15c40),f64(0x15c48),f64(0x15c50)]
json.dump(st,open(T+'state.json','w'),indent=1); print(st)
