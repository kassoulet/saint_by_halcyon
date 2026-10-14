import sys, struct, json
sys.path.insert(0,'.')
from oracle import *
o=Oracle('/tmp/guest_340.bin',3); mu=o.mu; R=lambda a,n:bytes(mu.mem_read(a,n))
I=lambda a:struct.unpack('<i',R(a,4))[0]; F=lambda a:struct.unpack('<f',R(a,4))[0]; D=lambda a:struct.unpack('<d',R(a,8))[0]
def st(): return dict(v4694=I(0x4694),v4698=I(0x4698),f3272c=I(0x3272c),pulse=F(0x32730),At=D(0x17898),Ai=I(0x178a8),A2t=D(0x178c8),Bt=D(0x178b0),Bi=I(0x178c0),a7f30=F(0x7f30),
   bOn=I(0x33044),bT=I(0x33054),bf=F(0x33048),ptr=I(0x33c20),sel=I(0x32728),warp=I(0x4c00),warp2=I(0x33058),fl=[D(0x178e0+0x18*k) for k in (0,1,2,49)],fi=[I(0x178e0+0x18*k+0x10) for k in (0,1,2,49)])
init=st(); ticks=[]; order,row=13,3
for n in range(int(sys.argv[1])):
    mu.write=None
    mu.mem_write(0x12bf,struct.pack('<H',order)); mu.mem_write(0x12ca,struct.pack('<H',row))
    mu.emu_start(SENT+16,SENT+18); mu.reg_write(UC_X86_REG_ESP,0x1fff000); o.call(o.TICK)
    ticks.append(dict(order=order,row=row,**st()))
    if n%7==6:
        row+=1
        if row==32: row=0; order+=1
json.dump(dict(init=init,ticks=ticks),open('/tmp/p3test/ticks.json','w')); print(init); print(ticks[-1])
