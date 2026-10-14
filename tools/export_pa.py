"""Export part-A (orders 22-25) assets + validation vectors from /tmp/snaps/ord_24.bin."""
import sys, struct, json, os, math, array
sys.path.insert(0,'.')
from oracle import *
o=Oracle(sys.argv[1] if len(sys.argv)>1 else '/tmp/snaps/ord_24.bin',4); mu=o.mu; R=lambda a,n:bytes(mu.mem_read(a,n))
I=lambda a:struct.unpack('<i',R(a,4))[0]; U=lambda a:struct.unpack('<I',R(a,4))[0]; F=lambda a:struct.unpack('<f',R(a,4))[0]; D=lambda a:struct.unpack('<d',R(a,8))[0]
out='../site/assets/pa/'; os.makedirs(out,exist_ok=True); T='/tmp/patest/'; os.makedirs(T,exist_ok=True)
tb=U(0x4670)
for n,d in (('tex.bin',R(tb,65536)),('shade.bin',R(tb+0x10000,65536)),('keys.f32',R(0x391c4,680)),('palA.bin',R(0x388ac,768)),('palB.bin',R(0x38bac,768)),
            ('filter.bin',R(U(0x48bc),16384)),('sprites.bin',R(0x3d0000,0x20000)),('sprite_tbl.bin',R(0x4558,256)+R(0x4458,256))): open(out+n,'wb').write(d)
a=0x7f98; nv,nf=U(a+8),U(a+12); vb,fb=U(a+0x10),U(a+0x14)
obj=dict(nv=nv,nf=nf,pos=[F(a+0x24+4*j) for j in range(3)],rad=F(a+0x30),scale=F(a+0x34),rot=[I(a+0x18),I(a+0x1c),I(a+0x20)],
  verts=[[F(vb+0x40*i+o_) for o_ in (8,0xc,0x10,0x30,0x34,0x24,0x28,0x2c)] for i in range(nv)],
  faces=[dict(v=[(U(fb+0x30*i+0xc+4*j)-vb)//0x40 for j in range(3)],n=[F(fb+0x30*i+0x18+4*j) for j in range(4)],c=U(fb+0x30*i+0x28)) for i in range(nf)],
  flares=[dict(pos=[F(0xef98+0x2c*k+4*(j+1)) for j in range(3)],size=F(0xef98+0x2c*k+0x20)) for k in range(U(0x14798))])
json.dump(obj,open(out+'objects.json','w')); print('nv nf',nv,nf,'flares',obj['flares'])
for _ in range(2): o.frame()
snap={}; st={}
def vec():
    st['order']=U(0x12bf)&0xffff; st['zoom']=D(0x4938); st['cam']=[D(0x15be0+8*j+0x20*r) for r in range(4) for j in range(4)]
    st['eye']=[D(0x49f0),D(0x49f8),D(0x4a00)]; st['eye2']=[D(0x49c0),D(0x49c8),D(0x49d0)]; st['A']=dict(t=D(0x17898),i=U(0x178a8),t2=D(0x178c8),i2=U(0x178d8))
    st['dac']=[U(0x4694),U(0x4698)]
def lst():
    st['list']=U(0x1663c); st['z150']=[F(0x150cc),F(0x150d0),F(0x150c0)]
    st['verts']=[list(struct.unpack('<4f',R(vb+0x40*i+0x14,16)))+[F(vb+0x40*i+0x38)] for i in range(nv)]
o.run_to(0x3a950,{0x3a3a4:vec,0x3a57f:lst})
open(T+'stage_all.bin','wb').write(R(U(0x466c),64000))
clean=lambda x:[clean(v) for v in x] if isinstance(x,list) else {k:clean(v) for k,v in x.items()} if isinstance(x,dict) else (None if isinstance(x,float) and not math.isfinite(x) else x)
json.dump(clean(st),open(T+'state.json','w')); print(st['order'],st['list'],st['A'],st['dac'])
