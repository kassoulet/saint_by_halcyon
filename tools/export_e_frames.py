"""usage: export_e_frames.py snapshot part out_dir start_time k1,k2,.. -- oracle frames after k+1 ticks of a stateful part, order/row fed from the music timeline"""
import sys, json, struct, os
sys.path.insert(0,'.')
from oracle import *
snap,part,out,t0,ks=sys.argv[1],int(sys.argv[2]),sys.argv[3],float(sys.argv[4]),[int(x) for x in sys.argv[5].split(',')]
os.makedirs(out,exist_ok=True)
starts=sorted((int(o),t) for o,t in json.load(open('../site/assets/audio/order_times.json')).items()); RT=json.load(open('../site/assets/audio/row_times.json'))
def order_row(t):
    o=0
    for oo,tt in starts:
        if tt<=t: o=oo
        else: break
    r=0; R=RT[str(o)]
    while r<63 and R[r+1]<=t+1e-9: r+=1
    return o,r
oc=Oracle(snap,part)
for k in range(max(ks)+1):
    o,r=order_row(t0+k/70.086); oc.mu.mem_write(0x12bf,struct.pack('<H',o)); oc.mu.mem_write(0x12ca,struct.pack('<H',r))
    scr,pal=oc.frame()
    if os.environ.get('SCRPTR'): scr=bytes(oc.mu.mem_read(oc.u32(int(os.environ['SCRPTR'],16)),64000))
    if k in ks: open(f'{out}/f{k}.bin','wb').write(scr+pal[:768]); print(k,o,r,flush=True)
