"""Capture calls of the perspective texture mapper 0x1fefc (inputs: 3 vertex records, tables; before/after buffers)."""
import sys, struct, json
sys.path.insert(0,'.')
from oracle import *
snap,part,jm=sys.argv[1],int(sys.argv[2]),sys.argv[3]; nmax=int(sys.argv[4]); out=sys.argv[5]
o=Oracle(snap,part); mu=o.mu; R=lambda a,n:bytes(mu.mem_read(a,n))
for _ in range(2): o.frame()
calls=[]; cur={}
def entry(uc,a,s,_):
    if len(calls)>=nmax: return
    cur.clear(); cur['v']=[R(uc.reg_read(r),0x40) for r in (UC_X86_REG_ESI,UC_X86_REG_EDI,UC_X86_REG_EBP)]
    cur['pre']=R(o.u32(0x466c),64000); cur['tex']=o.u32(0x1f924); cur['shd']=o.u32(0x1f928); cur['s']=o.u32(0x48f8)
    esp=uc.reg_read(UC_X86_REG_ESP); cur['ret']=struct.unpack('<I',R(esp,4))[0]
def ret_hook(uc,a,s,_):
    if cur and uc.reg_read(UC_X86_REG_EIP)==cur.get('ret_pc'): pass
mu.hook_add(UC_HOOK_CODE,entry,None,0x1fefc,0x1fefc)
# the function returns via `ret` at its end (0x21137 neighbourhood): capture post state at the return address
posts={}
def any_code(uc,a,s,_):
    if cur and a==cur['ret']:
        cur['post']=R(o.u32(0x466c),64000); calls.append(dict(cur)); cur.clear()
mu.hook_add(UC_HOOK_CODE,any_code)
o.frame()
import pickle; pickle.dump(calls,open(out,'wb')); print(len(calls),'calls')
