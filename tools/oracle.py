"""Oracle: run SAINT's own frame loop (from a DOSBox-X RAM snapshot) under Unicorn.
Program offsets == emulator addresses (the snapshot is rebased so that PMODE's DS/CS base 0xb9c0 becomes 0).
"""
import struct, sys
from unicorn import *
from unicorn.x86_const import *
B=0xb9c0; MEM=0x2000000
PARTS={1:(0x2c885,0x2c88f,0x2d8d0),2:(0x305b8,0x305c2,0x31530),3:(0x34761,0x3476b,0x35740),4:(0x3a0a2,0x3a0ac,0x3a9e0),5:(0x3d14e,0x3d158,0x3dfd0),6:(0x41220,0x4122a,0x421a0),7:(0x4500d,0x45017,0x45a10),8:(0x4867a,0x48684,0x49080),9:(0x377ac,0x377b6,0x37e00,0x36b10),10:(0x4bab5,0x4bb53,0x4bd70,0x49910)}   # (loop head, tick-wait, timer-ISR body)
SENT=0x1ffff00

class Oracle:
    def __init__(s, snap, part=3):
        s.LOOP,s.WAIT,s.TICK=PARTS[part][:3]; s.WAITVAR=PARTS[part][3] if len(PARTS[part])>3 else 0x469c
        g=open(snap,'rb').read()
        s.mu=mu=Uc(UC_ARCH_X86,UC_MODE_32)
        mu.mem_map(0,MEM); mu.mem_write(0,g[B:B+MEM-0x10000])
        mu.mem_write(SENT,b'\xf4')   # hlt sentinel
        mu.mem_write(SENT+16,b'\xdb\xe3\xf4')   # fninit; hlt
        s.pal=bytearray(768); s.dac=0; s.dacsub=0; s.vsync=0
        s.reads=None
        mu.hook_add(UC_HOOK_INSN,s.h_in,None,1,0,UC_X86_INS_IN)
        mu.hook_add(UC_HOOK_INSN,s.h_out,None,1,0,UC_X86_INS_OUT)
        mu.hook_add(UC_HOOK_CODE,s.h_code,None,s.WAIT,s.WAIT)
        s.wait=False
    def h_in(s,mu,port,size,_):
        if port==0x3da: s.vsync^=8; return s.vsync
        return 0
    def h_out(s,mu,port,size,val,_):
        if port==0x3c8: s.dac=val*3
        elif port==0x3c9:
            if s.dac<768: s.pal[s.dac]=val&63
            s.dac+=1
    def h_code(s,mu,addr,size,_):
        mu.mem_write(s.WAITVAR,struct.pack('<I',1))   # pretend a retrace tick arrived
    def u32(s,a): return struct.unpack('<I',bytes(s.mu.mem_read(a,4)))[0]
    def call(s,addr,limit=5_000_000):
        mu=s.mu; sp=mu.reg_read(UC_X86_REG_ESP)-4
        mu.mem_write(sp,struct.pack('<I',SENT)); mu.reg_write(UC_X86_REG_ESP,sp)
        mu.emu_start(addr,SENT,count=limit)
    def frame(s):
        """tick + one pass of the main loop; returns (indexed 320x200 screen, palette)"""
        mu=s.mu
        mu.emu_start(SENT+16,SENT+18)   # fninit: keep the x87 stack from leaking between frames
        mu.reg_write(UC_X86_REG_ESP,0x1fff000)
        s.call(s.TICK)
        mu.reg_write(UC_X86_REG_ESP,0x1fff000)
        mu.emu_start(LOOP,LOOP,count=200_000_000) if False else s.run_loop()
        scr=bytes(mu.mem_read(s.u32(0x466c),64000))
        return scr,bytes(s.pal)
    def run_to(s,stop,hooks=None):
        """tick, then run the loop until pc==stop (mid-frame inspection); returns after the hook fires"""
        mu=s.mu
        mu.emu_start(SENT+16,SENT+18); mu.reg_write(UC_X86_REG_ESP,0x1fff000); s.call(s.TICK); mu.reg_write(UC_X86_REG_ESP,0x1fff000)
        hs=[mu.hook_add(UC_HOOK_CODE,lambda uc,a,sz,_:uc.emu_stop(),None,stop,stop)]
        for addr,fn in (hooks or {}).items(): hs.append(mu.hook_add(UC_HOOK_CODE,lambda uc,a,sz,_,fn=fn:fn(),None,addr,addr))
        try: mu.emu_start(s.LOOP,0xffffffff,count=40_000_000)
        finally:
            for h in hs: mu.hook_del(h)
    def run_loop(s):
        # run from LOOP until control returns to LOOP (the `jl 0x34761` at the end of the pass)
        mu=s.mu; n=[0]
        def stop(uc,addr,size,_):
            n[0]+=1
            if n[0]>1: uc.emu_stop()
        h=mu.hook_add(UC_HOOK_CODE,stop,None,s.LOOP,s.LOOP)
        try: mu.emu_start(s.LOOP,0xffffffff,count=40_000_000)
        finally: mu.hook_del(h)
if __name__=='__main__':
    o=Oracle(sys.argv[1],int(sys.argv[3])); from PIL import Image
    for i in range(int(sys.argv[2])):
        scr,pal=o.frame(); im=Image.frombytes('P',(320,200),scr); im.putpalette(bytes(min(255,v*4+(v>>4)) for v in pal))
        im.save(f'/tmp/or_{i:03d}.png'); print(i,'order',struct.unpack('<H',bytes(o.mu.mem_read(0x12bf,2)))[0])
