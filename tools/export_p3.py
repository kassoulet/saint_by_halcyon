"""Export part-3 assets + validation vectors from a snapshot taken during part 3 (t=340 s or 450 s of the DOSBox-X run)."""
import sys, struct, json, os, math
sys.path.insert(0,'.')
from oracle import *
o=Oracle(sys.argv[1],3); mu=o.mu; R=lambda a,n:bytes(mu.mem_read(a,n))
I=lambda a:struct.unpack('<i',R(a,4))[0]; U=lambda a:struct.unpack('<I',R(a,4))[0]; F=lambda a:struct.unpack('<f',R(a,4))[0]; D=lambda a:struct.unpack('<d',R(a,8))[0]
out='../site/assets/p3/'; os.makedirs(out,exist_ok=True); T='/tmp/p3test/'; os.makedirs(T,exist_ok=True)
tb=U(0x4670)
for n,d in (('grid.f32',R(0x4c84,26*41*12)),('tex.bin',R(tb,65536)),('shade.bin',R(tb+0x10000,65536)),('keysA.f32',R(0x17d90,15000)),('keysB.f32',R(0x3305c,1920)),('keysF.f32',R(0x1b828,15000)),
            ('ease.i32',R(0x31f24,512)),('palA.bin',R(0x32744,768)),('palB.bin',R(0x32a44,768)),('palC.bin',R(0x32d44,768)),('overlay.bin',R(U(0x31bf1),64000)),
            ('filter.bin',R(U(0x48bc),16384)),('sprites.bin',R(0x3d0000,0x20000)),('sprite_tbl.bin',R(0x4558,256)+R(0x4458,256))):
    open(out+n,'wb').write(d)
# objects: obj0 = flat-shaded mesh, obj1..3 = line meshes
def blob(name,arrs):
    open(out+name,'wb').write(b''.join(a.tobytes() if hasattr(a,'tobytes') else a for a in arrs))
import array
objs=[]
for k in range(4):
    a=0x7f98+0x38*k; nv,nf=U(a+8),U(a+12); vb,fb=U(a+0x10),U(a+0x14); kind=U(a)
    rec=dict(kind=kind,nv=nv,nf=nf,pos=[F(a+0x24+4*j) for j in range(3)],rad=F(a+0x30),scale=F(a+0x34),rot=[I(a+0x18),I(a+0x1c),I(a+0x20)])
    V=array.array('f'); 
    for i in range(nv): V.extend(struct.unpack('<3f',R(vb+0x40*i+8,12)))
    if kind==0x4f627521:
        FI=array.array('i'); FN=array.array('f')
        for i in range(nf):
            FI.extend([(U(fb+0x30*i+0xc+4*j)-vb)//0x40 for j in range(3)]+[U(fb+0x30*i+0x28)]); FN.extend(struct.unpack('<4f',R(fb+0x30*i+0x18,16)))
        blob(f'obj{k}_v.f32',[V]); blob(f'obj{k}_fi.i32',[FI]); blob(f'obj{k}_fn.f32',[FN])
    else:
        L=array.array('i')
        for i in range(nf): L.extend([(U(fb+0x10*i+8)-vb)//0x40,(U(fb+0x10*i+0xc)-vb)//0x40])
        blob(f'obj{k}_v.f32',[V]); blob(f'obj{k}_l.i32',[L])
    objs.append(rec)
json.dump(objs,open(out+'objects.json','w'))
# flare sizes / misc constants
cst=dict(size0=F(0xefb8),size1=F(0xefe4),nflares=U(0x14798),script=[[I(0x33c24+12*i+4*j) for j in range(3)] for i in range(16)],
         k=dict(speedA=D(0x178a0),speedB=D(0x178b8),blendRate=F(0x3304c),warp2=hex(U(0x33058)),pulseStep=F(0x32734),a7f34=F(0x7f34),a7f3c=F(0x7f3c),c4968=D(0x4968)))
json.dump(cst,open(out+'consts.json','w')); print(cst['size0'],cst['size1'],cst['nflares'],cst['k'],[hex(I(0x178c4)),I(0x178ac)])
# validation: advance frames then capture stages
for _ in range(2): o.frame()
snap={}; st={}
def vec():
    st['pos']=[F(0x4c1c),F(0x4c20),F(0x4c24)]; st['M']=[D(a) for a in (0x15be0,0x15be8,0x15bf0,0x15c00,0x15c08,0x15c10,0x15c20,0x15c28,0x15c30)]
    st['warp']=hex(U(0x4c00)); st['warp2']=hex(U(0x33058)); st['blendOn']=U(0x33044); st['blend']=F(0x33048)
    st['k']={hex(a):D(a) for a in (0x7ed0,0x7ed8,0x7ee0,0x7ee8,0x7ef0,0x7ef8)}; st['k296b0']=F(0x296b0); st['flagA']=U(0x29aa0)
    st['order']=U(0x12bf)&0xffff; st['zoom']=D(0x4938); st['cam']=[D(0x15be0+8*j+0x20*r) for r in range(4) for j in range(4)]
    st['eye']=[D(0x49f0),D(0x49f8),D(0x4a00)]; st['eye2']=[D(0x49c0),D(0x49c8),D(0x49d0)]; st['sel']=U(0x32728); st['ptr']=U(0x33c20)
    st['A']=dict(t=D(0x17898),i=U(0x178a8),t2=D(0x178c8),i2=U(0x178d8)); st['B']=dict(t=D(0x178b0),i=U(0x178c0))
    snap['tunnel']=R(U(0x466c),64000)
def lst():
    st['list']=U(0x1663c); st['z150']=[F(0x150cc),F(0x150d0),F(0x150c0)]; st['flags']=[U(0x7f98+0x38*k+4) for k in range(4)]
    st['flares']=[list(struct.unpack('<5f',R(0xef98+0x2c*k+0x10,20))) for k in range(50)]
    st['flpath']=[[D(0x178e0+0x18*k),U(0x178e0+0x18*k+0x10)] for k in range(50)]
o.run_to(0x3561c,{0x34dd1:vec,0x3524b:lst})
open(T+'stage_tunnel.bin','wb').write(snap['tunnel']); open(T+'stage_all.bin','wb').write(R(U(0x466c),64000))
clean=lambda x:[clean(v) for v in x] if isinstance(x,list) else {k:clean(v) for k,v in x.items()} if isinstance(x,dict) else (None if isinstance(x,float) and not math.isfinite(x) else x)
json.dump(clean(st),open(T+'state.json','w')); print(st['order'],st['sel'],st['warp'],st['blendOn'],st['list'],st['flags'])
