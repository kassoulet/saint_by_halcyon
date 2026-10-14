  01fefc  mov eax, dword ptr [edi + 0x18]
  01feff  cmp eax, dword ptr [ebp + 0x18]
  01ff02  jb 0x1ff06
  01ff04  xchg ebp, edi
L1ff06:
  01ff06  mov eax, dword ptr [esi + 0x18]
  01ff09  cmp eax, dword ptr [edi + 0x18]
  01ff0c  jb 0x1ff1a
  01ff0e  xchg edi, esi
  01ff10  mov eax, dword ptr [edi + 0x18]
  01ff13  cmp eax, dword ptr [ebp + 0x18]
  01ff16  jb 0x1ff1a
  01ff18  xchg ebp, edi
L1ff1a:
  01ff1a  fld dword ptr [esi + 0x18]
  01ff1d  fld dword ptr [edi + 0x18]
  01ff20  fld dword ptr [ebp + 0x18]
  01ff23  fxch st(1)
  01ff25  fistp dword ptr [0x1fa08]
  01ff2b  fistp dword ptr [0x1fa0c]
  01ff31  fistp dword ptr [0x1fa04]
  01ff37  mov eax, dword ptr [0x1fa0c]
  01ff3c  sub eax, dword ptr [0x1fa04]
  01ff42  je 0x21137
  01ff48  fld dword ptr [esi + 0x30]
  01ff4b  fmul dword ptr [0x48f8]
  01ff51  fld dword ptr [esi + 0x34]
  01ff54  fmul dword ptr [0x48f8]
  01ff5a  fxch st(1)
  01ff5c  fstp dword ptr [0x1fa10]
  01ff62  fstp dword ptr [0x1fa14]
  01ff68  fld dword ptr [edi + 0x30]
  01ff6b  fmul dword ptr [0x48f8]
  01ff71  fld dword ptr [edi + 0x34]
  01ff74  fmul dword ptr [0x48f8]
  01ff7a  fxch st(1)
  01ff7c  fstp dword ptr [0x1fa18]
  01ff82  fstp dword ptr [0x1fa1c]
  01ff88  fld dword ptr [ebp + 0x30]
  01ff8b  fmul dword ptr [0x48f8]
  01ff91  fld dword ptr [ebp + 0x34]
  01ff94  fmul dword ptr [0x48f8]
  01ff9a  fxch st(1)
  01ff9c  fstp dword ptr [0x1fa20]
  01ffa2  fstp dword ptr [0x1fa24]
  01ffa8  fld1 
  01ffaa  fld dword ptr [ebp + 0x18]
  01ffad  fsub dword ptr [esi + 0x18]
  01ffb0  fdivp st(1)
  01ffb2  fld dword ptr [ebp + 0x14]
  01ffb5  fsub dword ptr [esi + 0x14]
  01ffb8  fmul st(1)
  01ffba  fstp dword ptr [0x1f92c]
  01ffc0  fld dword ptr [ebp + 0x20]
  01ffc3  fsub dword ptr [esi + 0x20]
  01ffc6  fmul st(1)
  01ffc8  fstp dword ptr [0x1f930]
  01ffce  fld dword ptr [0x1fa20]
  01ffd4  fmul dword ptr [ebp + 0x20]
  01ffd7  fld dword ptr [0x1fa10]
  01ffdd  fmul dword ptr [esi + 0x20]
  01ffe0  fsubp st(1)
  01ffe2  fmul st(1)
  01ffe4  fstp dword ptr [0x1f934]
  01ffea  fld dword ptr [0x1fa24]
  01fff0  fmul dword ptr [ebp + 0x20]
  01fff3  fld dword ptr [0x1fa14]
  01fff9  fmul dword ptr [esi + 0x20]
  01fffc  fsubp st(1)
  01fffe  fmul st(1)
  020000  fstp dword ptr [0x1f938]
  020006  fld dword ptr [ebp + 0x38]
  020009  fmul dword ptr [ebp + 0x20]
  02000c  fld dword ptr [esi + 0x38]
  02000f  fmul dword ptr [esi + 0x20]
  020012  fsubp st(1)
  020014  fmulp st(1)
  020016  fstp dword ptr [0x1f93c]
  02001c  mov eax, dword ptr [0x1fa08]
  020021  sub eax, dword ptr [0x1fa04]
  020027  je 0x21138
  02002d  mov dword ptr [0x1f98c], eax
  020032  fld1 
  020034  fld dword ptr [edi + 0x18]
  020037  fsub dword ptr [esi + 0x18]
  02003a  fdivp st(1)
  02003c  fld dword ptr [edi + 0x14]
  02003f  fsub dword ptr [esi + 0x14]
  020042  fmul st(1)
  020044  fstp dword ptr [0x1f944]
  02004a  fld dword ptr [edi + 0x20]
  02004d  fsub dword ptr [esi + 0x20]
  020050  fmul st(1)
  020052  fstp dword ptr [0x1f948]
  020058  fld dword ptr [0x1fa18]
  02005e  fmul dword ptr [edi + 0x20]
  020061  fld dword ptr [0x1fa10]
  020067  fmul dword ptr [esi + 0x20]
  02006a  fsubp st(1)
  02006c  fmul st(1)
  02006e  fstp dword ptr [0x1f94c]
  020074  fld dword ptr [0x1fa1c]
  02007a  fmul dword ptr [edi + 0x20]
  02007d  fld dword ptr [0x1fa14]
  020083  fmul dword ptr [esi + 0x20]
  020086  fsubp st(1)
  020088  fmul st(1)
  02008a  fstp dword ptr [0x1f950]
  020090  fld dword ptr [edi + 0x38]
  020093  fmul dword ptr [edi + 0x20]
  020096  fld dword ptr [esi + 0x38]
  020099  fmul dword ptr [esi + 0x20]
  02009c  fsubp st(1)
  02009e  fmulp st(1)
  0200a0  fstp dword ptr [0x1f954]
  0200a6  fld dword ptr [0x1f944]
  0200ac  fsub dword ptr [0x1f92c]
  0200b2  mov ecx, 0x1f92c
  0200b7  mov edx, 0x1f944
  0200bc  fstp dword ptr [0x48d0]
  0200c2  test dword ptr [0x48d0], 0x80000000
  0200cc  je 0x200d0
  0200ce  xchg edx, ecx
L200d0:
  0200d0  mov eax, dword ptr [ecx]
  0200d2  mov ebx, dword ptr [edx]
  0200d4  mov dword ptr [0x1f990], eax
  0200d9  mov dword ptr [0x1f994], ebx
  0200df  fld1 
  0200e1  fld dword ptr [edx]
  0200e3  fsub dword ptr [ecx]
  0200e5  fdivp st(1)
  0200e7  fld dword ptr [edx + 4]
  0200ea  fsub dword ptr [ecx + 4]
  0200ed  fmul st(1)
  0200ef  fst dword ptr [0x1f95c]
  0200f5  fmul qword ptr [0x49a0]
  0200fb  fstp dword ptr [0x1f96c]
  020101  fld dword ptr [edx + 8]
  020104  fsub dword ptr [ecx + 8]
  020107  fmul st(1)
  020109  fst dword ptr [0x1f960]
  02010f  fmul qword ptr [0x49a0]
  020115  fstp dword ptr [0x1f970]
  02011b  fld dword ptr [edx + 0xc]
  02011e  fsub dword ptr [ecx + 0xc]
  020121  fmul st(1)
  020123  fst dword ptr [0x1f964]
  020129  fmul qword ptr [0x49a0]
  02012f  fstp dword ptr [0x1f974]
  020135  fld dword ptr [edx + 0x10]
  020138  fsub dword ptr [ecx + 0x10]
  02013b  fmulp st(1)
  02013d  fst dword ptr [0x1f968]
  020143  fmul qword ptr [0x49a0]
  020149  fstp dword ptr [0x1f978]
  02014f  fild dword ptr [0x1fa04]
  020155  fsub dword ptr [esi + 0x18]
  020158  fld st(0)
  02015a  fmul dword ptr [ecx + 4]
  02015d  fadd dword ptr [esi + 0x20]
  020160  fstp dword ptr [0x1f97c]
  020166  fld st(0)
  020168  fmul dword ptr [ecx + 8]
  02016b  fld dword ptr [0x1fa10]
  020171  fmul dword ptr [esi + 0x20]
  020174  faddp st(1)
  020176  fstp dword ptr [0x1f980]
  02017c  fld st(0)
  02017e  fmul dword ptr [ecx + 0xc]
  020181  fld dword ptr [0x1fa14]
  020187  fmul dword ptr [esi + 0x20]
  02018a  faddp st(1)
  02018c  fstp dword ptr [0x1f984]
  020192  fmul dword ptr [ecx + 0x10]
  020195  fld dword ptr [esi + 0x38]
  020198  fmul dword ptr [esi + 0x20]
  02019b  faddp st(1)
  02019d  fstp dword ptr [0x1f988]
  0201a3  fild dword ptr [0x1fa04]
  0201a9  fsub dword ptr [esi + 0x18]
  0201ac  fld st(0)
  0201ae  fmul dword ptr [ecx]
  0201b0  fadd dword ptr [esi + 0x14]
  0201b3  fxch st(1)
  0201b5  fmul dword ptr [edx]
  0201b7  fadd dword ptr [esi + 0x14]
  0201ba  push esi
  0201bb  push edi
  0201bc  push ebp
  0201bd  fld1 
  0201bf  fstp dword ptr [0x1f9a0]
  0201c5  mov ebp, dword ptr [0x1fa04]
  0201cb  lea ebp, [ebp + ebp*4]
  0201cf  shl ebp, 6
  0201d2  add ebp, dword ptr [0x466c]
  0201d8  dec ebp
  0201d9  mov esi, dword ptr [0x1f98c]
L201df:
  0201df  fadd dword ptr [0x1f994]
  0201e5  fxch st(1)
  0201e7  fadd dword ptr [0x1f990]
  0201ed  fxch st(1)
  0201ef  fist dword ptr [0x1f99c]
  0201f5  fstp dword ptr [0x1fef4]
  0201fb  fist dword ptr [0x1f998]
  020201  fstp dword ptr [0x1fef0]
  020207  fild dword ptr [0x1f998]
  02020d  fsub dword ptr [0x1fef0]
  020213  fadd qword ptr [0x4980]
  020219  fstp dword ptr [0x1fef8]
  02021f  fld dword ptr [ecx + 4]
  020222  fmul dword ptr [0x1f9a0]
  020228  fld dword ptr [0x1f95c]
  02022e  fmul dword ptr [0x1fef8]
  020234  fxch st(1)
  020236  fadd dword ptr [0x1f97c]
  02023c  faddp st(1)
  02023e  fld dword ptr [ecx + 8]
  020241  fmul dword ptr [0x1f9a0]
  020247  fld dword ptr [0x1f960]
  02024d  fmul dword ptr [0x1fef8]
  020253  fxch st(1)
  020255  fadd dword ptr [0x1f980]
  02025b  faddp st(1)
  02025d  fld dword ptr [ecx + 0xc]
  020260  fmul dword ptr [0x1f9a0]
  020266  fld dword ptr [0x1f964]
  02026c  fmul dword ptr [0x1fef8]
  020272  fxch st(1)
  020274  fadd dword ptr [0x1f984]
  02027a  faddp st(1)
  02027c  fld dword ptr [ecx + 0x10]
  02027f  fmul dword ptr [0x1f9a0]
  020285  fld dword ptr [0x1f968]
  02028b  fmul dword ptr [0x1fef8]
  020291  fxch st(1)
  020293  fadd dword ptr [0x1f988]
  020299  faddp st(1)
  02029b  fld dword ptr [0x1f9a0]
  0202a1  fadd qword ptr [0x4980]
  0202a7  fstp dword ptr [0x1f9a0]
  0202ad  push ecx
  0202ae  push edx
  0202af  push ebp
  0202b0  push esi
  0202b1  mov edi, dword ptr [0x1f998]
  0202b7  mov ecx, dword ptr [0x1f99c]
  0202bd  sub ecx, edi
  0202bf  jle 0x208b8
  0202c5  fld1 
  0202c7  fdiv st(4)
  0202c9  fld st(3)
  0202cb  fld st(3)
  0202cd  fld st(3)
  0202cf  fmul st(3)
  0202d1  fxch st(1)
  0202d3  fmul st(3)
  0202d5  fxch st(2)
  0202d7  fmul st(3)
  0202d9  fxch st(1)
  0202db  fmul qword ptr [0x4a60]
  0202e1  fxch st(1)
  0202e3  fmul qword ptr [0x4a68]
  0202e9  fxch st(2)
  0202eb  fmul qword ptr [0x4a68]
  0202f1  fxch st(1)
  0202f3  fistp dword ptr [0x1f9ac]
  0202f9  fistp dword ptr [0x1f9a8]
  0202ff  fistp dword ptr [0x1f9a4]
  020305  fstp st(0)
  020307  add edi, ebp
  020309  mov eax, ecx
  02030b  sar eax, 4
  02030e  and ecx, 0xf
  020311  mov dword ptr [0x48d4], eax
  020316  je 0x2053d
  02031c  mov dword ptr [0x48d0], ecx
  020322  fild dword ptr [0x48d0]
  020328  fstp dword ptr [0x48d0]
  02032e  fld dword ptr [0x1f968]
  020334  fmul dword ptr [0x48d0]
  02033a  fld dword ptr [0x1f95c]
  020340  fmul dword ptr [0x48d0]
  020346  fld dword ptr [0x1f964]
  02034c  fmul dword ptr [0x48d0]
  020352  fld dword ptr [0x1f960]
  020358  fmul dword ptr [0x48d0]
  02035e  fxch st(1)
  020360  fadd st(5)
  020362  fxch st(1)
  020364  fadd st(6)
  020366  fxch st(2)
  020368  fadd st(7)
  02036a  fxch st(3)
  02036c  fadd st(4)
  02036e  ffree st(4)
  020370  ffree st(5)
  020372  ffree st(6)
  020374  ffree st(7)
  020376  fld1 
  020378  fdiv st(4)
  02037a  fld st(3)
  02037c  fld st(3)
  02037e  fld st(3)
  020380  fmul st(3)
  020382  fxch st(1)
  020384  fmul st(3)
  020386  fxch st(2)
  020388  fmul st(3)
  02038a  fxch st(1)
  02038c  fmul qword ptr [0x4a60]
  020392  fxch st(1)
  020394  fmul qword ptr [0x4a68]
  02039a  fxch st(2)
  02039c  fmul qword ptr [0x4a68]
  0203a2  fxch st(1)
  0203a4  fistp dword ptr [0x1f9b8]
  0203aa  fistp dword ptr [0x1f9b4]
  0203b0  fistp dword ptr [0x1f9b0]
  0203b6  fstp st(0)
  0203b8  mov dword ptr [0x48d0], ecx
  0203be  fild dword ptr [0x1f9b0]
  0203c4  fild dword ptr [0x1f9a4]
  0203ca  fsubp st(1)
  0203cc  fmul dword ptr [ecx*4 + 0x1f9c4]
  0203d3  fild dword ptr [0x1f9b4]
  0203d9  fild dword ptr [0x1f9a8]
  0203df  fsubp st(1)
  0203e1  fmul dword ptr [ecx*4 + 0x1f9c4]
  0203e8  fild dword ptr [0x1f9b8]
  0203ee  fild dword ptr [0x1f9ac]
  0203f4  fsubp st(1)
  0203f6  fmul dword ptr [ecx*4 + 0x1f9c4]
  0203fd  fxch st(1)
  0203ff  fistp dword ptr [0x1f9c0]
  020405  fistp dword ptr [0x1f9c4]
  02040b  fistp dword ptr [0x1f9bc]
  020411  cmp dword ptr [0x48d4], 0
  020418  je 0x2043e
  02041a  fadd dword ptr [0x1f978]
  020420  fxch st(1)
  020422  fadd dword ptr [0x1f974]
  020428  fxch st(2)
  02042a  fadd dword ptr [0x1f970]
  020430  fxch st(3)
  020432  fadd dword ptr [0x1f96c]
  020438  fstp st(4)
  02043a  fld1 
  02043c  fdiv st(4)
L2043e:
  02043e  mov ecx, dword ptr [0x1f9c0]
  020444  mov edx, dword ptr [0x1f9bc]
  02044a  shl ecx, 0x10
  02044d  shl edx, 0x10
  020450  mov cx, word ptr [0x1f9c4]
  020457  mov dl, byte ptr [0x1f9c2]
  02045d  mov bl, byte ptr [0x1f9be]
  020463  mov dword ptr [0x1fa28], ecx
  020469  mov dword ptr [0x1fa2c], edx
  02046f  mov byte ptr [0x1fa30], bl
  020475  mov ebx, dword ptr [0x1f924]
  02047b  mov ecx, dword ptr [0x1f9a8]
  020481  mov edx, dword ptr [0x1f9a4]
  020487  shl ecx, 0x10
  02048a  shl edx, 0x10
  02048d  mov cx, word ptr [0x1f9ac]
  020494  mov dl, byte ptr [0x1f9aa]
  02049a  mov bl, byte ptr [0x1f9a6]
  0204a0  mov eax, dword ptr [0x1f9b0]
  0204a5  mov ebp, dword ptr [0x1f9b4]
  0204ab  mov esi, dword ptr [0x1f9b8]
  0204b1  mov dword ptr [0x1f9a4], eax
  0204b6  mov dword ptr [0x1f9a8], ebp
  0204bc  mov dword ptr [0x1f9ac], esi
  0204c2  mov eax, dword ptr [0x1f928]
  0204c7  mov esi, dword ptr [0x48d0]
  0204cd  xchg ebx, ebx
  0204cf  nop 
L204d0:
  0204d0  mov ah, ch
  0204d2  mov bh, dl
  0204d4  inc edi
  0204d5  add ecx, dword ptr [0x1fa28]
  0204db  mov al, byte ptr [ebx]
  0204dd  adc edx, dword ptr [0x1fa2c]
  0204e3  mov al, byte ptr [eax]
  0204e5  adc bl, byte ptr [0x1fa30]
  0204eb  dec esi
  0204ec  mov byte ptr [edi], al
  0204ee  jne 0x204d0
  0204f0  cmp dword ptr [0x48d4], 0
  0204f7  je 0x208b8
  0204fd  fld st(3)
  0204ff  fld st(3)
  020501  fld st(3)
  020503  fmul st(3)
  020505  fxch st(1)
  020507  fmul st(3)
  020509  fxch st(2)
  02050b  fmul st(3)
  02050d  fxch st(1)
  02050f  fmul qword ptr [0x4a60]
  020515  fxch st(1)
  020517  fmul qword ptr [0x4a68]
  02051d  fxch st(2)
  02051f  fmul qword ptr [0x4a68]
  020525  fxch st(1)
  020527  fistp dword ptr [0x1f9b8]
  02052d  fistp dword ptr [0x1f9b4]
  020533  fistp dword ptr [0x1f9b0]
  020539  fstp st(0)
  02053b  jmp 0x2059f
L2053d:
  02053d  fadd dword ptr [0x1f978]
  020543  fxch st(1)
  020545  fadd dword ptr [0x1f974]
  02054b  fxch st(2)
  02054d  fadd dword ptr [0x1f970]
  020553  fxch st(3)
  020555  fadd dword ptr [0x1f96c]
  02055b  fstp st(4)
  02055d  fld1 
  02055f  fdiv st(4)
  020561  fld st(3)
  020563  fld st(3)
  020565  fld st(3)
  020567  fmul st(3)
  020569  fxch st(1)
  02056b  fmul st(3)
  02056d  fxch st(2)
  02056f  fmul st(3)
  020571  fxch st(1)
  020573  fmul qword ptr [0x4a60]
  020579  fxch st(1)
  02057b  fmul qword ptr [0x4a68]
  020581  fxch st(2)
  020583  fmul qword ptr [0x4a68]
  020589  fxch st(1)
  02058b  fistp dword ptr [0x1f9b8]
  020591  fistp dword ptr [0x1f9b4]
  020597  fistp dword ptr [0x1f9b0]
  02059d  fstp st(0)
L2059f:
  02059f  cmp dword ptr [0x48d4], 0
  0205a6  je 0x208b8
  0205ac  mov ebx, dword ptr [0x1f924]
  0205b2  mov ecx, dword ptr [0x1f9a8]
  0205b8  mov edx, dword ptr [0x1f9a4]
  0205be  shl ecx, 0x10
  0205c1  shl edx, 0x10
  0205c4  mov cx, word ptr [0x1f9ac]
  0205cb  mov dl, byte ptr [0x1f9aa]
  0205d1  mov bl, byte ptr [0x1f9a6]
  0205d7  fadd dword ptr [0x1f978]
  0205dd  fxch st(1)
  0205df  fadd dword ptr [0x1f974]
  0205e5  fxch st(2)
  0205e7  fadd dword ptr [0x1f970]
  0205ed  fxch st(3)
  0205ef  fadd dword ptr [0x1f96c]
  0205f5  fstp st(4)
L205f7:
  0205f7  fld1 
  0205f9  mov eax, dword ptr [0x1f9b0]
  0205fe  mov ebp, dword ptr [0x1f9b4]
  020604  mov esi, dword ptr [0x1f9b8]
  02060a  fdiv st(4)
  02060c  sub eax, dword ptr [0x1f9a4]
  020612  sub ebp, dword ptr [0x1f9a8]
  020618  sub esi, dword ptr [0x1f9ac]
  02061e  sar eax, 4
  020621  sar ebp, 4
  020624  sar esi, 4
  020627  mov dword ptr [0x1f9bc], eax
  02062c  mov dword ptr [0x1f9c0], ebp
  020632  shl eax, 0x10
  020635  shl ebp, 0x10
  020638  mov bp, si
  02063b  mov al, byte ptr [0x1f9c2]
  020640  mov bh, byte ptr [0x1f9be]
  020646  mov dword ptr [0x1fa28], ebp
  02064c  mov dword ptr [0x1fa2c], eax
  020651  mov byte ptr [0x1fa30], bh
  020657  mov eax, dword ptr [0x1f9b0]
  02065c  mov ebp, dword ptr [0x1f9b4]
  020662  mov esi, dword ptr [0x1f9b8]
  020668  mov dword ptr [0x1f9a4], eax
  02066d  mov dword ptr [0x1f9a8], ebp
  020673  mov dword ptr [0x1f9ac], esi
  020679  mov eax, dword ptr [0x1f928]
  02067e  mov ah, ch
  020680  mov bh, dl
  020682  inc edi
  020683  add ecx, dword ptr [0x1fa28]
  020689  mov al, byte ptr [ebx]
  02068b  adc edx, dword ptr [0x1fa2c]
  020691  mov al, byte ptr [eax]
  020693  adc bl, byte ptr [0x1fa30]
  020699  mov byte ptr [edi], al
  02069b  mov ah, ch
  02069d  mov bh, dl
  02069f  inc edi
  0206a0  add ecx, dword ptr [0x1fa28]
  0206a6  mov al, byte ptr [ebx]
  0206a8  adc edx, dword ptr [0x1fa2c]
  0206ae  mov al, byte ptr [eax]
  0206b0  adc bl, byte ptr [0x1fa30]
  0206b6  mov byte ptr [edi], al
  0206b8  mov ah, ch
  0206ba  mov bh, dl
  0206bc  inc edi
  0206bd  add ecx, dword ptr [0x1fa28]
  0206c3  mov al, byte ptr [ebx]
  0206c5  adc edx, dword ptr [0x1fa2c]
  0206cb  mov al, byte ptr [eax]
  0206cd  adc bl, byte ptr [0x1fa30]
  0206d3  mov byte ptr [edi], al
  0206d5  mov ah, ch
  0206d7  mov bh, dl
  0206d9  inc edi
  0206da  add ecx, dword ptr [0x1fa28]
  0206e0  mov al, byte ptr [ebx]
  0206e2  adc edx, dword ptr [0x1fa2c]
  0206e8  mov al, byte ptr [eax]
  0206ea  adc bl, byte ptr [0x1fa30]
  0206f0  mov byte ptr [edi], al
  0206f2  mov ah, ch
  0206f4  mov bh, dl
  0206f6  inc edi
  0206f7  add ecx, dword ptr [0x1fa28]
  0206fd  mov al, byte ptr [ebx]
  0206ff  adc edx, dword ptr [0x1fa2c]
  020705  mov al, byte ptr [eax]
  020707  adc bl, byte ptr [0x1fa30]
  02070d  mov byte ptr [edi], al
  02070f  mov ah, ch
  020711  mov bh, dl
  020713  inc edi
  020714  add ecx, dword ptr [0x1fa28]
  02071a  mov al, byte ptr [ebx]
  02071c  adc edx, dword ptr [0x1fa2c]
  020722  mov al, byte ptr [eax]
  020724  adc bl, byte ptr [0x1fa30]
  02072a  mov byte ptr [edi], al
  02072c  mov ah, ch
  02072e  mov bh, dl
  020730  inc edi
  020731  add ecx, dword ptr [0x1fa28]
  020737  mov al, byte ptr [ebx]
  020739  adc edx, dword ptr [0x1fa2c]
  02073f  mov al, byte ptr [eax]
  020741  adc bl, byte ptr [0x1fa30]
  020747  mov byte ptr [edi], al
  020749  mov ah, ch
  02074b  mov bh, dl
  02074d  inc edi
  02074e  add ecx, dword ptr [0x1fa28]
  020754  mov al, byte ptr [ebx]
  020756  adc edx, dword ptr [0x1fa2c]
  02075c  mov al, byte ptr [eax]
  02075e  adc bl, byte ptr [0x1fa30]
  020764  mov byte ptr [edi], al
  020766  mov ah, ch
  020768  mov bh, dl
  02076a  inc edi
  02076b  add ecx, dword ptr [0x1fa28]
  020771  mov al, byte ptr [ebx]
  020773  adc edx, dword ptr [0x1fa2c]
  020779  mov al, byte ptr [eax]
  02077b  adc bl, byte ptr [0x1fa30]
  020781  mov byte ptr [edi], al
  020783  mov ah, ch
  020785  mov bh, dl
  020787  inc edi
  020788  add ecx, dword ptr [0x1fa28]
  02078e  mov al, byte ptr [ebx]
  020790  adc edx, dword ptr [0x1fa2c]
  020796  mov al, byte ptr [eax]
  020798  adc bl, byte ptr [0x1fa30]
  02079e  mov byte ptr [edi], al
  0207a0  mov ah, ch
  0207a2  mov bh, dl
  0207a4  inc edi
  0207a5  add ecx, dword ptr [0x1fa28]
  0207ab  mov al, byte ptr [ebx]
  0207ad  adc edx, dword ptr [0x1fa2c]
  0207b3  mov al, byte ptr [eax]
  0207b5  adc bl, byte ptr [0x1fa30]
  0207bb  mov byte ptr [edi], al
  0207bd  mov ah, ch
  0207bf  mov bh, dl
  0207c1  inc edi
  0207c2  add ecx, dword ptr [0x1fa28]
  0207c8  mov al, byte ptr [ebx]
  0207ca  adc edx, dword ptr [0x1fa2c]
  0207d0  mov al, byte ptr [eax]
  0207d2  adc bl, byte ptr [0x1fa30]
  0207d8  mov byte ptr [edi], al
  0207da  mov ah, ch
  0207dc  mov bh, dl
  0207de  inc edi
  0207df  add ecx, dword ptr [0x1fa28]
  0207e5  mov al, byte ptr [ebx]
  0207e7  adc edx, dword ptr [0x1fa2c]
  0207ed  mov al, byte ptr [eax]
  0207ef  adc bl, byte ptr [0x1fa30]
  0207f5  mov byte ptr [edi], al
  0207f7  mov ah, ch
  0207f9  mov bh, dl
  0207fb  inc edi
  0207fc  add ecx, dword ptr [0x1fa28]
  020802  mov al, byte ptr [ebx]
  020804  adc edx, dword ptr [0x1fa2c]
  02080a  mov al, byte ptr [eax]
  02080c  adc bl, byte ptr [0x1fa30]
  020812  mov byte ptr [edi], al
  020814  mov ah, ch
  020816  mov bh, dl
  020818  inc edi
  020819  add ecx, dword ptr [0x1fa28]
  02081f  mov al, byte ptr [ebx]
  020821  adc edx, dword ptr [0x1fa2c]
  020827  mov al, byte ptr [eax]
  020829  adc bl, byte ptr [0x1fa30]
  02082f  mov byte ptr [edi], al
  020831  mov ah, ch
  020833  mov bh, dl
  020835  inc edi
  020836  add ecx, dword ptr [0x1fa28]
  02083c  mov al, byte ptr [ebx]
  02083e  adc edx, dword ptr [0x1fa2c]
  020844  mov al, byte ptr [eax]
  020846  adc bl, byte ptr [0x1fa30]
  02084c  mov byte ptr [edi], al
  02084e  fld st(3)
  020850  fld st(3)
  020852  fld st(3)
  020854  fmul st(3)
  020856  fxch st(1)
  020858  fmul st(3)
  02085a  fxch st(2)
  02085c  fmul st(3)
  02085e  fxch st(1)
  020860  fmul qword ptr [0x4a60]
  020866  fxch st(1)
  020868  fmul qword ptr [0x4a68]
  02086e  fxch st(2)
  020870  fmul qword ptr [0x4a68]
  020876  fxch st(1)
  020878  fistp dword ptr [0x1f9b8]
  02087e  fistp dword ptr [0x1f9b4]
  020884  fistp dword ptr [0x1f9b0]
  02088a  fstp st(0)
  02088c  fadd dword ptr [0x1f978]
  020892  fxch st(1)
  020894  fadd dword ptr [0x1f974]
  02089a  fxch st(2)
  02089c  fadd dword ptr [0x1f970]
  0208a2  fxch st(3)
  0208a4  fadd dword ptr [0x1f96c]
  0208aa  fstp st(4)
  0208ac  dec dword ptr [0x48d4]
  0208b2  jne 0x205f7
L208b8:
  0208b8  pop esi
  0208b9  pop ebp
  0208ba  pop edx
  0208bb  pop ecx
  0208bc  fcompp 
  0208be  fcompp 
  0208c0  add ebp, 0x140
  0208c6  fld dword ptr [0x1fef0]
  0208cc  fld dword ptr [0x1fef4]
  0208d2  dec esi
  0208d3  jne 0x201df
  0208d9  pop ebp
  0208da  pop edi
  0208db  pop esi
  0208dc  mov eax, dword ptr [0x1fa0c]
  0208e1  sub eax, dword ptr [0x1fa08]
  0208e7  je 0x21135
  0208ed  mov dword ptr [0x1f98c], eax
  0208f2  fld1 
  0208f4  fld dword ptr [ebp + 0x18]
  0208f7  fsub dword ptr [edi + 0x18]
  0208fa  fdivp st(1)
  0208fc  fld dword ptr [ebp + 0x14]
  0208ff  fsub dword ptr [edi + 0x14]
  020902  fmul st(1)
  020904  fstp dword ptr [0x1f944]
  02090a  fld dword ptr [ebp + 0x20]
  02090d  fsub dword ptr [edi + 0x20]
  020910  fmul st(1)
  020912  fstp dword ptr [0x1f948]
  020918  fld dword ptr [0x1fa20]
  02091e  fmul dword ptr [ebp + 0x20]
  020921  fld dword ptr [0x1fa18]
  020927  fmul dword ptr [edi + 0x20]
  02092a  fsubp st(1)
  02092c  fmul st(1)
  02092e  fstp dword ptr [0x1f94c]
  020934  fld dword ptr [0x1fa24]
  02093a  fmul dword ptr [ebp + 0x20]
  02093d  fld dword ptr [0x1fa1c]
  020943  fmul dword ptr [edi + 0x20]
  020946  fsubp st(1)
  020948  fmul st(1)
  02094a  fstp dword ptr [0x1f950]
  020950  fld dword ptr [ebp + 0x38]
  020953  fmul dword ptr [ebp + 0x20]
  020956  fld dword ptr [edi + 0x38]
  020959  fmul dword ptr [edi + 0x20]
  02095c  fsubp st(1)
  02095e  fmulp st(1)
  020960  fstp dword ptr [0x1f954]
  020966  fld dword ptr [0x1f944]
  02096c  fsub dword ptr [0x1f92c]
  020972  mov ecx, 0x1f92c
  020977  mov edx, 0x1f944
  02097c  fstp dword ptr [0x48d0]
  020982  test dword ptr [0x48d0], 0x80000000
  02098c  jne 0x20a02
  02098e  xchg edx, ecx
  020990  fld1 
  020992  fstp dword ptr [0x1f9a0]
  020998  fild dword ptr [0x1fa08]
  02099e  fsub dword ptr [edi + 0x18]
  0209a1  fld st(0)
  0209a3  fmul dword ptr [ecx + 4]
  0209a6  fadd dword ptr [edi + 0x20]
  0209a9  fstp dword ptr [0x1f97c]
  0209af  fld st(0)
  0209b1  fmul dword ptr [ecx + 8]
  0209b4  fld dword ptr [0x1fa18]
  0209ba  fmul dword ptr [edi + 0x20]
  0209bd  faddp st(1)
  0209bf  fstp dword ptr [0x1f980]
  0209c5  fld st(0)
  0209c7  fmul dword ptr [ecx + 0xc]
  0209ca  fld dword ptr [0x1fa1c]
  0209d0  fmul dword ptr [edi + 0x20]
  0209d3  faddp st(1)
  0209d5  fstp dword ptr [0x1f984]
  0209db  fmul dword ptr [ecx + 0x10]
  0209de  fld dword ptr [edi + 0x38]
  0209e1  fmul dword ptr [edi + 0x20]
  0209e4  faddp st(1)
  0209e6  fstp dword ptr [0x1f988]
  0209ec  fxch st(1)
  0209ee  fstp st(0)
  0209f0  fild dword ptr [0x1fa08]
  0209f6  fsub dword ptr [edi + 0x18]
  0209f9  fmul dword ptr [ecx]
  0209fb  fadd dword ptr [edi + 0x14]
  0209fe  fxch st(1)
  020a00  jmp 0x20a12
L20a02:
  020a02  fstp st(0)
  020a04  fild dword ptr [0x1fa08]
  020a0a  fsub dword ptr [edi + 0x18]
  020a0d  fmul dword ptr [edx]
  020a0f  fadd dword ptr [edi + 0x14]
L20a12:
  020a12  mov eax, dword ptr [ecx]
  020a14  mov ebx, dword ptr [edx]
  020a16  mov dword ptr [0x1f990], eax
  020a1b  mov dword ptr [0x1f994], ebx
  020a21  mov ebp, dword ptr [0x1fa08]
  020a27  lea ebp, [ebp + ebp*4]
  020a2b  shl ebp, 6
  020a2e  add ebp, dword ptr [0x466c]
  020a34  dec ebp
  020a35  mov esi, dword ptr [0x1f98c]
L20a3b:
  020a3b  fadd dword ptr [0x1f994]
  020a41  fxch st(1)
  020a43  fadd dword ptr [0x1f990]
  020a49  fxch st(1)
  020a4b  fist dword ptr [0x1f99c]
  020a51  fstp dword ptr [0x1fef4]
  020a57  fist dword ptr [0x1f998]
  020a5d  fstp dword ptr [0x1fef0]
  020a63  fild dword ptr [0x1f998]
  020a69  fsub dword ptr [0x1fef0]
  020a6f  fadd qword ptr [0x4980]
  020a75  fstp dword ptr [0x1fef8]
  020a7b  fld dword ptr [ecx + 4]
  020a7e  fmul dword ptr [0x1f9a0]
  020a84  fld dword ptr [0x1f95c]
  020a8a  fmul dword ptr [0x1fef8]
  020a90  fxch st(1)
  020a92  fadd dword ptr [0x1f97c]
  020a98  faddp st(1)
  020a9a  fld dword ptr [ecx + 8]
  020a9d  fmul dword ptr [0x1f9a0]
  020aa3  fld dword ptr [0x1f960]
  020aa9  fmul dword ptr [0x1fef8]
  020aaf  fxch st(1)
  020ab1  fadd dword ptr [0x1f980]
  020ab7  faddp st(1)
  020ab9  fld dword ptr [ecx + 0xc]
  020abc  fmul dword ptr [0x1f9a0]
  020ac2  fld dword ptr [0x1f964]
  020ac8  fmul dword ptr [0x1fef8]
  020ace  fxch st(1)
  020ad0  fadd dword ptr [0x1f984]
  020ad6  faddp st(1)
  020ad8  fld dword ptr [ecx + 0x10]
  020adb  fmul dword ptr [0x1f9a0]
  020ae1  fld dword ptr [0x1f968]
  020ae7  fmul dword ptr [0x1fef8]
  020aed  fxch st(1)
  020aef  fadd dword ptr [0x1f988]
  020af5  faddp st(1)
  020af7  fld dword ptr [0x1f9a0]
  020afd  fadd qword ptr [0x4980]
  020b03  fstp dword ptr [0x1f9a0]
  020b09  push ecx
  020b0a  push edx
  020b0b  push ebp
  020b0c  push esi
  020b0d  mov edi, dword ptr [0x1f998]
  020b13  mov ecx, dword ptr [0x1f99c]
  020b19  sub ecx, edi
  020b1b  jle 0x21114
  020b21  fld1 
  020b23  fdiv st(4)
  020b25  fld st(3)
  020b27  fld st(3)
  020b29  fld st(3)
  020b2b  fmul st(3)
  020b2d  fxch st(1)
  020b2f  fmul st(3)
  020b31  fxch st(2)
  020b33  fmul st(3)
  020b35  fxch st(1)
  020b37  fmul qword ptr [0x4a60]
  020b3d  fxch st(1)
  020b3f  fmul qword ptr [0x4a68]
  020b45  fxch st(2)
  020b47  fmul qword ptr [0x4a68]
  020b4d  fxch st(1)
  020b4f  fistp dword ptr [0x1f9ac]
  020b55  fistp dword ptr [0x1f9a8]
  020b5b  fistp dword ptr [0x1f9a4]
  020b61  fstp st(0)
  020b63  add edi, ebp
  020b65  mov eax, ecx
  020b67  sar eax, 4
  020b6a  and ecx, 0xf
  020b6d  mov dword ptr [0x48d4], eax
  020b72  je 0x20d99
  020b78  mov dword ptr [0x48d0], ecx
  020b7e  fild dword ptr [0x48d0]
  020b84  fstp dword ptr [0x48d0]
  020b8a  fld dword ptr [0x1f968]
  020b90  fmul dword ptr [0x48d0]
  020b96  fld dword ptr [0x1f95c]
  020b9c  fmul dword ptr [0x48d0]
  020ba2  fld dword ptr [0x1f964]
  020ba8  fmul dword ptr [0x48d0]
  020bae  fld dword ptr [0x1f960]
  020bb4  fmul dword ptr [0x48d0]
  020bba  fxch st(1)
  020bbc  fadd st(5)
  020bbe  fxch st(1)
  020bc0  fadd st(6)
  020bc2  fxch st(2)
  020bc4  fadd st(7)
  020bc6  fxch st(3)
  020bc8  fadd st(4)
  020bca  ffree st(4)
  020bcc  ffree st(5)
  020bce  ffree st(6)
  020bd0  ffree st(7)
  020bd2  fld1 
  020bd4  fdiv st(4)
  020bd6  fld st(3)
  020bd8  fld st(3)
  020bda  fld st(3)
  020bdc  fmul st(3)
  020bde  fxch st(1)
  020be0  fmul st(3)
  020be2  fxch st(2)
  020be4  fmul st(3)
  020be6  fxch st(1)
  020be8  fmul qword ptr [0x4a60]
  020bee  fxch st(1)
  020bf0  fmul qword ptr [0x4a68]
  020bf6  fxch st(2)
  020bf8  fmul qword ptr [0x4a68]
  020bfe  fxch st(1)
  020c00  fistp dword ptr [0x1f9b8]
  020c06  fistp dword ptr [0x1f9b4]
  020c0c  fistp dword ptr [0x1f9b0]
  020c12  fstp st(0)
  020c14  mov dword ptr [0x48d0], ecx
  020c1a  fild dword ptr [0x1f9b0]
  020c20  fild dword ptr [0x1f9a4]
  020c26  fsubp st(1)
  020c28  fmul dword ptr [ecx*4 + 0x1f9c4]
  020c2f  fild dword ptr [0x1f9b4]
  020c35  fild dword ptr [0x1f9a8]
  020c3b  fsubp st(1)
  020c3d  fmul dword ptr [ecx*4 + 0x1f9c4]
  020c44  fild dword ptr [0x1f9b8]
  020c4a  fild dword ptr [0x1f9ac]
  020c50  fsubp st(1)
  020c52  fmul dword ptr [ecx*4 + 0x1f9c4]
  020c59  fxch st(1)
  020c5b  fistp dword ptr [0x1f9c0]
  020c61  fistp dword ptr [0x1f9c4]
  020c67  fistp dword ptr [0x1f9bc]
  020c6d  cmp dword ptr [0x48d4], 0
  020c74  je 0x20c9a
  020c76  fadd dword ptr [0x1f978]
  020c7c  fxch st(1)
  020c7e  fadd dword ptr [0x1f974]
  020c84  fxch st(2)
  020c86  fadd dword ptr [0x1f970]
  020c8c  fxch st(3)
  020c8e  fadd dword ptr [0x1f96c]
  020c94  fstp st(4)
  020c96  fld1 
  020c98  fdiv st(4)
L20c9a:
  020c9a  mov ecx, dword ptr [0x1f9c0]
  020ca0  mov edx, dword ptr [0x1f9bc]
  020ca6  shl ecx, 0x10
  020ca9  shl edx, 0x10
  020cac  mov cx, word ptr [0x1f9c4]
  020cb3  mov dl, byte ptr [0x1f9c2]
  020cb9  mov bl, byte ptr [0x1f9be]
  020cbf  mov dword ptr [0x1fa28], ecx
  020cc5  mov dword ptr [0x1fa2c], edx
  020ccb  mov byte ptr [0x1fa30], bl
  020cd1  mov ebx, dword ptr [0x1f924]
  020cd7  mov ecx, dword ptr [0x1f9a8]
  020cdd  mov edx, dword ptr [0x1f9a4]
  020ce3  shl ecx, 0x10
  020ce6  shl edx, 0x10
  020ce9  mov cx, word ptr [0x1f9ac]
  020cf0  mov dl, byte ptr [0x1f9aa]
  020cf6  mov bl, byte ptr [0x1f9a6]
  020cfc  mov eax, dword ptr [0x1f9b0]
  020d01  mov ebp, dword ptr [0x1f9b4]
  020d07  mov esi, dword ptr [0x1f9b8]
  020d0d  mov dword ptr [0x1f9a4], eax
  020d12  mov dword ptr [0x1f9a8], ebp
  020d18  mov dword ptr [0x1f9ac], esi
  020d1e  mov eax, dword ptr [0x1f928]
  020d23  mov esi, dword ptr [0x48d0]
  020d29  xchg ebx, ebx
  020d2b  nop 
L20d2c:
  020d2c  mov ah, ch
  020d2e  mov bh, dl
  020d30  inc edi
  020d31  add ecx, dword ptr [0x1fa28]
  020d37  mov al, byte ptr [ebx]
  020d39  adc edx, dword ptr [0x1fa2c]
  020d3f  mov al, byte ptr [eax]
  020d41  adc bl, byte ptr [0x1fa30]
  020d47  dec esi
  020d48  mov byte ptr [edi], al
  020d4a  jne 0x20d2c
  020d4c  cmp dword ptr [0x48d4], 0
  020d53  je 0x21114
  020d59  fld st(3)
  020d5b  fld st(3)
  020d5d  fld st(3)
  020d5f  fmul st(3)
  020d61  fxch st(1)
  020d63  fmul st(3)
  020d65  fxch st(2)
  020d67  fmul st(3)
  020d69  fxch st(1)
  020d6b  fmul qword ptr [0x4a60]
  020d71  fxch st(1)
  020d73  fmul qword ptr [0x4a68]
  020d79  fxch st(2)
  020d7b  fmul qword ptr [0x4a68]
  020d81  fxch st(1)
  020d83  fistp dword ptr [0x1f9b8]
  020d89  fistp dword ptr [0x1f9b4]
  020d8f  fistp dword ptr [0x1f9b0]
  020d95  fstp st(0)
  020d97  jmp 0x20dfb
L20d99:
  020d99  fadd dword ptr [0x1f978]
  020d9f  fxch st(1)
  020da1  fadd dword ptr [0x1f974]
  020da7  fxch st(2)
  020da9  fadd dword ptr [0x1f970]
  020daf  fxch st(3)
  020db1  fadd dword ptr [0x1f96c]
  020db7  fstp st(4)
  020db9  fld1 
  020dbb  fdiv st(4)
  020dbd  fld st(3)
  020dbf  fld st(3)
  020dc1  fld st(3)
  020dc3  fmul st(3)
  020dc5  fxch st(1)
  020dc7  fmul st(3)
  020dc9  fxch st(2)
  020dcb  fmul st(3)
  020dcd  fxch st(1)
  020dcf  fmul qword ptr [0x4a60]
  020dd5  fxch st(1)
  020dd7  fmul qword ptr [0x4a68]
  020ddd  fxch st(2)
  020ddf  fmul qword ptr [0x4a68]
  020de5  fxch st(1)
  020de7  fistp dword ptr [0x1f9b8]
  020ded  fistp dword ptr [0x1f9b4]
  020df3  fistp dword ptr [0x1f9b0]
  020df9  fstp st(0)
L20dfb:
  020dfb  cmp dword ptr [0x48d4], 0
  020e02  je 0x21114
  020e08  mov ebx, dword ptr [0x1f924]
  020e0e  mov ecx, dword ptr [0x1f9a8]
  020e14  mov edx, dword ptr [0x1f9a4]
  020e1a  shl ecx, 0x10
  020e1d  shl edx, 0x10
  020e20  mov cx, word ptr [0x1f9ac]
  020e27  mov dl, byte ptr [0x1f9aa]
  020e2d  mov bl, byte ptr [0x1f9a6]
  020e33  fadd dword ptr [0x1f978]
  020e39  fxch st(1)
  020e3b  fadd dword ptr [0x1f974]
  020e41  fxch st(2)
  020e43  fadd dword ptr [0x1f970]
  020e49  fxch st(3)
  020e4b  fadd dword ptr [0x1f96c]
  020e51  fstp st(4)
L20e53:
  020e53  fld1 
  020e55  mov eax, dword ptr [0x1f9b0]
  020e5a  mov ebp, dword ptr [0x1f9b4]
  020e60  mov esi, dword ptr [0x1f9b8]
  020e66  fdiv st(4)
  020e68  sub eax, dword ptr [0x1f9a4]
  020e6e  sub ebp, dword ptr [0x1f9a8]
  020e74  sub esi, dword ptr [0x1f9ac]
  020e7a  sar eax, 4
  020e7d  sar ebp, 4
  020e80  sar esi, 4
  020e83  mov dword ptr [0x1f9bc], eax
  020e88  mov dword ptr [0x1f9c0], ebp
  020e8e  shl eax, 0x10
  020e91  shl ebp, 0x10
  020e94  mov bp, si
  020e97  mov al, byte ptr [0x1f9c2]
  020e9c  mov bh, byte ptr [0x1f9be]
  020ea2  mov dword ptr [0x1fa28], ebp
  020ea8  mov dword ptr [0x1fa2c], eax
  020ead  mov byte ptr [0x1fa30], bh
  020eb3  mov eax, dword ptr [0x1f9b0]
  020eb8  mov ebp, dword ptr [0x1f9b4]
  020ebe  mov esi, dword ptr [0x1f9b8]
  020ec4  mov dword ptr [0x1f9a4], eax
  020ec9  mov dword ptr [0x1f9a8], ebp
  020ecf  mov dword ptr [0x1f9ac], esi
  020ed5  mov eax, dword ptr [0x1f928]
  020eda  mov ah, ch
  020edc  mov bh, dl
  020ede  inc edi
  020edf  add ecx, dword ptr [0x1fa28]
  020ee5  mov al, byte ptr [ebx]
  020ee7  adc edx, dword ptr [0x1fa2c]
  020eed  mov al, byte ptr [eax]
  020eef  adc bl, byte ptr [0x1fa30]
  020ef5  mov byte ptr [edi], al
  020ef7  mov ah, ch
  020ef9  mov bh, dl
  020efb  inc edi
  020efc  add ecx, dword ptr [0x1fa28]
  020f02  mov al, byte ptr [ebx]
  020f04  adc edx, dword ptr [0x1fa2c]
  020f0a  mov al, byte ptr [eax]
  020f0c  adc bl, byte ptr [0x1fa30]
  020f12  mov byte ptr [edi], al
  020f14  mov ah, ch
  020f16  mov bh, dl
  020f18  inc edi
  020f19  add ecx, dword ptr [0x1fa28]
  020f1f  mov al, byte ptr [ebx]
  020f21  adc edx, dword ptr [0x1fa2c]
  020f27  mov al, byte ptr [eax]
  020f29  adc bl, byte ptr [0x1fa30]
  020f2f  mov byte ptr [edi], al
  020f31  mov ah, ch
  020f33  mov bh, dl
  020f35  inc edi
  020f36  add ecx, dword ptr [0x1fa28]
  020f3c  mov al, byte ptr [ebx]
  020f3e  adc edx, dword ptr [0x1fa2c]
  020f44  mov al, byte ptr [eax]
  020f46  adc bl, byte ptr [0x1fa30]
  020f4c  mov byte ptr [edi], al
  020f4e  mov ah, ch
  020f50  mov bh, dl
  020f52  inc edi
  020f53  add ecx, dword ptr [0x1fa28]
  020f59  mov al, byte ptr [ebx]
  020f5b  adc edx, dword ptr [0x1fa2c]
  020f61  mov al, byte ptr [eax]
  020f63  adc bl, byte ptr [0x1fa30]
  020f69  mov byte ptr [edi], al
  020f6b  mov ah, ch
  020f6d  mov bh, dl
  020f6f  inc edi
  020f70  add ecx, dword ptr [0x1fa28]
  020f76  mov al, byte ptr [ebx]
  020f78  adc edx, dword ptr [0x1fa2c]
  020f7e  mov al, byte ptr [eax]
  020f80  adc bl, byte ptr [0x1fa30]
  020f86  mov byte ptr [edi], al
  020f88  mov ah, ch
  020f8a  mov bh, dl
  020f8c  inc edi
  020f8d  add ecx, dword ptr [0x1fa28]
  020f93  mov al, byte ptr [ebx]
  020f95  adc edx, dword ptr [0x1fa2c]
  020f9b  mov al, byte ptr [eax]
  020f9d  adc bl, byte ptr [0x1fa30]
  020fa3  mov byte ptr [edi], al
  020fa5  mov ah, ch
  020fa7  mov bh, dl
  020fa9  inc edi
  020faa  add ecx, dword ptr [0x1fa28]
  020fb0  mov al, byte ptr [ebx]
  020fb2  adc edx, dword ptr [0x1fa2c]
  020fb8  mov al, byte ptr [eax]
  020fba  adc bl, byte ptr [0x1fa30]
  020fc0  mov byte ptr [edi], al
  020fc2  mov ah, ch
  020fc4  mov bh, dl
  020fc6  inc edi
  020fc7  add ecx, dword ptr [0x1fa28]
  020fcd  mov al, byte ptr [ebx]
  020fcf  adc edx, dword ptr [0x1fa2c]
  020fd5  mov al, byte ptr [eax]
  020fd7  adc bl, byte ptr [0x1fa30]
  020fdd  mov byte ptr [edi], al
  020fdf  mov ah, ch
  020fe1  mov bh, dl
  020fe3  inc edi
  020fe4  add ecx, dword ptr [0x1fa28]
  020fea  mov al, byte ptr [ebx]
  020fec  adc edx, dword ptr [0x1fa2c]
  020ff2  mov al, byte ptr [eax]
  020ff4  adc bl, byte ptr [0x1fa30]
  020ffa  mov byte ptr [edi], al
  020ffc  mov ah, ch
  020ffe  mov bh, dl
  021000  inc edi
  021001  add ecx, dword ptr [0x1fa28]
  021007  mov al, byte ptr [ebx]
  021009  adc edx, dword ptr [0x1fa2c]
  02100f  mov al, byte ptr [eax]
  021011  adc bl, byte ptr [0x1fa30]
  021017  mov byte ptr [edi], al
  021019  mov ah, ch
  02101b  mov bh, dl
  02101d  inc edi
  02101e  add ecx, dword ptr [0x1fa28]
  021024  mov al, byte ptr [ebx]
  021026  adc edx, dword ptr [0x1fa2c]
  02102c  mov al, byte ptr [eax]
  02102e  adc bl, byte ptr [0x1fa30]
  021034  mov byte ptr [edi], al
  021036  mov ah, ch
  021038  mov bh, dl
  02103a  inc edi
  02103b  add ecx, dword ptr [0x1fa28]
  021041  mov al, byte ptr [ebx]
  021043  adc edx, dword ptr [0x1fa2c]
  021049  mov al, byte ptr [eax]
  02104b  adc bl, byte ptr [0x1fa30]
  021051  mov byte ptr [edi], al
  021053  mov ah, ch
  021055  mov bh, dl
  021057  inc edi
  021058  add ecx, dword ptr [0x1fa28]
  02105e  mov al, byte ptr [ebx]
  021060  adc edx, dword ptr [0x1fa2c]
  021066  mov al, byte ptr [eax]
  021068  adc bl, byte ptr [0x1fa30]
  02106e  mov byte ptr [edi], al
  021070  mov ah, ch
  021072  mov bh, dl
  021074  inc edi
  021075  add ecx, dword ptr [0x1fa28]
  02107b  mov al, byte ptr [ebx]
  02107d  adc edx, dword ptr [0x1fa2c]
  021083  mov al, byte ptr [eax]
  021085  adc bl, byte ptr [0x1fa30]
  02108b  mov byte ptr [edi], al
  02108d  mov ah, ch
  02108f  mov bh, dl
  021091  inc edi
  021092  add ecx, dword ptr [0x1fa28]
  021098  mov al, byte ptr [ebx]
  02109a  adc edx, dword ptr [0x1fa2c]
  0210a0  mov al, byte ptr [eax]
  0210a2  adc bl, byte ptr [0x1fa30]
  0210a8  mov byte ptr [edi], al
  0210aa  fld st(3)
  0210ac  fld st(3)
  0210ae  fld st(3)
  0210b0  fmul st(3)
  0210b2  fxch st(1)
  0210b4  fmul st(3)
  0210b6  fxch st(2)
  0210b8  fmul st(3)
  0210ba  fxch st(1)
  0210bc  fmul qword ptr [0x4a60]
  0210c2  fxch st(1)
  0210c4  fmul qword ptr [0x4a68]
  0210ca  fxch st(2)
  0210cc  fmul qword ptr [0x4a68]
  0210d2  fxch st(1)
  0210d4  fistp dword ptr [0x1f9b8]
  0210da  fistp dword ptr [0x1f9b4]
  0210e0  fistp dword ptr [0x1f9b0]
  0210e6  fstp st(0)
  0210e8  fadd dword ptr [0x1f978]
  0210ee  fxch st(1)
  0210f0  fadd dword ptr [0x1f974]
  0210f6  fxch st(2)
  0210f8  fadd dword ptr [0x1f970]
  0210fe  fxch st(3)
  021100  fadd dword ptr [0x1f96c]
  021106  fstp st(4)
  021108  dec dword ptr [0x48d4]
  02110e  jne 0x20e53
L21114:
  021114  pop esi
  021115  pop ebp
  021116  pop edx
  021117  pop ecx
  021118  fcompp 
  02111a  fcompp 
  02111c  add ebp, 0x140
  021122  fld dword ptr [0x1fef0]
  021128  fld dword ptr [0x1fef4]
  02112e  dec esi
  02112f  jne 0x20a3b
L21135:
  021135  fcompp 
L21137:
  021137  ret 
L21138:
  021138  mov eax, dword ptr [0x1fa0c]
  02113d  db 0x2b
  02113e  db 0x05
  02113f  db 0x08
