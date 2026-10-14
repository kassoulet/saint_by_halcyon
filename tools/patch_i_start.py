"""Intro (orders 0-2): put the order-2 snapshot back to the first iteration of the loop at 0x4bab5."""
import struct
g=bytearray(open('/tmp/snaps/ord_2.bin','rb').read()); B=0xb9c0
P=lambda a,fmt,v:g.__setitem__(slice(B+a,B+a+struct.calcsize(fmt)),struct.pack(fmt,v))
P(0x49948,'<I',0); P(0x49950,'<I',0); P(0x49ba8,'<I',0); P(0x49928,'<i',-1); P(0x49bac,'<I',0x7f); P(0x49b8c,'<I',0); P(0x49b90,'<I',0)
P(0x12bf,'<H',0); P(0x12ca,'<H',0)
open('/tmp/snaps/I_start.bin','wb').write(g)
