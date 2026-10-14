"""Rewind the part-C snapshot taken at order 39 (6 ticks into C) to the first tick of C."""
import struct
g=bytearray(open('/tmp/snaps/ord_39.bin','rb').read()); B=0xb9c0
P=lambda a,fmt,v:g.__setitem__(slice(B+a,B+a+struct.calcsize(fmt)),struct.pack(fmt,v))
for k in range(6,42):
    for j in range(3): P(0x7f98+0x38*k+0x18+4*j,'<i',0)
P(0x17898,'<d',0.0); P(0x178c8,'<d',0.0); P(0x178a8,'<I',0); P(0x178d8,'<I',0)
P(0x4694,'<I',0); P(0x3f3cc,'<f',0.0); P(0x4698,'<I',1)
P(0x3fce0,'<I',0); P(0x3fcf0,'<I',0); P(0x3fce4,'<f',0.0)
P(0x12bf,'<H',39); P(0x12ca,'<H',0)
open('/tmp/snaps/C_start.bin','wb').write(g)
