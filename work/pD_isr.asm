  037e00  pushfd 
  037e01  pushal 
  037e02  wait 
  037e03  fnsave dword ptr [0x36de2]
  037e09  cmp byte ptr [0x496da], 3
  037e10  je 0x37e1e
  037e12  mov eax, 4
  037e17  call 0x25c4
  037e1c  jmp 0x37e55
L37e1e:
  037e1e  inc byte ptr [0x496d9]
  037e24  cmp byte ptr [0x496d9], 7
  037e2b  jl 0x37e55
  037e2d  mov byte ptr [0x496d9], 0
  037e34  inc word ptr [0x12ca]
  037e3b  cmp word ptr [0x12ca], 0x40
  037e43  jl 0x37e55
  037e45  inc word ptr [0x12bf]
  037e4c  mov word ptr [0x12ca], 0
L37e55:
  037e55  inc dword ptr [0x36b10]
  037e5b  cmp byte ptr [0x41d1], 1
  037e62  je 0x37f32
  037e68  mov edi, 0x3ff
  037e6d  mov ebp, dword ptr [0x36b08]
  037e73  mov edx, 0x3c8
  037e78  xor eax, eax
  037e7a  out dx, al
  037e7b  inc edx
  037e7c  mov esi, 0xfffffd00
  037e81  xchg ebx, ebx
  037e83  nop 
L37e84:
  037e84  xor eax, eax
  037e86  xor ebx, ebx
  037e88  xor ecx, ecx
  037e8a  mov al, byte ptr [esi + 0x361e4]
  037e90  mov bl, byte ptr [esi + 0x364e4]
  037e96  mov cl, byte ptr [esi + 0x367e4]
  037e9c  sub eax, ebx
  037e9e  imul eax, edi
  037ea1  sar eax, 0xa
  037ea4  add eax, ebx
  037ea6  sub eax, ecx
  037ea8  imul eax, ebp
  037eab  sar eax, 0xa
  037eae  add eax, ecx
  037eb0  out dx, al
  037eb1  inc esi
  037eb2  jne 0x37e84
  037eb4  add dword ptr [0x36b08], 0x23
  037ebb  cmp dword ptr [0x36b08], 0x3ff
  037ec5  jl 0x37ed1
  037ec7  mov dword ptr [0x36b08], 0x3ff
L37ed1:
  037ed1  movzx eax, word ptr [0x12ca]
  037ed8  and eax, 0x1f
  037edb  cmp eax, 0x10
  037ede  jne 0x37eea
  037ee0  mov dword ptr [0x36b08], 0
L37eea:
  037eea  movzx eax, word ptr [0x12ca]
  037ef1  and eax, 0x1f
  037ef4  cmp eax, 0x18
  037ef7  jne 0x37f03
  037ef9  mov dword ptr [0x36b08], 0
L37f03:
  037f03  add dword ptr [0x36d7c], 0x26c
  037f0d  add dword ptr [0x36d80], 0x460
  037f17  add dword ptr [0x36d84], 0x6f
  037f1e  add dword ptr [0x36d88], 0x2e6
  037f28  add dword ptr [0x36d8c], 0x1a5
L37f32:
  037f32  wait 
  037f33  frstor dword ptr [0x36de2]
  037f39  popal 
  037f3a  popfd 
  037f3b  ret 
  037f3c  add byte ptr [eax], al
  037f3e  add byte ptr [eax], al
  037f40  add byte ptr [eax], al
  037f42  add byte ptr [eax], al
  037f44  add byte ptr [eax], al
  037f46  add byte ptr [eax], al
  037f48  cli 
  037f49  mov eax, 0x38050
  037f4e  add eax, dword ptr [0x18]
  037f54  shl eax, 0xc
  037f57  shr ax, 0xc
  037f5b  mov edx, 0x19
  037f60  add dx, ax
  037f63  mov word ptr [0x3805f], dx
  037f6a  xchg dword ptr gs:[0x20], eax
  037f70  mov dword ptr [0x37f40], eax
  037f75  xor bl, bl
  037f77  call dword ptr [0x24]
  037f7d  mov dword ptr [0x37f44], edx
  037f83  mov edx, 0x38014
  037f88  call dword ptr [0x28]
  037f8e  mov al, 0x30
  037f90  out 0x43, al
  037f92  mov al, 0
  037f94  out 0x40, al
  037f96  mov al, 0x41
  037f98  out 0x40, al
  037f9a  sti 
  037f9b  ret 
  037f9c  cli 
  037f9d  mov edx, dword ptr [0x37f40]
  037fa3  mov dword ptr gs:[0x20], edx
  037fa9  mov edx, dword ptr [0x37f44]
  037faf  xor bl, bl
  037fb1  call dword ptr [0x28]
  037fb7  mov al, 0x36
  037fb9  out 0x43, al
  037fbb  xor al, al
  037fbd  out 0x40, al
  037fbf  out 0x40, al
  037fc1  sti 
  037fc2  ret 
  037fc3  cli 
  037fc4  mov al, 0x30
  037fc6  out 0x43, al
  037fc8  mov dx, 0x3da
L37fcc:
  037fcc  in al, dx
  037fcd  test al, 8
  037fcf  jne 0x37fcc
L37fd1:
  037fd1  in al, dx
  037fd2  test al, 8
  037fd4  je 0x37fd1
  037fd6  xor al, al
  037fd8  out 0x40, al
  037fda  out 0x40, al
L37fdc:
  037fdc  in al, dx
  037fdd  test al, 8
  037fdf  jne 0x37fdc
L37fe1:
  037fe1  in al, dx
  037fe2  test al, 8
  037fe4  je 0x37fe1
  037fe6  in al, 0x40
  037fe8  mov ah, al
  037fea  in al, 0x40
  037fec  xchg ah, al
  037fee  neg ax
  037ff1  sub ax, 0xc0
  037ff5  mov word ptr [0x38069], ax
  037ffb  mov bx, ax
L37ffe:
  037ffe  in al, dx
  037fff  test al, 8
  038001  je 0x37ffe
L38003:
  038003  in al, dx
  038004  test al, 8
  038006  jne 0x38003
  038008  mov al, bl
  03800a  out 0x40, al
  03800c  mov al, bh
  03800e  out 0x40, al
  038010  sti 
  038011  ret 
  038012  xchg ebx, ebx
  038014  push eax
  038015  push edx
  038016  push ds
  038017  mov ds, word ptr cs:[0x1e]
  03801e  mov dx, 0x3da
  038022  in al, dx
  038023  and eax, 8
  038026  dec eax
  038027  neg eax
  038029  add word ptr [0x38069], ax
L38030:
  038030  in al, dx
  038031  test al, 8
  038033  je 0x38030
  038035  mov ax, word ptr [0x38069]
L3803b:
  03803b  out 0x40, al
  03803d  mov al, ah
  03803f  out 0x40, al
  038041  call dword ptr [0x38090]
  038047  pop ds
  038048  pop edx
  038049  mov al, 0x20
  03804b  out 0x20, al
  03804d  pop eax
  03804e  sti 
  03804f  iretd 
  038050  push eax
  038051  push edx
  038052  mov edx, 0x25ec03da
  038057  or byte ptr [eax], al
  038059  dec eax
  03805a  neg eax
  03805c  add dword ptr cs:[esi], eax
  03805f  add byte ptr [eax], al
L38061:
  038061  in al, dx
  038062  test al, 8
  038064  je 0x38061
  038066  jmp 0x38068
L38068:
  038068  mov eax, 0x40e64100
  03806d  mov al, ah
  03806f  out 0x40, al
  038071  pop edx
  038072  mov al, 0x20
  038074  out 0x20, al
  038076  pop eax
  038077  iretd 
  038078  je 0x380f2
  03807a  je 0x380a9
  03807c  popal 
  03807d  xor byte ptr [ecx], dh
  03807f  jae 0x380e5
  038082  js 0x38084
L38084:
  038084  insd dword ptr es:[edi], dx
  038085  popal 
  038086  popal 
  038087  popal 
  038088  jb 0x3808c
L3808c:
  03808c  xchg ebx, ebx
  03808e  xchg ebx, ebx
  038090  loopne 0x3803b
  038092  add eax, dword ptr [eax]
  038094  inc byte ptr [ebx]
  038096  add byte ptr [eax], al
  038098  hlt 
  038099  add eax, dword ptr [eax]
  03809b  add bh, dl
  03809d  add eax, dword ptr [eax]
  03809f  add byte ptr [eax + 0x68000003], ch
  0380a5  add eax, dword ptr [eax]
  0380a7  add byte ptr [ebx], bl
L380a9:
  0380a9  add eax, dword ptr [eax]
  0380ab  add bl, al
  0380ad  add al, byte ptr [eax]
  0380af  add byte ptr [ebx + 2], ah
  0380b2  add byte ptr [eax], al
  0380b4  inc dword ptr [ecx]
  0380b6  add byte ptr [eax], al
  0380b8  wait 
  0380b9  add dword ptr [eax], eax
  0380bb  add byte ptr [ebx], bh
  0380bd  add dword ptr [eax], eax
  0380bf  add bl, ah
  0380c1  add byte ptr [eax], al
  0380c3  add byte ptr [esi + 0x56000000], dl
  0380c9  add byte ptr [eax], al
  0380cb  add byte ptr [edi], ah
  0380cd  add byte ptr [eax], al
  0380cf  add byte ptr [edx], cl
  0380d1  add byte ptr [eax], al
  0380d3  add byte ptr [eax], al
  0380d5  add byte ptr [eax], al
  0380d7  add byte ptr [eax], al
  0380d9  add byte ptr [eax], al
  0380db  add byte ptr [ecx], al
  0380dd  add byte ptr [eax], al
  0380df  add byte ptr [edx], al
  0380e1  add byte ptr [eax], al
  0380e3  add byte ptr [ebx], al
L380e5:
  0380e5  add byte ptr [eax], al
  0380e7  add byte ptr [0x7000000], al
  0380ed  add byte ptr [eax], al
  0380ef  add byte ptr [edx], cl
  0380f1  add byte ptr [eax], al
  0380f3  add byte ptr [0x10000000], cl
  0380f9  add byte ptr [eax], al
  0380fb  add byte ptr [eax + eax], dl
  0380fe  add byte ptr [eax], al
  038100  sbb byte ptr [eax], al
  038102  add byte ptr [eax], al
  038104  sbb eax, 0x22000000
  038109  add byte ptr [eax], al
  03810b  add byte ptr [edi], ah
  03810d  add byte ptr [eax], al
  03810f  add byte ptr [0x33000000], ch
  038115  add byte ptr [eax], al
  038117  add byte ptr [ecx], bh
  038119  add byte ptr [eax], al
  03811b  add byte ptr [eax], al
  03811e  add byte ptr [eax], al
  038120  inc edi
  038121  add byte ptr [eax], al
  038123  add byte ptr [esi], cl
  038126  add byte ptr [eax], al
  038128  push esi
  038129  add byte ptr [eax], al
  03812b  add byte ptr [esi], bl
  03812e  add byte ptr [eax], al
  038130  add byte ptr [bx + si], al
  038133  add byte ptr [edi], ch
  038136  add byte ptr [eax], al
  038138  jns 0x3813a
L3813a:
  03813a  add byte ptr [eax], al
  03813c  add byte ptr [eax], 0
  03813f  add byte ptr [eax + eax + 0x960000], cl
  038146  add byte ptr [eax], al
  038148  mov al, byte ptr [0xaa000000]
  03814d  add byte ptr [eax], al
  03814f  add byte ptr [ebp - 0x40000000], dh
  038155  add byte ptr [eax], al
  038157  add ah, cl
  038159  add byte ptr [eax], al
  03815b  add bh, dl
  03815d  add byte ptr [eax], al
  03815f  add bl, ah
  038161  add byte ptr [eax], al
  038163  add bh, ch
  038165  add byte ptr [eax], al
  038167  add bl, bh
  038169  add byte ptr [eax], al
  03816b  add byte ptr [eax], cl
  03816d  add dword ptr [eax], eax
  03816f  add byte ptr [ecx + eax], dl
  038172  add byte ptr [eax], al
  038174  and dword ptr [ecx], eax
  038176  add byte ptr [eax], al
  038178  add dword ptr cs:[eax], eax
  03817b  add byte ptr [ebx], bh
  03817d  add dword ptr [eax], eax
  03817f  add byte ptr [ecx + 1], cl
  038182  add byte ptr [eax], al
  038184  push esi
  038185  add dword ptr [eax], eax
  038187  add byte ptr [ecx + eax], ah
  03818b  add byte ptr [edx + 1], dh
  03818e  add byte ptr [eax], al
  038190  jg 0x38193
  038192  add byte ptr [eax], al
  038194  lea eax, [ecx]
  038196  add byte ptr [eax], al
  038198  wait 
  038199  add dword ptr [eax], eax
  03819b  add byte ptr [ecx - 0x47ffffff], ch
  0381a1  add dword ptr [eax], eax
  0381a3  add dh, al
  0381a5  add dword ptr [eax], eax
  0381a7  add ah, dl
  0381a9  add dword ptr [eax], eax
  0381ab  add dl, ah
  0381ad  add dword ptr [eax], eax
  0381af  add cl, dh
  0381b1  add dword ptr [eax], eax
  0381b3  add bh, bh
  0381b5  add dword ptr [eax], eax
  0381b7  add byte ptr [0x1c000002], cl
  0381bd  add al, byte ptr [eax]
  0381bf  add byte ptr [edx], ch
  0381c1  add al, byte ptr [eax]
  0381c3  add byte ptr [eax], bh
  0381c5  add al, byte ptr [eax]
  0381c7  add byte ptr [esi + 2], al
  0381ca  add byte ptr [eax], al
  0381cc  push ebp
  0381cd  add al, byte ptr [eax]
  0381cf  add byte ptr [ebx + 2], ah
  0381d2  add byte ptr [eax], al
  0381d4  jno 0x381d8
  0381d6  add byte ptr [eax], al
L381d8:
  0381d8  jg 0x381dc
  0381da  add byte ptr [eax], al
L381dc:
  0381dc  mov word ptr [edx], es
  0381de  add byte ptr [eax], al
  0381e0  lcall 2, 0xa8000002
  0381e7  add byte ptr [ebp - 0x3cfffffe], dh
  0381ed  add al, byte ptr [eax]
  0381ef  add al, dl
  0381f1  add al, byte ptr [eax]
  0381f3  add ch, bl
  0381f5  add al, byte ptr [eax]
  0381f7  add dl, ch
  0381f9  add al, byte ptr [eax]
  0381fb  add dh, dh
  0381fd  add al, byte ptr [eax]
  0381ff  db 0x00
