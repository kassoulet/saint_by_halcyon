# Run SAINT.EXE in DOSBox-X on a virtual display, screenshot every N seconds (reference frames).
import os, subprocess, sys, time
step=float(sys.argv[1]); total=float(sys.argv[2]); out=sys.argv[3]; os.makedirs(out,exist_ok=True)
D=':%d'%(100+os.getpid()%800)
env=dict(os.environ, LD_LIBRARY_PATH='/tmp/dbx/root/usr/lib/x86_64-linux-gnu', DISPLAY=D)
xv=subprocess.Popen(['Xvfb',D,'-screen','0','1024x768x24'],stderr=subprocess.DEVNULL); time.sleep(1)
p=subprocess.Popen(['/tmp/dbx/root/usr/bin/dosbox-x','-conf','dbx.conf','-fastlaunch','-nogui','-nomenu','-time-limit',str(int(total)+30)],
    env=env,cwd=os.path.dirname(os.path.abspath(__file__)),stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL)
t0=time.time(); n=0
while time.time()-t0<total:
    subprocess.run(['import','-window','root','-crop','720x540+152+114','+repage',f'{out}/{n:04d}.png'],env=env); n+=1
    time.sleep(max(0,t0+n*step-time.time()))
p.kill(); xv.kill()
