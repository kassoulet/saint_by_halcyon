"""Rewind the part-D snapshot taken at order 22 (10 ticks into D) to the first tick."""
import struct
g=bytearray(open('/tmp/snaps/ord_22.bin','rb').read()); B=0xb9c0
for a in (0x36d7c,0x36d80,0x36d84,0x36d88,0x36d8c,0x36b10): g[B+a:B+a+4]=struct.pack('<I',0)
g[B+0x36b08:B+0x36b0c]=struct.pack('<I',1023); g[B+0x12bf:B+0x12c1]=struct.pack('<H',22); g[B+0x12ca:B+0x12cc]=struct.pack('<H',0)
open('/tmp/snaps/D_start.bin','wb').write(g)
