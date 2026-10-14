# usage: dis2.py dump start end [base=0xb9c0] > listing
# Program (PMODE) DS/CS base is `base` in guest RAM; listing addresses are program offsets (phys - base).
import sys
from capstone import *
m=open(sys.argv[1],'rb').read(); a=int(sys.argv[2],0); b=int(sys.argv[3],0); B=int(sys.argv[4],0) if len(sys.argv)>4 else 0xb9c0
cs=Cs(CS_ARCH_X86,CS_MODE_32)
ins=[]; pos=a
class D: pass
while pos<b:
    n=0
    for i in cs.disasm(m[B+pos:B+b],pos): ins.append(i); n=i.address+i.size
    if n==0: n=pos+1; x=D(); x.address=pos; x.mnemonic='db'; x.op_str='0x%02x'%m[B+pos]; x.size=1; ins.append(x)
    pos=max(n,pos+1)
tg=set()
for i in ins:
    if i.mnemonic in('call','jmp') or i.mnemonic.startswith('j') or i.mnemonic.startswith('loop'):
        try: tg.add(int(i.op_str,0))
        except: pass
for i in ins:
    if i.address in tg: print(f'L{i.address:x}:')
    print(f'  {i.address:06x}  {i.mnemonic} {i.op_str}')
