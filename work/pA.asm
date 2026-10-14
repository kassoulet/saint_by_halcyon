  03a0a2  mov dword ptr [0x469c], 0
L3a0ac:
  03a0ac  cmp dword ptr [0x469c], 1
  03a0b3  jl 0x3a0ac
  03a0b5  mov esi, dword ptr [0x466c]
  03a0bb  mov edi, dword ptr [0x4668]
  03a0c1  xor ebp, ebp
  03a0c3  mov ecx, 0x1f40
L3a0c8:
  03a0c8  mov eax, dword ptr [esi]
  03a0ca  mov ebx, dword ptr [esi + 4]
  03a0cd  mov dword ptr [esi], ebp
  03a0cf  mov dword ptr [esi + 4], ebp
  03a0d2  mov dword ptr [edi], eax
  03a0d4  mov dword ptr [edi + 4], ebx
  03a0d7  add esi, 8
  03a0da  add edi, 8
  03a0dd  dec ecx
  03a0de  jne 0x3a0c8
  03a0e0  mov ebx, 0x17898
  03a0e5  mov edi, 0x391c4
  03a0ea  call 0x1f2c0
  03a0ef  fld qword ptr [0x17830]
  03a0f5  fstp qword ptr [0x4af0]
  03a0fb  fld qword ptr [0x17838]
  03a101  fstp qword ptr [0x4af8]
  03a107  fld qword ptr [0x17840]
  03a10d  fstp qword ptr [0x4b00]
  03a113  fld qword ptr [0x17848]
  03a119  fstp qword ptr [0x4a20]
  03a11f  fld qword ptr [0x17850]
  03a125  fstp qword ptr [0x4a28]
  03a12b  fld qword ptr [0x17858]
  03a131  fstp qword ptr [0x4a30]
  03a137  fld qword ptr [0x17860]
  03a13d  fstp qword ptr [0x49f0]
  03a143  fld qword ptr [0x17868]
  03a149  fstp qword ptr [0x49f8]
  03a14f  fld qword ptr [0x17870]
  03a155  fstp qword ptr [0x4a00]
  03a15b  fld qword ptr [0x17878]
  03a161  fstp qword ptr [0x4938]
  03a167  mov ebx, 0x178c8
  03a16c  mov edi, 0x391c4
  03a171  call 0x1f2c0
  03a176  fld qword ptr [0x17860]
  03a17c  fstp qword ptr [0x49c0]
  03a182  fld qword ptr [0x17868]
  03a188  fstp qword ptr [0x49c8]
  03a18e  fld qword ptr [0x17870]
  03a194  fstp qword ptr [0x49d0]
  03a19a  fld qword ptr [0x4938]
  03a1a0  fmul qword ptr [0x4960]
  03a1a6  fstp qword ptr [0x4a78]
  03a1ac  call 0x15d91
  03a1b1  call 0x150d4
  03a1b6  mov eax, dword ptr [0x1584c]
  03a1bb  mov dword ptr [0x15854], eax
  03a1c0  mov eax, dword ptr [0x15850]
  03a1c5  mov dword ptr [0x15858], eax
  03a1ca  mov dword ptr [0x1663c], 0
  03a1d4  mov eax, dword ptr [0x16634]
  03a1d9  mov dword ptr [0x16640], eax
  03a1de  mov ecx, dword ptr [0x17210]
  03a1e4  mov ebp, 0x7f98
L3a1e9:
  03a1e9  push ecx
  03a1ea  cmp dword ptr [ebp + 4], 0
  03a1ee  jne 0x3a399
  03a1f4  fld dword ptr [ebp + 0x34]
  03a1f7  fstp dword ptr [0x17214]
  03a1fd  fild dword ptr [ebp + 0x18]
  03a200  fdiv qword ptr [0x4a68]
  03a206  fstp qword ptr [0x4a38]
  03a20c  fild dword ptr [ebp + 0x1c]
  03a20f  fdiv qword ptr [0x4a68]
  03a215  fstp qword ptr [0x4a40]
  03a21b  fild dword ptr [ebp + 0x20]
  03a21e  fdiv qword ptr [0x4a68]
  03a224  fstp qword ptr [0x4a48]
  03a22a  fld dword ptr [ebp + 0x24]
  03a22d  fstp qword ptr [0x49a8]
  03a233  fld dword ptr [ebp + 0x28]
  03a236  fstp qword ptr [0x49b0]
  03a23c  fld dword ptr [ebp + 0x2c]
  03a23f  fstp qword ptr [0x49b8]
  03a245  mov ebx, 0x15b60
  03a24a  call 0x15f1b
  03a24f  mov eax, 0x15b60
  03a254  mov ebx, 0x15be0
  03a259  mov ecx, 0x15ae0
  03a25e  call 0x160b5
  03a263  cmp dword ptr [ebp], 0x4f627521
  03a26a  je 0x3a2e3
  03a26c  mov esi, dword ptr [ebp + 0x10]
  03a26f  mov ecx, dword ptr [ebp + 8]
L3a272:
  03a272  mov dword ptr [esi + 4], 0
  03a279  add esi, 0x40
  03a27c  dec ecx
  03a27d  jne 0x3a272
  03a27f  call 0x16244
  03a284  mov esi, ebp
  03a286  mov edi, 0x7f60
  03a28b  mov ecx, 0xe
  03a290  rep movsd dword ptr es:[edi], dword ptr [esi]
  03a292  mov dword ptr [0x7f68], 0
  03a29c  mov dword ptr [0x7f6c], 0
  03a2a6  mov ebx, dword ptr [0x15854]
  03a2ac  mov dword ptr [0x7f74], ebx
  03a2b2  mov ebx, dword ptr [0x15858]
  03a2b8  mov dword ptr [0x7f70], ebx
  03a2be  call 0x15a18
  03a2c3  call 0x162fd
  03a2c8  call 0x17028
  03a2cd  push ebp
  03a2ce  mov ebp, 0x7f60
  03a2d3  call 0x162fd
  03a2d8  call 0x17028
  03a2dd  pop ebp
  03a2de  jmp 0x3a399
L3a2e3:
  03a2e3  cmp byte ptr [0x41b6], 1
  03a2ea  je 0x3a399
  03a2f0  mov esi, dword ptr [ebp + 0x14]
  03a2f3  mov eax, 0x1fa33
  03a2f8  sub eax, dword ptr [esi + 4]
  03a2fb  mov dword ptr [0x4664], eax
  03a300  mov eax, dword ptr [esi + 4]
  03a303  cmp eax, 0x1fc7b
  03a308  jne 0x3a314
  03a30a  mov dword ptr [0x4664], 1
L3a314:
  03a314  call 0x16100
  03a319  call 0x16244
  03a31e  call 0x163a4
  03a323  mov esi, ebp
  03a325  mov edi, 0x7f60
  03a32a  mov ecx, 0xe
  03a32f  rep movsd dword ptr es:[edi], dword ptr [esi]
  03a331  mov dword ptr [0x7f68], 0
  03a33b  mov dword ptr [0x7f6c], 0
  03a345  mov ebx, dword ptr [0x15854]
  03a34b  mov dword ptr [0x7f74], ebx
  03a351  mov ebx, dword ptr [0x15858]
  03a357  mov dword ptr [0x7f70], ebx
  03a35d  call 0x1592e
  03a362  call 0x162fd
  03a367  call 0x16ea7
  03a36c  cmp dword ptr [0x4664], 1
  03a373  je 0x3a37a
  03a375  call 0x1653f
L3a37a:
  03a37a  push ebp
  03a37b  mov ebp, 0x7f60
  03a380  call 0x162fd
  03a385  call 0x16ea7
  03a38a  cmp dword ptr [0x4664], 1
  03a391  je 0x3a398
  03a393  call 0x1653f
L3a398:
  03a398  pop ebp
L3a399:
  03a399  pop ecx
  03a39a  add ebp, 0x38
  03a39d  dec ecx
  03a39e  jne 0x3a1e9
  03a3a4  mov dword ptr [0x467c], 0x28
  03a3ae  fild dword ptr [0x467c]
  03a3b4  fld dword ptr [0xefb8]
  03a3ba  fmul qword ptr [0x4988]
  03a3c0  fmul qword ptr [0x4938]
  03a3c6  fdivp st(1)
  03a3c8  fstp dword ptr [0x4658]
  03a3ce  mov dword ptr [0x467c], 0xff
  03a3d8  fild dword ptr [0x467c]
  03a3de  fld dword ptr [0xefb8]
  03a3e4  fmul qword ptr [0x4988]
  03a3ea  fmul qword ptr [0x4938]
  03a3f0  fdivp st(1)
  03a3f2  fstp dword ptr [0x465c]
  03a3f8  mov ecx, dword ptr [0x14798]
  03a3fe  cmp ecx, 0
  03a401  je 0x3a555
  03a407  mov ebp, 0xef98
  03a40c  mov edi, dword ptr [0x16640]
  03a412  mov ebx, 0x178e0
L3a417:
  03a417  fld dword ptr [ebp + 4]
  03a41a  fmul qword ptr [0x15be0]
  03a420  fld dword ptr [ebp + 4]
  03a423  fmul qword ptr [0x15be8]
  03a429  fld dword ptr [ebp + 4]
  03a42c  fmul qword ptr [0x15bf0]
  03a432  fld dword ptr [ebp + 8]
  03a435  fmul qword ptr [0x15c00]
  03a43b  fld dword ptr [ebp + 8]
  03a43e  fmul qword ptr [0x15c08]
  03a444  fld dword ptr [ebp + 8]
  03a447  fmul qword ptr [0x15c10]
  03a44d  fxch st(2)
  03a44f  faddp st(5)
  03a451  faddp st(3)
  03a453  faddp st(1)
  03a455  fld dword ptr [ebp + 0xc]
  03a458  fmul qword ptr [0x15c20]
  03a45e  fld dword ptr [ebp + 0xc]
  03a461  fmul qword ptr [0x15c28]
  03a467  fld dword ptr [ebp + 0xc]
  03a46a  fmul qword ptr [0x15c30]
  03a470  fxch st(2)
  03a472  faddp st(5)
  03a474  faddp st(3)
  03a476  faddp st(1)
  03a478  fxch st(2)
  03a47a  fadd qword ptr [0x15c40]
  03a480  fxch st(1)
  03a482  fadd qword ptr [0x15c48]
  03a488  fxch st(2)
  03a48a  fadd qword ptr [0x15c50]
  03a490  fst dword ptr [ebp + 0x1c]
  03a493  fstp dword ptr [0x4684]
  03a499  fstp dword ptr [0x467c]
  03a49f  fstp dword ptr [0x4680]
  03a4a5  test dword ptr [0x4684], 0x80000000
  03a4af  je 0x3a545
  03a4b5  fld1 
  03a4b7  fld dword ptr [0x4684]
  03a4bd  fdivp st(1)
  03a4bf  fld dword ptr [0x467c]
  03a4c5  fld dword ptr [0x4680]
  03a4cb  fmul qword ptr [0x4a78]
  03a4d1  fmul st(2)
  03a4d3  fxch st(1)
  03a4d5  fmul qword ptr [0x4938]
  03a4db  fmul st(2)
  03a4dd  fxch st(1)
  03a4df  fadd qword ptr [0x4930]
  03a4e5  fstp dword ptr [ebp + 0x18]
  03a4e8  fadd qword ptr [0x4928]
  03a4ee  fstp dword ptr [ebp + 0x14]
  03a4f1  fstp dword ptr [ebp + 0x10]
  03a4f4  mov eax, dword ptr [0x4658]
  03a4f9  cmp dword ptr [ebp], 0x3a5d4
  03a500  jne 0x3a507
  03a502  mov eax, dword ptr [0x465c]
L3a507:
  03a507  mov dword ptr [ebp + 0x28], eax
  03a50a  fld dword ptr [0x4684]
  03a510  fsub dword ptr [0x150d0]
  03a516  fmul dword ptr [0x150c0]
  03a51c  fmul qword ptr [0x4990]
  03a522  fchs 
  03a524  fistp dword ptr [0x4680]
  03a52a  mov eax, 0xffff
  03a52f  sub eax, dword ptr [0x4680]
  03a535  mov dword ptr [edi], eax
  03a537  add edi, 4
  03a53a  mov dword ptr [edi], ebp
  03a53c  add edi, 4
  03a53f  inc dword ptr [0x1663c]
L3a545:
  03a545  add ebp, 0x2c
  03a548  dec ecx
  03a549  jne 0x3a417
  03a54f  mov dword ptr [0x16640], edi
L3a555:
  03a555  wait 
  03a556  fnstcw word ptr [0x3946c]
  03a55c  push word ptr [0x3946c]
  03a563  or word ptr [0x3946c], 0xc00
  03a56c  fldcw word ptr [0x3946c]
  03a572  cmp dword ptr [0x1663c], 0
  03a579  je 0x3a950
  03a57f  call 0x170f7
  03a584  mov esi, dword ptr [0x16634]
  03a58a  add esi, 4
L3a58d:
  03a58d  mov ecx, dword ptr [esi]
  03a58f  push esi
  03a590  jmp dword ptr [ecx]
  03a592  mov esi, dword ptr [ecx + 8]
  03a595  mov edi, dword ptr [ecx + 0xc]
  03a598  fld dword ptr [esi + 0x14]
  03a59b  fld dword ptr [esi + 0x18]
  03a59e  fxch st(1)
  03a5a0  fstp dword ptr [0x2936c]
  03a5a6  fstp dword ptr [0x29370]
  03a5ac  fld dword ptr [edi + 0x14]
  03a5af  fld dword ptr [edi + 0x18]
  03a5b2  fxch st(1)
  03a5b4  fstp dword ptr [0x2937c]
  03a5ba  fstp dword ptr [0x29380]
  03a5c0  mov esi, 0x2936c
  03a5c5  mov edi, 0x2937c
  03a5ca  call 0x293a4
  03a5cf  jmp 0x3a940
  03a5d4  fld dword ptr [ecx + 0x28]
  03a5d7  fmul dword ptr [ecx + 0x1c]
  03a5da  fmul dword ptr [0x29690]
  03a5e0  fistp dword ptr [0x4688]
  03a5e6  mov eax, dword ptr [0x4688]
  03a5eb  shr eax, 8
  03a5ee  cmp eax, 0x3f
  03a5f1  jl 0x3a5f8
  03a5f3  mov eax, 0x3f
L3a5f8:
  03a5f8  cmp dword ptr [0x48dc], -1
  03a5ff  je 0x3a606
  03a601  mov eax, dword ptr [0x48dc]
L3a606:
  03a606  mov ebx, dword ptr [eax*4 + 0x4558]
  03a60d  mov dword ptr [0x296a4], ebx
  03a613  fld dword ptr [ecx + 0x28]
  03a616  fmul dword ptr [ecx + 0x1c]
  03a619  fmul dword ptr [eax*4 + 0x4458]
  03a620  fst dword ptr [0x296c0]
  03a626  fmul dword ptr [0x29690]
  03a62c  fistp dword ptr [0x296c8]
  03a632  fld dword ptr [ecx + 0x20]
  03a635  fmul qword ptr [0x4938]
  03a63b  fmul dword ptr [ecx + 0x10]
  03a63e  fstp dword ptr [0x2969c]
  03a644  fld dword ptr [ecx + 0x14]
  03a647  fsub dword ptr [0x2969c]
  03a64d  fstp dword ptr [0x296a8]
  03a653  fld dword ptr [ecx + 0x18]
  03a656  fsub dword ptr [0x2969c]
  03a65c  fstp dword ptr [0x296ac]
  03a662  fld dword ptr [ecx + 0x14]
  03a665  fadd dword ptr [0x2969c]
  03a66b  fstp dword ptr [0x296b0]
  03a671  fld dword ptr [ecx + 0x18]
  03a674  fadd dword ptr [0x2969c]
  03a67a  fstp dword ptr [0x296b4]
  03a680  call 0x298b7
  03a685  jmp 0x3a940
  03a68a  fld qword ptr [0x49f0]
  03a690  fsub dword ptr [ecx + 4]
  03a693  fld qword ptr [0x49f8]
  03a699  fsub dword ptr [ecx + 8]
  03a69c  fpatan 
  03a69e  fldpi 
  03a6a0  fmul qword ptr [0x4988]
  03a6a6  fdivp st(1)
  03a6a8  fmul qword ptr [0x4a68]
  03a6ae  fistp dword ptr [0x4688]
  03a6b4  mov eax, dword ptr [0x4688]
  03a6b9  and eax, 0xffff
  03a6be  mov ebx, 0x690
  03a6c3  cdq 
  03a6c4  idiv ebx
  03a6c6  mov esi, eax
  03a6c8  and esi, 3
  03a6cb  imul esi, esi, 0x28
  03a6ce  shr eax, 2
  03a6d1  imul eax, eax, 0x5300
  03a6d7  add eax, esi
  03a6d9  mov dword ptr [0x296a4], eax
  03a6de  fld dword ptr [ecx + 0x28]
  03a6e1  fmul dword ptr [ecx + 0x1c]
  03a6e4  fst dword ptr [0x296c0]
  03a6ea  fmul dword ptr [0x29690]
  03a6f0  fistp dword ptr [0x296c8]
  03a6f6  fld dword ptr [ecx + 0x20]
  03a6f9  fmul qword ptr [0x4938]
  03a6ff  fmul dword ptr [ecx + 0x10]
  03a702  fstp dword ptr [0x2969c]
  03a708  fld dword ptr [ecx + 0x24]
  03a70b  fmul qword ptr [0x4938]
  03a711  fmul dword ptr [ecx + 0x10]
  03a714  fstp dword ptr [0x296a0]
  03a71a  fld dword ptr [ecx + 0x14]
  03a71d  fsub dword ptr [0x2969c]
  03a723  fstp dword ptr [0x296a8]
  03a729  fld dword ptr [ecx + 0x18]
  03a72c  fsub dword ptr [0x296a0]
  03a732  fstp dword ptr [0x296ac]
  03a738  fld dword ptr [ecx + 0x14]
  03a73b  fadd dword ptr [0x2969c]
  03a741  fstp dword ptr [0x296b0]
  03a747  fld dword ptr [ecx + 0x18]
  03a74a  fadd dword ptr [0x296a0]
  03a750  fstp dword ptr [0x296b4]
  03a756  call 0x296d8
  03a75b  jmp 0x3a940
  03a760  mov esi, dword ptr [ecx + 0xc]
  03a763  mov edi, dword ptr [ecx + 0x10]
  03a766  mov ebp, dword ptr [ecx + 0x14]
  03a769  xor eax, eax
  03a76b  mov edx, eax
  03a76d  shl edx, 0x10
  03a770  mov eax, dword ptr [eax*4 + 0x48e4]
  03a777  mov dword ptr [0x48f8], eax
  03a77c  fild dword ptr [ecx + 0x2c]
  03a77f  fld dword ptr [esi + 0x1c]
  03a782  fmul qword ptr [0x4940]
  03a788  faddp st(1)
  03a78a  fistp dword ptr [0x4690]
  03a790  mov eax, dword ptr [0x4690]
  03a795  shl eax, 2
  03a798  cmp eax, 0
  03a79b  jg 0x3a79f
  03a79d  xor eax, eax
L3a79f:
  03a79f  cmp eax, 0xff
  03a7a4  jl 0x3a7ab
  03a7a6  mov eax, 0xff
L3a7ab:
  03a7ab  mov byte ptr [0x1fa31], al
  03a7b0  mov eax, dword ptr [ecx + 0x28]
  03a7b3  shl eax, 0x10
  03a7b6  mov ebx, eax
  03a7b8  add eax, dword ptr [0x4670]
  03a7be  add eax, edx
  03a7c0  mov dword ptr [0x1f924], eax
  03a7c5  add ebx, dword ptr [0x48b4]
  03a7cb  mov dword ptr [0x1f928], ebx
  03a7d1  mov eax, dword ptr [ecx + 4]
  03a7d4  cmp eax, 0x1fa32
  03a7d9  je 0x3a80b
  03a7db  cmp eax, 0x1fc7b
  03a7e0  je 0x3a80b
  03a7e2  fld dword ptr [esi + 0x38]
  03a7e5  fadd dword ptr [edi + 0x38]
  03a7e8  fadd dword ptr [ebp + 0x38]
  03a7eb  fstp dword ptr [0x48d0]
  03a7f1  mov ebx, dword ptr [0x490c]
  03a7f7  cmp dword ptr [0x48d0], ebx
  03a7fd  jne 0x3a80b
  03a7ff  mov byte ptr [0x1fa31], 0
  03a806  mov eax, 0x1fa32
L3a80b:
  03a80b  mov dword ptr [0x1f920], eax
  03a810  mov eax, dword ptr [esi]
  03a812  add eax, dword ptr [edi]
  03a814  add eax, dword ptr [ebp]
  03a817  jne 0x3a824
  03a819  call dword ptr [0x1f920]
  03a81f  jmp 0x3a940
L3a824:
  03a824  push dword ptr [0x15858]
  03a82a  mov dword ptr [0x14cb0], esi
  03a830  mov dword ptr [0x14cb4], edi
  03a836  mov dword ptr [0x14cb8], ebp
  03a83c  mov dword ptr [0x14cbc], esi
  03a842  mov esi, 0x14cb0
  03a847  mov edi, 0x14d00
  03a84c  mov dword ptr [0x14d50], 0
  03a856  call 0x14d54
  03a85b  call 0x14d54
  03a860  call 0x14d54
  03a865  cmp dword ptr [0x14d50], 3
  03a86c  jl 0x3a93a
  03a872  mov eax, dword ptr [0x14d00]
  03a877  mov dword ptr [edi], eax
  03a879  mov esi, 0x14d00
  03a87e  mov edi, 0x14cb0
  03a883  mov ebp, dword ptr [0x14d50]
  03a889  mov dword ptr [0x14d50], 0
L3a893:
  03a893  call 0x14e3a
  03a898  dec ebp
  03a899  jne 0x3a893
  03a89b  cmp dword ptr [0x14d50], 3
  03a8a2  jl 0x3a93a
  03a8a8  mov eax, dword ptr [0x14cb0]
  03a8ad  mov dword ptr [edi], eax
  03a8af  mov esi, 0x14cb0
  03a8b4  mov edi, 0x14d00
  03a8b9  mov ebp, dword ptr [0x14d50]
  03a8bf  mov dword ptr [0x14d50], 0
L3a8c9:
  03a8c9  call 0x14f28
  03a8ce  dec ebp
  03a8cf  jne 0x3a8c9
  03a8d1  cmp dword ptr [0x14d50], 3
  03a8d8  jl 0x3a93a
  03a8da  mov eax, dword ptr [0x14d00]
  03a8df  mov dword ptr [edi], eax
  03a8e1  mov esi, 0x14d00
  03a8e6  mov edi, 0x14cb0
  03a8eb  mov ebp, dword ptr [0x14d50]
  03a8f1  mov dword ptr [0x14d50], 0
L3a8fb:
  03a8fb  call 0x14fed
  03a900  dec ebp
  03a901  jne 0x3a8fb
  03a903  cmp dword ptr [0x14d50], 3
  03a90a  jl 0x3a93a
  03a90c  sub dword ptr [0x14d50], 2
  03a913  xor eax, eax
L3a915:
  03a915  mov esi, dword ptr [0x14cb0]
  03a91b  mov edi, dword ptr [eax + 0x14cb4]
  03a921  mov ebp, dword ptr [eax + 0x14cb8]
  03a927  push eax
  03a928  call dword ptr [0x1f920]
  03a92e  pop eax
  03a92f  add eax, 4
  03a932  dec dword ptr [0x14d50]
  03a938  jne 0x3a915
L3a93a:
  03a93a  pop dword ptr [0x15858]
L3a940:
  03a940  pop esi
  03a941  add esi, 8
  03a944  dec dword ptr [0x1663c]
  03a94a  jne 0x3a58d
L3a950:
  03a950  pop word ptr [0x3946c]
  03a957  fldcw word ptr [0x3946c]
  03a95d  cmp byte ptr [0x41cb], 1
  03a964  jne 0x3a978
  03a966  fld qword ptr [0x4958]
  03a96c  fadd qword ptr [0x4950]
  03a972  fstp qword ptr [0x4950]
L3a978:
  03a978  cmp byte ptr [0x41cc], 1
  03a97f  jne 0x3a995
  03a981  fld qword ptr [0x4958]
  03a987  fchs 
  03a989  fadd qword ptr [0x4950]
  03a98f  fstp qword ptr [0x4950]
L3a995:
  03a995  in al, 0x60
  03a997  cmp al, 1
  03a999  jne 0x3a9a7
  03a99b  mov dword ptr [0x4aeb0], 1
  03a9a5  jmp 0x3a9b5
L3a9a7:
  03a9a7  cmp word ptr [0x12bf], 0x1a
  03a9af  jl 0x3a0a2
L3a9b5:
