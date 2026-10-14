"""Generic part exporter: python export_part.py <name> <snapshot> <oracle-part> <json-config>
config: keys:[addr,size], palA, palB, stop (end of drawing), list (before sort), grid:bool, frames:int"""
import sys, struct, json, os, math, array
sys.path.insert(0,'.')
from oracle import *
name,snap,part,cfg=sys.argv[1],sys.argv[2],int(sys.argv[3]),json.loads(sys.argv[4]); H=lambda x:int(x,16) if isinstance(x,str) else x
o=Oracle(snap,part); mu=o.mu; R=lambda a,n:bytes(mu.mem_read(a,n))
I=lambda a:struct.unpack('<i',R(a,4))[0]; U=lambda a:struct.unpack('<I',R(a,4))[0]; F=lambda a:struct.unpack('<f',R(a,4))[0]; D=lambda a:struct.unpack('<d',R(a,8))[0]
out=f'../site/assets/{name}/'; os.makedirs(out,exist_ok=True); T=f'/tmp/{name}test/'; os.makedirs(T,exist_ok=True)
tb=U(0x4670)
files=[('tex.bin',R(tb,65536)),('shade.bin',R(tb+0x10000,65536)),('filter.bin',R(U(0x48bc),16384)),('sprites.bin',R(0x3d0000,0x20000)),('sprite_tbl.bin',R(0x4558,256)+R(0x4458,256)),
       ('palA.bin',R(H(cfg['palA']),768)),('palB.bin',R(H(cfg['palB']),768))]
if cfg.get('grid'): files.append(('grid.f32',R(0x4c84,26*41*12)))
for k,(a,n) in cfg.get('blobs',{}).items(): files.append((k,R(H(a),n)))
for n,d in files: open(out+n,'wb').write(d)
objs=[]
for k in range(U(0x17210)):
    a=0x7f98+0x38*k; nv,nf=U(a+8),U(a+12); vb,fb=U(a+0x10),U(a+0x14); kind=U(a)
    rec=dict(kind=kind,nv=nv,nf=nf,pos=[F(a+0x24+4*j) for j in range(3)],rad=F(a+0x30),scale=F(a+0x34),rot=[I(a+0x18),I(a+0x1c),I(a+0x20)])
    V=array.array('f'); UV=array.array('f'); VN=array.array('f')
    for i in range(nv):
        V.extend(struct.unpack('<3f',R(vb+0x40*i+8,12))); UV.extend(struct.unpack('<2f',R(vb+0x40*i+0x30,8))); VN.extend(struct.unpack('<3f',R(vb+0x40*i+0x24,12)))
    open(out+f'obj{k}_v.f32','wb').write(V.tobytes()); open(out+f'obj{k}_uv.f32','wb').write(UV.tobytes()); open(out+f'obj{k}_vn.f32','wb').write(VN.tobytes())
    if kind==0x4f627521:
        FI=array.array('i'); FN=array.array('f')
        for i in range(nf): FI.extend([(U(fb+0x30*i+0xc+4*j)-vb)//0x40 for j in range(3)]+[U(fb+0x30*i+0x28)]); FN.extend(struct.unpack('<4f',R(fb+0x30*i+0x18,16)))
        open(out+f'obj{k}_fi.i32','wb').write(FI.tobytes()); open(out+f'obj{k}_fn.f32','wb').write(FN.tobytes()); rec['hdr']=[hex(U(fb)),hex(U(fb+4))]
    else:
        L=array.array('i')
        for i in range(nf): L.extend([(U(fb+0x10*i+8)-vb)//0x40,(U(fb+0x10*i+0xc)-vb)//0x40])
        open(out+f'obj{k}_l.i32','wb').write(L.tobytes())
    objs.append(rec)
fl=[dict(pos=[F(0xef98+0x2c*k+4*(j+1)) for j in range(3)],size=F(0xef98+0x2c*k+0x20),size2=F(0xef98+0x2c*k+0x24),handler=hex(U(0xef98+0x2c*k))) for k in range(U(0x14798))]
json.dump(dict(objs=objs,flares=fl),open(out+'objects.json','w'))
print('objects',[(r['kind']==0x4f627521,r['nv'],r['nf']) for r in objs],'flares',len(fl),fl[:1])
for _ in range(cfg.get('frames',2)): o.frame()
snap_={}; st={}
def vec():
    st['order']=U(0x12bf)&0xffff; st['zoom']=D(0x4938); st['cam']=[D(0x15be0+8*j+0x20*r) for r in range(4) for j in range(4)]
    st['eye']=[D(0x49f0),D(0x49f8),D(0x4a00)]; st['eye2']=[D(0x49c0),D(0x49c8),D(0x49d0)]; st['A']=dict(t=D(0x17898),i=U(0x178a8),t2=D(0x178c8),i2=U(0x178d8))
    st['pos']=[F(0x4c1c),F(0x4c20),F(0x4c24)]; st['M']=[D(a) for a in (0x15be0,0x15be8,0x15bf0,0x15c00,0x15c08,0x15c10,0x15c20,0x15c28,0x15c30)]
    st['warp']=hex(U(0x4c00)); st['k']={hex(a):D(a) for a in (0x7ed0,0x7ed8,0x7ee0,0x7ee8,0x7ef0,0x7ef8)}; st['k296b0']=F(0x296b0)
    snap_['tunnel']=R(U(0x466c),64000)
def lst(): st['list']=U(0x1663c); st['z150']=[F(0x150cc),F(0x150d0),F(0x150c0)]
hooks={H(cfg['list']):lst}
if cfg.get('vec'): hooks[H(cfg['vec'])]=vec
o.run_to(H(cfg['stop']),hooks)
open(T+'stage_all.bin','wb').write(R(U(0x466c),64000)); 
if 'tunnel' in snap_: open(T+'stage_tunnel.bin','wb').write(snap_['tunnel'])
clean=lambda x:[clean(v) for v in x] if isinstance(x,list) else {k:clean(v) for k,v in x.items()} if isinstance(x,dict) else (None if isinstance(x,float) and not math.isfinite(x) else x)
json.dump(clean(st),open(T+'state.json','w')); print({k:st[k] for k in ('order','list','warp','A') if k in st})
