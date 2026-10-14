"""Order start times of saint.s3m (speed/tempo/jump/break/pattern-delay aware, loops ignored)."""
import struct, json, sys
e=open('../site/assets/audio/saint.s3m','rb').read()
o,i,p=struct.unpack('<HHH',e[0x20:0x26]); speed=e[0x31]; tempo=e[0x32]
orders=list(e[0x60:0x60+o]); pp=struct.unpack('<%dH'%p,e[0x60+o+2*i:0x60+o+2*i+2*p])
def pattern(n):
    b=pp[n]*16+2; rows=[]; row=[]
    while len(rows)<64:
        w=e[b]; b+=1
        if w==0: rows.append(row); row=[]; continue
        ch=w&31; n_=i_=v=c=d=None
        if w&32: n_,i_=e[b],e[b+1]; b+=2
        if w&64: v=e[b]; b+=1
        if w&128: c,d=e[b],e[b+1]; b+=2
        row.append((c,d))
    return rows
t=0.0; ordi=0; row=0; starts={}; vis=set(); cache={}; rowt={}
while ordi<len(orders) and (ordi,row) not in vis:
    pat=orders[ordi]
    if pat==255: break
    if pat==254: ordi+=1; continue
    if row==0: starts.setdefault(ordi,round(t,3))
    vis.add((ordi,row)); rowt.setdefault(ordi,{})[row]=round(t,4); rows=cache.setdefault(pat,pattern(pat)) if pat<p else [[]]*64
    jump=None; brk=None; delay=0
    for c,d in rows[row]:
        if c==1: speed=d
        elif c==20 and d>=0x20: tempo=d      # T
        elif c==2: jump=d                     # B
        elif c==3: brk=(d>>4)*10+(d&15)       # C
        elif c==19 and d>>4==0xE: delay=d&15  # SEx
    t+=(speed+delay*speed)*2.5/tempo
    if jump is not None: ordi=jump; row=0 if brk is None else brk
    elif brk is not None: ordi+=1; row=brk
    else:
        row+=1
        if row>=64: row=0; ordi+=1
print(json.dumps(starts)); print('end',round(t,2),file=sys.stderr)
json.dump(starts,open('../site/assets/audio/order_times.json','w'))
# start time of every row (rows skipped by a pattern break inherit the next visited row's time)
out={}
for od,d in rowt.items():
    last=None; arr=[None]*64
    for r in range(63,-1,-1):
        if r in d: last=d[r]
        arr[r]=last
    out[od]=[x if x is not None else starts[od] for x in arr]
json.dump(out,open('../site/assets/audio/row_times.json','w'))
