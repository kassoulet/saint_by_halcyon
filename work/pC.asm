L41220:
  041220  mov dword ptr [0x469c], 0
L4122a:
  04122a  cmp dword ptr [0x469c], 1
  041231  jl 0x4122a
  041233  mov esi, dword ptr [0x466c]
  041239  mov edi, dword ptr [0x4668]
  04123f  xor ebp, ebp
  041241  mov ecx, 0x1f40
  041246  xchg ebx, ebx
L41248:
  041248  mov eax, dword ptr [esi]
  04124a  mov ebx, dword ptr [esi + 4]
  04124d  mov dword ptr [esi], ebp
  04124f  mov dword ptr [esi + 4], ebp
  041252  mov dword ptr [edi], eax
  041254  mov dword ptr [edi + 4], ebx
  041257  add esi, 8
  04125a  add edi, 8
  04125d  dec ecx
  04125e  jne 0x41248
  041260  mov ebx, 0x17898
  041265  mov edi, 0x3fcf8
  04126a  call 0x1f2c0
  04126f  fld qword ptr [0x17830]
  041275  fstp qword ptr [0x4af0]
  04127b  fld qword ptr [0x17838]
  041281  fstp qword ptr [0x4af8]
  041287  fld qword ptr [0x17840]
  04128d  fstp qword ptr [0x4b00]
  041293  fld qword ptr [0x17848]
  041299  fstp qword ptr [0x4a20]
  04129f  fld qword ptr [0x17850]
  0412a5  fstp qword ptr [0x4a28]
  0412ab  fld qword ptr [0x17858]
  0412b1  fstp qword ptr [0x4a30]
  0412b7  fld qword ptr [0x17860]
  0412bd  fstp qword ptr [0x49f0]
  0412c3  fld qword ptr [0x17868]
  0412c9  fstp qword ptr [0x49f8]
  0412cf  fld qword ptr [0x17870]
  0412d5  fstp qword ptr [0x4a00]
  0412db  fld qword ptr [0x17878]
  0412e1  fstp qword ptr [0x4938]
  0412e7  mov ebx, 0x178c8
  0412ec  mov edi, 0x3fcf8
  0412f1  call 0x1f2c0
  0412f6  fld qword ptr [0x17860]
  0412fc  fstp qword ptr [0x49c0]
  041302  fld qword ptr [0x17868]
  041308  fstp qword ptr [0x49c8]
  04130e  fld qword ptr [0x17870]
  041314  fstp qword ptr [0x49d0]
  04131a  fld qword ptr [0x4938]
  041320  fmul qword ptr [0x4960]
  041326  fstp qword ptr [0x4a78]
  04132c  call 0x15d91
  041331  call 0x150d4
  041336  cmp byte ptr [0x41b7], 1
  04133d  je 0x4187d
  041343  fld qword ptr [0x49f0]
  041349  fstp dword ptr [0x4c1c]
  04134f  fld qword ptr [0x49f8]
  041355  fstp dword ptr [0x4c20]
  04135b  fld qword ptr [0x4a00]
  041361  fstp dword ptr [0x4c24]
  041367  fld dword ptr [0x7f30]
  04136d  fcos 
  04136f  fld1 
  041371  faddp st(1)
  041373  fdiv qword ptr [0x4988]
  041379  fstp qword ptr [0x7eb8]
  04137f  fld dword ptr [0x7f30]
  041385  fsin 
  041387  fmul qword ptr [0x7f18]
  04138d  fstp qword ptr [0x7ed0]
  041393  fld dword ptr [0x7f38]
  041399  fcos 
  04139b  fmul qword ptr [0x7f00]
  0413a1  fstp qword ptr [0x7ed8]
  0413a7  fld dword ptr [0x7f30]
  0413ad  fsin 
  0413af  fmul qword ptr [0x7f28]
  0413b5  fstp qword ptr [0x7ef0]
  0413bb  fld dword ptr [0x7f38]
  0413c1  fcos 
  0413c3  fmul qword ptr [0x7f10]
  0413c9  fstp qword ptr [0x7ef8]
  0413cf  fld dword ptr [0x7f30]
  0413d5  fsin 
  0413d7  fmul qword ptr [0x7f20]
  0413dd  fstp qword ptr [0x7ee0]
  0413e3  fld dword ptr [0x7f38]
  0413e9  fcos 
  0413eb  fmul qword ptr [0x7f08]
  0413f1  fstp qword ptr [0x7ee8]
  0413f7  mov esi, 0x4c84
  0413fc  mov edi, dword ptr [0x466c]
  041402  add edi, 0x10000
  041408  mov edx, 0x1a
L4140d:
  04140d  mov ecx, 0x29
L41412:
  041412  fld dword ptr [esi]
  041414  fmul qword ptr [0x15be0]
  04141a  fld dword ptr [esi + 4]
  04141d  fmul qword ptr [0x15be8]
  041423  fld dword ptr [esi + 8]
  041426  fmul qword ptr [0x15bf0]
  04142c  faddp st(1)
  04142e  faddp st(1)
  041430  fadd dword ptr [0x4c1c]
  041436  fstp dword ptr [0x4c28]
  04143c  fld dword ptr [esi]
  04143e  fmul qword ptr [0x15c00]
  041444  fld dword ptr [esi + 4]
  041447  fmul qword ptr [0x15c08]
  04144d  fld dword ptr [esi + 8]
  041450  fmul qword ptr [0x15c10]
  041456  faddp st(1)
  041458  faddp st(1)
  04145a  fadd dword ptr [0x4c20]
  041460  fstp dword ptr [0x4c2c]
  041466  fld dword ptr [esi]
  041468  fmul qword ptr [0x15c20]
  04146e  fld dword ptr [esi + 4]
  041471  fmul qword ptr [0x15c28]
  041477  fld dword ptr [esi + 8]
  04147a  fmul qword ptr [0x15c30]
  041480  faddp st(1)
  041482  faddp st(1)
  041484  fadd dword ptr [0x4c24]
  04148a  fstp dword ptr [0x4c30]
  041490  call dword ptr [0x4c00]
  041496  cmp dword ptr [0x3fce0], 1
  04149d  jne 0x41539
  0414a3  mov eax, dword ptr [0x4c34]
  0414a8  mov ebx, dword ptr [0x4c38]
  0414ae  mov dword ptr [0x4c40], eax
  0414b3  mov dword ptr [0x4c44], ebx
  0414b9  mov eax, dword ptr [0x4c3c]
  0414be  mov dword ptr [0x4c48], eax
  0414c3  call dword ptr [0x3fcf4]
  0414c9  fld dword ptr [0x4c34]
  0414cf  fmul dword ptr [0x3fce4]
  0414d5  fld1 
  0414d7  fsub dword ptr [0x3fce4]
  0414dd  fmul dword ptr [0x4c40]
  0414e3  faddp st(1)
  0414e5  fmul qword ptr [0x7ea0]
  0414eb  fistp dword ptr [edi]
  0414ed  fld dword ptr [0x4c38]
  0414f3  fmul dword ptr [0x3fce4]
  0414f9  fld1 
  0414fb  fsub dword ptr [0x3fce4]
  041501  fmul dword ptr [0x4c44]
  041507  faddp st(1)
  041509  fmul qword ptr [0x7ea0]
  04150f  fistp dword ptr [edi + 4]
  041512  fld dword ptr [0x4c3c]
  041518  fmul dword ptr [0x3fce4]
  04151e  fld1 
  041520  fsub dword ptr [0x3fce4]
  041526  fmul dword ptr [0x4c48]
  04152c  faddp st(1)
  04152e  fmul qword ptr [0x7ea0]
  041534  fistp dword ptr [edi + 8]
  041537  jmp 0x41565
L41539:
  041539  fld dword ptr [0x4c34]
  04153f  fmul qword ptr [0x7ea0]
  041545  fistp dword ptr [edi]
  041547  fld dword ptr [0x4c38]
  04154d  fmul qword ptr [0x7ea0]
  041553  fistp dword ptr [edi + 4]
  041556  fld dword ptr [0x4c3c]
  04155c  fmul qword ptr [0x7ea0]
  041562  fistp dword ptr [edi + 8]
L41565:
  041565  add edi, 0xc
  041568  add esi, 0xc
  04156b  dec ecx
  04156c  jne 0x41412
  041572  dec edx
  041573  jne 0x4140d
  041579  mov esi, dword ptr [0x466c]
  04157f  add esi, 0x10000
  041585  mov edi, dword ptr [0x466c]
  04158b  sub edi, 2
  04158e  mov dword ptr [0x4680], 0x19
L41598:
  041598  mov dword ptr [0x467c], 0x28
L415a2:
  0415a2  mov eax, dword ptr [esi + 8]
  0415a5  add eax, dword ptr [esi + 0x14]
  0415a8  add eax, dword ptr [esi + 0x1f4]
  0415ae  add eax, dword ptr [esi + 0x200]
  0415b4  je 0x41856
  0415ba  push edi
  0415bb  mov edx, dword ptr [esi]
  0415bd  mov ebp, dword ptr [esi + 4]
  0415c0  mov edi, dword ptr [esi + 8]
  0415c3  mov eax, dword ptr [esi + 0x1ec]
  0415c9  mov ebx, dword ptr [esi + 0x1f0]
  0415cf  mov ecx, dword ptr [esi + 0x1f4]
  0415d5  sub eax, edx
  0415d7  sub ebx, ebp
  0415d9  sub ecx, edi
  0415db  mov dword ptr [0x406d4], edx
  0415e1  mov dword ptr [0x406d8], ebp
  0415e7  mov dword ptr [0x406dc], edi
  0415ed  sar eax, 3
  0415f0  sar ebx, 3
  0415f3  sar ecx, 3
  0415f6  mov dword ptr [0x406f0], eax
  0415fb  mov dword ptr [0x406f4], ebx
  041601  mov dword ptr [0x406f8], ecx
  041607  mov edx, dword ptr [esi + 0xc]
  04160a  mov ebp, dword ptr [esi + 0x10]
  04160d  mov edi, dword ptr [esi + 0x14]
  041610  mov eax, dword ptr [esi + 0x1f8]
  041616  mov ebx, dword ptr [esi + 0x1fc]
  04161c  mov ecx, dword ptr [esi + 0x200]
  041622  sub eax, edx
  041624  sub ebx, ebp
  041626  sub ecx, edi
  041628  mov dword ptr [0x406e0], edx
  04162e  mov dword ptr [0x406e4], ebp
  041634  mov dword ptr [0x406e8], edi
  04163a  sar eax, 3
  04163d  sar ebx, 3
  041640  sar ecx, 3
  041643  pop edi
  041644  mov dword ptr [0x406fc], eax
  041649  mov dword ptr [0x40700], ebx
  04164f  mov dword ptr [0x40704], ecx
  041655  push esi
  041656  mov dword ptr [0x406ec], 8
L41660:
  041660  mov ebp, dword ptr [0x406d4]
  041666  mov esi, dword ptr [0x406d8]
  04166c  mov edx, dword ptr [0x406dc]
  041672  mov eax, dword ptr [0x406e0]
  041677  mov ebx, dword ptr [0x406e4]
  04167d  mov ecx, dword ptr [0x406e8]
  041683  sub eax, ebp
  041685  sub ebx, esi
  041687  sub ecx, edx
  041689  sar eax, 0xb
  04168c  sar ebx, 0xb
  04168f  sar ecx, 0xb
  041692  mov dword ptr [0x40708], eax
  041697  mov dword ptr [0x4070c], ebx
  04169d  mov dword ptr [0x40710], ecx
  0416a3  sar ebp, 8
  0416a6  sar esi, 8
  0416a9  sar edx, 8
  0416ac  mov ecx, ebp
  0416ae  mov eax, dword ptr [0x4670]
  0416b3  mov ax, si
  0416b6  add edi, 2
  0416b9  mov al, ch
  0416bb  add ecx, dword ptr [0x40708]
  0416c1  add esi, dword ptr [0x4070c]
  0416c7  mov al, byte ptr [eax]
  0416c9  mov ah, dh
  0416cb  add edx, dword ptr [0x40710]
  0416d1  mov bl, byte ptr [eax + 0x10000]
  0416d7  mov ax, si
  0416da  mov al, ch
  0416dc  add ecx, dword ptr [0x40708]
  0416e2  add esi, dword ptr [0x4070c]
  0416e8  mov al, byte ptr [eax]
  0416ea  mov ah, dh
  0416ec  add edx, dword ptr [0x40710]
  0416f2  mov bh, byte ptr [eax + 0x10000]
  0416f8  mov word ptr [edi], bx
  0416fb  mov ax, si
  0416fe  add edi, 2
  041701  mov al, ch
  041703  add ecx, dword ptr [0x40708]
  041709  add esi, dword ptr [0x4070c]
  04170f  mov al, byte ptr [eax]
  041711  mov ah, dh
  041713  add edx, dword ptr [0x40710]
  041719  mov bl, byte ptr [eax + 0x10000]
  04171f  mov ax, si
  041722  mov al, ch
  041724  add ecx, dword ptr [0x40708]
  04172a  add esi, dword ptr [0x4070c]
  041730  mov al, byte ptr [eax]
  041732  mov ah, dh
  041734  add edx, dword ptr [0x40710]
  04173a  mov bh, byte ptr [eax + 0x10000]
  041740  mov word ptr [edi], bx
  041743  mov ax, si
  041746  add edi, 2
  041749  mov al, ch
  04174b  add ecx, dword ptr [0x40708]
  041751  add esi, dword ptr [0x4070c]
  041757  mov al, byte ptr [eax]
  041759  mov ah, dh
  04175b  add edx, dword ptr [0x40710]
  041761  mov bl, byte ptr [eax + 0x10000]
  041767  mov ax, si
  04176a  mov al, ch
  04176c  add ecx, dword ptr [0x40708]
  041772  add esi, dword ptr [0x4070c]
  041778  mov al, byte ptr [eax]
  04177a  mov ah, dh
  04177c  add edx, dword ptr [0x40710]
  041782  mov bh, byte ptr [eax + 0x10000]
  041788  mov word ptr [edi], bx
  04178b  mov ax, si
  04178e  add edi, 2
  041791  mov al, ch
  041793  add ecx, dword ptr [0x40708]
  041799  add esi, dword ptr [0x4070c]
  04179f  mov al, byte ptr [eax]
  0417a1  mov ah, dh
  0417a3  add edx, dword ptr [0x40710]
  0417a9  mov bl, byte ptr [eax + 0x10000]
  0417af  mov ax, si
  0417b2  mov al, ch
  0417b4  add ecx, dword ptr [0x40708]
  0417ba  add esi, dword ptr [0x4070c]
  0417c0  mov al, byte ptr [eax]
  0417c2  mov ah, dh
  0417c4  add edx, dword ptr [0x40710]
  0417ca  mov bh, byte ptr [eax + 0x10000]
  0417d0  mov word ptr [edi], bx
  0417d3  mov eax, dword ptr [0x406d4]
  0417d8  mov ebx, dword ptr [0x406d8]
  0417de  mov ecx, dword ptr [0x406dc]
  0417e4  mov edx, dword ptr [0x406e0]
  0417ea  mov esi, dword ptr [0x406e4]
  0417f0  mov ebp, dword ptr [0x406e8]
  0417f6  add eax, dword ptr [0x406f0]
  0417fc  add ebx, dword ptr [0x406f4]
  041802  add ecx, dword ptr [0x406f8]
  041808  add edx, dword ptr [0x406fc]
  04180e  add esi, dword ptr [0x40700]
  041814  add ebp, dword ptr [0x40704]
  04181a  mov dword ptr [0x406d4], eax
  04181f  mov dword ptr [0x406d8], ebx
  041825  mov dword ptr [0x406dc], ecx
  04182b  mov dword ptr [0x406e0], edx
  041831  mov dword ptr [0x406e4], esi
  041837  mov dword ptr [0x406e8], ebp
  04183d  add edi, 0x138
  041843  dec dword ptr [0x406ec]
  041849  jne 0x41660
  04184f  pop esi
  041850  add edi, 0xfffff600
L41856:
  041856  add edi, 8
  041859  add esi, 0xc
  04185c  dec dword ptr [0x467c]
  041862  jne 0x415a2
  041868  add edi, 0x8c0
  04186e  add esi, 0xc
  041871  dec dword ptr [0x4680]
  041877  jne 0x41598
L4187d:
  04187d  mov eax, dword ptr [0x1584c]
  041882  mov dword ptr [0x15854], eax
  041887  mov eax, dword ptr [0x15850]
  04188c  mov dword ptr [0x15858], eax
  041891  mov dword ptr [0x1663c], 0
  04189b  mov eax, dword ptr [0x16634]
  0418a0  mov dword ptr [0x16640], eax
  0418a5  mov ecx, dword ptr [0x17210]
  0418ab  mov ebp, 0x7f98
L418b0:
  0418b0  push ecx
  0418b1  cmp dword ptr [ebp + 4], 0
  0418b5  jne 0x41a60
  0418bb  fld dword ptr [ebp + 0x34]
  0418be  fstp dword ptr [0x17214]
  0418c4  fild dword ptr [ebp + 0x18]
  0418c7  fdiv qword ptr [0x4a68]
  0418cd  fstp qword ptr [0x4a38]
  0418d3  fild dword ptr [ebp + 0x1c]
  0418d6  fdiv qword ptr [0x4a68]
  0418dc  fstp qword ptr [0x4a40]
  0418e2  fild dword ptr [ebp + 0x20]
  0418e5  fdiv qword ptr [0x4a68]
  0418eb  fstp qword ptr [0x4a48]
  0418f1  fld dword ptr [ebp + 0x24]
  0418f4  fstp qword ptr [0x49a8]
  0418fa  fld dword ptr [ebp + 0x28]
  0418fd  fstp qword ptr [0x49b0]
  041903  fld dword ptr [ebp + 0x2c]
  041906  fstp qword ptr [0x49b8]
  04190c  mov ebx, 0x15b60
  041911  call 0x15f1b
  041916  mov eax, 0x15b60
  04191b  mov ebx, 0x15be0
  041920  mov ecx, 0x15ae0
  041925  call 0x160b5
  04192a  cmp dword ptr [ebp], 0x4f627521
  041931  je 0x419aa
  041933  mov esi, dword ptr [ebp + 0x10]
  041936  mov ecx, dword ptr [ebp + 8]
L41939:
  041939  mov dword ptr [esi + 4], 0
  041940  add esi, 0x40
  041943  dec ecx
  041944  jne 0x41939
  041946  call 0x16244
  04194b  mov esi, ebp
  04194d  mov edi, 0x7f60
  041952  mov ecx, 0xe
  041957  rep movsd dword ptr es:[edi], dword ptr [esi]
  041959  mov dword ptr [0x7f68], 0
  041963  mov dword ptr [0x7f6c], 0
  04196d  mov ebx, dword ptr [0x15854]
  041973  mov dword ptr [0x7f74], ebx
  041979  mov ebx, dword ptr [0x15858]
  04197f  mov dword ptr [0x7f70], ebx
  041985  call 0x15a18
  04198a  call 0x162fd
  04198f  call 0x17028
  041994  push ebp
  041995  mov ebp, 0x7f60
  04199a  call 0x162fd
  04199f  call 0x17028
  0419a4  pop ebp
  0419a5  jmp 0x41a60
L419aa:
  0419aa  cmp byte ptr [0x41b6], 1
  0419b1  je 0x41a60
  0419b7  mov esi, dword ptr [ebp + 0x14]
  0419ba  mov eax, 0x1fa33
  0419bf  sub eax, dword ptr [esi + 4]
  0419c2  mov dword ptr [0x4664], eax
  0419c7  mov eax, dword ptr [esi + 4]
  0419ca  cmp eax, 0x1fc7b
  0419cf  jne 0x419db
  0419d1  mov dword ptr [0x4664], 1
L419db:
  0419db  call 0x16100
  0419e0  call 0x16244
  0419e5  call 0x163a4
  0419ea  mov esi, ebp
  0419ec  mov edi, 0x7f60
  0419f1  mov ecx, 0xe
  0419f6  rep movsd dword ptr es:[edi], dword ptr [esi]
  0419f8  mov dword ptr [0x7f68], 0
  041a02  mov dword ptr [0x7f6c], 0
  041a0c  mov ebx, dword ptr [0x15854]
  041a12  mov dword ptr [0x7f74], ebx
  041a18  mov ebx, dword ptr [0x15858]
  041a1e  mov dword ptr [0x7f70], ebx
  041a24  call 0x1592e
  041a29  call 0x162fd
  041a2e  call 0x16ea7
  041a33  cmp dword ptr [0x4664], 1
  041a3a  je 0x41a41
  041a3c  call 0x1653f
L41a41:
  041a41  push ebp
  041a42  mov ebp, 0x7f60
  041a47  call 0x162fd
  041a4c  call 0x16ea7
  041a51  cmp dword ptr [0x4664], 1
  041a58  je 0x41a5f
  041a5a  call 0x1653f
L41a5f:
  041a5f  pop ebp
L41a60:
  041a60  pop ecx
  041a61  add ebp, 0x38
  041a64  dec ecx
  041a65  jne 0x418b0
  041a6b  mov dword ptr [0x467c], 0x28
  041a75  fild dword ptr [0x467c]
  041a7b  fld dword ptr [0xefb8]
  041a81  fmul qword ptr [0x4988]
  041a87  fmul qword ptr [0x4938]
  041a8d  fdivp st(1)
  041a8f  fstp dword ptr [0x4658]
  041a95  mov dword ptr [0x467c], 0xff
  041a9f  fild dword ptr [0x467c]
  041aa5  fld dword ptr [0xefe4]
  041aab  fmul qword ptr [0x4988]
  041ab1  fmul qword ptr [0x4938]
  041ab7  fdivp st(1)
  041ab9  fstp dword ptr [0x465c]
  041abf  mov ecx, dword ptr [0x14798]
  041ac5  cmp ecx, 0
  041ac8  je 0x41c1c
  041ace  mov ebp, 0xef98
  041ad3  mov edi, dword ptr [0x16640]
  041ad9  mov ebx, 0x178e0
L41ade:
  041ade  fld dword ptr [ebp + 4]
  041ae1  fmul qword ptr [0x15be0]
  041ae7  fld dword ptr [ebp + 4]
  041aea  fmul qword ptr [0x15be8]
  041af0  fld dword ptr [ebp + 4]
  041af3  fmul qword ptr [0x15bf0]
  041af9  fld dword ptr [ebp + 8]
  041afc  fmul qword ptr [0x15c00]
  041b02  fld dword ptr [ebp + 8]
  041b05  fmul qword ptr [0x15c08]
  041b0b  fld dword ptr [ebp + 8]
  041b0e  fmul qword ptr [0x15c10]
  041b14  fxch st(2)
  041b16  faddp st(5)
  041b18  faddp st(3)
  041b1a  faddp st(1)
  041b1c  fld dword ptr [ebp + 0xc]
  041b1f  fmul qword ptr [0x15c20]
  041b25  fld dword ptr [ebp + 0xc]
  041b28  fmul qword ptr [0x15c28]
  041b2e  fld dword ptr [ebp + 0xc]
  041b31  fmul qword ptr [0x15c30]
  041b37  fxch st(2)
  041b39  faddp st(5)
  041b3b  faddp st(3)
  041b3d  faddp st(1)
  041b3f  fxch st(2)
  041b41  fadd qword ptr [0x15c40]
  041b47  fxch st(1)
  041b49  fadd qword ptr [0x15c48]
  041b4f  fxch st(2)
  041b51  fadd qword ptr [0x15c50]
  041b57  fst dword ptr [ebp + 0x1c]
  041b5a  fstp dword ptr [0x4684]
  041b60  fstp dword ptr [0x467c]
  041b66  fstp dword ptr [0x4680]
  041b6c  test dword ptr [0x4684], 0x80000000
  041b76  je 0x41c0c
  041b7c  fld1 
  041b7e  fld dword ptr [0x4684]
  041b84  fdivp st(1)
  041b86  fld dword ptr [0x467c]
  041b8c  fld dword ptr [0x4680]
  041b92  fmul qword ptr [0x4a78]
  041b98  fmul st(2)
  041b9a  fxch st(1)
  041b9c  fmul qword ptr [0x4938]
  041ba2  fmul st(2)
  041ba4  fxch st(1)
  041ba6  fadd qword ptr [0x4930]
  041bac  fstp dword ptr [ebp + 0x18]
  041baf  fadd qword ptr [0x4928]
  041bb5  fstp dword ptr [ebp + 0x14]
  041bb8  fstp dword ptr [ebp + 0x10]
  041bbb  mov eax, dword ptr [0x4658]
  041bc0  cmp dword ptr [ebp], 0x41c9b
  041bc7  jne 0x41bce
  041bc9  mov eax, dword ptr [0x465c]
L41bce:
  041bce  mov dword ptr [ebp + 0x28], eax
  041bd1  fld dword ptr [0x4684]
  041bd7  fsub dword ptr [0x150d0]
  041bdd  fmul dword ptr [0x150c0]
  041be3  fmul qword ptr [0x4990]
  041be9  fchs 
  041beb  fistp dword ptr [0x4680]
  041bf1  mov eax, 0xffff
  041bf6  sub eax, dword ptr [0x4680]
  041bfc  mov dword ptr [edi], eax
  041bfe  add edi, 4
  041c01  mov dword ptr [edi], ebp
  041c03  add edi, 4
  041c06  inc dword ptr [0x1663c]
L41c0c:
  041c0c  add ebp, 0x2c
  041c0f  dec ecx
  041c10  jne 0x41ade
  041c16  mov dword ptr [0x16640], edi
L41c1c:
  041c1c  wait 
  041c1d  fnstcw word ptr [0x402c0]
  041c23  push word ptr [0x402c0]
  041c2a  or word ptr [0x402c0], 0xc00
  041c33  fldcw word ptr [0x402c0]
  041c39  cmp dword ptr [0x1663c], 0
  041c40  je 0x4201c
  041c46  call 0x170f7
  041c4b  mov esi, dword ptr [0x16634]
  041c51  add esi, 4
L41c54:
  041c54  mov ecx, dword ptr [esi]
  041c56  push esi
  041c57  jmp dword ptr [ecx]
  041c59  mov esi, dword ptr [ecx + 8]
  041c5c  mov edi, dword ptr [ecx + 0xc]
  041c5f  fld dword ptr [esi + 0x14]
  041c62  fld dword ptr [esi + 0x18]
  041c65  fxch st(1)
  041c67  fstp dword ptr [0x2936c]
  041c6d  fstp dword ptr [0x29370]
  041c73  fld dword ptr [edi + 0x14]
  041c76  fld dword ptr [edi + 0x18]
  041c79  fxch st(1)
  041c7b  fstp dword ptr [0x2937c]
  041c81  fstp dword ptr [0x29380]
  041c87  mov esi, 0x2936c
  041c8c  mov edi, 0x2937c
  041c91  call 0x293a4
  041c96  jmp 0x4200c
  041c9b  fld dword ptr [ecx + 0x28]
  041c9e  fmul dword ptr [ecx + 0x1c]
  041ca1  fmul dword ptr [0x29690]
  041ca7  fistp dword ptr [0x4688]
  041cad  mov eax, dword ptr [0x4688]
  041cb2  shr eax, 8
  041cb5  cmp eax, 0x3f
  041cb8  jl 0x41cbf
  041cba  mov eax, 0x3f
L41cbf:
  041cbf  cmp dword ptr [0x48dc], -1
  041cc6  je 0x41ccd
  041cc8  mov eax, dword ptr [0x48dc]
L41ccd:
  041ccd  mov ebx, dword ptr [eax*4 + 0x4558]
  041cd4  mov dword ptr [0x296a4], ebx
  041cda  fld dword ptr [ecx + 0x28]
  041cdd  fmul dword ptr [ecx + 0x1c]
  041ce0  fmul dword ptr [eax*4 + 0x4458]
  041ce7  fst dword ptr [0x296c0]
  041ced  fmul dword ptr [0x29690]
  041cf3  fistp dword ptr [0x296c8]
  041cf9  fld dword ptr [ecx + 0x20]
  041cfc  fmul qword ptr [0x4938]
  041d02  fmul dword ptr [ecx + 0x10]
  041d05  fstp dword ptr [0x2969c]
  041d0b  fld dword ptr [ecx + 0x14]
  041d0e  fsub dword ptr [0x2969c]
  041d14  fstp dword ptr [0x296a8]
  041d1a  fld dword ptr [ecx + 0x18]
  041d1d  fsub dword ptr [0x2969c]
  041d23  fstp dword ptr [0x296ac]
  041d29  fld dword ptr [ecx + 0x14]
  041d2c  fadd dword ptr [0x2969c]
  041d32  fstp dword ptr [0x296b0]
  041d38  fld dword ptr [ecx + 0x18]
  041d3b  fadd dword ptr [0x2969c]
  041d41  fstp dword ptr [0x296b4]
  041d47  call 0x298b7
  041d4c  jmp 0x4200c
  041d51  fld qword ptr [0x49f0]
  041d57  fsub dword ptr [ecx + 4]
  041d5a  fld qword ptr [0x49f8]
  041d60  fsub dword ptr [ecx + 8]
  041d63  fpatan 
  041d65  fldpi 
  041d67  fmul qword ptr [0x4988]
  041d6d  fdivp st(1)
  041d6f  fmul qword ptr [0x4a68]
  041d75  fistp dword ptr [0x4688]
  041d7b  mov eax, dword ptr [0x4688]
  041d80  and eax, 0xffff
  041d85  mov ebx, 0x690
  041d8a  cdq 
  041d8b  idiv ebx
  041d8d  mov esi, eax
  041d8f  and esi, 3
  041d92  imul esi, esi, 0x28
  041d95  shr eax, 2
  041d98  imul eax, eax, 0x5300
  041d9e  add eax, esi
  041da0  mov dword ptr [0x296a4], eax
  041da5  fld dword ptr [ecx + 0x28]
  041da8  fmul dword ptr [ecx + 0x1c]
  041dab  fst dword ptr [0x296c0]
  041db1  fmul dword ptr [0x29690]
  041db7  fistp dword ptr [0x296c8]
  041dbd  fld dword ptr [ecx + 0x20]
  041dc0  fmul qword ptr [0x4938]
  041dc6  fmul dword ptr [ecx + 0x10]
  041dc9  fstp dword ptr [0x2969c]
  041dcf  fld dword ptr [ecx + 0x24]
  041dd2  fmul qword ptr [0x4938]
  041dd8  fmul dword ptr [ecx + 0x10]
  041ddb  fstp dword ptr [0x296a0]
  041de1  fld dword ptr [ecx + 0x14]
  041de4  fsub dword ptr [0x2969c]
  041dea  fstp dword ptr [0x296a8]
  041df0  fld dword ptr [ecx + 0x18]
  041df3  fsub dword ptr [0x296a0]
  041df9  fstp dword ptr [0x296ac]
  041dff  fld dword ptr [ecx + 0x14]
  041e02  fadd dword ptr [0x2969c]
  041e08  fstp dword ptr [0x296b0]
  041e0e  fld dword ptr [ecx + 0x18]
  041e11  fadd dword ptr [0x296a0]
  041e17  fstp dword ptr [0x296b4]
  041e1d  call 0x296d8
  041e22  jmp 0x4200c
  041e27  mov esi, dword ptr [ecx + 0xc]
  041e2a  mov edi, dword ptr [ecx + 0x10]
  041e2d  mov ebp, dword ptr [ecx + 0x14]
  041e30  xor eax, eax
  041e32  mov edx, eax
  041e34  shl edx, 0x10
  041e37  mov eax, dword ptr [eax*4 + 0x48e4]
  041e3e  mov dword ptr [0x48f8], eax
  041e43  fild dword ptr [ecx + 0x2c]
  041e46  fld dword ptr [esi + 0x1c]
  041e49  fmul qword ptr [0x4940]
  041e4f  faddp st(1)
  041e51  fistp dword ptr [0x4690]
  041e57  mov eax, dword ptr [0x4690]
  041e5c  shl eax, 2
  041e5f  add eax, 0x80
  041e64  cmp eax, 0
  041e67  jg 0x41e6b
  041e69  xor eax, eax
L41e6b:
  041e6b  cmp eax, 0xff
  041e70  jl 0x41e77
  041e72  mov eax, 0xff
L41e77:
  041e77  mov byte ptr [0x1fa31], al
  041e7c  mov eax, dword ptr [ecx + 0x28]
  041e7f  shl eax, 0x10
  041e82  mov ebx, eax
  041e84  add eax, dword ptr [0x4670]
  041e8a  add eax, edx
  041e8c  mov dword ptr [0x1f924], eax
  041e91  add ebx, dword ptr [0x48b4]
  041e97  mov dword ptr [0x1f928], ebx
  041e9d  mov eax, dword ptr [ecx + 4]
  041ea0  cmp eax, 0x1fa32
  041ea5  je 0x41ed7
  041ea7  cmp eax, 0x1fc7b
  041eac  je 0x41ed7
  041eae  fld dword ptr [esi + 0x38]
  041eb1  fadd dword ptr [edi + 0x38]
  041eb4  fadd dword ptr [ebp + 0x38]
  041eb7  fstp dword ptr [0x48d0]
  041ebd  mov ebx, dword ptr [0x490c]
  041ec3  cmp dword ptr [0x48d0], ebx
  041ec9  jne 0x41ed7
  041ecb  mov byte ptr [0x1fa31], 0
  041ed2  mov eax, 0x1fa32
L41ed7:
  041ed7  mov dword ptr [0x1f920], eax
  041edc  mov eax, dword ptr [esi]
  041ede  add eax, dword ptr [edi]
  041ee0  add eax, dword ptr [ebp]
  041ee3  jne 0x41ef0
  041ee5  call dword ptr [0x1f920]
  041eeb  jmp 0x4200c
L41ef0:
  041ef0  push dword ptr [0x15858]
  041ef6  mov dword ptr [0x14cb0], esi
  041efc  mov dword ptr [0x14cb4], edi
  041f02  mov dword ptr [0x14cb8], ebp
  041f08  mov dword ptr [0x14cbc], esi
  041f0e  mov esi, 0x14cb0
  041f13  mov edi, 0x14d00
  041f18  mov dword ptr [0x14d50], 0
  041f22  call 0x14d54
  041f27  call 0x14d54
  041f2c  call 0x14d54
  041f31  cmp dword ptr [0x14d50], 3
  041f38  jl 0x42006
  041f3e  mov eax, dword ptr [0x14d00]
  041f43  mov dword ptr [edi], eax
  041f45  mov esi, 0x14d00
  041f4a  mov edi, 0x14cb0
  041f4f  mov ebp, dword ptr [0x14d50]
  041f55  mov dword ptr [0x14d50], 0
L41f5f:
  041f5f  call 0x14e3a
  041f64  dec ebp
  041f65  jne 0x41f5f
  041f67  cmp dword ptr [0x14d50], 3
  041f6e  jl 0x42006
  041f74  mov eax, dword ptr [0x14cb0]
  041f79  mov dword ptr [edi], eax
  041f7b  mov esi, 0x14cb0
  041f80  mov edi, 0x14d00
  041f85  mov ebp, dword ptr [0x14d50]
  041f8b  mov dword ptr [0x14d50], 0
L41f95:
  041f95  call 0x14f28
  041f9a  dec ebp
  041f9b  jne 0x41f95
  041f9d  cmp dword ptr [0x14d50], 3
  041fa4  jl 0x42006
  041fa6  mov eax, dword ptr [0x14d00]
  041fab  mov dword ptr [edi], eax
  041fad  mov esi, 0x14d00
  041fb2  mov edi, 0x14cb0
  041fb7  mov ebp, dword ptr [0x14d50]
  041fbd  mov dword ptr [0x14d50], 0
L41fc7:
  041fc7  call 0x14fed
  041fcc  dec ebp
  041fcd  jne 0x41fc7
  041fcf  cmp dword ptr [0x14d50], 3
  041fd6  jl 0x42006
  041fd8  sub dword ptr [0x14d50], 2
  041fdf  xor eax, eax
L41fe1:
  041fe1  mov esi, dword ptr [0x14cb0]
  041fe7  mov edi, dword ptr [eax + 0x14cb4]
  041fed  mov ebp, dword ptr [eax + 0x14cb8]
  041ff3  push eax
  041ff4  call dword ptr [0x1f920]
  041ffa  pop eax
  041ffb  add eax, 4
  041ffe  dec dword ptr [0x14d50]
  042004  jne 0x41fe1
L42006:
  042006  pop dword ptr [0x15858]
L4200c:
  04200c  pop esi
  04200d  add esi, 8
  042010  dec dword ptr [0x1663c]
  042016  jne 0x41c54
L4201c:
  04201c  pop word ptr [0x402c0]
  042023  fldcw word ptr [0x402c0]
  042029  cmp word ptr [0x12bf], 0x29
  042031  jl 0x42092
  042033  mov edx, 0xaf
  042038  cmp word ptr [0x12bf], 0x2a
  042040  jl 0x42053
  042042  movzx eax, word ptr [0x12ca]
  042049  and eax, 3
  04204c  cmp eax, 2
  04204f  jl 0x42053
  042051  xor edx, edx
L42053:
  042053  mov esi, dword ptr [0x3e8b4]
  042059  add esi, edx
  04205b  mov edi, dword ptr [0x466c]
  042061  add edi, 0xb0
  042067  mov edx, 0xc8
L4206c:
  04206c  mov ecx, 0x90
L42071:
  042071  mov al, byte ptr [esi]
  042073  or al, al
  042075  je 0x4207e
  042077  shl al, 2
  04207a  inc al
  04207c  mov byte ptr [edi], al
L4207e:
  04207e  inc esi
  04207f  inc edi
  042080  dec ecx
  042081  jne 0x42071
  042083  add esi, 0xb0
  042089  add edi, 0xb0
  04208f  dec edx
  042090  jne 0x4206c
L42092:
  042092  cmp byte ptr [0x41cb], 1
  042099  jne 0x420ad
  04209b  fld qword ptr [0x4958]
  0420a1  fadd qword ptr [0x4950]
  0420a7  fstp qword ptr [0x4950]
L420ad:
  0420ad  cmp byte ptr [0x41cc], 1
  0420b4  jne 0x420ca
  0420b6  fld qword ptr [0x4958]
  0420bc  fchs 
  0420be  fadd qword ptr [0x4950]
  0420c4  fstp qword ptr [0x4950]
L420ca:
  0420ca  in al, 0x60
  0420cc  cmp al, 1
  0420ce  jne 0x420df
  0420d0  mov dword ptr [0x4aeb0], 1
  0420da  jmp 0x42172
L420df:
  0420df  cmp word ptr [0x12bf], 0x2d
  0420e7  jl 0x41220
  0420ed  mov dword ptr [0x4694], 0
  0420f7  mov dword ptr [0x4aeb0], 1
  042101  mov esi, 0x3e578
  042106  mov edi, 0x3f3e0
  04210b  mov ebp, 0x3f6e0
  042110  mov edx, 0x3f9e0
  042115  mov ecx, 0x300
L4211a:
  04211a  xor eax, eax
  04211c  mov al, byte ptr [esi]
  04211e  mov byte ptr [edi], al
  042120  shl eax, 1
  042122  cmp eax, 0x3f
  042125  jl 0x4212c
  042127  mov eax, 0x3f
L4212c:
  04212c  mov byte ptr [ebp], al
  04212f  mov al, byte ptr [esi]
  042131  neg al
  042133  add al, 0x3f
  042135  mov byte ptr [edx], al
  042137  inc esi
  042138  inc edi
  042139  inc ebp
  04213a  inc edx
  04213b  dec ecx
  04213c  jne 0x4211a
  04213e  mov esi, dword ptr [0x3e574]
  042144  mov edi, 0xa0000
  042149  sub edi, dword ptr [0x18]
  04214f  mov ecx, 0x3e80
  042154  rep movsd dword ptr es:[edi], dword ptr [esi]
  042156  mov dword ptr [0x469c], 0
L42160:
  042160  in al, 0x60
  042162  cmp al, 1
  042164  je 0x42172
  042166  cmp dword ptr [0x469c], 0x2bc
  042170  jl 0x42160
L42172:
  042172  call 0x3e48c
  042177  ret 
  042178  xchg ebx, ebx
  04217a  xchg ebx, ebx
  04217c  xchg ebx, ebx
  04217e  xchg ebx, ebx
  042180  sub al, 1
  042182  add byte ptr [eax], al
  042184  add dword ptr [eax], eax
  042186  add byte ptr [eax], al
  042188  add byte ptr [eax], al
  04218a  add byte ptr [eax], al
  04218c  add byte ptr [eax], al
  04218e  add byte ptr [eax], al
  042190  add byte ptr [eax], al
  042192  add byte ptr [eax], al
  042194  xchg ebx, ebx
  042196  xchg ebx, ebx
  042198  xchg ebx, ebx
  04219a  xchg ebx, ebx
  04219c  xchg ebx, ebx
  04219e  xchg ebx, ebx
