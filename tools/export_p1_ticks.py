"""Oracle test vector for the P1 timer-ISR port: initial state + per-tick state with forced (order,row)."""
import sys, struct, json
sys.path.insert(0,'.')
from oracle import *
o=Oracle('/tmp/guest_100.bin',1); mu=o.mu; R=lambda a,n:bytes(mu.mem_read(a,n))
I=lambda a:struct.unpack('<i',R(a,4))[0]; F=lambda a:struct.unpack('<f',R(a,4))[0]; D=lambda a:struct.unpack('<d',R(a,8))[0]
IV=[0x4694,0x4698,0x2b7e0,0x2aed0,0x2b7e4,0x2b7f4,0x2b7f8,0x4c00,0x178a8,0x178ac,0x178d8,0x178dc,0x2aec4,0x7fb0,0x7fb4,0x7fb8,0x46a8,0x46ac,0x46a4]
FV=[0x2b7d4,0x2b7d8,0x2b7e8,0x2b7ec,0x2b7f0,0x7f30,0x7f34,0x7f38,0x7f3c]
DV=[0x17898,0x178c8,0x178a0,0x4968,0x4bb0]
def state(): return dict(i={hex(a):I(a) for a in IV},f={hex(a):F(a) for a in FV},d={hex(a):D(a) for a in DV},
    pal=list(R(0x2b4d4,768)[:3]), objs=[list(struct.unpack('<3i',R(0x7f98+0x38*k+0x18,12))) for k in (0,1,32)])
init=state(); ticks=[]
order,row=4,10
for n in range(int(sys.argv[1])):
    mu.mem_write(0x12bf,struct.pack('<H',order)); mu.mem_write(0x12ca,struct.pack('<H',row))
    mu.emu_start(SENT+16,SENT+18); mu.reg_write(UC_X86_REG_ESP,0x1fff000); o.call(o.TICK)
    ticks.append(dict(order=order,row=row,**state()))
    if n%7==6:
        row+=1
        if row==64: row=0; order+=1
json.dump(dict(init=init,ticks=ticks,tbl=[I(0x2a6c4+4*k) for k in range(128)]),open('/tmp/p1test/ticks.json','w'))
print(init); print(ticks[-1])
