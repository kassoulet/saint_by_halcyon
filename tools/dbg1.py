import sys; sys.path.insert(0,".")
import struct,sys

from oracle import *
o=Oracle('/tmp/guest_100.bin'); mu=o.mu
hits={}
def h(uc,a,sz,_): hits[a]=hits.get(a,0)+1
for f in range(3):
    hits.clear()
    hh=mu.hook_add(UC_HOOK_CODE,h)
    scr,pal=o.frame()
    mu.hook_del(hh)
    print('frame',f,'insns',sum(hits.values()),'warp calls',hits.get(0x349e3,0),'4c00=',hex(o.u32(0x4c00)),'41b7=',mu.mem_read(0x41b7,1)[0],'12bf',o.u32(0x12bf)&0xffff,'33044',o.u32(0x33044))
    print(' 34761 hit',hits.get(0x34761),' 3476b',hits.get(0x3476b),' 35740',hits.get(0x35740))
