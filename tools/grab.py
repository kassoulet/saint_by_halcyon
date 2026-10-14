# Run SAINT.EXE in DOSBox-X (virtual display) and dump guest RAM (via /proc/pid/mem) at given times.
# usage: grab.py t1 t2 ...   -> /tmp/ram_<t>.bin and /tmp/shot_<t>.png
import os, subprocess, sys, time, re, functools
os.environ["SDL_AUDIODRIVER"]="dummy"
print=functools.partial(print,flush=True)
D=':%d'%(100+os.getpid()%800)
env=dict(os.environ, LD_LIBRARY_PATH='/tmp/dbx/root/usr/lib/x86_64-linux-gnu', DISPLAY=D)
xv=subprocess.Popen(['Xvfb',D,'-screen','0','1024x768x24'],stderr=subprocess.DEVNULL); time.sleep(1)
p=subprocess.Popen(['/tmp/dbx/root/usr/bin/dosbox-x','-conf','dbx.conf','-fastlaunch','-nogui','-nomenu','-time-limit',str(int(max(map(float,sys.argv[1:])))+20)],
    env=env,cwd=os.path.dirname(os.path.abspath(__file__)),stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
t0=time.time()
def ram():
    # dump every big rw mapping; guest RAM is located offline (BIOS data area COM ports at phys 0x400)
    out=[]
    for l in open(f'/proc/{p.pid}/maps'):
        m=re.match(r'([0-9a-f]+)-([0-9a-f]+) rw',l)
        if m and int(m[2],16)-int(m[1],16)>=0x1000000: out.append((int(m[1],16),int(m[2],16)))
    return out
for t in map(float,sys.argv[1:]):
    time.sleep(max(0,t-(time.time()-t0)))
    subprocess.run(['import','-window','root',f'/tmp/shot_{int(t)}.png'],env=env)
    for k,(a,b) in enumerate(ram()):
        print(t,k,hex(a),hex(b-a))
        try:
            with open(f'/proc/{p.pid}/mem','rb') as f:
                f.seek(a); d=f.read(b-a)
        except OSError: continue
        i=d.find(b'\xf8\x03\xf8\x02')
        while i>=0 and (i-0x400)%4096 and (i-0x400)%16: i=d.find(b'\xf8\x03\xf8\x02',i+1)
        if i>=0x400 and len(d)-(i-0x400)>=0x2000000:   # guest RAM: phys 0x400 = BIOS data area
            open(f'/tmp/snaps/guest_{int(t)}.bin','wb').write(d[i-0x400:i-0x400+0x2000000]); print('guest at',hex(i-0x400))
p.kill(); xv.kill()
