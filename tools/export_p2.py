"""Export part-2 assets and validation vectors from a snapshot taken during part 2 (e.g. t=250 s of the DOSBox-X run)."""
import sys, struct, json, os
sys.path.insert(0,'.')
from oracle import *
o=Oracle(sys.argv[1],2); mu=o.mu; R=lambda a,n:bytes(mu.mem_read(a,n))
I=lambda a:struct.unpack('<i',R(a,4))[0]; U=lambda a:struct.unpack('<I',R(a,4))[0]; F=lambda a:struct.unpack('<f',R(a,4))[0]; D=lambda a:struct.unpack('<d',R(a,8))[0]
out='../site/assets/p2/'; os.makedirs(out,exist_ok=True); T='/tmp/p2test/'; os.makedirs(T,exist_ok=True)
tb=U(0x4670)
for n,d in (('grid.f32',R(0x4c84,26*41*12)),('tex.bin',R(tb,65536)),('shade.bin',R(tb+0x10000,65536)),('keys.f32',R(0x2f3f0,1200)),('ease.i32',R(0x2dfb4,512)),
            ('palA.bin',R(0x2e7d4,768)),('palB.bin',R(0x2ead4,768)),('palC.bin',R(0x2edd4,768)),('overlay.bin',R(U(0x2f0d4),320*195))):
    open(out+n,'wb').write(d)
open(out+'sprites.bin','wb').write(R(0x3d0000,0x20000)); open(out+'sprite_tbl.bin','wb').write(R(0x4558,256)+R(0x4458,256)); open(out+'filter.bin','wb').write(R(U(0x48bc),16384))
json.dump([[F(0xef98+0x2c*k+4*j) for j in (1,2,3,8)] for k in range(50)],open(out+'flares.json','w'))
print('flare0',[F(0xef98+4*j) for j in (1,2,3,8)],'size1',F(0xefe4),'sprptr',[U(0x4558+4*k) for k in range(8)])
objs=[]
for k in range(3):
    a=0x7f98+0x38*k; nv,nf=U(a+8),U(a+12); vb,fb=U(a+0x10),U(a+0x14)
    objs.append(dict(nv=nv,nf=nf,pos=[F(a+0x24+4*j) for j in range(3)],rad=F(a+0x30),scale=F(a+0x34),
      verts=[[F(vb+0x40*i+o_) for o_ in (8,0xc,0x10,0x30,0x34)] for i in range(nv)],
      faces=[dict(v=[(U(fb+0x30*i+0xc+4*j)-vb)//0x40 for j in range(3)],c=U(fb+0x30*i+0x28)) for i in range(nf)]))
json.dump(dict(objs=objs,hdr=[hex(U(U(0x7f98+0x14)+4*j)) for j in range(4)]),open(out+'objects.json','w'))
print('objs',[(x['nv'],x['nf']) for x in objs],'hdr',[hex(U(U(0x7f98+0x14)+4*j)) for j in range(4)])
# validation: advance a few frames, then capture stages
for _ in range(3): o.frame()
snap={}; st={}
def vec():
    st['pos']=[F(0x4c1c),F(0x4c20),F(0x4c24)]; st['M']=[D(a) for a in (0x15be0,0x15be8,0x15bf0,0x15c00,0x15c08,0x15c10,0x15c20,0x15c28,0x15c30)]
    st['warp']=hex(U(0x4c00)); st['warp2']=hex(U(0x2fcf0)); st['blendOn']=U(0x2f3d8); st['blend']=F(0x2f3dc); st['flagA']=U(0x29aa0)
    st['k']={hex(a):D(a) for a in (0x7ed0,0x7ed8,0x7ee0,0x7ee8,0x7ef0,0x7ef8)}; st['k7f44']=F(0x7f44); st['k296b0']=F(0x296b0)
    st['spl']=dict(t1=D(0x17898),i1=U(0x178a8),t2=D(0x178c8),i2=U(0x178d8)); st['morph']=D(0x4bb0)
    st['order']=U(0x12bf)&0xffff; st['row']=U(0x12ca)&0xffff; st['eye']=[D(0x49f0),D(0x49f8),D(0x4a00)]; st['eye2']=[D(0x49c0),D(0x49c8),D(0x49d0)]
    st['cam']=[D(0x15be0+8*j+0x20*r) for r in range(4) for j in range(4)]; st['zoom']=D(0x4938)
    snap['tunnel']=R(U(0x466c),64000)
def star():
    a=0x7f98; nv=U(a+8); vb=U(a+0x10)
    st['obj0']=dict(flag=U(a+4),rot=[I(a+0x18),I(a+0x1c),I(a+0x20)],pos=[F(a+0x24+4*j) for j in range(3)],
       verts=[list(struct.unpack('<5f',R(vb+0x40*i+8,12)+R(vb+0x40*i+0x30,8)))+list(struct.unpack('<4f',R(vb+0x40*i+0x14,16)))+[U(vb+0x40*i+4),F(vb+0x40*i+0x38)]+list(struct.unpack('<3f',R(vb+0x40*i+0x24,12))) for i in range(nv)])
    st['list']=U(0x1663c); st['eye2o']=[D(0x49d8),D(0x49e0),D(0x49e8)]
o.run_to(0x3143f,{0x30ca5:vec,0x3106e:star})
snap['all']=R(U(0x466c),64000)
open(T+'stage_tunnel.bin','wb').write(snap['tunnel']); open(T+'stage_all.bin','wb').write(snap['all']); import math
clean=lambda x:[clean(v) for v in x] if isinstance(x,list) else {k:clean(v) for k,v in x.items()} if isinstance(x,dict) else (None if isinstance(x,float) and not math.isfinite(x) else x)
json.dump(clean(st),open(T+'state.json','w'))
print(st['order'],st['row'],st['warp'],st['blendOn'],st['spl'],st['obj0']['flag'],st['list'])
