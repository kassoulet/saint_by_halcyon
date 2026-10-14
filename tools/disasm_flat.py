import sys
from capstone import *
m=open(sys.argv[1],'rb').read(); a=int(sys.argv[2],0); n=int(sys.argv[3],0); mode=CS_MODE_32 if len(sys.argv)<5 else CS_MODE_16
for i in Cs(CS_ARCH_X86,mode).disasm(m[a:a+n],a): print(f'{i.address:08x} {i.mnemonic} {i.op_str}')
