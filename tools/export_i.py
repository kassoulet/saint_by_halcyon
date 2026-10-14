"""Export intro assets: animation streams, alpha mask, logo overlay, palette tables, easing tables."""
import sys, struct, os
sys.path.insert(0,'.')
from oracle import *
o=Oracle(sys.argv[1],10); mu=o.mu; R=lambda a,n:bytes(mu.mem_read(a,n)); U=lambda a:struct.unpack('<I',R(a,4))[0]
out='../site/assets/pi/'; os.makedirs(out,exist_ok=True)
n=U(0x4994c); tab=[U(0x49954+4*i) for i in range(n)]
data=R(U(0x49918),tab[-1]+0x1000)
files=dict(frames=data,mask=R(U(0x49938),64000+640),overlay=R(U(0x4993c),64000),palA=R(0x4a3b0,768),palB=R(0x4a6b0,768),palC=R(0x4a9b0,768),ease1=R(0x49fb0,512),ease2=R(0x49bb0,512),
           ptrs=struct.pack('<%dI'%n,*tab),tail=R(U(0x4992c)+16000,160))
for k,v in files.items(): open(out+k+'.bin','wb').write(v)
print(n,len(data),hex(U(0x4992c)),hex(U(0x49930)))
