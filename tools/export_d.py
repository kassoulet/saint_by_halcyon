"""Export part-D assets (orders 22-23): texture, sprite sheet, three palette tables and the overlay schedule. usage: export_d.py snapshot"""
import sys, struct, os
sys.path.insert(0,'.')
from oracle import *
o=Oracle(sys.argv[1],9); mu=o.mu; R=lambda a,n:bytes(mu.mem_read(a,n)); U=lambda a:struct.unpack('<I',R(a,4))[0]
out='../site/assets/pd/'; os.makedirs(out,exist_ok=True)
tb=U(0x36af0); sp=U(0x36ae4)
for n,d in (('tex.bin',R(tb,65536)),('shade.bin',R(tb+0x10000,65536)),('sheet.bin',R(sp,64000)),('palA.bin',R(0x35ee4,768)),('palB.bin',R(0x361e4,768)),('palC.bin',R(0x364e4,768)),('sched.i32',R(0x36fe6,4*8*10))): open(out+n,'wb').write(d)
print('ok',hex(tb),hex(sp))
