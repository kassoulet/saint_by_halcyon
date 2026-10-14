import sys, struct, collections
sys.path.insert(0,'.')
from oracle import *
o=Oracle('/tmp/guest_100.bin',1); mu=o.mu; R=lambda a,n:bytes(mu.mem_read(a,n))
for _ in range(2): o.frame()
cnt=collections.Counter(); rec=[]
def h_jmp(uc,a,sz,_):
    ecx=uc.reg_read(UC_X86_REG_ECX); cnt[('handler',struct.unpack('<I',R(ecx,4))[0])]+=1
def h_ras(uc,a,sz,_):
    cnt[('raster',o.u32(0x1f920),a)]+=1
    if len(rec)<3: rec.append((o.u32(0x1f920),[R(uc.reg_read(r),0x40).hex() for r in (UC_X86_REG_ESI,UC_X86_REG_EDI,UC_X86_REG_EBP)]))
mu.hook_add(UC_HOOK_CODE,h_jmp,None,0x2d3d3,0x2d3d3)
mu.hook_add(UC_HOOK_CODE,h_ras,None,0x2d69d,0x2d69d); mu.hook_add(UC_HOOK_CODE,h_ras,None,0x2d7ac,0x2d7ac)
o.frame()
for k,v in cnt.items(): print(k if k[0]=='handler' and False else (k[0],hex(k[1]),(hex(k[2]) if len(k)>2 else ''),v))
for r in rec: print(hex(r[0]),r[1])
