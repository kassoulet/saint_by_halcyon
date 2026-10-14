"""Export P1 crystal objects (static geometry generated at load time + initial rotation) and a per-frame validation dump."""
import sys, struct, json
sys.path.insert(0,'.')
from oracle import *
o=Oracle('/tmp/guest_100.bin',1); mu=o.mu; R=lambda a,n:bytes(mu.mem_read(a,n))
I=lambda a:struct.unpack('<i',R(a,4))[0]; U=lambda a:struct.unpack('<I',R(a,4))[0]; F=lambda a:struct.unpack('<f',R(a,4))[0]
N=I(0x17210); NT=741; objs=[]
def wrap(x): return (x+2**31)%2**32-2**31
ea,eb,ec=-200,0x19c,-502
for k in range(N):
    a=0x7f98+0x38*k; nv,nf=U(a+8),U(a+12); vb,fb=U(a+0x10),U(a+0x14)
    rot=[I(a+0x18),I(a+0x1c),I(a+0x20)]; d=[ea+21*k,eb+34*k,ec-41*k]
    rot0=[wrap(rot[j]-NT*d[j]) for j in range(3)]
    verts=[[F(vb+0x40*i+8+4*j) for j in range(3)] for i in range(nv)]
    faces=[dict(v=[(U(fb+0x30*i+0xc+4*j)-vb)//0x40 for j in range(3)],n=[F(fb+0x30*i+0x18+4*j) for j in range(4)],c=U(fb+0x30*i+0x28)) for i in range(nf)]
    objs.append(dict(rot0=rot0,pos=[F(a+0x24+4*j) for j in range(3)],rad=F(a+0x30),scale=F(a+0x34),verts=verts,faces=faces))
json.dump(dict(objs=objs,delta=[[ea+21*k,eb+34*k,ec-41*k] for k in range(N)],
   consts={n:F(a) for n,a in dict(near=0x48c8,far=0x48c0,w=0x48fc,h=0x4900,k150c4=0x150c4,k150c8=0x150c8,k48e0=0x48e0,k490c=0x490c).items()}),open('../site/assets/p1/objects.json','w'))
print('rot0 sample',objs[0]['rot0'],'k150c4',F(0x150c4),'k150c8',F(0x150c8))
# per-frame validation dump (after 2 frames; at the end of list building 0x2d1e7)
for _ in range(2): o.frame()
def mkdump():
    global dump
    dump=dict(frame_ticks=I(0x46a4),zoom=struct.unpack('<d',R(0x4938,8))[0],
      objs=[dict(pos=[F(0x7f98+0x38*k+0x24+4*j) for j in range(3)],flag=U(0x7f98+0x38*k+4),rot=[I(0x7f98+0x38*k+0x18+4*j) for j in range(3)],
           verts=[list(struct.unpack('<4f',R(U(0x7f98+0x38*k+0x10)+0x40*i+0x14,16))) +[U(U(0x7f98+0x38*k+0x10)+0x40*i+4)] for i in range(U(0x7f98+0x38*k+8))],
           faces=[dict(vis=U(U(0x7f98+0x38*k+0x14)+0x30*i+8),lvl=U(U(0x7f98+0x38*k+0x14)+0x30*i+0x2c)) for i in range(U(0x7f98+0x38*k+12))]) for k in range(N)],
      list=[(U(U(0x16634)+8*i),(U(U(0x16634)+8*i+4))) for i in range(U(0x1663c))],
      M=[struct.unpack('<d',R(a,8))[0] for a in [0x15be0+8*j+0x20*r for r in range(4) for j in range(4)]],
      eye=[struct.unpack('<d',R(a,8))[0] for a in (0x49f0,0x49f8,0x4a00)], z150=[F(0x150cc),F(0x150d0),F(0x150c0)])
snap={}
def grab(name): snap[name]=R(o.u32(0x466c),64000)
st=dict(pos=[F(0x4c1c),F(0x4c20),F(0x4c24)],M=[struct.unpack('<d',R(a,8))[0] for a in (0x15be0,0x15be8,0x15bf0,0x15c00,0x15c08,0x15c10,0x15c20,0x15c28,0x15c30)],warp=hex(o.u32(0x4c00)),flagA=0,
   k={hex(a):struct.unpack('<d',R(a,8))[0] for a in (0x7ed0,0x7ed8,0x7ee0,0x7ee8)})
def pre():
    st['pos']=[F(0x4c1c),F(0x4c20),F(0x4c24)]; st['M']=[struct.unpack('<d',R(a,8))[0] for a in (0x15be0,0x15be8,0x15bf0,0x15c00,0x15c08,0x15c10,0x15c20,0x15c28,0x15c30)]
    st['warp']=hex(o.u32(0x4c00)); st['k']={hex(a):struct.unpack('<d',R(a,8))[0] for a in (0x7ed0,0x7ed8,0x7ee0,0x7ee8)}; grab('tunnel')
o.run_to(0x2d7d4,{0x2cff9:pre,0x2d1e7:mkdump})
json.dump(dump,open('/tmp/p1test/objs_dump.json','w')); print('list',len(dump['list']))
grab('crystals')
open('/tmp/p1test/stage_tunnel.bin','wb').write(snap['tunnel']); open('/tmp/p1test/stage_all.bin','wb').write(snap['crystals']); json.dump(st,open('/tmp/p1test/state2.json','w'))
