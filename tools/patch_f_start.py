"""Rewind the part-F snapshot taken at order 36 (528 ticks into F) to the first tick of F (see docs/PROCESS.md, part F)."""
import struct, math, sys
g=bytearray(open('/tmp/snaps/ord_36.bin','rb').read()); B=0xb9c0
P=lambda a,fmt,v:g.__setitem__(slice(B+a,B+a+struct.calcsize(fmt)),struct.pack(fmt,v))
U=lambda a:struct.unpack('<I',g[B+a:B+a+4])[0]
n=528
a8=U(0x46a8)-0xd6*n; ac=(U(0x46ac)+369*n)&0xffffffff
for j,v in enumerate((0,0,0)): P(0x7fe8+4*j,'<I',v)
P(0x17898,'<d',0.0); P(0x178c8,'<d',0.0); P(0x178a8,'<I',840); P(0x178d8,'<I',880)
P(0x46a8,'<I',a8); P(0x46ac,'<I',ac); P(0x4694,'<I',0)
P(0x4698,'<I',(round(math.sin(math.sin((ac+369)/65536*3)*math.cos((a8-0xd6)/65536*3))*0x46)+0x40)&0x7f)
P(0x12bf,'<H',35); P(0x12ca,'<H',0); P(0x4603c,'<I',0); P(0x4604d,'<I',0); P(0x46051,'<I',0)
open('/tmp/snaps/F_start.bin','wb').write(g); print('46a8',a8,'46ac',ac)
