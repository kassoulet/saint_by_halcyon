  049080  pushfd 
  049081  pushal 
  049082  wait 
  049083  fnsave dword ptr [0x4787e]
  049089  cmp byte ptr [0x496da], 3
  049090  je 0x4909e
  049092  mov eax, 4
  049097  call 0x25c4
  04909c  jmp 0x490d5
L4909e:
  04909e  inc byte ptr [0x496d9]
  0490a4  cmp byte ptr [0x496d9], 7
  0490ab  jl 0x490d5
  0490ad  mov byte ptr [0x496d9], 0
  0490b4  inc word ptr [0x12ca]
  0490bb  cmp word ptr [0x12ca], 0x40
  0490c3  jl 0x490d5
  0490c5  inc word ptr [0x12bf]
  0490cc  mov word ptr [0x12ca], 0
L490d5:
  0490d5  inc dword ptr [0x469c]
  0490db  inc dword ptr [0x46a4]
  0490e1  cmp byte ptr [0x41d1], 1
  0490e8  je 0x49572
  0490ee  mov edi, dword ptr [0x4698]
  0490f4  mov edi, dword ptr [edi*4 + 0x46464]
  0490fb  cmp byte ptr [0x41b7], 1
  049102  jne 0x49109
  049104  mov edi, 0x400
L49109:
  049109  mov ebp, dword ptr [0x4694]
  04910f  mov edx, 0x3c8
  049114  xor eax, eax
  049116  out dx, al
  049117  inc edx
  049118  mov esi, 0xfffffd00
  04911d  xchg ebx, ebx
  04911f  nop 
L49120:
  049120  xor eax, eax
  049122  xor ebx, ebx
  049124  xor ecx, ecx
  049126  mov al, byte ptr [esi + 0x46b80]
  04912c  mov bl, byte ptr [esi + 0x46e80]
  049132  mov cl, byte ptr [esi + 0x47180]
  049138  sub eax, ebx
  04913a  imul eax, edi
  04913d  sar eax, 0xa
  049140  add eax, ebx
  049142  sub eax, ecx
  049144  imul eax, ebp
  049147  sar eax, 0xa
  04914a  add eax, ecx
  04914c  out dx, al
  04914d  inc esi
  04914e  jne 0x49120
  049150  cmp word ptr [0x12bf], 0x27
  049158  jae 0x491c5
  04915a  cmp word ptr [0x12bf], 0x26
  049162  jl 0x49173
  049164  movzx eax, word ptr [0x12ca]
  04916b  and eax, 0x3f
  04916e  cmp eax, 0x10
  049171  jae 0x491c5
L49173:
  049173  fild dword ptr [0x46ac]
  049179  fdiv qword ptr [0x4a68]
  04917f  fmul qword ptr [0x4990]
  049185  fsin 
  049187  fild dword ptr [0x46a8]
  04918d  fdiv qword ptr [0x4a68]
  049193  fmul qword ptr [0x4990]
  049199  fcos 
  04919b  fmulp st(1)
  04919d  fsin 
  04919f  mov dword ptr [0x49060], 0x46
  0491a9  fild dword ptr [0x49060]
  0491af  fmulp st(1)
  0491b1  fistp dword ptr [0x4698]
  0491b7  add dword ptr [0x4698], 0x40
  0491be  and dword ptr [0x4698], 0x7f
L491c5:
  0491c5  add dword ptr [0x4694], 4
  0491cc  cmp dword ptr [0x4694], 0x3ff
  0491d6  jl 0x491e2
  0491d8  mov dword ptr [0x4694], 0x3ff
L491e2:
  0491e2  cmp dword ptr [0x46868], 0
  0491e9  jne 0x4923b
  0491eb  neg ebp
  0491ed  add ebp, 0x3ff
  0491f3  xor ebp, ebp
  0491f5  mov dword ptr [0x49064], ebp
  0491fb  fild dword ptr [0x49064]
  049201  fmul qword ptr [0x178a0]
  049207  mov dword ptr [0x49060], 0x12c
  049211  fild dword ptr [0x49060]
  049217  fdivp st(1)
  049219  fadd qword ptr [0x178a0]
  04921f  fld st(0)
  049221  fadd qword ptr [0x17898]
  049227  fstp qword ptr [0x17898]
  04922d  fadd qword ptr [0x178c8]
  049233  fstp qword ptr [0x178c8]
  049239  jmp 0x4924d
L4923b:
  04923b  fld qword ptr [0x178b0]
  049241  fadd qword ptr [0x178b8]
  049247  fstp qword ptr [0x178b0]
L4924d:
  04924d  fld qword ptr [0x4bb0]
  049253  fadd qword ptr [0x4968]
  049259  fstp qword ptr [0x4bb0]
  04925f  fld qword ptr [0x17880]
  049265  fadd qword ptr [0x17888]
  04926b  fstp qword ptr [0x17880]
  049271  mov dword ptr [0x48d8], 0xffffffff
  04927b  cmp byte ptr [0x419b], 1
  049282  jne 0x4928e
  049284  mov dword ptr [0x48d8], 0
L4928e:
  04928e  cmp byte ptr [0x419c], 1
  049295  jne 0x492a1
  049297  mov dword ptr [0x48d8], 1
L492a1:
  0492a1  cmp byte ptr [0x419d], 1
  0492a8  jne 0x492b4
  0492aa  mov dword ptr [0x48d8], 2
L492b4:
  0492b4  cmp byte ptr [0x419e], 1
  0492bb  jne 0x492c7
  0492bd  mov dword ptr [0x48d8], 3
L492c7:
  0492c7  cmp byte ptr [0x419f], 1
  0492ce  jne 0x492da
  0492d0  mov dword ptr [0x48d8], 4
L492da:
  0492da  mov dword ptr [0x48dc], 0xffffffff
  0492e4  cmp byte ptr [0x41a8], 1
  0492eb  jne 0x492f7
  0492ed  mov dword ptr [0x48dc], 0
L492f7:
  0492f7  cmp byte ptr [0x41a9], 1
  0492fe  jne 0x4930a
  049300  mov dword ptr [0x48dc], 1
L4930a:
  04930a  cmp byte ptr [0x41aa], 1
  049311  jne 0x4931d
  049313  mov dword ptr [0x48dc], 2
L4931d:
  04931d  cmp byte ptr [0x41ab], 1
  049324  jne 0x49330
  049326  mov dword ptr [0x48dc], 4
L49330:
  049330  cmp byte ptr [0x41ac], 1
  049337  jne 0x49343
  049339  mov dword ptr [0x48dc], 8
L49343:
  049343  cmp byte ptr [0x41ad], 1
  04934a  jne 0x49356
  04934c  mov dword ptr [0x48dc], 0x10
L49356:
  049356  add dword ptr [0x46a8], 0xd6
  049360  add dword ptr [0x46ac], 0xfffffe8f
  04936a  fld dword ptr [0x7f30]
  049370  fadd dword ptr [0x7f34]
  049376  fstp dword ptr [0x7f30]
  04937c  fld dword ptr [0x7f38]
  049382  fadd dword ptr [0x7f3c]
  049388  fstp dword ptr [0x7f38]
  04938e  cmp byte ptr [0x41c4], 1
  049395  jne 0x493a1
  049397  mov eax, 0x29d9a
  04939c  mov dword ptr [0x4c00], eax
L493a1:
  0493a1  cmp byte ptr [0x41c5], 1
  0493a8  jne 0x493b4
  0493aa  mov eax, 0x2a0f5
  0493af  mov dword ptr [0x4c00], eax
L493b4:
  0493b4  cmp byte ptr [0x41c6], 1
  0493bb  jne 0x493c7
  0493bd  mov eax, 0x2a30b
  0493c2  mov dword ptr [0x4c00], eax
L493c7:
  0493c7  cmp byte ptr [0x41b0], 1
  0493ce  jne 0x493e0
  0493d0  fld1 
  0493d2  fchs 
  0493d4  fadd dword ptr [0x7fbc]
  0493da  fstp dword ptr [0x7fbc]
L493e0:
  0493e0  cmp byte ptr [0x41be], 1
  0493e7  jne 0x493f7
  0493e9  fld1 
  0493eb  fadd dword ptr [0x7fbc]
  0493f1  fstp dword ptr [0x7fbc]
L493f7:
  0493f7  cmp byte ptr [0x41b1], 1
  0493fe  jne 0x49410
  049400  fld1 
  049402  fchs 
  049404  fadd dword ptr [0x7fc0]
  04940a  fstp dword ptr [0x7fc0]
L49410:
  049410  cmp byte ptr [0x41bf], 1
  049417  jne 0x49427
  049419  fld1 
  04941b  fadd dword ptr [0x7fc0]
  049421  fstp dword ptr [0x7fc0]
L49427:
  049427  cmp byte ptr [0x41b2], 1
  04942e  jne 0x49440
  049430  fld1 
  049432  fchs 
  049434  fadd dword ptr [0x7fc4]
  04943a  fstp dword ptr [0x7fc4]
L49440:
  049440  cmp byte ptr [0x41c0], 1
  049447  jne 0x49457
  049449  fld1 
  04944b  fadd dword ptr [0x7fc4]
  049451  fstp dword ptr [0x7fc4]
L49457:
  049457  add dword ptr [0x7fe8], 0x3b8
  049461  add dword ptr [0x7fec], 0x1b3
  04946b  add dword ptr [0x7ff0], 0x72c
  049475  cmp dword ptr [0x47190], 0
  04947c  jne 0x494a7
  04947e  cmp dword ptr [0x47180], 0
  049485  jne 0x494a7
  049487  cmp dword ptr [0x178a8], 0x410
  049491  jl 0x494a7
  049493  mov dword ptr [0x47180], 1
  04949d  mov dword ptr [0x47190], 0
L494a7:
  0494a7  cmp dword ptr [0x47180], 0
  0494ae  je 0x49505
  0494b0  fld dword ptr [0x47184]
  0494b6  fadd dword ptr [0x47188]
  0494bc  fstp dword ptr [0x47184]
  0494c2  inc dword ptr [0x47190]
  0494c8  fld1 
  0494ca  fstp dword ptr [0x49060]
  0494d0  mov eax, dword ptr [0x47184]
  0494d5  cmp eax, dword ptr [0x49060]
  0494db  jb 0x49505
  0494dd  fldz 
  0494df  fstp dword ptr [0x47184]
  0494e5  mov dword ptr [0x47180], 0
  0494ef  mov eax, dword ptr [0x47194]
  0494f4  mov ebx, dword ptr [0x4c00]
  0494fa  mov dword ptr [0x4c00], eax
  0494ff  mov dword ptr [0x47194], ebx
L49505:
  049505  fld dword ptr [0x46878]
  04950b  fadd dword ptr [0x4687c]
  049511  fstp dword ptr [0x46878]
  049517  cmp dword ptr [0x178a8], 0x5f0
  049521  jl 0x4952d
  049523  mov dword ptr [0x4603c], 1
L4952d:
  04952d  cmp dword ptr [0x4603c], 0
  049534  je 0x49572
  049536  inc dword ptr [0x4604d]
  04953c  cmp dword ptr [0x4604d], 0xe
  049543  jl 0x49572
  049545  mov dword ptr [0x4604d], 0
  04954f  inc dword ptr [0x46051]
  049555  cmp dword ptr [0x46051], 0x16
  04955c  jl 0x49572
  04955e  mov dword ptr [0x46051], 0x15
  049568  mov dword ptr [0x4604d], 0xffffff9c
L49572:
  049572  wait 
  049573  frstor dword ptr [0x4787e]
  049579  popal 
  04957a  popfd 
  04957b  ret 
  04957c  add byte ptr [eax], al
  04957e  add byte ptr [eax], al
  049580  jo 0x4953f
  049582  add al, 0
  049584  movsd dword ptr es:[edi], dword ptr [esi]
  049585  inc byte ptr [eax]
  049587  db 0xf0
  049588  pop es
  049589  or byte ptr [eax], al
  04958b  add dl, bh
  04958d  mov eax, 0x49694
  049592  add eax, dword ptr [0x18]
  049598  shl eax, 0xc
  04959b  shr ax, 0xc
  04959f  mov edx, 0x19
  0495a4  add dx, ax
  0495a7  mov word ptr [0x496a3], dx
  0495ae  xchg dword ptr gs:[0x20], eax
  0495b4  mov dword ptr [0x49584], eax
  0495b9  xor bl, bl
  0495bb  call dword ptr [0x24]
  0495c1  mov dword ptr [0x49588], edx
  0495c7  mov edx, 0x49658
  0495cc  call dword ptr [0x28]
  0495d2  mov al, 0x30
  0495d4  out 0x43, al
  0495d6  mov al, 0
  0495d8  out 0x40, al
  0495da  mov al, 0x41
  0495dc  out 0x40, al
  0495de  sti 
  0495df  ret 
  0495e0  cli 
  0495e1  mov edx, dword ptr [0x49584]
  0495e7  mov dword ptr gs:[0x20], edx
  0495ed  mov edx, dword ptr [0x49588]
  0495f3  xor bl, bl
  0495f5  call dword ptr [0x28]
  0495fb  mov al, 0x36
  0495fd  out 0x43, al
  0495ff  xor al, al
  049601  out 0x40, al
  049603  out 0x40, al
  049605  sti 
  049606  ret 
  049607  cli 
  049608  mov al, 0x30
  04960a  out 0x43, al
  04960c  mov dx, 0x3da
L49610:
  049610  in al, dx
  049611  test al, 8
  049613  jne 0x49610
L49615:
  049615  in al, dx
  049616  test al, 8
  049618  je 0x49615
  04961a  xor al, al
  04961c  out 0x40, al
  04961e  out 0x40, al
L49620:
  049620  in al, dx
  049621  test al, 8
  049623  jne 0x49620
L49625:
  049625  in al, dx
  049626  test al, 8
  049628  je 0x49625
  04962a  in al, 0x40
  04962c  mov ah, al
  04962e  in al, 0x40
  049630  xchg ah, al
  049632  neg ax
  049635  sub ax, 0xc0
  049639  mov word ptr [0x496ad], ax
  04963f  mov bx, ax
L49642:
  049642  in al, dx
  049643  test al, 8
  049645  je 0x49642
L49647:
  049647  in al, dx
  049648  test al, 8
  04964a  jne 0x49647
  04964c  mov al, bl
  04964e  out 0x40, al
  049650  mov al, bh
  049652  out 0x40, al
  049654  sti 
  049655  ret 
  049656  xchg ebx, ebx
  049658  push eax
  049659  push edx
  04965a  push ds
  04965b  mov ds, word ptr cs:[0x1e]
  049662  mov dx, 0x3da
  049666  in al, dx
  049667  and eax, 8
  04966a  dec eax
  04966b  neg eax
  04966d  add word ptr [0x496ad], ax
L49674:
  049674  in al, dx
  049675  test al, 8
  049677  je 0x49674
  049679  mov ax, word ptr [0x496ad]
  04967f  out 0x40, al
  049681  mov al, ah
  049683  out 0x40, al
  049685  call dword ptr [0x49580]
  04968b  pop ds
  04968c  pop edx
  04968d  mov al, 0x20
  04968f  out 0x20, al
  049691  pop eax
  049692  sti 
  049693  iretd 
  049694  push eax
  049695  push edx
  049696  mov edx, 0x25ec03da
  04969b  or byte ptr [eax], al
  04969d  dec eax
  04969e  neg eax
  0496a0  add dword ptr cs:[esi], eax
  0496a3  sbb eax, 0x8a8ec00
  0496a8  je 0x496a5
  0496aa  jmp 0x496ac
L496ac:
  0496ac  mov eax, 0x40e64279
  0496b1  mov al, ah
  0496b3  out 0x40, al
  0496b5  pop edx
  0496b6  mov al, 0x20
  0496b8  out 0x20, al
  0496ba  pop eax
  0496bb  iretd 
  0496bc  insd dword ptr es:[edi], dx
  0496bd  jne 0x49732
  0496bf  popal 
  0496c0  xor ch, byte ptr [esi]
  0496c2  jae 0x496f7
  0496c4  js 0x496c6
L496c6:
  0496c6  popal 
  0496c7  insb byte ptr es:[edi], dx
  0496c8  imul esi, dword ptr [ebp + 0x2e], 0x6d
  0496cc  xchg esp, eax
  0496cd  push 0x676f6c00
  0496d2  outsd dx, dword ptr [esi]
  0496d3  xor ch, byte ptr [esi]
  0496d5  jae 0x4973a
  0496d7  js 0x496d9
L496d9:
  0496d9  add byte ptr [eax], al
  0496db  pop es
  0496dc  and byte ptr [edx], al
  0496de  adc dword ptr [0x6164200a], ecx
  0496e4  push 0x79636c61
  0496e9  outsd dx, dword ptr [esi]
  0496ea  outsb dx, byte ptr [esi]
  0496eb  sub esp, dword ptr [ecx + 0x6a]
  0496ef  outsd dx, dword ptr [esi]
  0496f0  jb 0x4975f
  0496f2  popal 
  0496f3  jae 0x49720
  0496f5  popal 
L496f7:
  0496f7  imul bp, word ptr [esi + 0x61], 0x216c
  0496fd  and byte ptr [eax], ah
  0496ff  db 0x20
