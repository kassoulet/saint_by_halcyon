"""Sample demo state variables from DOSBox-X guest RAM while it runs: probe.py <seconds> <step> -> /tmp/probe.csv"""
import os, subprocess, sys, time, re, struct
os.environ["SDL_AUDIODRIVER"]="dummy"
D=':%d'%(100+os.getpid()%800)
env=dict(os.environ, LD_LIBRARY_PATH='/tmp/dbx/root/usr/lib/x86_64-linux-gnu', DISPLAY=D)
xv=subprocess.Popen(['Xvfb',D,'-screen','0','640x480x24'],stderr=subprocess.DEVNULL); time.sleep(1)
p=subprocess.Popen(['/tmp/dbx/root/usr/bin/dosbox-x','-conf','dbx.conf','-fastlaunch','-nogui','-nomenu','-time-limit',str(int(float(sys.argv[1]))+30)],
    env=env,cwd=os.path.dirname(os.path.abspath(__file__)),stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
time.sleep(12)
def find_ram():
    for l in open(f'/proc/{p.pid}/maps'):
        m=re.match(r'([0-9a-f]+)-([0-9a-f]+) rw',l)
        if not m or int(m[2],16)-int(m[1],16)<0x2000000: continue
        a=int(m[1],16)
        try:
            with open(f'/proc/{p.pid}/mem','rb') as f:
                f.seek(a); d=f.read(int(m[2],16)-a)
        except OSError: continue
        i=d.find(b'\xf8\x03\xf8\x02')
        while i>=0:
            if i>=0x400 and (i-0x400)%16==0 and len(d)-(i-0x400)>=0x2000000: return a+i-0x400
            i=d.find(b'\xf8\x03\xf8\x02',i+1)
base=None
while base is None:
    base=find_ram(); time.sleep(1)
print('base',hex(base),flush=True)
B=0xb9c0; t0=time.time(); out=open('/tmp/probe.csv','w'); step=float(sys.argv[2])
with open(f'/proc/{p.pid}/mem','rb') as f:
    while time.time()-t0<float(sys.argv[1]):
        f.seek(base+B+0x12bf); o=struct.unpack('<H',f.read(2))[0]
        f.seek(base+B+0x46a4); fr=struct.unpack('<I',f.read(4))[0]
        f.seek(base+B+0x12ca); r=struct.unpack('<H',f.read(2))[0]
        out.write(f'{time.time()-t0+12:.1f},{o},{r},{fr}\n'); out.flush(); time.sleep(step)
p.kill(); xv.kill()
