  045a10  pushfd 
  045a11  pushal 
  045a12  wait 
  045a13  fnsave dword ptr [0x4424e]
  045a19  cmp byte ptr [0x496da], 3
  045a20  je 0x45a2e
  045a22  mov eax, 4
  045a27  call 0x25c4
  045a2c  jmp 0x45a65
L45a2e:
  045a2e  inc byte ptr [0x496d9]
  045a34  cmp byte ptr [0x496d9], 7
  045a3b  jl 0x45a65
  045a3d  mov byte ptr [0x496d9], 0
  045a44  inc word ptr [0x12ca]
  045a4b  cmp word ptr [0x12ca], 0x40
  045a53  jl 0x45a65
  045a55  inc word ptr [0x12bf]
  045a5c  mov word ptr [0x12ca], 0
L45a65:
  045a65  inc dword ptr [0x469c]
  045a6b  inc dword ptr [0x46a4]
  045a71  cmp byte ptr [0x41d1], 1
  045a78  je 0x45eab
  045a7e  mov edi, dword ptr [0x4698]
  045a84  mov edi, dword ptr [edi*4 + 0x42e84]
  045a8b  cmp byte ptr [0x41b7], 1
  045a92  jne 0x45a99
  045a94  mov edi, 0x400
L45a99:
  045a99  mov ebp, dword ptr [0x4694]
  045a9f  mov edx, 0x3c8
  045aa4  xor eax, eax
  045aa6  out dx, al
  045aa7  inc edx
  045aa8  mov esi, 0xfffffd00
  045aad  xchg ebx, ebx
  045aaf  nop 
L45ab0:
  045ab0  xor eax, eax
  045ab2  xor ebx, ebx
  045ab4  xor ecx, ecx
  045ab6  mov al, byte ptr [esi + 0x435a0]
  045abc  mov bl, byte ptr [esi + 0x438a0]
  045ac2  mov cl, byte ptr [esi + 0x43ba0]
  045ac8  sub eax, ebx
  045aca  imul eax, edi
  045acd  sar eax, 0xa
  045ad0  add eax, ebx
  045ad2  sub eax, ecx
  045ad4  imul eax, ebp
  045ad7  sar eax, 0xa
  045ada  add eax, ecx
  045adc  out dx, al
  045add  inc esi
  045ade  jne 0x45ab0
  045ae0  cmp word ptr [0x12bf], 0x22
  045ae8  jl 0x45b13
  045aea  movzx eax, word ptr [0x12ca]
  045af1  and eax, 0x3f
  045af4  cmp eax, 0x20
  045af7  jl 0x45b13
  045af9  sub dword ptr [0x4694], 0xa
  045b00  cmp dword ptr [0x4694], 0
  045b07  jg 0x45b13
  045b09  mov dword ptr [0x4694], 0
L45b13:
  045b13  fild dword ptr [0x46ac]
  045b19  fdiv qword ptr [0x4a68]
  045b1f  fmul qword ptr [0x4990]
  045b25  fsin 
  045b27  fild dword ptr [0x46a8]
  045b2d  fdiv qword ptr [0x4a68]
  045b33  fmul qword ptr [0x4990]
  045b39  fcos 
  045b3b  fmulp st(1)
  045b3d  fsin 
  045b3f  mov dword ptr [0x459f0], 0x46
  045b49  fild dword ptr [0x459f0]
  045b4f  fmulp st(1)
  045b51  fistp dword ptr [0x4698]
  045b57  add dword ptr [0x4698], 0x40
  045b5e  and dword ptr [0x4698], 0x7f
  045b65  cmp dword ptr [0x43288], 0
  045b6c  jne 0x45bbc
  045b6e  neg ebp
  045b70  add ebp, 0x3ff
  045b76  mov dword ptr [0x459f4], ebp
  045b7c  fild dword ptr [0x459f4]
  045b82  fmul qword ptr [0x178a0]
  045b88  mov dword ptr [0x459f0], 0x12c
  045b92  fild dword ptr [0x459f0]
  045b98  fdivp st(1)
  045b9a  fadd qword ptr [0x178a0]
  045ba0  fld st(0)
  045ba2  fadd qword ptr [0x17898]
  045ba8  fstp qword ptr [0x17898]
  045bae  fadd qword ptr [0x178c8]
  045bb4  fstp qword ptr [0x178c8]
  045bba  jmp 0x45bce
L45bbc:
  045bbc  fld qword ptr [0x178b0]
  045bc2  fadd qword ptr [0x178b8]
  045bc8  fstp qword ptr [0x178b0]
L45bce:
  045bce  fld qword ptr [0x4bb0]
  045bd4  fadd qword ptr [0x4968]
  045bda  fstp qword ptr [0x4bb0]
  045be0  fld qword ptr [0x17880]
  045be6  fadd qword ptr [0x17888]
  045bec  fstp qword ptr [0x17880]
  045bf2  mov dword ptr [0x48d8], 0xffffffff
  045bfc  cmp byte ptr [0x419b], 1
  045c03  jne 0x45c0f
  045c05  mov dword ptr [0x48d8], 0
L45c0f:
  045c0f  cmp byte ptr [0x419c], 1
  045c16  jne 0x45c22
  045c18  mov dword ptr [0x48d8], 1
L45c22:
  045c22  cmp byte ptr [0x419d], 1
  045c29  jne 0x45c35
  045c2b  mov dword ptr [0x48d8], 2
L45c35:
  045c35  cmp byte ptr [0x419e], 1
  045c3c  jne 0x45c48
  045c3e  mov dword ptr [0x48d8], 3
L45c48:
  045c48  cmp byte ptr [0x419f], 1
  045c4f  jne 0x45c5b
  045c51  mov dword ptr [0x48d8], 4
L45c5b:
  045c5b  mov dword ptr [0x48dc], 0xffffffff
  045c65  cmp byte ptr [0x41a8], 1
  045c6c  jne 0x45c78
  045c6e  mov dword ptr [0x48dc], 0
L45c78:
  045c78  cmp byte ptr [0x41a9], 1
  045c7f  jne 0x45c8b
  045c81  mov dword ptr [0x48dc], 1
L45c8b:
  045c8b  cmp byte ptr [0x41aa], 1
  045c92  jne 0x45c9e
  045c94  mov dword ptr [0x48dc], 2
L45c9e:
  045c9e  cmp byte ptr [0x41ab], 1
  045ca5  jne 0x45cb1
  045ca7  mov dword ptr [0x48dc], 4
L45cb1:
  045cb1  cmp byte ptr [0x41ac], 1
  045cb8  jne 0x45cc4
  045cba  mov dword ptr [0x48dc], 8
L45cc4:
  045cc4  cmp byte ptr [0x41ad], 1
  045ccb  jne 0x45cd7
  045ccd  mov dword ptr [0x48dc], 0x10
L45cd7:
  045cd7  cmp word ptr [0x12bf], 0x1f
  045cdf  jl 0x45d10
  045ce1  mov word ptr [0x7f9e], 0
  045cea  fld dword ptr [0x43298]
  045cf0  fadd dword ptr [0x4329c]
  045cf6  fstp dword ptr [0x43298]
  045cfc  add dword ptr [0x46a8], 0xad1
  045d06  add dword ptr [0x46ac], 0x5f2
L45d10:
  045d10  fld dword ptr [0x7f30]
  045d16  fadd dword ptr [0x7f34]
  045d1c  fstp dword ptr [0x7f30]
  045d22  fld dword ptr [0x7f38]
  045d28  fadd dword ptr [0x7f3c]
  045d2e  fstp dword ptr [0x7f38]
  045d34  cmp byte ptr [0x41c4], 1
  045d3b  jne 0x45d47
  045d3d  mov eax, 0x29d9a
  045d42  mov dword ptr [0x4c00], eax
L45d47:
  045d47  cmp byte ptr [0x41c5], 1
  045d4e  jne 0x45d5a
  045d50  mov eax, 0x2a0f5
  045d55  mov dword ptr [0x4c00], eax
L45d5a:
  045d5a  cmp byte ptr [0x41c6], 1
  045d61  jne 0x45d6d
  045d63  mov eax, 0x2a30b
  045d68  mov dword ptr [0x4c00], eax
L45d6d:
  045d6d  cmp byte ptr [0x41b0], 1
  045d74  jne 0x45d86
  045d76  fld1 
  045d78  fchs 
  045d7a  fadd dword ptr [0x7fbc]
  045d80  fstp dword ptr [0x7fbc]
L45d86:
  045d86  cmp byte ptr [0x41be], 1
  045d8d  jne 0x45d9d
  045d8f  fld1 
  045d91  fadd dword ptr [0x7fbc]
  045d97  fstp dword ptr [0x7fbc]
L45d9d:
  045d9d  cmp byte ptr [0x41b1], 1
  045da4  jne 0x45db6
  045da6  fld1 
  045da8  fchs 
  045daa  fadd dword ptr [0x7fc0]
  045db0  fstp dword ptr [0x7fc0]
L45db6:
  045db6  cmp byte ptr [0x41bf], 1
  045dbd  jne 0x45dcd
  045dbf  fld1 
  045dc1  fadd dword ptr [0x7fc0]
  045dc7  fstp dword ptr [0x7fc0]
L45dcd:
  045dcd  cmp byte ptr [0x41b2], 1
  045dd4  jne 0x45de6
  045dd6  fld1 
  045dd8  fchs 
  045dda  fadd dword ptr [0x7fc4]
  045de0  fstp dword ptr [0x7fc4]
L45de6:
  045de6  cmp byte ptr [0x41c0], 1
  045ded  jne 0x45dfd
  045def  fld1 
  045df1  fadd dword ptr [0x7fc4]
  045df7  fstp dword ptr [0x7fc4]
L45dfd:
  045dfd  add dword ptr [0x7fb0], 0x2f0
  045e07  add dword ptr [0x7fb4], 0x1b3
  045e11  add dword ptr [0x7fb8], 0x470
  045e1b  cmp dword ptr [0x43bb0], 0
  045e22  jne 0x45e4d
  045e24  cmp dword ptr [0x43ba0], 0
  045e2b  jne 0x45e4d
  045e2d  cmp dword ptr [0x178a8], 0x410
  045e37  jl 0x45e4d
  045e39  mov dword ptr [0x43ba0], 1
  045e43  mov dword ptr [0x43bb0], 0
L45e4d:
  045e4d  cmp dword ptr [0x43ba0], 0
  045e54  je 0x45eab
  045e56  fld dword ptr [0x43ba4]
  045e5c  fadd dword ptr [0x43ba8]
  045e62  fstp dword ptr [0x43ba4]
  045e68  inc dword ptr [0x43bb0]
  045e6e  fld1 
  045e70  fstp dword ptr [0x459f0]
  045e76  mov eax, dword ptr [0x43ba4]
  045e7b  cmp eax, dword ptr [0x459f0]
  045e81  jb 0x45eab
  045e83  fldz 
  045e85  fstp dword ptr [0x43ba4]
  045e8b  mov dword ptr [0x43ba0], 0
  045e95  mov eax, dword ptr [0x43bb4]
  045e9a  mov ebx, dword ptr [0x4c00]
  045ea0  mov dword ptr [0x4c00], eax
  045ea5  mov dword ptr [0x43bb4], ebx
L45eab:
  045eab  wait 
  045eac  frstor dword ptr [0x4424e]
  045eb2  popal 
  045eb3  popfd 
  045eb4  ret 
  045eb5  add byte ptr [eax], al
  045eb7  add byte ptr [eax], al
  045eb9  add byte ptr [eax], al
  045ebb  add byte ptr [eax], al
  045ebd  add byte ptr [eax], al
  045ebf  add byte ptr [eax], al
  045ec1  add byte ptr [eax], al
  045ec3  add byte ptr [eax], al
  045ec5  add byte ptr [eax], al
  045ec7  add dl, bh
  045ec9  mov eax, 0x45fd0
  045ece  add eax, dword ptr [0x18]
  045ed4  shl eax, 0xc
  045ed7  shr ax, 0xc
  045edb  mov edx, 0x19
  045ee0  add dx, ax
  045ee3  mov word ptr [0x45fdf], dx
  045eea  xchg dword ptr gs:[0x20], eax
  045ef0  mov dword ptr [0x45ec0], eax
  045ef5  xor bl, bl
  045ef7  call dword ptr [0x24]
  045efd  mov dword ptr [0x45ec4], edx
  045f03  mov edx, 0x45f94
  045f08  call dword ptr [0x28]
  045f0e  mov al, 0x30
  045f10  out 0x43, al
  045f12  mov al, 0
  045f14  out 0x40, al
  045f16  mov al, 0x41
  045f18  out 0x40, al
  045f1a  sti 
  045f1b  ret 
  045f1c  cli 
  045f1d  mov edx, dword ptr [0x45ec0]
  045f23  mov dword ptr gs:[0x20], edx
  045f29  mov edx, dword ptr [0x45ec4]
  045f2f  xor bl, bl
  045f31  call dword ptr [0x28]
  045f37  mov al, 0x36
  045f39  out 0x43, al
  045f3b  xor al, al
  045f3d  out 0x40, al
  045f3f  out 0x40, al
  045f41  sti 
  045f42  ret 
  045f43  cli 
  045f44  mov al, 0x30
  045f46  out 0x43, al
  045f48  mov dx, 0x3da
L45f4c:
  045f4c  in al, dx
  045f4d  test al, 8
  045f4f  jne 0x45f4c
L45f51:
  045f51  in al, dx
  045f52  test al, 8
  045f54  je 0x45f51
  045f56  xor al, al
  045f58  out 0x40, al
  045f5a  out 0x40, al
L45f5c:
  045f5c  in al, dx
  045f5d  test al, 8
  045f5f  jne 0x45f5c
L45f61:
  045f61  in al, dx
  045f62  test al, 8
  045f64  je 0x45f61
  045f66  in al, 0x40
  045f68  mov ah, al
  045f6a  in al, 0x40
  045f6c  xchg ah, al
  045f6e  neg ax
  045f71  sub ax, 0xc0
  045f75  mov word ptr [0x45fe9], ax
  045f7b  mov bx, ax
L45f7e:
  045f7e  in al, dx
  045f7f  test al, 8
  045f81  je 0x45f7e
L45f83:
  045f83  in al, dx
  045f84  test al, 8
  045f86  jne 0x45f83
  045f88  mov al, bl
  045f8a  out 0x40, al
  045f8c  mov al, bh
  045f8e  out 0x40, al
  045f90  sti 
  045f91  ret 
  045f92  xchg ebx, ebx
  045f94  push eax
  045f95  push edx
  045f96  push ds
  045f97  mov ds, word ptr cs:[0x1e]
  045f9e  mov dx, 0x3da
  045fa2  in al, dx
  045fa3  and eax, 8
  045fa6  dec eax
  045fa7  neg eax
  045fa9  add word ptr [0x45fe9], ax
L45fb0:
  045fb0  in al, dx
  045fb1  test al, 8
  045fb3  je 0x45fb0
  045fb5  mov ax, word ptr [0x45fe9]
  045fbb  out 0x40, al
  045fbd  mov al, ah
  045fbf  out 0x40, al
  045fc1  call dword ptr [0x46060]
  045fc7  pop ds
  045fc8  pop edx
  045fc9  mov al, 0x20
  045fcb  out 0x20, al
  045fcd  pop eax
  045fce  sti 
  045fcf  iretd 
  045fd0  push eax
  045fd1  push edx
  045fd2  mov edx, 0x25ec03da
  045fd7  or byte ptr [eax], al
  045fd9  dec eax
  045fda  neg eax
  045fdc  add dword ptr cs:[esi], eax
  045fdf  add byte ptr [eax], al
L45fe1:
  045fe1  in al, dx
  045fe2  test al, 8
  045fe4  je 0x45fe1
  045fe6  jmp 0x45fe8
L45fe8:
  045fe8  mov eax, 0x40e64100
  045fed  mov al, ah
  045fef  out 0x40, al
  045ff1  pop edx
  045ff2  mov al, 0x20
  045ff4  out 0x20, al
  045ff6  pop eax
  045ff7  iretd 
  045ff8  imul esp, dword ptr [ecx + 0x6b], 0x6b
  045ffc  popal 
  045ffd  db 0x6b
  045ffe  popal 
  045fff  db 0x6b
