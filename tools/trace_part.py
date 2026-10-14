"""usage: trace_part.py snapshot part jmp_addr ras1 ras2 -> handler/raster stats + object table"""
import sys, struct, collections
sys.path.insert(0,'.')
from oracle import *
snap,part=sys.argv[1],int(sys.argv[2]); jm,r1,r2=[int(x,16) for x in sys.argv[3:6]]
o=Oracle(snap,part); mu=o.mu; R=lambda a,n:bytes(mu.mem_read(a,n))
for _ in range(2): o.frame()
cnt=collections.Counter()
mu.hook_add(UC_HOOK_CODE,lambda uc,a,s,_:cnt.update([('handler',hex(struct.unpack('<I',R(uc.reg_read(UC_X86_REG_ECX),4))[0]))]),None,jm,jm)
for r in (r1,r2): mu.hook_add(UC_HOOK_CODE,lambda uc,a,s,_:cnt.update([('raster',hex(o.u32(0x1f920)))]),None,r,r)
o.frame(); print(dict(cnt))
I=lambda a:struct.unpack('<I',R(a,4))[0]; F=lambda a:struct.unpack('<f',R(a,4))[0]
n=I(0x17210); print('nobj',n,'flares',I(0x14798),'order',I(0x12bf)&0xffff,'warp',hex(I(0x4c00)))
for k in range(n):
    a=0x7f98+0x38*k; m=I(a+0x14)
    print(k,[hex(I(a+4*j)) for j in range(5)],'hdr',[hex(I(m+4*j)) for j in range(3)] if 0x1000<m<0x7000000 else '','pos',[round(F(a+0x24+4*j),1) for j in range(3)],'rad',round(F(a+0x30),1))
