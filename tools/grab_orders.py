"""Run SAINT in DOSBox-X (cycles=40000, ~real time) and dump guest RAM the first time each requested music order is reached.
usage: grab_orders.py order1 order2 ...   -> /tmp/snaps/ord_<n>.bin (32 MB guest RAM, taken ~0.3 s after the order starts)"""
import os, subprocess, sys, time, re, struct
os.environ["SDL_AUDIODRIVER"]="dummy"
D=':%d'%(100+os.getpid()%800)
env=dict(os.environ, LD_LIBRARY_PATH='/tmp/dbx/root/usr/lib/x86_64-linux-gnu', DISPLAY=D)
xv=subprocess.Popen(['Xvfb',D,'-screen','0','640x480x24'],stderr=subprocess.DEVNULL); time.sleep(1)
want=sorted(set(int(x) for x in sys.argv[1:]))
p=subprocess.Popen(['/tmp/dbx/root/usr/bin/dosbox-x','-conf','dbx.conf','-fastlaunch','-nogui','-nomenu','-time-limit','900'],env=env,cwd=os.path.dirname(os.path.abspath(__file__)),stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
os.makedirs('/tmp/snaps',exist_ok=True)
def find():
    for l in open(f'/proc/{p.pid}/maps'):
        m=re.match(r'([0-9a-f]+)-([0-9a-f]+) rw',l)
        if not m or int(m[2],16)-int(m[1],16)<0x2000000: continue
        a=int(m[1],16)
        try:
            with open(f'/proc/{p.pid}/mem','rb') as f: f.seek(a); d=f.read(int(m[2],16)-a)
        except OSError: continue
        i=d.find(b'\xf8\x03\xf8\x02')
        while i>=0:
            if i>=0x400 and (i-0x400)%16==0 and len(d)-(i-0x400)>=0x2000000: return a+i-0x400, len(d)
            i=d.find(b'\xf8\x03\xf8\x02',i+1)
time.sleep(10); base=None
while base is None: base=find(); time.sleep(1)
base=base[0]; print('base',hex(base),flush=True)
B=0xb9c0; f=open(f'/proc/{p.pid}/mem','rb',buffering=0); last=-1; t0=time.time()
while want and p.poll() is None:
    f.seek(base+B+0x12bf); o=struct.unpack('<H',f.read(2))[0]
    if o!=last: print(f'{time.time()-t0:.0f}s order {o}',flush=True); last=o
    if o in want and o>=1:
        time.sleep(0.15); f.seek(base); open(f'/tmp/snaps/ord_{o}.bin','wb').write(f.read(0x2000000)); want.remove(o); print('dumped',o,flush=True)
    time.sleep(0.1)
p.kill(); xv.kill()
