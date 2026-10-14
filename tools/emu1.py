# Emulate the real-mode unpacker stub of SAINT.EXE under Unicorn, logging interrupts.
import sys, struct
from unicorn import *
from unicorn.x86_const import *
d = open('../SAINT.EXE','rb').read()
hdr = struct.unpack('<14H', d[:28])
hdrsz = hdr[4]*16
img = d[hdrsz:hdr[2]*512 - (512-hdr[1] if hdr[1] else 0)] if False else d[hdrsz:]
SEG = 0x1000
mu = Uc(UC_ARCH_X86, UC_MODE_16)
mu.mem_map(0, 0x4000000)
mu.mem_write(SEG*16, img)
mu.mem_write((SEG-0x10)*16, b'\xcd\x20' + b'\0'*254)
# PSP env/cmdline
mu.mem_write((SEG-0x10)*16+0x80, b'\0\r')
ENV=0x0900
mu.mem_write(ENV*16, b'PATH=C:\\\0\0\x01\0SAINT.EXE\0\0')
mu.mem_write((SEG-0x10)*16+0x2c, struct.pack('<H',ENV))
mu.mem_write((SEG-0x10)*16+2, struct.pack('<H',0xA000))
for r,v in [(UC_X86_REG_CS,SEG+hdr[11]),(UC_X86_REG_IP,hdr[10]),(UC_X86_REG_SS,SEG+hdr[7]),(UC_X86_REG_SP,hdr[8]),
            (UC_X86_REG_DS,SEG-0x10),(UC_X86_REG_ES,SEG-0x10)]:
    mu.reg_write(r,v)
# IVT -> each vector points to F000:vec so we trap on fetch
mu.mem_write(0xF0000, b'\xcf'*0x400)  # IRET at F000:xxxx
for i in range(256):
    mu.mem_write(i*4, struct.pack('<HH', i, 0xF000))
fh = {}
nextseg=[0x4000]
def R(r): return mu.reg_read(r)
def W(r,v): mu.reg_write(r,v)
def setcf(c):
    f=R(UC_X86_REG_EFLAGS); W(UC_X86_REG_EFLAGS,(f|1) if c else (f&~1))
def intr(uc, n, _):
    ax=R(UC_X86_REG_AX)
    if n==0x67: W(UC_X86_REG_AX,0x8400); return
    if n==0x2f: W(UC_X86_REG_AX,ax&0xff00); return
    if n==0x15 and (ax>>8)==0x88: W(UC_X86_REG_AX,0x7000); setcf(0); return
    if n==0x15 and (ax>>8)==0xc0: setcf(1); return
    if n==0x33: return
    if n==0x21 and dos(uc): return
    log(uc,n)
def dos(uc):
    ax=R(UC_X86_REG_AX); ah=ax>>8; bx=R(UC_X86_REG_BX); cx=R(UC_X86_REG_CX); dx=R(UC_X86_REG_DX); ds=R(UC_X86_REG_DS)
    if ah==0x3d:
        name=b''; a=ds*16+dx
        while mu.mem_read(a,1)[0]: name+=bytes(mu.mem_read(a,1)); a+=1
        print('open',name); h=5
        fh[h]=[open('../SAINT.EXE','rb'),0]; W(UC_X86_REG_AX,h); setcf(0); return True
    if ah==0x3e: setcf(0); return True
    if ah!=0x3f: print('21',hex(ax),hex(bx),hex(cx),hex(dx))
    if ah==0x3f:
        f=fh[bx][0]; b=f.read(cx); mu.mem_write(ds*16+dx,b); W(UC_X86_REG_AX,len(b)); setcf(0); return True
    if ah==0x42:
        f=fh[bx][0]; off=(cx<<16)|dx; al=ax&255
        f.seek(off,al); p=f.tell(); W(UC_X86_REG_AX,p&0xffff); W(UC_X86_REG_DX,p>>16); setcf(0); return True
    if ah==0x48:
        s=nextseg[0]; nextseg[0]+=bx+1; W(UC_X86_REG_AX,s); setcf(0); print('alloc',hex(s),hex(bx)); return True
    if ah==0x4a: setcf(0); return True
    if ah==0x55:
        mu.mem_write(dx*16, b'\xcd\x20'+b'\0'*254); setcf(0); print('createPSP',hex(dx)); return True
    if ah in (0x4d,0x30,0x62): W(UC_X86_REG_AX,0x0005 if ah==0x30 else 0); setcf(0); return True
    if ah==0x09:
        a=ds*16+dx; t=b''
        while mu.mem_read(a,1)[0]!=0x24: t+=bytes(mu.mem_read(a,1)); a+=1
        print('PRINT',t); open('/tmp/seg11cc.bin','wb').write(bytes(mu.mem_read(0x11cc0,0x2000))); raise SystemExit
    if ah==0x4c: print('EXIT',ax&255); raise SystemExit
    return False
def log(uc,n):
    ax = uc.reg_read(UC_X86_REG_AX)
    print(f'INT {n:02x} AX={ax:04x} BX={uc.reg_read(UC_X86_REG_BX):04x} CX={uc.reg_read(UC_X86_REG_CX):04x} DX={uc.reg_read(UC_X86_REG_DX):04x} @{uc.reg_read(UC_X86_REG_CS):04x}:{uc.reg_read(UC_X86_REG_IP):04x}')
mu.hook_add(UC_HOOK_INTR, intr)
n=0
try:
    mu.emu_start((SEG+hdr[11])*16+hdr[10], 0, count=int(sys.argv[1]) if len(sys.argv)>1 else 3000000)
except UcError as e:
    print('ERR', e)
open('/tmp/seg11cc.bin','wb').write(bytes(mu.mem_read(0x11cc0,0x2000)))
open('/tmp/mem.bin','wb').write(bytes(mu.mem_read(0,0x2000000)))
print('CS:IP', hex(mu.reg_read(UC_X86_REG_CS)), hex(mu.reg_read(UC_X86_REG_IP)))
g=mu.reg_read(UC_X86_REG_GDTR); print('GDTR',[hex(x) for x in g])
for i in range(0,min(g[2]+1,0x80),8):
    q=struct.unpack('<Q',mu.mem_read(g[1]+i,8))[0]
    base=((q>>16)&0xffffff)|((q>>56)<<24); lim=(q&0xffff)|(((q>>48)&0xf)<<16)
    print(hex(i),hex(base),hex(lim),hex((q>>40)&0xff),hex((q>>52)&0xf))
print('IDTR',[hex(x) for x in mu.reg_read(UC_X86_REG_IDTR)], 'EIP',hex(mu.reg_read(UC_X86_REG_EIP)),'CR0',hex(mu.reg_read(UC_X86_REG_CR0)))
