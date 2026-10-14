"""x87 straight-line translator: disassembles a program-offset range and prints JS-like pseudo-code with
the FPU stack resolved to temporaries (branches are kept as comments/labels for hand structuring).
usage: x87js.py dump start end [base]   memory operands print as f32[0x..]/f64[0x..]/i32[0x..]"""
import sys, re
from capstone import *
m=open(sys.argv[1],'rb').read(); a=int(sys.argv[2],0); b=int(sys.argv[3],0); B=int(sys.argv[4],0) if len(sys.argv)>4 else 0xb9c0
cs=Cs(CS_ARCH_X86,CS_MODE_32)
st=[]; n=[0]
def tmp(e):
    n[0]+=1; v=f't{n[0]}'; print(f'  const {v} = {e};'); return v
def mem(op,kind):
    mm=re.match(r'(dword|qword|word) ptr \[(0x[0-9a-f]+)\]',op)
    if not mm: return '/*'+op+'*/'
    return {'dword':'f32','qword':'f64'}[mm[1]]+f'[{mm[2]}]' if kind=='f' else f'i32[{mm[2]}]'
def sti(op): return int(re.search(r'st\((\d)\)',op)[1]) if 'st(' in op else 0
for i in cs.disasm(m[B+a:B+b],a):
    mn,op=i.mnemonic,i.op_str; print(f'// {i.address:06x} {mn} {op}   [depth {len(st)}]')
    if mn in('fld',):
        if 'st(' in op or op=='st': st.append(st[-1-sti(op)])
        else: st.append(tmp(mem(op,'f')))
    elif mn=='fild': st.append(tmp(mem(op,'i')))
    elif mn=='fld1': st.append('1')
    elif mn=='fldz': st.append('0')
    elif mn=='fldpi': st.append('Math.PI')
    elif mn in('fst','fstp'):
        if 'st(' in op or op=='st':
            k=sti(op); st[-1-k]=st[-1]; 
            if mn=='fstp': st.pop()
        else:
            print(f'  {mem(op,"f")} = {st[-1]};' if 'dword' in op or 'qword' in op else '')
            if mn=='fstp': st.pop()
    elif mn=='fistp' or mn=='fist':
        print(f'  {mem(op,"i")} = Math.round({st[-1]});'); 
        if mn=='fistp': st.pop()
    elif mn in('fadd','fsub','fmul','fdiv','fsubr','fdivr','faddp','fsubp','fmulp','fdivp','fsubrp','fdivrp','fiadd','fimul','fisub','fidiv'):
        base=mn.rstrip('p') if mn.endswith('p') and mn not in('fsubp',) else mn
        pop=mn.endswith('p'); 
        o={'fadd':'+','fsub':'-','fmul':'*','fdiv':'/'}
        r=mn[:-1] if pop else mn; rev=r.endswith('r') and r not in ('fadd','fmul') 
        r=r.replace('fsubr','fsub').replace('fdivr','fdiv'); op_=o.get(r.replace('fi','f'))
        if op_ is None: print('  /* unhandled */'); continue
        if 'ptr' in op:   # st0 = st0 op mem
            rhs=mem(op,'i' if mn.startswith('fi') else 'f'); a_,b_=(st[-1],rhs) if not rev else (rhs,st[-1]); st[-1]=tmp(f'{a_} {op_} {b_}')
        else:
            parts=[p.strip() for p in op.split(',')]
            if len(parts)==1: parts=[parts[0],'st(0)'] if pop else ['st(0)',parts[0]]
            d,s=sti(parts[0]),sti(parts[1])
            A,Bv=st[-1-d],st[-1-s]
            e=f'{A} {op_} {Bv}' if not rev else f'{Bv} {op_} {A}'
            st[-1-d]=tmp(e)
            if pop: st.pop()
    elif mn=='fxch':
        k=sti(op) if op else 1; st[-1],st[-1-k]=st[-1-k],st[-1]
    elif mn=='fchs': st[-1]=tmp(f'-{st[-1]}')
    elif mn=='fabs': st[-1]=tmp(f'Math.abs({st[-1]})')
    elif mn=='fsqrt': st[-1]=tmp(f'Math.sqrt({st[-1]})')
    elif mn=='fsin': st[-1]=tmp(f'Math.sin({st[-1]})')
    elif mn=='fcos': st[-1]=tmp(f'Math.cos({st[-1]})')
    elif mn=='fpatan': y,x=st[-2],st[-1]; st.pop(); st[-1]=tmp(f'Math.atan2({y}, {x})')
    elif mn=='ffree': print('  // ffree'); 
    elif mn=='fcomp' or mn=='fcompp' or mn=='fcom':
        print('  // compare '+op+' stack='+str(st)); 
        if mn!='fcom': st.pop()
        if mn=='fcompp': st.pop()
    elif mn.startswith('j') or mn=='ret' or mn in('cmp','test','mov','wait','fnstsw','sahf'):
        print(f'  // {mn} {op}')
    else: print(f'  // ?? {mn} {op}')
