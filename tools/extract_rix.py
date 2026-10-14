# Extract all RIX3 images (ColoRIX VGA: 'RIX3', w16, h16, 0xAF, storage byte, 768B 6-bit palette, w*h pixels) from SAINT.EXE to PNG.
import re, sys, json
from PIL import Image
e=open('../SAINT.EXE','rb').read(); out='../site/assets/img/'; meta=[]
for m in re.finditer(b'RIX3',e):
    o=m.start(); w=int.from_bytes(e[o+4:o+6],'little'); h=int.from_bytes(e[o+6:o+8],'little')
    if e[o+8]!=0xaf or not(0<w<=1024 and 0<h<=1024): continue
    pal=e[o+10:o+10+768]; px=e[o+10+768:o+10+768+w*h]
    if len(px)<w*h or max(pal)>63: continue
    im=Image.frombytes('P',(w,h),px); im.putpalette(bytes(min(255,v*255//63) for v in pal))
    name=f'img_{o:07x}_{w}x{h}.png'; im.save(out+name); meta.append(dict(file=name,offset=o,w=w,h=h,storage=e[o+9]))
    print(name,'storage',e[o+9])
json.dump(meta,open(out+'index.json','w'),indent=1)
