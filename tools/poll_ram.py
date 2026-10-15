# poll guest RAM of a running DOSBox-X: wall, order [12bf], row [12ca], tick [8], part index [4af10] -> /tmp/poll2.csv
import os, subprocess, sys, time, re, struct
os.environ["SDL_AUDIODRIVER"]="dummy"
D=':%d'%(100+os.getpid()%800)
env=dict(os.environ, LD_LIBRARY_PATH='/tmp/dbx/root/usr/lib/x86_64-linux-gnu', DISPLAY=D)
xv=subprocess.Popen(['Xvfb',D,'-screen','0','1024x768x24'],stderr=subprocess.DEVNULL); time.sleep(1)
T=float(sys.argv[1])
p=subprocess.Popen(['/tmp/dbx/root/usr/bin/dosbox-x','-conf','dbx.conf','-fastlaunch','-nogui','-nomenu','-time-limit',str(int(T)+30)],
    env=env,cwd='/home/gautier/SynologyDrive/code/current/demos/saint/tools',stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
t0=time.time(); base=None
def find():
    for l in open(f'/proc/{p.pid}/maps'):
        m=re.match(r'([0-9a-f]+)-([0-9a-f]+) rw',l)
        if m and int(m[2],16)-int(m[1],16)>=0x1000000:
            a=int(m[1],16); b=int(m[2],16)
            try:
                with open(f'/proc/{p.pid}/mem','rb',buffering=0) as fh:
                    fh.seek(a); d=fh.read(b-a)
            except OSError: continue
            i=d.find(b'\xf8\x03\xf8\x02')
            while i>=0 and (i-0x400)%4096 and (i-0x400)%16: i=d.find(b'\xf8\x03\xf8\x02',i+1)
            if i>=0x400 and len(d)-(i-0x400)>=0x2000000: return a+i-0x400
    return None
out=open('/tmp/poll2.csv','w',buffering=1)
mem=open(f'/proc/{p.pid}/mem','rb',buffering=0)
P=0xb9c0
def rd(off,n):
    mem.seek(base+P+off); return struct.unpack('<H' if n==2 else '<I',mem.read(n))[0]
while time.time()-t0<T:
    if base is None:
        time.sleep(0.5); base=find(); continue
    try: out.write(f'{time.time()-t0:.3f},{rd(0x12bf,2)},{rd(0x12ca,2)},{rd(8,4)},{rd(0x4af10,4)}\n')
    except OSError: pass
    time.sleep(0.01)
p.kill(); xv.kill()
