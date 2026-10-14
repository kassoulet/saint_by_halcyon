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
L37f48:
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
L37f9c:
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
L37fc3:
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
  0381ff  add byte ptr [ebx], al
  038201  add eax, dword ptr [eax]
  038203  add byte ptr [edi], cl
  038205  add eax, dword ptr [eax]
  038207  add byte ptr [ebx], bl
  038209  add eax, dword ptr [eax]
  03820b  add byte ptr [edi], ah
  03820d  add eax, dword ptr [eax]
  03820f  add byte ptr [edx], dh
  038211  add eax, dword ptr [eax]
  038213  add byte ptr [esi], bh
  038215  add eax, dword ptr [eax]
  038217  add byte ptr [ecx + 3], cl
  03821a  add byte ptr [eax], al
  03821c  push esp
  03821d  add eax, dword ptr [eax]
  03821f  add byte ptr [esi + 3], bl
  038222  add byte ptr [eax], al
  038224  push 0x72000003
  038229  add eax, dword ptr [eax]
  03822b  add byte ptr [ebx + eax], bh
  03822f  add byte ptr [ebp - 0x70fffffd], al
  038235  add eax, dword ptr [eax]
  038237  add byte ptr [edi - 0x5ffffffd], dl
  03823d  add eax, dword ptr [eax]
  03823f  add byte ptr [eax - 0x4ffffffd], ch
  038245  add eax, dword ptr [eax]
  038247  add byte ptr [edi - 0x41fffffd], dh
  03824d  add eax, dword ptr [eax]
  03824f  add ch, al
  038251  add eax, dword ptr [eax]
  038253  add bl, cl
  038255  add eax, dword ptr [eax]
  038257  add cl, dl
  038259  add eax, dword ptr [eax]
  03825b  add bh, dl
  03825d  add eax, dword ptr [eax]
  03825f  add ah, bl
  038261  add eax, dword ptr [eax]
  038263  add cl, ah
  038265  add eax, dword ptr [eax]
  038267  add dh, ah
  038269  add eax, dword ptr [eax]
  03826b  add dl, ch
  03826d  add eax, dword ptr [eax]
  03826f  add dh, ch
  038271  add eax, dword ptr [eax]
  038273  add cl, dh
  038275  add eax, dword ptr [eax]
  038277  add ah, dh
  038279  add eax, dword ptr [eax]
  03827b  add bh, dh
  03827d  add eax, dword ptr [eax]
  03827f  add cl, bh
  038281  add eax, dword ptr [eax]
  038283  add bl, bh
  038285  add eax, dword ptr [eax]
  038287  add ah, bh
  038289  add eax, dword ptr [eax]
  03828b  add ch, bh
  03828d  add eax, dword ptr [eax]
  03828f  add dh, bh
  038291  add eax, dword ptr [eax]
  038293  add byte ptr [eax], al
  038295  add byte ptr [eax], al
  038297  add byte ptr [eax], al
  038299  add byte ptr [eax], al
  03829b  add byte ptr [eax], al
  03829d  add byte ptr [eax], al
  03829f  add byte ptr [eax], al
  0382a1  add byte ptr [eax], al
  0382a3  add byte ptr [eax], al
  0382a5  add byte ptr [eax], al
  0382a7  add byte ptr [eax], al
  0382a9  add byte ptr [eax], al
  0382ab  add byte ptr [eax], al
  0382ad  add byte ptr [eax], al
  0382af  add byte ptr [eax], al
  0382b1  add byte ptr [eax], al
  0382b3  add byte ptr [eax], al
  0382b5  add byte ptr [eax], al
  0382b7  add byte ptr [eax], al
  0382b9  add byte ptr [eax], al
  0382bb  add byte ptr [eax], al
  0382bd  add byte ptr [eax], al
  0382bf  add byte ptr [eax], al
  0382c1  add byte ptr [eax], al
  0382c3  add byte ptr [eax], al
  0382c5  add byte ptr [eax], al
  0382c7  add byte ptr [eax], al
  0382c9  add byte ptr [eax], al
  0382cb  add byte ptr [eax], al
  0382cd  add byte ptr [eax], al
  0382cf  add byte ptr [eax], al
  0382d1  add byte ptr [eax], al
  0382d3  add byte ptr [eax], al
  0382d5  add byte ptr [eax], al
  0382d7  add byte ptr [eax], al
  0382d9  add byte ptr [eax], al
  0382db  add byte ptr [eax], al
  0382dd  add byte ptr [eax], al
  0382df  add byte ptr [eax], al
  0382e1  add byte ptr [eax], al
  0382e3  add byte ptr [eax], al
  0382e5  add byte ptr [eax], al
  0382e7  add byte ptr [eax], al
  0382e9  add byte ptr [eax], al
  0382eb  add byte ptr [eax], al
  0382ed  add byte ptr [eax], al
  0382ef  add byte ptr [eax], al
  0382f1  add byte ptr [eax], al
  0382f3  add byte ptr [eax], al
  0382f5  add byte ptr [eax], al
  0382f7  add byte ptr [eax], al
  0382f9  add byte ptr [eax], al
  0382fb  add byte ptr [eax], al
  0382fd  add byte ptr [eax], al
  0382ff  add byte ptr [eax], al
  038301  add byte ptr [eax], al
  038303  add byte ptr [eax], al
  038305  add byte ptr [eax], al
  038307  add byte ptr [eax], al
  038309  add byte ptr [eax], al
  03830b  add byte ptr [eax], al
  03830d  add byte ptr [eax], al
  03830f  add byte ptr [eax], al
  038311  add byte ptr [eax], al
  038313  add byte ptr [eax], al
  038315  add byte ptr [eax], al
  038317  add byte ptr [eax], al
  038319  add byte ptr [eax], al
  03831b  add byte ptr [eax], al
  03831d  add byte ptr [eax], al
  03831f  add byte ptr [eax], al
  038321  add byte ptr [eax], al
  038323  add byte ptr [eax], al
  038325  add byte ptr [eax], al
  038327  add byte ptr [eax], al
  038329  add byte ptr [eax], al
  03832b  add byte ptr [eax], al
  03832d  add byte ptr [eax], al
  03832f  add byte ptr [eax], al
  038331  add byte ptr [eax], al
  038333  add byte ptr [eax], al
  038335  add byte ptr [eax], al
  038337  add byte ptr [eax], al
  038339  add byte ptr [eax], al
  03833b  add byte ptr [eax], al
  03833d  add byte ptr [eax], al
  03833f  add byte ptr [eax], al
  038341  add byte ptr [eax], al
  038343  add byte ptr [eax], al
  038345  add byte ptr [eax], al
  038347  add byte ptr [eax], al
  038349  add byte ptr [eax], al
  03834b  add byte ptr [eax], al
  03834d  add byte ptr [eax], al
  03834f  add byte ptr [eax], al
  038351  add byte ptr [eax], al
  038353  add byte ptr [eax], al
  038355  add byte ptr [eax], al
  038357  add byte ptr [eax], al
  038359  add byte ptr [eax], al
  03835b  add byte ptr [eax], al
  03835d  add byte ptr [eax], al
  03835f  add byte ptr [eax], al
  038361  add byte ptr [eax], al
  038363  add byte ptr [eax], al
  038365  add byte ptr [eax], al
  038367  add byte ptr [eax], al
  038369  add byte ptr [eax], al
  03836b  add byte ptr [eax], al
  03836d  add byte ptr [eax], al
  03836f  add byte ptr [eax], al
  038371  add byte ptr [eax], al
  038373  add byte ptr [eax], al
  038375  add byte ptr [eax], al
  038377  add byte ptr [eax], al
  038379  add byte ptr [eax], al
  03837b  add byte ptr [eax], al
  03837d  add byte ptr [eax], al
  03837f  add byte ptr [eax], al
  038381  add byte ptr [eax], al
  038383  add byte ptr [eax], al
  038385  add byte ptr [eax], al
  038387  add byte ptr [eax], al
  038389  add byte ptr [eax], al
  03838b  add byte ptr [eax], al
  03838d  add byte ptr [eax], al
  03838f  add byte ptr [eax], al
  038391  add byte ptr [eax], al
  038393  add byte ptr [eax], al
  038395  add byte ptr [eax], al
  038397  add byte ptr [eax], al
  038399  add byte ptr [eax], al
  03839b  add byte ptr [eax], al
  03839d  add byte ptr [eax], al
  03839f  add byte ptr [eax], al
  0383a1  add byte ptr [eax], al
  0383a3  add byte ptr [eax], al
  0383a5  add byte ptr [eax], al
  0383a7  add byte ptr [eax], al
  0383a9  add byte ptr [eax], al
  0383ab  add byte ptr [eax], al
  0383ad  add byte ptr [eax], al
  0383af  add byte ptr [eax], al
  0383b1  add byte ptr [eax], al
  0383b3  add byte ptr [eax], al
  0383b5  add byte ptr [eax], al
  0383b7  add byte ptr [eax], al
  0383b9  add byte ptr [eax], al
  0383bb  add byte ptr [eax], al
  0383bd  add byte ptr [eax], al
  0383bf  add byte ptr [eax], al
  0383c1  add byte ptr [eax], al
  0383c3  add byte ptr [eax], al
  0383c5  add byte ptr [eax], al
  0383c7  add byte ptr [eax], al
  0383c9  add byte ptr [eax], al
  0383cb  add byte ptr [eax], al
  0383cd  add byte ptr [eax], al
  0383cf  add byte ptr [eax], al
  0383d1  add byte ptr [eax], al
  0383d3  add byte ptr [eax], al
  0383d5  add byte ptr [eax], al
  0383d7  add byte ptr [eax], al
  0383d9  add byte ptr [eax], al
  0383db  add byte ptr [eax], al
  0383dd  add byte ptr [eax], al
  0383df  add byte ptr [eax], al
  0383e1  add byte ptr [eax], al
  0383e3  add byte ptr [eax], al
  0383e5  add byte ptr [eax], al
  0383e7  add byte ptr [eax], al
  0383e9  add byte ptr [eax], al
  0383eb  add byte ptr [eax], al
  0383ed  add byte ptr [eax], al
  0383ef  add byte ptr [eax], al
  0383f1  add byte ptr [eax], al
  0383f3  add byte ptr [eax], al
  0383f5  add byte ptr [eax], al
  0383f7  add byte ptr [eax], al
  0383f9  add byte ptr [eax], al
  0383fb  add byte ptr [eax], al
  0383fd  add byte ptr [eax], al
  0383ff  add byte ptr [eax], al
  038401  add byte ptr [eax], al
  038403  add byte ptr [eax], al
  038405  add byte ptr [eax], al
  038407  add byte ptr [eax], al
  038409  add byte ptr [eax], al
  03840b  add byte ptr [eax], al
  03840d  add byte ptr [eax], al
  03840f  add byte ptr [eax], al
  038411  add byte ptr [eax], al
  038413  add byte ptr [eax], al
  038415  add byte ptr [eax], al
  038417  add byte ptr [eax], al
  038419  add byte ptr [eax], al
  03841b  add byte ptr [eax], al
  03841d  add byte ptr [eax], al
  03841f  add byte ptr [eax], al
  038421  add byte ptr [eax], al
  038423  add byte ptr [eax], al
  038425  add byte ptr [eax], al
  038427  add byte ptr [eax], al
  038429  add byte ptr [eax], al
  03842b  add byte ptr [eax], al
  03842d  add byte ptr [eax], al
  03842f  add byte ptr [eax], al
  038431  add byte ptr [eax], al
  038433  add byte ptr [eax], al
  038435  add byte ptr [eax], al
  038437  add byte ptr [eax], al
  038439  add byte ptr [eax], al
  03843b  add byte ptr [eax], al
  03843d  add byte ptr [eax], al
  03843f  add byte ptr [eax], al
  038441  add byte ptr [eax], al
  038443  add byte ptr [eax], al
  038445  add byte ptr [eax], al
  038447  add byte ptr [eax], al
  038449  add byte ptr [eax], al
  03844b  add byte ptr [eax], al
  03844d  add byte ptr [eax], al
  03844f  add byte ptr [eax], al
  038451  add byte ptr [eax], al
  038453  add byte ptr [eax], al
  038455  add byte ptr [eax], al
  038457  add byte ptr [eax], al
  038459  add byte ptr [eax], al
  03845b  add byte ptr [eax], al
  03845d  add byte ptr [eax], al
  03845f  add byte ptr [eax], al
  038461  add byte ptr [eax], al
  038463  add byte ptr [eax], al
  038465  add byte ptr [eax], al
  038467  add byte ptr [eax], al
  038469  add byte ptr [eax], al
  03846b  add byte ptr [eax], al
  03846d  add byte ptr [eax], al
  03846f  add byte ptr [eax], al
  038471  add byte ptr [eax], al
  038473  add byte ptr [eax], al
  038475  add byte ptr [eax], al
  038477  add byte ptr [eax], al
  038479  add byte ptr [eax], al
  03847b  add byte ptr [eax], al
  03847d  add byte ptr [eax], al
  03847f  add byte ptr [eax], al
  038481  add byte ptr [eax], al
  038483  add byte ptr [eax], al
  038485  add byte ptr [eax], al
  038487  add byte ptr [eax], al
  038489  add byte ptr [eax], al
  03848b  add byte ptr [eax], al
  03848d  add byte ptr [eax], al
  03848f  add byte ptr [eax], al
  038491  add byte ptr [eax], al
  038493  add bh, bh
  038495  add eax, dword ptr [eax]
  038497  add bh, bh
  038499  add eax, dword ptr [eax]
  03849b  add bh, bh
  03849d  add eax, dword ptr [eax]
  03849f  add bh, bh
  0384a1  add eax, dword ptr [eax]
  0384a3  add bh, bh
  0384a5  add eax, dword ptr [eax]
  0384a7  add bh, bh
  0384a9  add eax, dword ptr [eax]
  0384ab  add bh, bh
  0384ad  add eax, dword ptr [eax]
  0384af  add bh, bh
  0384b1  add eax, dword ptr [eax]
  0384b3  add bh, bh
  0384b5  add eax, dword ptr [eax]
  0384b7  add dh, bh
  0384b9  add eax, dword ptr [eax]
  0384bb  add dh, bh
  0384bd  add eax, dword ptr [eax]
  0384bf  add dh, bh
  0384c1  add eax, dword ptr [eax]
  0384c3  add ch, bh
  0384c5  add eax, dword ptr [eax]
  0384c7  add ah, bh
  0384c9  add eax, dword ptr [eax]
  0384cb  add bl, bh
  0384cd  add eax, dword ptr [eax]
  0384cf  add dl, bh
  0384d1  add eax, dword ptr [eax]
  0384d3  add al, bh
  0384d5  add eax, dword ptr [eax]
  0384d7  add bh, dh
  0384d9  add eax, dword ptr [eax]
  0384db  add ch, dh
  0384dd  add eax, dword ptr [eax]
  0384df  add dl, dh
  0384e1  add eax, dword ptr [eax]
  0384e3  add bh, ch
  0384e5  add eax, dword ptr [eax]
  0384e7  add ah, ch
  0384e9  add eax, dword ptr [eax]
  0384eb  add al, ch
  0384ed  add eax, dword ptr [eax]
  0384ef  add bl, ah
  0384f1  add eax, dword ptr [eax]
  0384f3  add dh, bl
  0384f5  add eax, dword ptr [eax]
  0384f7  add al, bl
  0384f9  add eax, dword ptr [eax]
  0384fb  add cl, dl
  0384fd  add eax, dword ptr [eax]
  0384ff  add dl, cl
  038501  add eax, dword ptr [eax]
  038503  add dl, al
  038505  add eax, dword ptr [eax]
  038507  add byte ptr [eax - 0x51fffffd], bh
  03850d  add eax, dword ptr [eax]
  03850f  add byte ptr [ebx - 0x69fffffd], ah
  038515  add eax, dword ptr [eax]
  038517  add byte ptr [eax + 0x79000003], cl
  03851d  add eax, dword ptr [eax]
  03851f  add byte ptr [ecx + 3], ch
  038522  add byte ptr [eax], al
  038524  push edi
  038525  add eax, dword ptr [eax]
  038527  add byte ptr [ebx + eax], al
  03852b  add byte ptr [esi], ch
  03852d  add eax, dword ptr [eax]
  03852f  add byte ptr [eax], bl
  038531  add eax, dword ptr [eax]
  038533  add bh, bh
  038535  add al, byte ptr [eax]
  038537  add ah, ah
  038539  add al, byte ptr [eax]
  03853b  add al, cl
  03853d  add al, byte ptr [eax]
  03853f  add byte ptr [ecx - 0x77fffffe], ch
  038545  add al, byte ptr [eax]
  038547  add byte ptr [ebp + 2], ah
  03854a  add byte ptr [eax], al
  03854c  aas 
  03854d  add al, byte ptr [eax]
  03854f  add byte ptr [edi], dl
  038551  add al, byte ptr [eax]
  038553  add ah, ch
  038555  add dword ptr [eax], eax
  038557  add byte ptr [edi - 0x71ffffff], bh
  03855d  add dword ptr [eax], eax
  03855f  add byte ptr [edx + 1], bl
  038562  add byte ptr [eax], al
  038564  and al, 1
  038566  add byte ptr [eax], al
  038568  ljmp 0:0xad000000
  03856f  add byte ptr [eax + eax], ch
  038573  add byte ptr [eax], ch
  038575  add byte ptr [eax], al
  038577  add byte ptr [eax], al
  038579  add byte ptr [eax], al
  03857b  add byte ptr [eax], al
  03857d  add byte ptr [eax], al
  03857f  add byte ptr [eax], al
  038581  add byte ptr [eax], al
  038583  add byte ptr [eax], al
  038585  add byte ptr [eax], al
  038587  add byte ptr [eax], al
  038589  add byte ptr [eax], al
  03858b  add byte ptr [eax], al
  03858d  add byte ptr [eax], al
  03858f  add byte ptr [eax], al
  038591  add byte ptr [eax], al
  038593  add byte ptr [eax], al
  038595  add byte ptr [eax], al
  038597  add byte ptr [eax], al
  038599  add byte ptr [eax], al
  03859b  add byte ptr [eax], al
  03859d  add byte ptr [eax], al
  03859f  add byte ptr [eax], al
  0385a1  add byte ptr [eax], al
  0385a3  add byte ptr [eax], al
  0385a5  add byte ptr [eax], al
  0385a7  add byte ptr [eax], al
  0385a9  add byte ptr [eax], al
  0385ab  add byte ptr [eax], al
  0385ad  add byte ptr [eax], al
  0385af  add byte ptr [eax], ch
  0385b1  add byte ptr [eax], al
  0385b3  add byte ptr [eax + eax], ch
  0385b7  add byte ptr [ebp - 0x16000000], ch
  0385bd  add byte ptr [eax], al
  0385bf  add byte ptr [ecx + eax], ah
  0385c2  add byte ptr [eax], al
  0385c4  pop edx
  0385c5  add dword ptr [eax], eax
  0385c7  add byte ptr [esi - 0x40ffffff], cl
  0385cd  add dword ptr [eax], eax
  0385cf  add ah, ch
  0385d1  add dword ptr [eax], eax
  0385d3  add byte ptr [edi], dl
  0385d5  add al, byte ptr [eax]
  0385d7  add byte ptr [edi], bh
  0385d9  add al, byte ptr [eax]
  0385db  add byte ptr [ebp + 2], ah
  0385de  add byte ptr [eax], al
  0385e0  mov byte ptr [edx], al
  0385e2  add byte ptr [eax], al
  0385e4  test eax, 0xc8000002
  0385e9  add al, byte ptr [eax]
  0385eb  add ah, ah
  0385ed  add al, byte ptr [eax]
  0385ef  add bh, bh
  0385f1  add al, byte ptr [eax]
  0385f3  add byte ptr [eax], bl
  0385f5  add eax, dword ptr [eax]
  0385f7  add byte ptr [esi], ch
  0385f9  add eax, dword ptr [eax]
  0385fb  add byte ptr [ebx + eax], al
  0385ff  add byte ptr [edi + 3], dl
  038602  add byte ptr [eax], al
  038604  imul eax, dword ptr [ebx], 0x3790000
  03860a  add byte ptr [eax], al
  03860c  mov byte ptr [ebx], al
  03860e  add byte ptr [eax], al
  038610  xchg esi, eax
  038611  add eax, dword ptr [eax]
  038613  add byte ptr [ebx - 0x51fffffd], ah
  038619  add eax, dword ptr [eax]
  03861b  add byte ptr [eax - 0x3dfffffd], bh
  038621  add eax, dword ptr [eax]
  038623  add dl, cl
  038625  add eax, dword ptr [eax]
  038627  add cl, dl
  038629  add eax, dword ptr [eax]
  03862b  add al, bl
  03862d  add eax, dword ptr [eax]
  03862f  add dh, bl
  038631  add eax, dword ptr [eax]
  038633  add bl, ah
  038635  add eax, dword ptr [eax]
  038637  add al, ch
  038639  add eax, dword ptr [eax]
  03863b  add ah, ch
  03863d  add eax, dword ptr [eax]
  03863f  add bh, ch
  038641  add eax, dword ptr [eax]
  038643  add dl, dh
  038645  add eax, dword ptr [eax]
  038647  add ch, dh
  038649  add eax, dword ptr [eax]
  03864b  add bh, dh
  03864d  add eax, dword ptr [eax]
  03864f  add al, bh
  038651  add eax, dword ptr [eax]
  038653  add dl, bh
  038655  add eax, dword ptr [eax]
  038657  add bl, bh
  038659  add eax, dword ptr [eax]
  03865b  add ah, bh
  03865d  add eax, dword ptr [eax]
  03865f  add ch, bh
  038661  add eax, dword ptr [eax]
  038663  add dh, bh
  038665  add eax, dword ptr [eax]
  038667  add dh, bh
  038669  add eax, dword ptr [eax]
  03866b  add dh, bh
  03866d  add eax, dword ptr [eax]
  03866f  add bh, bh
  038671  add eax, dword ptr [eax]
  038673  add bh, bh
  038675  add eax, dword ptr [eax]
  038677  add bh, bh
  038679  add eax, dword ptr [eax]
  03867b  add bh, bh
  03867d  add eax, dword ptr [eax]
  03867f  add bh, bh
  038681  add eax, dword ptr [eax]
  038683  add bh, bh
  038685  add eax, dword ptr [eax]
  038687  add bh, bh
  038689  add eax, dword ptr [eax]
  03868b  add bh, bh
  03868d  add eax, dword ptr [eax]
  03868f  add bh, bh
  038691  add eax, dword ptr [eax]
  038693  add byte ptr [eax], al
  038695  add byte ptr [eax], al
  038697  add byte ptr [eax], al
  038699  add byte ptr [eax], al
  03869b  add byte ptr [eax], al
  03869d  add byte ptr [eax], al
  03869f  add byte ptr [eax], al
  0386a1  add byte ptr [eax], al
  0386a3  add byte ptr [eax], al
  0386a5  add byte ptr [eax], al
  0386a7  add byte ptr [eax], al
  0386a9  add byte ptr [eax], al
  0386ab  add byte ptr [eax], al
  0386ad  add byte ptr [eax], al
  0386af  add byte ptr [eax], al
  0386b1  add byte ptr [eax], al
  0386b3  add byte ptr [eax], al
  0386b5  add byte ptr [eax], al
  0386b7  add byte ptr [eax], al
  0386b9  add byte ptr [eax], al
  0386bb  add byte ptr [eax], al
  0386bd  add byte ptr [eax], al
  0386bf  add byte ptr [eax], al
  0386c1  add byte ptr [eax], al
  0386c3  add byte ptr [eax], al
  0386c5  add byte ptr [eax], al
  0386c7  add byte ptr [eax], al
  0386c9  add byte ptr [eax], al
  0386cb  add byte ptr [eax], al
  0386cd  add byte ptr [eax], al
  0386cf  add byte ptr [eax], al
  0386d1  add byte ptr [eax], al
  0386d3  add byte ptr [eax], al
  0386d5  add byte ptr [eax], al
  0386d7  add byte ptr [eax], al
  0386d9  add byte ptr [eax], al
  0386db  add byte ptr [eax], al
  0386dd  add byte ptr [eax], al
  0386df  add byte ptr [eax], al
  0386e1  add byte ptr [eax], al
  0386e3  add byte ptr [eax], al
  0386e5  add byte ptr [eax], al
  0386e7  add byte ptr [eax], al
  0386e9  add byte ptr [eax], al
  0386eb  add byte ptr [eax], al
  0386ed  add byte ptr [eax], al
  0386ef  add byte ptr [eax], al
  0386f1  add byte ptr [eax], al
  0386f3  add byte ptr [eax], al
  0386f5  add byte ptr [eax], al
  0386f7  add byte ptr [eax], al
  0386f9  add byte ptr [eax], al
  0386fb  add byte ptr [eax], al
  0386fd  add byte ptr [eax], al
  0386ff  add byte ptr [eax], al
  038701  add byte ptr [eax], al
  038703  add byte ptr [eax], al
  038705  add byte ptr [eax], al
  038707  add byte ptr [eax], al
  038709  add byte ptr [eax], al
  03870b  add byte ptr [eax], al
  03870d  add byte ptr [eax], al
  03870f  add byte ptr [eax], al
  038711  add byte ptr [eax], al
  038713  add byte ptr [eax], al
  038715  add byte ptr [eax], al
  038717  add byte ptr [eax], al
  038719  add byte ptr [eax], al
  03871b  add byte ptr [eax], al
  03871d  add byte ptr [eax], al
  03871f  add byte ptr [eax], al
  038721  add byte ptr [eax], al
  038723  add byte ptr [eax], al
  038725  add byte ptr [eax], al
  038727  add byte ptr [eax], al
  038729  add byte ptr [eax], al
  03872b  add byte ptr [eax], al
  03872d  add byte ptr [eax], al
  03872f  add byte ptr [eax], al
  038731  add byte ptr [eax], al
  038733  add byte ptr [eax], al
  038735  add byte ptr [eax], al
  038737  add byte ptr [eax], al
  038739  add byte ptr [eax], al
  03873b  add byte ptr [eax], al
  03873d  add byte ptr [eax], al
  03873f  add byte ptr [eax], al
  038741  add byte ptr [eax], al
  038743  add byte ptr [eax], al
  038745  add byte ptr [eax], al
  038747  add byte ptr [eax], al
  038749  add byte ptr [eax], al
  03874b  add byte ptr [eax], al
  03874d  add byte ptr [eax], al
  03874f  add byte ptr [eax], al
  038751  add byte ptr [eax], al
  038753  add byte ptr [eax], al
  038755  add byte ptr [eax], al
  038757  add byte ptr [eax], al
  038759  add byte ptr [eax], al
  03875b  add byte ptr [eax], al
  03875d  add byte ptr [eax], al
  03875f  add byte ptr [eax], al
  038761  add byte ptr [eax], al
  038763  add byte ptr [eax], al
  038765  add byte ptr [eax], al
  038767  add byte ptr [eax], al
  038769  add byte ptr [eax], al
  03876b  add byte ptr [eax], al
  03876d  add byte ptr [eax], al
  03876f  add byte ptr [eax], al
  038771  add byte ptr [eax], al
  038773  add byte ptr [eax], al
  038775  add byte ptr [eax], al
  038777  add byte ptr [eax], al
  038779  add byte ptr [eax], al
  03877b  add byte ptr [eax], al
  03877d  add byte ptr [eax], al
  03877f  add byte ptr [eax], al
  038781  add byte ptr [eax], al
  038783  add byte ptr [eax], al
  038785  add byte ptr [eax], al
  038787  add byte ptr [eax], al
  038789  add byte ptr [eax], al
  03878b  add byte ptr [eax], al
  03878d  add byte ptr [eax], al
  03878f  add byte ptr [eax], al
  038791  add byte ptr [eax], al
  038793  add byte ptr [eax], al
  038795  add byte ptr [eax], al
  038797  add byte ptr [eax], al
  038799  add byte ptr [eax], al
  03879b  add byte ptr [eax], al
  03879d  add byte ptr [eax], al
  03879f  add byte ptr [eax], al
  0387a1  add byte ptr [eax], al
  0387a3  add byte ptr [eax], al
  0387a5  add byte ptr [eax], al
  0387a7  add byte ptr [eax], al
  0387a9  add byte ptr [eax], al
  0387ab  add byte ptr [eax], al
  0387ad  add byte ptr [eax], al
  0387af  add byte ptr [eax], al
  0387b1  add byte ptr [eax], al
  0387b3  add byte ptr [eax], al
  0387b5  add byte ptr [eax], al
  0387b7  add byte ptr [eax], al
  0387b9  add byte ptr [eax], al
  0387bb  add byte ptr [eax], al
  0387bd  add byte ptr [eax], al
  0387bf  add byte ptr [eax], al
  0387c1  add byte ptr [eax], al
  0387c3  add byte ptr [eax], al
  0387c5  add byte ptr [eax], al
  0387c7  add byte ptr [eax], al
  0387c9  add byte ptr [eax], al
  0387cb  add byte ptr [eax], al
  0387cd  add byte ptr [eax], al
  0387cf  add byte ptr [eax], al
  0387d1  add byte ptr [eax], al
  0387d3  add byte ptr [eax], al
  0387d5  add byte ptr [eax], al
  0387d7  add byte ptr [eax], al
  0387d9  add byte ptr [eax], al
  0387db  add byte ptr [eax], al
  0387dd  add byte ptr [eax], al
  0387df  add byte ptr [eax], al
  0387e1  add byte ptr [eax], al
  0387e3  add byte ptr [eax], al
  0387e5  add byte ptr [eax], al
  0387e7  add byte ptr [eax], al
  0387e9  add byte ptr [eax], al
  0387eb  add byte ptr [eax], al
  0387ed  add byte ptr [eax], al
  0387ef  add byte ptr [eax], al
  0387f1  add byte ptr [eax], al
  0387f3  add byte ptr [eax], al
  0387f5  add byte ptr [eax], al
  0387f7  add byte ptr [eax], al
  0387f9  add byte ptr [eax], al
  0387fb  add byte ptr [eax], al
  0387fd  add byte ptr [eax], al
  0387ff  add byte ptr [eax], al
  038801  add byte ptr [eax], al
  038803  add byte ptr [eax], al
  038805  add byte ptr [eax], al
  038807  add byte ptr [eax], al
  038809  add byte ptr [eax], al
  03880b  add byte ptr [eax], al
  03880d  add byte ptr [eax], al
  03880f  add byte ptr [eax], al
  038811  add byte ptr [eax], al
  038813  add byte ptr [eax], al
  038815  add byte ptr [eax], al
  038817  add byte ptr [eax], al
  038819  add byte ptr [eax], al
  03881b  add byte ptr [eax], al
  03881d  add byte ptr [eax], al
  03881f  add byte ptr [eax], al
  038821  add byte ptr [eax], al
  038823  add byte ptr [eax], al
  038825  add byte ptr [eax], al
  038827  add byte ptr [eax], al
  038829  add byte ptr [eax], al
  03882b  add byte ptr [eax], al
  03882d  add byte ptr [eax], al
  03882f  add byte ptr [eax], al
  038831  add byte ptr [eax], al
  038833  add byte ptr [eax], al
  038835  add byte ptr [eax], al
  038837  add byte ptr [eax], al
  038839  add byte ptr [eax], al
  03883b  add byte ptr [eax], al
  03883d  add byte ptr [eax], al
  03883f  add byte ptr [eax], al
  038841  add byte ptr [eax], al
  038843  add byte ptr [eax], al
  038845  add byte ptr [eax], al
  038847  add byte ptr [eax], al
  038849  add byte ptr [eax], al
  03884b  add byte ptr [eax], al
  03884d  add byte ptr [eax], al
  03884f  add byte ptr [eax], al
  038851  add byte ptr [eax], al
  038853  add byte ptr [eax], al
  038855  add byte ptr [eax], al
  038857  add byte ptr [eax], al
  038859  add byte ptr [eax], al
  03885b  add byte ptr [eax], al
  03885d  add byte ptr [eax], al
  03885f  add byte ptr [eax], al
  038861  add byte ptr [eax], al
  038863  add byte ptr [eax], al
  038865  add byte ptr [eax], al
  038867  add byte ptr [eax], al
  038869  add byte ptr [eax], al
  03886b  add byte ptr [eax], al
  03886d  add byte ptr [eax], al
  03886f  add byte ptr [eax], al
  038871  add byte ptr [eax], al
  038873  add byte ptr [eax], al
  038875  add byte ptr [eax], al
  038877  add byte ptr [eax], al
  038879  add byte ptr [eax], al
  03887b  add byte ptr [eax], al
  03887d  add byte ptr [eax], al
  03887f  add byte ptr [eax], al
  038881  add byte ptr [eax], al
  038883  add byte ptr [eax], al
  038885  add byte ptr [eax], al
  038887  add byte ptr [eax], al
  038889  add byte ptr [eax], al
  03888b  add byte ptr [eax], al
  03888d  add byte ptr [eax], al
  03888f  add byte ptr [eax], al
  038891  add byte ptr [eax], al
  038893  add byte ptr [eax], al
  038895  add byte ptr [eax], al
  038897  add byte ptr [eax], al
  038899  add byte ptr [eax], al
  03889b  add byte ptr [eax], al
  03889d  add byte ptr [eax], al
  03889f  add byte ptr [edx], dl
  0388a1  xor al, 0x4d
  0388a3  add byte ptr ds:[eax], al
  0388a6  pop ebx
  0388a7  add byte ptr [eax], al
  0388a9  add byte ptr [ebp], bl
  0388ac  add dword ptr [eax], eax
  0388ae  add byte ptr [0x2060202], al
  0388b4  add al, 6
  0388b6  add al, 2
  0388b8  push es
  0388b9  add al, 4
  0388bb  or byte ptr [edx], al
  0388bd  add cl, byte ptr [eax]
  0388bf  add eax, dword ptr [0x9020409]
  0388c5  add eax, 0x2030c05
  0388ca  or eax, 0x60d0204
  0388cf  add eax, 0xd08040a
  0388d4  push es
  0388d5  or byte ptr [esi], cl
  0388d7  pop es
  0388d8  or al, 0xa
  0388da  or byte ptr [esi], al
  0388dc  push cs
  0388dd  or byte ptr [ebx], al
  0388df  or eax, 0x80a0608
  0388e4  or byte ptr [0xc0e0809], cl
  0388ea  or cl, byte ptr [esi]
  0388ec  or al, 0xc
  0388ee  adc byte ptr [0x5061103], al
  0388f4  adc al, 6
  0388f6  add al, 0x10
  0388f8  push es
  0388f9  or dword ptr [edx], edx
  0388fb  push es
  0388fc  or al, 0x14
  0388fe  pop es
  0388ff  or eax, 0x11030910
  038904  or byte ptr [esi], al
  038906  adc eax, 0xc150609
  03890b  push es
  03890c  adc dword ptr [ecx], ecx
  03890e  or dword ptr [ecx], edx
  038910  or dword ptr [ecx + edx], ecx
  038913  or al, 0xa
  038915  adc dword ptr [0x90a150c], ecx
  03891b  adc eax, 0xc150d09
  038920  or dword ptr [0x7180c0d], edx
  038926  add eax, 0x18060919
  03892b  or eax, 0x60a1d06
  038930  push ds
  038931  or al, 7
  038933  sbb dword ptr [edx], ecx
  038935  or dword ptr [ecx], ebx
  038937  or cl, byte ptr [0x19090d19]
  03893d  or eax, 0x80a1d0d
  038942  sbb al, 0xb
  038944  or eax, 0x1d090d1d
  038949  push cs
  03894a  or eax, 0x1b110a15
  03894f  or al, 0x12
  038951  sbb eax, 0x1011190e
  038956  push cs
  038957  pop ss
  038958  adc byte ptr [ebx], cl
  03895a  adc eax, 0x101d0e10
  03895f  push es
  038960  sbb dl, byte ptr [eax]
  038962  or ebx, dword ptr [ecx]
  038964  adc byte ptr [esi], cl
  038966  sbb eax, 0x111d0a10
  03896b  or eax, 0x120e141e
  038970  adc dword ptr [eax], edx
  038972  adc eax, 0x14161011
  038977  adc dl, byte ptr [esi]
  038979  adc eax, 0x11121914
  03897e  sbb dword ptr [edx + edx], edx
  038981  sbb dword ptr [0x10111d14], edx
  038987  pop ds
  038988  adc byte ptr [ebx + 0x151d1114], dl
  03898f  adc al, 0x1a
  038991  sbb byte ptr [esi], dl
  038993  sbb al, 0x18
  038995  adc ebx, dword ptr [0x191a1618]
  03899b  sbb byte ptr [0x1c1e1819], bl
  0389a1  sbb bl, byte ptr [esi]
  0389a3  sbb eax, 0x60a211c
  0389a8  and cl, byte ptr [edi + eax]
  0389ab  and eax, 0xb20070c
  0389b0  or byte ptr [ecx], ah
  0389b2  or eax, 0xd0e2109
  0389b7  and eax, 0xe25090d
  0389bc  or eax, 0x2a070d28
  0389c1  push cs
  0389c2  or dword ptr [edx], esp
  0389c4  or eax, 0x190e2413
  0389c9  sub byte ptr [edi], cl
  0389cb  sbb al, 0x21
  0389cd  adc dword ptr [edx], ecx
  0389cf  and dword ptr [ecx], edx
  0389d1  or eax, 0x21081422
  0389d6  adc al, 0xe
  0389d8  and eax, 0x11250a11
  0389dd  or eax, 0x25091525
  0389e2  adc al, 0xd
  0389e4  sub dword ptr [eax], edx
  0389e6  or ch, byte ptr [ecx]
  0389e8  adc dword ptr [0x290a1728], ecx
  0389ee  adc eax, 0xa102d0d
  0389f3  sub eax, 0x152d0d11
  0389f8  push cs
  0389f9  sub al, 0x19
  0389fb  or al, 0x21
  0389fd  adc dword ptr [ecx], edx
  0389ff  and dword ptr [ecx], edx
  038a01  adc eax, 0x21111521
  038a06  push ss
  038a07  adc al, 0x25
  038a09  adc dl, byte ptr [ecx]
  038a0b  and eax, 0x15251411
  038a10  adc dword ptr [0x12241415], esp
  038a16  sbb ah, byte ptr [edx]
  038a18  sbb byte ptr [edx], dl
  038a1a  and dword ptr [eax], ebx
  038a1c  adc eax, 0x26161d21
  038a21  sbb byte ptr [edx], dl
  038a23  and eax, 0x1c261519
  038a28  push ss
  038a29  and dword ptr [ecx], ebx
  038a2b  sbb byte ptr [ecx], ah
  038a2d  sbb al, 0x19
  038a2f  and dword ptr [0x191a251c], ebx
  038a35  and eax, 0x1d25191c
  038a3a  sbb al, 0x2a
  038a3c  adc eax, 0x1b142b12
  038a41  sub dword ptr [eax], ebx
  038a43  adc ch, byte ptr [ecx]
  038a45  sbb dword ptr [0x29131c29], edx
  038a4b  sbb al, 0x16
  038a4d  sub eax, 0x192d1119
  038a52  adc eax, 0x29151c2e
  038a57  sbb bl, byte ptr [eax]
  038a59  sub dword ptr [0x1d1d2919], ebx
  038a5f  sub eax, 0x192e1919
  038a64  sbb eax, 0x2d191d2d
  038a69  push ds
  038a6a  sbb eax, 0x320c1233
  038a6f  sbb ecx, dword ptr [0x3e0d153b]
  038a75  sbb dword ptr [esi], ecx
  038a77  xor dl, byte ptr [0x1a163111]
  038a7d  xor ebx, dword ptr [edx]
  038a7f  adc al, 0x33
  038a81  sbb al, 0x1a
  038a83  cmp edx, dword ptr [esi]
  038a85  adc dword ptr [0x1e3b131c], edi
  038a8b  sbb ah, byte ptr [esi]
  038a8d  adc ah, byte ptr [eax]
  038a8f  sub al, 0x15
  038a91  and ch, byte ptr [edi]
  038a93  pop ss
  038a94  sub byte ptr [ecx], dh
  038a96  adc ah, byte ptr [edx]
  038a98  xor byte ptr [edi], dl
  038a9a  and dh, byte ptr [eax]
  038a9c  pop ss
  038a9d  sub dword ptr [ebx], esi
  038a9f  sbb ah, byte ptr [ebx]
  038aa1  xor al, 0x19
  038aa3  sub edi, dword ptr [eax]
  038aa5  push ds
  038aa6  and al, 0x3b
  038aa8  sbb eax, 0x1e20222c
  038aad  and eax, 0x20261a20
  038ab2  sbb eax, 0x2a16202f
  038ab7  and byte ptr [edx], bl
  038ab9  sub dword ptr [ecx], esp
  038abb  sbb eax, 0x2e1e2429
  038ac0  and byte ptr [edx], bl
  038ac2  sub eax, 0x242e1d21
  038ac7  push ds
  038ac8  and byte ptr ss:[0x350e223b], cl
  038acf  and byte ptr [esi], dl
  038ad1  xor esp, dword ptr [edx]
  038ad3  sbb al, 0x3e
  038ad5  and dl, byte ptr [0x3f1b233d]
  038adb  sub edx, dword ptr [ebx]
  038add  sub bl, byte ptr ds:[0x3f16313f]
  038ae4  xor dword ptr [esi], ebx
  038ae6  and ah, byte ptr [ecx]
  038ae8  and byte ptr [0x24262021], ah
  038aee  and dword ptr [esi], esp
  038af0  and eax, 0x20222925
  038af5  sub dword ptr [0x24252921], esp
  038afb  sub eax, 0x242d2021
  038b00  and dword ptr [0x282a2426], ebp
  038b06  sub byte ptr cs:[ecx], ah
  038b0a  sub byte ptr cs:[esi], ah
  038b0d  sub ch, byte ptr [ecx]
  038b0f  sub dword ptr [esi], ebp
  038b11  sub ch, byte ptr [eax]
  038b13  sub al, 0x2a
  038b16  sub eax, 0x2225332c
  038b1c  xor ebp, dword ptr [ecx]
  038b1e  and eax, 0x3c2a2c33
  038b23  and eax, 0x2a243e22
  038b28  sub esp, dword ptr ds:[ebx]
  038b2b  cmp al, 0x2d
  038b2d  sub dh, byte ptr [eax + esi]
  038b30  sub eax, 0x3e24323e
  038b35  xor ebp, dword ptr [ebx]
  038b37  aas 
  038b38  cmp dword ptr [esi], esp
  038b3a  aas 
  038b3b  cmp ch, byte ptr [esi + 0x343d3132]
  038b42  xor bh, byte ptr [esi]
  038b44  cmp esi, dword ptr [ebx]
  038b46  cmp eax, 0x392f353f
  038b4d  sub eax, 0x252f3f25
  038b52  aas 
  038b53  aaa 
  038b54  xor dword ptr [ecx], ebp
  038b56  push ss
  038b57  or byte ptr [edi], bh
  038b59  xor eax, 0x614252d
  038b5e  xor eax, 0x3d3f292f
  038b63  cmp edi, dword ptr [edi]
  038b65  cmp esi, dword ptr [edi]
  038b67  cmp eax, 0x393f3539
  038b6c  xor edi, dword ptr [edi]
  038b6e  aaa 
  038b6f  das 
  038b70  cmp eax, 0x373f2d35
  038b75  sub eax, 0x3f29353d
  038b7a  cmp eax, 0x35393b39
  038b7f  aas 
  038b80  aas 
  038b81  cmp eax, 0x1c140a18
  038b86  or al, 0x14
  038b88  push ss
  038b89  push es
  038b8a  push cs
  038b8b  sbb byte ptr [edx], cl
  038b8d  adc byte ptr [esi + eax], dl
  038b90  or al, 0x10
  038b92  add al, 8
  038b94  and dword ptr [eax], edx
  038b96  adc al, 0xa
  038b98  add al, byte ptr [edx + edx]
  038b9b  or byte ptr [edx], cl
  038b9d  adc byte ptr [esi + eax], al
  038ba0  and edx, dword ptr [edx]
  038ba2  adc al, 0x1a
  038ba4  or cl, byte ptr [esi + edx]
  038ba7  or byte ptr [edx], cl
  038ba9  add byte ptr [eax], al
  038bab  add byte ptr [eax], al
  038bad  add byte ptr [eax], al
  038baf  add dword ptr [ecx], eax
  038bb1  add dword ptr [edx], eax
  038bb3  add al, byte ptr [edx]
  038bb5  add eax, dword ptr [ebx]
  038bb7  add eax, dword ptr [esp + eax]
  038bba  add al, 5
  038bbc  add eax, 0x6060605
  038bc1  pop es
  038bc2  pop es
  038bc3  pop es
  038bc4  or byte ptr [eax], cl
  038bc6  or byte ptr [ecx], cl
  038bc8  or dword ptr [ecx], ecx
  038bca  or cl, byte ptr [edx]
  038bcc  or cl, byte ptr [ebx]
  038bce  or ecx, dword ptr [ebx]
  038bd0  or al, 0xc
  038bd2  or al, 0xd
  038bd4  or eax, 0xe0e0e0d
  038bd9  db 0x0f
  038bda  db 0x0f
  038bdb  movups xmm2, xmmword ptr [eax]
  038bde  adc byte ptr [ecx], dl
  038be0  adc dword ptr [ecx], edx
  038be2  adc dl, byte ptr [edx]
  038be4  adc dl, byte ptr [ebx]
  038be6  adc edx, dword ptr [ebx]
  038be8  adc al, 0x14
  038bea  adc al, 0x15
  038bec  adc eax, 0x16161615
  038bf1  pop ss
  038bf2  pop ss
  038bf3  pop ss
  038bf4  sbb byte ptr [eax], bl
  038bf6  sbb byte ptr [ecx], bl
  038bf8  sbb dword ptr [ecx], ebx
  038bfa  sbb bl, byte ptr [edx]
  038bfc  sbb bl, byte ptr [ebx]
  038bfe  sbb ebx, dword ptr [ebx]
  038c00  sbb al, 0x1c
  038c02  sbb al, 0x1d
  038c04  sbb eax, 0x1e1e1e1d
  038c09  pop ds
  038c0a  pop ds
  038c0b  pop ds
  038c0c  and byte ptr [eax], ah
  038c0e  and byte ptr [ecx], ah
  038c10  and dword ptr [ecx], esp
  038c12  and ah, byte ptr [edx]
  038c14  and ah, byte ptr [ebx]
  038c16  and esp, dword ptr [ebx]
  038c18  and al, 0x24
  038c1a  and al, 0x25
  038c1c  and eax, 0x26262625
  038c21  daa 
  038c22  daa 
  038c23  daa 
  038c24  sub byte ptr [eax], ch
  038c26  sub byte ptr [ecx], ch
  038c28  sub dword ptr [ecx], ebp
  038c2a  sub ch, byte ptr [edx]
  038c2c  sub ch, byte ptr [ebx]
  038c2e  sub ebp, dword ptr [ebx]
  038c30  sub al, 0x2c
  038c32  sub al, 0x2d
  038c34  sub eax, 0x2e2e2e2d
  038c39  das 
  038c3a  das 
  038c3b  das 
  038c3c  xor byte ptr [eax], dh
  038c3e  xor byte ptr [ecx], dh
  038c40  xor dword ptr [ecx], esi
  038c42  xor dh, byte ptr [edx]
  038c44  xor dh, byte ptr [ebx]
  038c46  xor esi, dword ptr [ebx]
  038c48  xor al, 0x34
  038c4a  xor al, 0x35
  038c4c  xor eax, 0x36363635
  038c51  aaa 
  038c52  aaa 
  038c53  aaa 
  038c54  cmp byte ptr [eax], bh
  038c56  cmp byte ptr [ecx], bh
  038c58  cmp dword ptr [ecx], edi
  038c5a  cmp bh, byte ptr [edx]
  038c5c  cmp bh, byte ptr [ebx]
  038c5e  cmp edi, dword ptr [ebx]
  038c60  cmp al, 0x3c
  038c62  cmp al, 0x3d
  038c64  cmp eax, 0x3e3e3e3d
  038c69  aas 
  038c6a  aas 
  038c6b  aas 
  038c6c  inc eax
  038c6d  inc eax
  038c6e  inc eax
  038c6f  inc ecx
  038c70  inc ecx
  038c71  inc ecx
  038c72  inc edx
  038c73  inc edx
  038c74  inc edx
  038c75  inc ebx
  038c76  inc ebx
  038c77  inc ebx
  038c78  inc esp
  038c79  inc esp
  038c7a  inc esp
  038c7b  inc ebp
  038c7c  inc ebp
  038c7d  inc ebp
  038c7e  inc esi
  038c7f  inc esi
  038c80  inc esi
  038c81  inc edi
  038c82  inc edi
  038c83  inc edi
  038c84  dec eax
  038c85  dec eax
  038c86  dec eax
  038c87  dec ecx
  038c88  dec ecx
  038c89  dec ecx
  038c8a  dec edx
  038c8b  dec edx
  038c8c  dec edx
  038c8d  dec ebx
  038c8e  dec ebx
  038c8f  dec ebx
  038c90  dec esp
  038c91  dec esp
  038c92  dec esp
  038c93  dec ebp
  038c94  dec ebp
  038c95  dec ebp
  038c96  dec esi
  038c97  dec esi
  038c98  dec esi
  038c99  dec edi
  038c9a  dec edi
  038c9b  dec edi
  038c9c  push eax
  038c9d  push eax
  038c9e  push eax
  038c9f  push ecx
  038ca0  push ecx
  038ca1  push ecx
  038ca2  push edx
  038ca3  push edx
  038ca4  push edx
  038ca5  push ebx
  038ca6  push ebx
  038ca7  push ebx
  038ca8  push esp
  038ca9  push esp
  038caa  push esp
  038cab  push ebp
  038cac  push ebp
  038cad  push ebp
  038cae  push esi
  038caf  push esi
  038cb0  push esi
  038cb1  push edi
  038cb2  push edi
  038cb3  push edi
  038cb4  pop eax
  038cb5  pop eax
  038cb6  pop eax
  038cb7  pop ecx
  038cb8  pop ecx
  038cb9  pop ecx
  038cba  pop edx
  038cbb  pop edx
  038cbc  pop edx
  038cbd  pop ebx
  038cbe  pop ebx
  038cbf  pop ebx
  038cc0  pop esp
  038cc1  pop esp
  038cc2  pop esp
  038cc3  pop ebp
  038cc4  pop ebp
  038cc5  pop ebp
  038cc6  pop esi
  038cc7  pop esi
  038cc8  pop esi
  038cc9  pop edi
  038cca  pop edi
  038ccb  pop edi
  038ccc  pushal 
  038ccd  pushal 
  038cce  pushal 
  038ccf  popal 
  038cd0  popal 
  038cd1  popal 
  038cd2  bound esp, qword ptr [edx + 0x62]
  038cd5  arpl word ptr [ebx + 0x63], sp
  038cd8  push 0x6868
  038ce7  imul ebp, dword ptr [ecx + 0x69], 0x6b6a6a6a
  038cee  imul ebp, dword ptr [ebx + 0x6c], 0x6c
  038cf2  insb byte ptr es:[edi], dx
  038cf3  insd dword ptr es:[edi], dx
  038cf4  insd dword ptr es:[edi], dx
  038cf5  insd dword ptr es:[edi], dx
  038cf6  outsb dx, byte ptr [esi]
  038cf7  outsb dx, byte ptr [esi]
  038cf8  outsb dx, byte ptr [esi]
  038cf9  outsd dx, dword ptr [esi]
  038cfa  outsd dx, dword ptr [esi]
  038cfb  outsd dx, dword ptr [esi]
  038cfc  jo 0x38d6e
  038cfe  jo 0x38d71
  038d00  jno 0x38d73
  038d02  jb 0x38d76
  038d04  jb 0x38d79
  038d06  jae 0x38d7b
  038d08  je 0x38d7e
  038d0a  je 0x38d81
  038d0c  jne 0x38d83
  038d0e  jbe 0x38d86
  038d10  jbe 0x38d89
  038d12  ja 0x38d8b
  038d14  js 0x38d8e
  038d16  js 0x38d91
  038d18  jns 0x38d93
  038d1a  jp 0x38d96
  038d1c  jp 0x38d99
  038d1e  jnp 0x38d9b
  038d20  jl 0x38d9e
  038d22  jl 0x38da1
  038d24  jge 0x38da3
  038d26  jle 0x38da6
  038d28  jle 0x38da9
  038d2a  jg 0x38dab
  038d2c  add byte ptr [eax - 0x7e7e7e80], 0x82
  038d33  add byte ptr [edx - 0x7b7c7c7d], 0x84
  038d3a  test byte ptr [ebp - 0x79797a7b], al
  038d40  xchg byte ptr [edi - 0x77777879], al
  038d46  mov byte ptr [ecx - 0x75757677], cl
  038d4c  mov cl, byte ptr [ebx - 0x73737475]
  038d52  mov word ptr [ebp - 0x71717273], cs
  038d58  mov cs, word ptr [edi - 0x6f6f7071]
  038d5e  nop 
  038d5f  xchg ecx, eax
  038d60  xchg ecx, eax
  038d61  xchg ecx, eax
  038d62  xchg edx, eax
  038d63  xchg edx, eax
  038d64  xchg edx, eax
  038d65  xchg ebx, eax
  038d66  xchg ebx, eax
  038d67  xchg ebx, eax
  038d68  xchg esp, eax
  038d69  xchg esp, eax
  038d6a  xchg esp, eax
  038d6b  xchg ebp, eax
  038d6c  xchg ebp, eax
  038d6d  xchg ebp, eax
L38d6e:
  038d6e  xchg esi, eax
  038d6f  xchg esi, eax
  038d70  xchg esi, eax
L38d71:
  038d71  xchg edi, eax
  038d72  xchg edi, eax
L38d73:
  038d73  xchg edi, eax
  038d74  cwde 
  038d75  cwde 
L38d76:
  038d76  cwde 
  038d77  cdq 
  038d78  cdq 
L38d79:
  038d79  cdq 
  038d7a  lcall 0x9c9b, 0x9b9b9a9a
L38d81:
  038d81  pushfd 
  038d82  pushfd 
L38d83:
  038d83  popfd 
  038d84  popfd 
  038d85  popfd 
L38d86:
  038d86  sahf 
  038d87  sahf 
  038d88  sahf 
L38d89:
  038d89  lahf 
  038d8a  lahf 
L38d8b:
  038d8b  lahf 
  038d8c  mov al, byte ptr [0xa1a1a0a0]
L38d91:
  038d91  mov eax, dword ptr [0xa3a2a2a2]
L38d96:
  038d96  mov dword ptr [0xa4a4a4a3], eax
L38d9b:
  038d9b  movsd dword ptr es:[edi], dword ptr [esi]
  038d9c  movsd dword ptr es:[edi], dword ptr [esi]
  038d9d  movsd dword ptr es:[edi], dword ptr [esi]
L38d9e:
  038d9e  cmpsb byte ptr [esi], byte ptr es:[edi]
  038d9f  cmpsb byte ptr [esi], byte ptr es:[edi]
  038da0  cmpsb byte ptr [esi], byte ptr es:[edi]
L38da1:
  038da1  cmpsd dword ptr [esi], dword ptr es:[edi]
  038da2  cmpsd dword ptr [esi], dword ptr es:[edi]
L38da3:
  038da3  cmpsd dword ptr [esi], dword ptr es:[edi]
  038da4  test al, 0xa8
L38da6:
  038da6  test al, 0xa9
  038da8  test eax, 0xaaaaaaa9
  038dad  stosd dword ptr es:[edi], eax
  038dae  stosd dword ptr es:[edi], eax
  038daf  stosd dword ptr es:[edi], eax
  038db0  lodsb al, byte ptr [esi]
  038db1  lodsb al, byte ptr [esi]
  038db2  lodsb al, byte ptr [esi]
  038db3  lodsd eax, dword ptr [esi]
  038db4  lodsd eax, dword ptr [esi]
  038db5  lodsd eax, dword ptr [esi]
  038db6  scasb al, byte ptr es:[edi]
  038db7  scasb al, byte ptr es:[edi]
  038db8  scasb al, byte ptr es:[edi]
  038db9  scasd eax, dword ptr es:[edi]
  038dba  scasd eax, dword ptr es:[edi]
  038dbb  scasd eax, dword ptr es:[edi]
  038dbc  mov al, 0xb0
  038dbe  mov al, 0xb1
  038dc0  mov cl, 0xb1
  038dc2  mov dl, 0xb2
  038dc4  mov dl, 0xb3
  038dc6  mov bl, 0xb3
  038dc8  mov ah, 0xb4
  038dca  mov ah, 0xb5
  038dcc  mov ch, 0xb5
  038dce  mov dh, 0xb6
  038dd0  mov dh, 0xb7
  038dd2  mov bh, 0xb7
  038dd4  mov eax, 0xb9b9b8b8
  038dd9  mov ecx, 0xbbbababa
  038dde  mov ebx, 0xbcbcbcbb
  038de3  mov ebp, 0xbebebdbd
  038de8  mov esi, 0xc0bfbfbf
  038ded  rol al, 0xc1
  038df0  rol ecx, 0xc2
  038df3  ret 0xc3c2
  038df6  ret 
  038df7  ret 
  038df8  db 0xc4
  038df9  db 0xc4
  038dfa  db 0xc4
  038dfb  db 0xc5
  038dfc  vshufpd ymm0, ymm7, ymm6, 0xc6
  038e01  mov edi, 0xc8c8c8c7
  038e07  leave 
  038e08  leave 
  038e09  leave 
  038e0a  retf 0xcaca
  038e0d  retf 
  038e0e  retf 
  038e0f  retf 
  038e10  int3 
  038e11  int3 
  038e12  int3 
  038e13  int 0xcd
  038e15  int 0xce
  038e17  into 
  038e18  into 
  038e19  iretd 
  038e1a  iretd 
  038e1b  iretd 
  038e1c  rcl al, 1
  038e1e  rcl cl, 1
  038e20  rcl ecx, 1
  038e22  rcl dl, cl
  038e24  rcl bl, cl
  038e26  rcl ebx, cl
  038e28  aam 0xd4
  038e2a  aam 0xd5
  038e2c  aad 0xd5
  038e2e  salc 
L38e2f:
  038e2f  salc 
  038e30  salc 
  038e31  xlatb 
L38e32:
  038e32  xlatb 
  038e33  xlatb 
  038e34  fcomp st(0)
  038e36  fcomp st(1)
  038e38  fstpnce st(1), st(0)
L38e3a:
  038e3a  fcmovu st(0), st(2)
  038e3c  fcmovu st(0), st(3)
  038e3e  fcmovnu st(0), st(3)
  038e40  db 0xdc
  038e41  db 0xdc
  038e42  db 0xdc
  038e43  fstp st(5)
  038e45  fstp st(6)
  038e47  db 0xde
  038e48  db 0xde
  038e49  db 0xdf
  038e4a  db 0xdf
  038e4b  fnstsw ax
  038e4d  loopne 0x38e2f
  038e4f  loope 0x38e32
  038e51  loope 0x38e35
  038e53  loop 0x38e37
  038e55  jecxz 0x38e3a
  038e57  jecxz 0x38e3d
  038e59  in al, 0xe4
  038e5b  in eax, 0xe5
  038e5d  in eax, 0xe6
  038e5f  out 0xe6, al
  038e61  out 0xe7, eax
  038e63  out 0xe8, eax
  038e65  call 0xe9ed7852
  038e6a  ljmp 0xeceb:0xebebeaea
  038e71  in al, dx
  038e72  in al, dx
  038e73  in eax, dx
  038e74  in eax, dx
  038e75  in eax, dx
  038e76  out dx, al
  038e77  out dx, al
  038e78  out dx, al
  038e79  out dx, eax
  038e7a  out dx, eax
  038e7b  out dx, eax
  038e7c  db 0xf0
  038e7d  db 0xf0
  038e7e  db 0xf0
  038e7f  int1 
  038e80  int1 
  038e81  int1 
  038e82  hlt 
  038e89  hlt 
  038e8a  hlt 
  038e8b  cmc 
  038e8c  cmc 
  038e8d  cmc 
  038e8e  div dh
  038e90  div bh
  038e92  div edi
  038e94  clc 
  038e95  clc 
  038e96  clc 
  038e97  stc 
  038e98  stc 
  038e99  stc 
  038e9a  cli 
  038e9b  cli 
  038e9c  cli 
  038e9d  sti 
  038e9e  sti 
  038e9f  sti 
  038ea0  cld 
  038ea1  cld 
  038ea2  cld 
  038ea3  std 
  038ea4  std 
  038ea5  std 
  038ea6  db 0xfe
  038ea7  db 0xfe
  038ea8  db 0xfe
  038ea9  db 0xff
  038eaa  db 0xff
  038eab  inc dword ptr [eax]
  038ead  add byte ptr [eax], al
  038eaf  add byte ptr [eax], al
  038eb1  add byte ptr [eax], al
  038eb3  add byte ptr [eax], al
  038eb5  add byte ptr [eax], al
  038eb7  add byte ptr [eax], al
  038eb9  add byte ptr [eax], al
  038ebb  add byte ptr [eax], al
  038ebd  add byte ptr [eax], al
  038ebf  add byte ptr [eax], al
  038ec1  add byte ptr [eax], al
  038ec3  add byte ptr [eax], al
  038ec5  add byte ptr [eax], al
  038ec7  add byte ptr [eax], al
  038ec9  add byte ptr [eax], al
  038ecb  add byte ptr [eax], al
  038ecd  add byte ptr [eax], al
  038ecf  add byte ptr [eax], al
  038ed1  add byte ptr [eax], al
  038ed3  add byte ptr [eax], al
  038ed5  add byte ptr [eax], al
  038ed7  add byte ptr [eax], al
  038ed9  add byte ptr [eax], al
  038edb  add byte ptr [eax], al
  038edd  add byte ptr [eax], al
  038edf  add byte ptr [eax], al
  038ee1  add byte ptr [eax], al
  038ee3  add byte ptr [eax], al
  038ee5  add byte ptr [eax], al
  038ee7  add byte ptr [eax], al
  038ee9  add byte ptr [eax], al
  038eeb  add byte ptr [eax], al
  038eed  add byte ptr [eax], al
  038eef  add byte ptr [eax], al
  038ef1  add byte ptr [eax], al
  038ef3  add byte ptr [eax], al
  038ef5  add byte ptr [eax], al
  038ef7  add byte ptr [eax], al
  038ef9  add byte ptr [eax], al
  038efb  add byte ptr [eax], al
  038efd  add byte ptr [eax], al
  038eff  add byte ptr [eax], al
  038f01  add byte ptr [eax], al
  038f03  add byte ptr [eax], al
  038f05  add byte ptr [eax], al
  038f07  add byte ptr [eax], al
  038f09  add byte ptr [eax], al
  038f0b  add byte ptr [eax], al
  038f0d  add byte ptr [eax], al
  038f0f  add byte ptr [eax], al
  038f11  add byte ptr [eax], al
  038f13  add byte ptr [eax], al
  038f15  add byte ptr [eax], al
  038f17  add byte ptr [eax], al
  038f19  add byte ptr [eax], al
  038f1b  add byte ptr [eax], al
  038f1d  add byte ptr [eax], al
  038f1f  add byte ptr [eax], al
  038f21  add byte ptr [eax], al
  038f23  add byte ptr [eax], al
  038f25  add byte ptr [eax], al
  038f27  add byte ptr [eax], al
  038f29  add byte ptr [eax], al
  038f2b  add byte ptr [eax], al
  038f2d  add byte ptr [eax], al
  038f2f  add byte ptr [eax], al
  038f31  add byte ptr [eax], al
  038f33  add byte ptr [eax], al
  038f35  add byte ptr [eax], al
  038f37  add byte ptr [eax], al
  038f39  add byte ptr [eax], al
  038f3b  add byte ptr [eax], al
  038f3d  add byte ptr [eax], al
  038f3f  add byte ptr [eax], al
  038f41  add byte ptr [eax], al
  038f43  add byte ptr [eax], al
  038f45  add byte ptr [eax], al
  038f47  add byte ptr [eax], al
  038f49  add byte ptr [eax], al
  038f4b  add byte ptr [eax], al
  038f4d  add byte ptr [eax], al
  038f4f  add byte ptr [eax], al
  038f51  add byte ptr [eax], al
  038f53  add byte ptr [eax], al
  038f55  add byte ptr [eax], al
  038f57  add byte ptr [eax], al
  038f59  add byte ptr [eax], al
  038f5b  add byte ptr [eax], al
  038f5d  add byte ptr [eax], al
  038f5f  add byte ptr [eax], al
  038f61  add byte ptr [eax], al
  038f63  add byte ptr [eax], al
  038f65  add byte ptr [eax], al
  038f67  add byte ptr [eax], al
  038f69  add byte ptr [eax], al
  038f6b  add byte ptr [eax], al
  038f6d  add byte ptr [eax], al
  038f6f  add byte ptr [eax], al
  038f71  add byte ptr [eax], al
  038f73  add byte ptr [eax], al
  038f75  add byte ptr [eax], al
  038f77  add byte ptr [eax], al
  038f79  add byte ptr [eax], al
  038f7b  add byte ptr [eax], al
  038f7d  add byte ptr [eax], al
  038f7f  add byte ptr [eax], al
  038f81  add byte ptr [eax], al
  038f83  add byte ptr [eax], al
  038f85  add byte ptr [eax], al
  038f87  add byte ptr [eax], al
  038f89  add byte ptr [eax], al
  038f8b  add byte ptr [eax], al
  038f8d  add byte ptr [eax], al
  038f8f  add byte ptr [eax], al
  038f91  add byte ptr [eax], al
  038f93  add byte ptr [eax], al
  038f95  add byte ptr [eax], al
  038f97  add byte ptr [eax], al
  038f99  add byte ptr [eax], al
  038f9b  add byte ptr [eax], al
  038f9d  add byte ptr [eax], al
  038f9f  add byte ptr [eax], al
  038fa1  add byte ptr [eax], al
  038fa3  add byte ptr [eax], al
  038fa5  add byte ptr [eax], al
  038fa7  add byte ptr [eax], al
  038fa9  add byte ptr [eax], al
  038fab  add byte ptr [eax], al
  038fad  add byte ptr [eax], al
  038faf  add byte ptr [eax], al
  038fb1  add byte ptr [eax], al
  038fb3  add byte ptr [eax], al
  038fb5  add byte ptr [eax], al
  038fb7  add byte ptr [eax], al
  038fb9  add byte ptr [eax], al
  038fbb  add byte ptr [eax], al
  038fbd  add byte ptr [eax], al
  038fbf  add byte ptr [eax], al
  038fc1  add byte ptr [eax], al
  038fc3  add byte ptr [eax], al
  038fc5  add byte ptr [eax], al
  038fc7  add byte ptr [eax], al
  038fc9  add byte ptr [eax], al
  038fcb  add byte ptr [eax], al
  038fcd  add byte ptr [eax], al
  038fcf  add byte ptr [eax], al
  038fd1  add byte ptr [eax], al
  038fd3  add byte ptr [eax], al
  038fd5  add byte ptr [eax], al
  038fd7  add byte ptr [eax], al
  038fd9  add byte ptr [eax], al
  038fdb  add byte ptr [eax], al
  038fdd  add byte ptr [eax], al
  038fdf  add byte ptr [eax], al
  038fe1  add byte ptr [eax], al
  038fe3  add byte ptr [eax], al
  038fe5  add byte ptr [eax], al
  038fe7  add byte ptr [eax], al
  038fe9  add byte ptr [eax], al
  038feb  add byte ptr [eax], al
  038fed  add byte ptr [eax], al
  038fef  add byte ptr [eax], al
  038ff1  add byte ptr [eax], al
  038ff3  add byte ptr [eax], al
  038ff5  add byte ptr [eax], al
  038ff7  add byte ptr [eax], al
  038ff9  add byte ptr [eax], al
  038ffb  add byte ptr [eax], al
  038ffd  add byte ptr [eax], al
  038fff  add byte ptr [eax], al
  039001  add byte ptr [eax], al
  039003  add byte ptr [eax], al
  039005  add byte ptr [eax], al
  039007  add byte ptr [eax], al
  039009  add byte ptr [eax], al
  03900b  add byte ptr [eax], al
  03900d  add byte ptr [eax], al
  03900f  add byte ptr [eax], al
  039011  add byte ptr [eax], al
  039013  add byte ptr [eax], al
  039015  add byte ptr [eax], al
  039017  add byte ptr [eax], al
  039019  add byte ptr [eax], al
  03901b  add byte ptr [eax], al
  03901d  add byte ptr [eax], al
  03901f  add byte ptr [eax], al
  039021  add byte ptr [eax], al
  039023  add byte ptr [eax], al
  039025  add byte ptr [eax], al
  039027  add byte ptr [eax], al
  039029  add byte ptr [eax], al
  03902b  add byte ptr [eax], al
  03902d  add byte ptr [eax], al
  03902f  add byte ptr [eax], al
  039031  add byte ptr [eax], al
  039033  add byte ptr [eax], al
  039035  add byte ptr [eax], al
  039037  add byte ptr [eax], al
  039039  add byte ptr [eax], al
  03903b  add byte ptr [eax], al
  03903d  add byte ptr [eax], al
  03903f  add byte ptr [eax], al
  039041  add byte ptr [eax], al
  039043  add byte ptr [eax], al
  039045  add byte ptr [eax], al
  039047  add byte ptr [eax], al
  039049  add byte ptr [eax], al
  03904b  add byte ptr [eax], al
  03904d  add byte ptr [eax], al
  03904f  add byte ptr [eax], al
  039051  add byte ptr [eax], al
  039053  add byte ptr [eax], al
  039055  add byte ptr [eax], al
  039057  add byte ptr [eax], al
  039059  add byte ptr [eax], al
  03905b  add byte ptr [eax], al
  03905d  add byte ptr [eax], al
  03905f  add byte ptr [eax], al
  039061  add byte ptr [eax], al
  039063  add byte ptr [eax], al
  039065  add byte ptr [eax], al
  039067  add byte ptr [eax], al
  039069  add byte ptr [eax], al
  03906b  add byte ptr [eax], al
  03906d  add byte ptr [eax], al
  03906f  add byte ptr [eax], al
  039071  add byte ptr [eax], al
  039073  add byte ptr [eax], al
  039075  add byte ptr [eax], al
  039077  add byte ptr [eax], al
  039079  add byte ptr [eax], al
  03907b  add byte ptr [eax], al
  03907d  add byte ptr [eax], al
  03907f  add byte ptr [eax], al
  039081  add byte ptr [eax], al
  039083  add byte ptr [eax], al
  039085  add byte ptr [eax], al
  039087  add byte ptr [eax], al
  039089  add byte ptr [eax], al
  03908b  add byte ptr [eax], al
  03908d  add byte ptr [eax], al
  03908f  add byte ptr [eax], al
  039091  add byte ptr [eax], al
  039093  add byte ptr [eax], al
  039095  add byte ptr [eax], al
  039097  add byte ptr [eax], al
  039099  add byte ptr [eax], al
  03909b  add byte ptr [eax], al
  03909d  add byte ptr [eax], al
  03909f  add byte ptr [eax], al
  0390a1  add byte ptr [eax], al
  0390a3  add byte ptr [eax], al
  0390a5  add byte ptr [eax], al
  0390a7  add byte ptr [eax], al
  0390a9  add byte ptr [eax], al
  0390ab  add byte ptr [eax], al
  0390ad  add byte ptr [eax], al
  0390af  add byte ptr [eax], al
  0390b1  add byte ptr [eax], al
  0390b3  add byte ptr [eax], al
  0390b5  add byte ptr [eax], al
  0390b7  add byte ptr [eax], al
  0390b9  add byte ptr [eax], al
  0390bb  add byte ptr [eax], al
  0390bd  add byte ptr [eax], al
  0390bf  add byte ptr [eax], al
  0390c1  add byte ptr [eax], al
  0390c3  add byte ptr [eax], al
  0390c5  add byte ptr [eax], al
  0390c7  add byte ptr [eax], al
  0390c9  add byte ptr [eax], al
  0390cb  add byte ptr [eax], al
  0390cd  add byte ptr [eax], al
  0390cf  add byte ptr [eax], al
  0390d1  add byte ptr [eax], al
  0390d3  add byte ptr [eax], al
  0390d5  add byte ptr [eax], al
  0390d7  add byte ptr [eax], al
  0390d9  add byte ptr [eax], al
  0390db  add byte ptr [eax], al
  0390dd  add byte ptr [eax], al
  0390df  add byte ptr [eax], al
  0390e1  add byte ptr [eax], al
  0390e3  add byte ptr [eax], al
  0390e5  add byte ptr [eax], al
  0390e7  add byte ptr [eax], al
  0390e9  add byte ptr [eax], al
  0390eb  add byte ptr [eax], al
  0390ed  add byte ptr [eax], al
  0390ef  add byte ptr [eax], al
  0390f1  add byte ptr [eax], al
  0390f3  add byte ptr [eax], al
  0390f5  add byte ptr [eax], al
  0390f7  add byte ptr [eax], al
  0390f9  add byte ptr [eax], al
  0390fb  add byte ptr [eax], al
  0390fd  add byte ptr [eax], al
  0390ff  add byte ptr [eax], al
  039101  add byte ptr [eax], al
  039103  add byte ptr [eax], al
  039105  add byte ptr [eax], al
  039107  add byte ptr [eax], al
  039109  add byte ptr [eax], al
  03910b  add byte ptr [eax], al
  03910d  add byte ptr [eax], al
  03910f  add byte ptr [eax], al
  039111  add byte ptr [eax], al
  039113  add byte ptr [eax], al
  039115  add byte ptr [eax], al
  039117  add byte ptr [eax], al
  039119  add byte ptr [eax], al
  03911b  add byte ptr [eax], al
  03911d  add byte ptr [eax], al
  03911f  add byte ptr [eax], al
  039121  add byte ptr [eax], al
  039123  add byte ptr [eax], al
  039125  add byte ptr [eax], al
  039127  add byte ptr [eax], al
  039129  add byte ptr [eax], al
  03912b  add byte ptr [eax], al
  03912d  add byte ptr [eax], al
  03912f  add byte ptr [eax], al
  039131  add byte ptr [eax], al
  039133  add byte ptr [eax], al
  039135  add byte ptr [eax], al
  039137  add byte ptr [eax], al
  039139  add byte ptr [eax], al
  03913b  add byte ptr [eax], al
  03913d  add byte ptr [eax], al
  03913f  add byte ptr [eax], al
  039141  add byte ptr [eax], al
  039143  add byte ptr [eax], al
  039145  add byte ptr [eax], al
  039147  add byte ptr [eax], al
  039149  add byte ptr [eax], al
  03914b  add byte ptr [eax], al
  03914d  add byte ptr [eax], al
  03914f  add byte ptr [eax], al
  039151  add byte ptr [eax], al
  039153  add byte ptr [eax], al
  039155  add byte ptr [eax], al
  039157  add byte ptr [eax], al
  039159  add byte ptr [eax], al
  03915b  add byte ptr [eax], al
  03915d  add byte ptr [eax], al
  03915f  add byte ptr [eax], al
  039161  add byte ptr [eax], al
  039163  add byte ptr [eax], al
  039165  add byte ptr [eax], al
  039167  add byte ptr [eax], al
  039169  add byte ptr [eax], al
  03916b  add byte ptr [eax], al
  03916d  add byte ptr [eax], al
  03916f  add byte ptr [eax], al
  039171  add byte ptr [eax], al
  039173  add byte ptr [eax], al
  039175  add byte ptr [eax], al
  039177  add byte ptr [eax], al
  039179  add byte ptr [eax], al
  03917b  add byte ptr [eax], al
  03917d  add byte ptr [eax], al
  03917f  add byte ptr [eax], al
  039181  add byte ptr [eax], al
  039183  add byte ptr [eax], al
  039185  add byte ptr [eax], al
  039187  add byte ptr [eax], al
  039189  add byte ptr [eax], al
  03918b  add byte ptr [eax], al
  03918d  add byte ptr [eax], al
L3918f:
  03918f  add byte ptr [eax], al
  039191  add byte ptr [eax], al
  039193  add byte ptr [eax], al
L39195:
  039195  add byte ptr [eax], al
  039197  add byte ptr [eax], al
  039199  add byte ptr [eax], al
  03919b  add byte ptr [eax], al
  03919d  add byte ptr [eax], al
  03919f  add byte ptr [eax], al
L391a1:
  0391a1  add byte ptr [eax], al
  0391a3  add byte ptr [eax], al
  0391a5  add byte ptr [eax], al
  0391a7  add byte ptr [eax], al
  0391a9  add byte ptr [eax], al
  0391ab  add byte ptr [eax], al
  0391ad  add byte ptr [eax], al
  0391af  add byte ptr [eax], al
  0391b1  add byte ptr [eax], al
  0391b3  add byte ptr [ecx + ebp*4], ah
  0391b6  jns 0x391f2
  0391b8  mov al, 0xf
  0391ba  mov eax, dword ptr [0x35]
  0391bf  add byte ptr [ebx], cl
  0391c1  mov dword ptr [2], eax
  0391c6  add byte ptr [eax], al
  0391c8  or byte ptr [edi + 0x780b3eaf], bl
  0391ce  jo 0x3918f
  0391d0  add byte ptr [eax], al
  0391d2  loopne 0x39195
  0391d4  sbb eax, 0x32447045
  0391d9  xor al, 0xbd
  0391db  inc edx
  0391dc  add byte ptr [eax], al
  0391de  loopne 0x391a1
  0391e0  cmp eax, dword ptr [ecx - 0x1c2ebb90]
  0391e6  mov ebp, 0xa0000042
  0391eb  inc ebx
  0391ec  aam 0x6c
  0391ee  lea edi, [esi]
  0391f0  xchg esi, eax
  0391f1  jge 0x39231
  0391f4  mov dword ptr [0x34bf7587], eax
  0391f9  iretd 
  0391fa  lodsd eax, dword ptr [esi]
  0391fb  rcl dword ptr [ebp - 0x32], 0x60
  0391ff  inc esp
  039200  leave 
  039201  jns 0x391b9
  039203  inc edx
  039204  jo 0x39270
  039206  lodsd eax, dword ptr [esi]
  039207  ror dword ptr [edi], 0xe
  03920a  popal 
  03920b  inc esp
  03920c  in eax, dx
  03920d  mov eax, dword ptr [0x42b6]
  039212  mov al, byte ptr [0x1552f543]
  039217  mov edi, 0x3d26d64e
  03921c  cmp ebp, dword ptr [ebp - 0x2ef440b1]
  039222  inc ecx
  039223  ret 0x313
  039226  cmp dword ptr [edi + 0x68], eax
  03922a  stosd dword ptr es:[edi], eax
  03922b  inc edx
  03922c  push 0xb5c24166
L39231:
  039231  inc edx
  039232  cmp dword ptr [eax + 0x5c], eax
  039236  stosd dword ptr es:[edi], eax
  039237  inc edx
  039238  add byte ptr [eax], al
  03923a  mov al, byte ptr [0xcbaf3743]
  03923f  js 0x3923e
  039242  push ebx
  039245  pop edi
  039246  mov di, 0x7458
  03924a  js 0x3928d
  03924c  sub ah, byte ptr [ebx - 0x6560bbfa]
  039252  mov byte ptr [edx - 0x50], 0x7e
  039256  jp 0x39299
  039258  movsb byte ptr es:[edi], byte ptr [esi]
  039259  loopne 0x39261
L3925b:
  03925b  inc esp
  03925c  sbb edi, eax
  03925f  inc edx
  039260  add byte ptr [eax], al
  039262  mov al, byte ptr [0x1693cd43]
  039267  mov esi, 0x3eb1a927
  03926c  in al, 0x1f
  03926e  insd dword ptr es:[edi], dx
  03926f  mov edi, 0xc1dc323f
  039274  inc byte ptr [eax - 0x4d]
  039277  inc ebx
  039278  out dx, al
  039279  add al, 0xb7
  03927b  inc edx
  03927c  rol dword ptr [esi], cl
  03927e  fadd st(1), st(0)
  039280  stc 
  039281  mov eax, 0xb6fe43b3
  039286  mov bh, 0x42
  039288  add byte ptr [eax], al
  03928a  mov al, byte ptr [0x44a06743]
  03928f  aas 
  039290  call 0xfe4151df
  039295  sub eax, 0xa2c6bf22
  03929a  in al, 0x41
  03929c  dec esp
  03929d  mov ebx, 0xea0c433d
  0392a2  les eax, ptr [edx + 0x36]
  0392a5  in ax, 0x41
  0392a8  jne 0x3925b
  0392aa  inc ebx
  0392ac  fild qword ptr [ebp - 0x3b]
  0392af  inc edx
  0392b0  add byte ptr [eax], al
  0392b2  mov al, byte ptr [0x43ed4c43]
  0392b7  mov esi, 0xbd1e094a
  0392bc  jg 0x392d1
  0392be  jnp 0x3927f
  0392c0  or cl, ah
  0392c2  push ecx
  0392c3  inc ecx
  0392c4  ljmp 0xa8aa:0xd941d06c
  0392cb  inc edx
  0392cc  mov esi, 0xe4415305
L392d1:
  0392d1  arpl ax, bx
  0392d3  inc ecx
  0392d4  and eax, 0x42a88f
  0392d9  add byte ptr [eax - 0x74825abd], ah
  0392df  cmp al, 0x31
  0392e1  dec dword ptr [ebp + edi + 0x5c]
  0392e5  movsb byte ptr es:[edi], byte ptr [esi]
  0392e6  jg 0x392a7
  0392e8  dec esp
  0392e9  and dword ptr [ebx], edi
  0392eb  sal byte ptr [0x36c2a159], 0x9d
  0392f2  mov dh, 0x42
  0392f4  adc al, 0xaa
  0392f6  daa 
  0392f7  sal byte ptr [edi], 0x72
  0392fa  lahf 
  0392fb  ret 0xb846
  0392fe  mov dh, 0x42
  039300  add byte ptr [eax], al
  039302  mov al, byte ptr [0xe8dc1643]
  039307  cmc 
  039309  int1 
  03930a  jnp 0x3934a
  03930c  inc esi
  03930d  push ds
  03930e  pop ebx
  03930f  mov edi, 0xbfca3686
  039314  std 
  039315  stosb byte ptr es:[edi], al
  039316  cmp eax, 0xb7cc47c3
  03931b  inc edx
  03931c  dec ecx
  03931d  pop ecx
  03931e  int 0xbf
  039320  sub dword ptr [esp + edi - 0x47ac7b3d], esi
  039327  inc edx
  039328  add byte ptr [eax], al
  03932a  mov al, byte ptr [0x11780143]
  03932f  mov esi, 0x3d992cb9
  039334  call 0x5fc30fe6
  039339  mov dword ptr [eax + eax*8 - 0x3c63a16c], 0x42b6bc12
  039344  sal dword ptr [0xe404c077], cl
L3934a:
  03934a  wait 
  03934b  ret 
  03934c  sbb ah, cl
  03934e  mov dh, 0x42
  039350  add byte ptr [eax], al
  039352  mov al, byte ptr [0x52982e43]
  039357  mov esi, 0xbdba9e87
  03935c  jne 0x393ce
  03935e  jns 0x3931f
  039360  add eax, 0xf2c20d29
  039365  jecxz 0x3932b
  039368  je 0x39349
  03936a  stosd dword ptr es:[edi], eax
  03936b  inc edx
  03936c  jecxz 0x393e3
  03936e  or eax, 0xe2a7b0c2
  039373  ret 
  039374  div byte ptr [edi + 0x42ab]
  03937a  mov al, byte ptr [0x4dac943]
  03937f  aas 
  039380  lcall 0x5aca, 0xa83c7f0e
  039387  mov edi, 0xc10b1884
  03938c  or eax, 0xd0c4144e
  039391  int3 
  039392  cmpsd dword ptr [esi], dword ptr es:[edi]
  039393  inc edx
  039394  hlt 
  039395  ror dword ptr [ebx], 0xc1
  039398  sbb ecx, dword ptr [esi]
  03939a  adc al, 0xc4
  03939c  inc ebp
  03939d  leave 
  03939e  cmpsd dword ptr [esi], dword ptr es:[edi]
  03939f  inc edx
  0393a0  add byte ptr [eax], al
  0393a2  mov al, byte ptr [0x152e3a43]
  0393a7  mov edi, 0x3d9e8ac5
  0393ac  pop esi
  0393ad  sbb byte ptr [edi - 0x41], cl
  0393b0  movsd dword ptr es:[edi], dword ptr [esi]
  0393b1  mov bh, 0xa4
  0393b3  rcr dword ptr [ebp + 0x76c44248], 0x1f
  0393ba  mov bl, 0x42
  0393bc  or eax, 0xebc1a3f8
  0393c1  or byte ptr [edx - 0x3c], al
  0393c4  mov eax, 0x42b32d
  0393c9  add byte ptr [eax + 0x53ebd43], ah
  0393cf  aas 
  0393d0  mov al, 0x20
  0393d2  test byte ptr [ebx], bh
  0393d4  test byte ptr [esi - 0x66c340a6], dl
  0393da  mov ecx, 0x5f2a98c1
  0393df  les edi, ptr [edi + 0x4d42c096]
  0393e5  dec edx
  0393e6  mov eax, 0x5eebcfc1
  0393eb  les ebp, ptr [ecx]
  0393ed  int3 
  0393ee  rol byte ptr [edx], 0
  0393f2  mov al, byte ptr [0xb443ec43]
  0393f7  mov ebp, 0x3da63cbf
  0393fc  mov dword ptr [eax], ebp
  0393fe  jle 0x393bf
  039400  mov byte ptr [esi - 0x2baa3df4], dh
  039406  jne 0x393cc
  039408  pop esp
  039409  iretd 
  03940a  scasb al, byte ptr es:[edi]
  03940b  inc edx
  03940c  call 0x97c5a098
  039411  xchg esp, eax
  039412  jne 0x393d8
  039414  cld 
  039415  imul byte ptr [esi - 0x5fffffbe]
  03941b  inc ebx
  03941c  mov eax, 0x68be8914
  039421  db 0xc6
  039422  mov cl, 0x3d
  039424  movsd dword ptr es:[edi], dword ptr [esi]
  039425  cmpsb byte ptr [esi], byte ptr es:[edi]
  039426  jne 0x393e7
  039428  enter 0x2179, -0x3e
  03942c  js 0x39449
  03942e  mov esp, eax
  039430  sbb al, 0x2a
  039432  popfd 
  039433  inc edx
  039434  sub byte ptr [ebx + 0x21], cl
  039437  ret 0xfb99
  03943a  mov ah, al
  03943c  mov esp, 0x429d51
  039441  add byte ptr [eax - 0x76eb47bd], ah
  039447  mov esi, 0x3db1c668
  03944c  movsd dword ptr es:[edi], dword ptr [esi]
  03944d  cmpsb byte ptr [esi], byte ptr es:[edi]
  03944e  jne 0x3940f
  039450  enter 0x35df, -0x3e
  039454  or byte ptr [0xd41cc497], cl
  03945a  mov eax, dword ptr [edx + 0x28]
  03945d  mov cl, 0x35
  03945f  ret 0xed29
  039462  xchg esi, eax
  039463  les edi, ptr [ebx + edi*8 + 0x428b]
  03946a  mov al, byte ptr [0x43]
  03946f  add byte ptr [eax], al
  039471  add byte ptr [eax], al
  039473  add byte ptr [eax], al
  039475  add byte ptr [eax], al
  039477  add byte ptr [eax], al
  039479  add byte ptr [eax], al
  03947b  add byte ptr [eax], al
  03947d  add byte ptr [eax], al
  03947f  add byte ptr [eax], al
  039481  add byte ptr [eax], al
  039483  add byte ptr [eax], al
  039485  add byte ptr [eax], al
  039487  add byte ptr [eax], al
  039489  add byte ptr [eax], al
  03948b  add byte ptr [eax], al
  03948d  add byte ptr [eax], al
  03948f  add byte ptr [eax], al
  039491  add byte ptr [eax], al
  039493  add byte ptr [eax], al
  039495  add byte ptr [eax], al
  039497  add byte ptr [eax], al
  039499  add byte ptr [eax], al
  03949b  add byte ptr [eax], al
  03949d  add byte ptr [eax], al
  03949f  add byte ptr [eax], al
  0394a1  add byte ptr [eax], al
  0394a3  add byte ptr [eax], al
  0394a5  add byte ptr [eax], al
  0394a7  add byte ptr [eax], al
  0394a9  add byte ptr [eax], al
  0394ab  add byte ptr [eax], al
  0394ad  add byte ptr [eax], al
  0394af  add byte ptr [eax], al
  0394b1  add byte ptr [eax], al
  0394b3  add byte ptr [eax], al
  0394b5  add byte ptr [eax], al
  0394b7  add byte ptr [eax], al
  0394b9  add byte ptr [eax], al
  0394bb  add byte ptr [eax], al
  0394bd  add byte ptr [eax], al
  0394bf  add byte ptr [eax], al
  0394c1  add byte ptr [eax], al
  0394c3  add byte ptr [eax], al
  0394c5  add byte ptr [eax], al
  0394c7  add byte ptr [eax], al
  0394c9  add byte ptr [eax], al
  0394cb  add byte ptr [eax], al
  0394cd  add byte ptr [eax], al
  0394cf  add byte ptr [eax], al
  0394d1  add byte ptr [eax], al
  0394d3  add byte ptr [eax], al
  0394d5  add byte ptr [eax], al
  0394d7  add byte ptr [eax], al
  0394d9  add byte ptr [eax], al
  0394db  add byte ptr [eax], al
  0394dd  add byte ptr [eax], al
  0394df  add byte ptr [eax], al
  0394e1  add byte ptr [eax], al
  0394e3  add byte ptr [eax], al
  0394e5  add byte ptr [eax], al
  0394e7  add byte ptr [eax], al
  0394e9  add byte ptr [eax], al
  0394eb  add byte ptr [eax], al
  0394ed  add byte ptr [eax], al
  0394ef  add byte ptr [eax], al
  0394f1  add byte ptr [eax], al
  0394f3  add byte ptr [eax], al
  0394f5  add byte ptr [eax], al
  0394f7  add byte ptr [eax], al
  0394f9  add byte ptr [eax], al
  0394fb  add byte ptr [eax], al
  0394fd  add byte ptr [eax], al
  0394ff  add byte ptr [eax], al
  039501  add byte ptr [eax], al
  039503  add byte ptr [eax], al
  039505  add byte ptr [eax], al
  039507  add byte ptr [eax], al
  039509  add byte ptr [eax], al
  03950b  add byte ptr [eax], al
  03950d  add byte ptr [eax], al
  03950f  add byte ptr [eax], al
  039511  add byte ptr [eax], al
  039513  add byte ptr [eax], al
  039515  add byte ptr [eax], al
  039517  add byte ptr [eax], al
  039519  add byte ptr [eax], al
  03951b  add byte ptr [eax], al
  03951d  add byte ptr [eax], al
  03951f  add byte ptr [eax], al
  039521  add byte ptr [eax], al
  039523  add byte ptr [eax], al
  039525  add byte ptr [eax], al
  039527  add byte ptr [eax], al
  039529  add byte ptr [eax], al
  03952b  add byte ptr [eax], al
  03952d  add byte ptr [eax], al
  03952f  add byte ptr [eax], al
  039531  add byte ptr [eax], al
  039533  add byte ptr [eax], al
  039535  add byte ptr [eax], al
  039537  add byte ptr [eax], al
  039539  add byte ptr [eax], al
  03953b  add byte ptr [eax], al
  03953d  add byte ptr [eax], al
  03953f  add byte ptr [eax], al
  039541  add byte ptr [eax], al
  039543  add byte ptr [eax], al
  039545  add byte ptr [eax], al
  039547  add byte ptr [eax], al
  039549  add byte ptr [eax], al
  03954b  add byte ptr [eax], al
  03954d  add byte ptr [eax], al
  03954f  add byte ptr [eax], al
  039551  add byte ptr [eax], al
  039553  add byte ptr [eax], al
  039555  add byte ptr [eax], al
  039557  add byte ptr [eax], al
  039559  add byte ptr [eax], al
  03955b  add byte ptr [eax], al
  03955d  add byte ptr [eax], al
  03955f  add byte ptr [eax], al
  039561  add byte ptr [eax], al
  039563  add byte ptr [eax], al
  039565  add byte ptr [eax], al
  039567  add byte ptr [eax], al
  039569  add byte ptr [eax], al
  03956b  add byte ptr [eax], al
  03956d  add byte ptr [eax], al
  03956f  add byte ptr [eax], al
  039571  add byte ptr [eax], al
  039573  add byte ptr [eax], al
  039575  add byte ptr [eax], al
  039577  add byte ptr [eax], al
  039579  add byte ptr [eax], al
  03957b  add byte ptr [eax], al
  03957d  add byte ptr [eax], al
  03957f  add byte ptr [eax], al
  039581  add byte ptr [eax], al
  039583  add byte ptr [eax], al
  039585  add byte ptr [eax], al
  039587  add byte ptr [eax], al
  039589  add byte ptr [eax], al
  03958b  add byte ptr [eax], al
  03958d  add byte ptr [eax], al
  03958f  add byte ptr [eax], al
  039591  add byte ptr [eax], al
  039593  add byte ptr [eax], al
  039595  add byte ptr [eax], al
  039597  add byte ptr [eax], al
  039599  add byte ptr [eax], al
  03959b  add byte ptr [eax], al
  03959d  add byte ptr [eax], al
  03959f  add byte ptr [eax], al
  0395a1  add byte ptr [eax], al
  0395a3  add byte ptr [eax], al
  0395a5  add byte ptr [eax], al
  0395a7  add byte ptr [eax], al
  0395a9  add byte ptr [eax], al
  0395ab  add byte ptr [eax], al
  0395ad  add byte ptr [eax], al
  0395af  add byte ptr [eax], al
  0395b1  add byte ptr [eax], al
  0395b3  add byte ptr [eax], al
  0395b5  add byte ptr [eax], al
  0395b7  add byte ptr [eax], al
  0395b9  add byte ptr [eax], al
  0395bb  add byte ptr [eax], al
  0395bd  add byte ptr [eax], al
  0395bf  add byte ptr [eax], al
  0395c1  add byte ptr [eax], al
  0395c3  add byte ptr [eax], al
  0395c5  add byte ptr [eax], al
  0395c7  add byte ptr [eax], al
  0395c9  add byte ptr [eax], al
  0395cb  add byte ptr [eax], al
  0395cd  add byte ptr [eax], al
  0395cf  add byte ptr [eax], al
  0395d1  add byte ptr [eax], al
  0395d3  add byte ptr [eax], al
  0395d5  add byte ptr [eax], al
  0395d7  add byte ptr [eax], al
  0395d9  add byte ptr [eax], al
  0395db  add byte ptr [eax], al
  0395dd  add byte ptr [eax], al
  0395df  add byte ptr [eax], al
  0395e1  add byte ptr [eax], al
  0395e3  add byte ptr [eax], al
  0395e5  add byte ptr [eax], al
  0395e7  add byte ptr [eax], al
  0395e9  add byte ptr [eax], al
  0395eb  add byte ptr [eax], al
  0395ed  add byte ptr [eax], al
  0395ef  add byte ptr [eax], al
  0395f1  add byte ptr [eax], al
  0395f3  add byte ptr [eax], al
  0395f5  add byte ptr [eax], al
  0395f7  add byte ptr [eax], al
  0395f9  add byte ptr [eax], al
  0395fb  add byte ptr [eax], al
  0395fd  add byte ptr [eax], al
  0395ff  add byte ptr [eax], al
  039601  add byte ptr [eax], al
  039603  add byte ptr [eax], al
  039605  add byte ptr [eax], al
  039607  add byte ptr [eax], al
  039609  add byte ptr [eax], al
  03960b  add byte ptr [eax], al
  03960d  add byte ptr [eax], al
  03960f  add byte ptr [eax], al
  039611  add byte ptr [eax], al
  039613  add byte ptr [eax], al
  039615  add byte ptr [eax], al
  039617  add byte ptr [eax], al
  039619  add byte ptr [eax], al
  03961b  add byte ptr [eax], al
  03961d  add byte ptr [eax], al
  03961f  add byte ptr [eax], al
  039621  add byte ptr [eax], al
  039623  add byte ptr [eax], al
  039625  add byte ptr [eax], al
  039627  add byte ptr [eax], al
  039629  add byte ptr [eax], al
  03962b  add byte ptr [eax], al
  03962d  add byte ptr [eax], al
  03962f  add byte ptr [eax], al
  039631  add byte ptr [eax], al
  039633  add byte ptr [eax], al
  039635  add byte ptr [eax], al
  039637  add byte ptr [eax], al
  039639  add byte ptr [eax], al
  03963b  add byte ptr [eax], al
  03963d  add byte ptr [eax], al
  03963f  add byte ptr [eax], al
  039641  add byte ptr [eax], al
  039643  add byte ptr [eax], al
  039645  add byte ptr [eax], al
  039647  add byte ptr [eax], al
  039649  add byte ptr [eax], al
  03964b  add byte ptr [eax], al
  03964d  add byte ptr [eax], al
  03964f  add byte ptr [eax], al
  039651  add byte ptr [eax], al
  039653  add byte ptr [eax], al
  039655  add byte ptr [eax], al
  039657  add byte ptr [eax], al
  039659  add byte ptr [eax], al
  03965b  add byte ptr [eax], al
  03965d  add byte ptr [eax], al
  03965f  add byte ptr [eax], al
  039661  add byte ptr [eax], al
  039663  add byte ptr [eax], al
  039665  add byte ptr [eax], al
  039667  add byte ptr [eax], al
  039669  add byte ptr [eax], al
  03966b  add byte ptr [eax], al
  03966d  add byte ptr [eax], al
  03966f  add byte ptr [eax], al
  039671  add byte ptr [eax], al
  039673  add byte ptr [eax], al
  039675  add byte ptr [eax], al
  039677  add byte ptr [eax], al
  039679  add byte ptr [eax], al
  03967b  add byte ptr [eax], al
  03967d  add byte ptr [eax], al
  03967f  add byte ptr [eax], al
  039681  add byte ptr [eax], al
  039683  add byte ptr [eax], al
  039685  add byte ptr [eax], al
  039687  add byte ptr [eax], al
  039689  add byte ptr [eax], al
  03968b  add byte ptr [eax], al
  03968d  add byte ptr [eax], al
  03968f  add byte ptr [eax], al
  039691  add byte ptr [eax], al
  039693  add byte ptr [eax], al
  039695  add byte ptr [eax], al
  039697  add byte ptr [eax], al
  039699  add byte ptr [eax], al
  03969b  add byte ptr [eax], al
  03969d  add byte ptr [eax], al
  03969f  add byte ptr [eax], al
  0396a1  add byte ptr [eax], al
  0396a3  add byte ptr [eax], al
  0396a5  add byte ptr [eax], al
  0396a7  add byte ptr [eax], al
  0396a9  add byte ptr [eax], al
  0396ab  add byte ptr [eax], al
  0396ad  add byte ptr [eax], al
  0396af  add byte ptr [eax], al
  0396b1  add byte ptr [eax], al
  0396b3  add byte ptr [eax], al
  0396b5  add byte ptr [eax], al
  0396b7  add byte ptr [eax], al
  0396b9  add byte ptr [eax], al
  0396bb  add byte ptr [eax], al
  0396bd  add byte ptr [eax], al
  0396bf  add byte ptr [eax], al
  0396c1  add byte ptr [eax], al
  0396c3  add byte ptr [eax], al
  0396c5  add byte ptr [eax], al
  0396c7  add byte ptr [eax], al
  0396c9  add byte ptr [eax], al
  0396cb  add byte ptr [eax], al
  0396cd  add byte ptr [eax], al
  0396cf  add byte ptr [eax], al
  0396d1  add byte ptr [eax], al
  0396d3  add byte ptr [eax], al
  0396d5  add byte ptr [eax], al
  0396d7  add byte ptr [eax], al
  0396d9  add byte ptr [eax], al
  0396db  add byte ptr [eax], al
  0396dd  add byte ptr [eax], al
  0396df  add byte ptr [eax], al
  0396e1  add byte ptr [eax], al
  0396e3  add byte ptr [eax], al
  0396e5  add byte ptr [eax], al
  0396e7  add byte ptr [eax], al
  0396e9  add byte ptr [eax], al
  0396eb  add byte ptr [eax], al
  0396ed  add byte ptr [eax], al
  0396ef  add byte ptr [eax], al
  0396f1  add byte ptr [eax], al
  0396f3  add byte ptr [eax], al
  0396f5  add byte ptr [eax], al
  0396f7  add byte ptr [eax], al
  0396f9  add byte ptr [eax], al
  0396fb  add byte ptr [eax], al
  0396fd  add byte ptr [eax], al
  0396ff  add byte ptr [eax], al
  039701  add byte ptr [eax], al
  039703  add byte ptr [eax], al
  039705  add byte ptr [eax], al
  039707  add byte ptr [eax], al
  039709  add byte ptr [eax], al
  03970b  add byte ptr [eax], al
  03970d  add byte ptr [eax], al
  03970f  add byte ptr [eax], al
  039711  add byte ptr [eax], al
  039713  add byte ptr [eax], al
  039715  add byte ptr [eax], al
  039717  add byte ptr [eax], al
  039719  add byte ptr [eax], al
  03971b  add byte ptr [eax], al
  03971d  add byte ptr [eax], al
  03971f  add byte ptr [eax], al
  039721  add byte ptr [eax], al
  039723  add byte ptr [eax], al
  039725  add byte ptr [eax], al
  039727  add byte ptr [eax], al
  039729  add byte ptr [eax], al
  03972b  add byte ptr [eax], al
  03972d  add byte ptr [eax], al
  03972f  add byte ptr [eax], al
  039731  add byte ptr [eax], al
  039733  add byte ptr [eax], al
  039735  add byte ptr [eax], al
  039737  add byte ptr [eax], al
  039739  add byte ptr [eax], al
  03973b  add byte ptr [eax], al
  03973d  add byte ptr [eax], al
  03973f  add byte ptr [eax], al
  039741  add byte ptr [eax], al
  039743  add byte ptr [eax], al
  039745  add byte ptr [eax], al
  039747  add byte ptr [eax], al
  039749  add byte ptr [eax], al
  03974b  add byte ptr [eax], al
  03974d  add byte ptr [eax], al
  03974f  add byte ptr [eax], al
  039751  add byte ptr [eax], al
  039753  add byte ptr [eax], al
  039755  add byte ptr [eax], al
  039757  add byte ptr [eax], al
  039759  add byte ptr [eax], al
  03975b  add byte ptr [eax], al
  03975d  add byte ptr [eax], al
  03975f  add byte ptr [eax], al
  039761  add byte ptr [eax], al
  039763  add byte ptr [eax], al
  039765  add byte ptr [eax], al
  039767  add byte ptr [eax], al
  039769  add byte ptr [eax], al
  03976b  add byte ptr [eax], al
  03976d  add byte ptr [eax], al
  03976f  add byte ptr [eax], al
  039771  add byte ptr [eax], al
  039773  add byte ptr [eax], al
  039775  add byte ptr [eax], al
  039777  add byte ptr [eax], al
  039779  add byte ptr [eax], al
  03977b  add byte ptr [eax], al
  03977d  add byte ptr [eax], al
  03977f  add byte ptr [eax], al
  039781  add byte ptr [eax], al
  039783  add byte ptr [eax], al
  039785  add byte ptr [eax], al
  039787  add byte ptr [eax], al
  039789  add byte ptr [eax], al
  03978b  add byte ptr [eax], al
  03978d  add byte ptr [eax], al
  03978f  add byte ptr [eax], al
  039791  add byte ptr [eax], al
  039793  add byte ptr [eax], al
  039795  add byte ptr [eax], al
  039797  add byte ptr [eax], al
  039799  add byte ptr [eax], al
  03979b  add byte ptr [eax], al
  03979d  add byte ptr [eax], al
  03979f  add byte ptr [eax], al
  0397a1  add byte ptr [eax], al
  0397a3  add byte ptr [eax], al
  0397a5  add byte ptr [eax], al
  0397a7  add byte ptr [eax], al
  0397a9  add byte ptr [eax], al
  0397ab  add byte ptr [eax], al
  0397ad  add byte ptr [eax], al
  0397af  add byte ptr [eax], al
  0397b1  add byte ptr [eax], al
  0397b3  add byte ptr [eax], al
  0397b5  add byte ptr [eax], al
  0397b7  add byte ptr [eax], al
  0397b9  add byte ptr [eax], al
  0397bb  add byte ptr [eax], al
  0397bd  add byte ptr [eax], al
  0397bf  add byte ptr [eax], al
  0397c1  add byte ptr [eax], al
  0397c3  add byte ptr [eax], al
  0397c5  add byte ptr [eax], al
  0397c7  add byte ptr [eax], al
  0397c9  add byte ptr [eax], al
  0397cb  add byte ptr [eax], al
  0397cd  add byte ptr [eax], al
  0397cf  add byte ptr [eax], al
  0397d1  add byte ptr [eax], al
  0397d3  add byte ptr [eax], al
  0397d5  add byte ptr [eax], al
  0397d7  add byte ptr [eax], al
  0397d9  add byte ptr [eax], al
  0397db  add byte ptr [eax], al
  0397dd  add byte ptr [eax], al
  0397df  add byte ptr [eax], al
  0397e1  add byte ptr [eax], al
  0397e3  add byte ptr [eax], al
  0397e5  add byte ptr [eax], al
  0397e7  add byte ptr [eax], al
  0397e9  add byte ptr [eax], al
  0397eb  add byte ptr [eax], al
  0397ed  add byte ptr [eax], al
  0397ef  add byte ptr [eax], al
  0397f1  add byte ptr [eax], al
  0397f3  add byte ptr [eax], al
  0397f5  add byte ptr [eax], al
  0397f7  add byte ptr [eax], al
  0397f9  add byte ptr [eax], al
  0397fb  add byte ptr [eax], al
  0397fd  add byte ptr [eax], al
  0397ff  add byte ptr [eax], al
  039801  add byte ptr [eax], al
  039803  add byte ptr [eax], al
  039805  add byte ptr [eax], al
  039807  add byte ptr [eax], al
  039809  add byte ptr [eax], al
  03980b  add byte ptr [eax], al
  03980d  add byte ptr [eax], al
  03980f  add byte ptr [eax], al
  039811  add byte ptr [eax], al
  039813  add byte ptr [eax], al
  039815  add byte ptr [eax], al
  039817  add byte ptr [eax], al
  039819  add byte ptr [eax], al
  03981b  add byte ptr [eax], al
  03981d  add byte ptr [eax], al
  03981f  add byte ptr [eax], al
  039821  add byte ptr [eax], al
  039823  add byte ptr [eax], al
  039825  add byte ptr [eax], al
  039827  add byte ptr [eax], al
  039829  add byte ptr [eax], al
  03982b  add byte ptr [eax], al
  03982d  add byte ptr [eax], al
  03982f  add byte ptr [eax], al
  039831  add byte ptr [eax], al
  039833  add byte ptr [eax], al
  039835  add byte ptr [eax], al
  039837  add byte ptr [eax], al
  039839  add byte ptr [eax], al
  03983b  add byte ptr [eax], al
  03983d  add byte ptr [eax], al
  03983f  add byte ptr [eax], al
  039841  add byte ptr [eax], al
  039843  add byte ptr [eax], al
  039845  add byte ptr [eax], al
  039847  add byte ptr [eax], al
  039849  add byte ptr [eax], al
  03984b  add byte ptr [eax], al
  03984d  add byte ptr [eax], al
  03984f  add byte ptr [eax], al
  039851  add byte ptr [eax], al
  039853  add byte ptr [eax], al
  039855  add byte ptr [eax], al
  039857  add byte ptr [eax], al
  039859  add byte ptr [eax], al
  03985b  add byte ptr [eax], al
  03985d  add byte ptr [eax], al
  03985f  add byte ptr [eax], al
  039861  add byte ptr [eax], al
  039863  add byte ptr [eax], al
  039865  add byte ptr [eax], al
  039867  add byte ptr [eax], al
  039869  add byte ptr [eax], al
  03986b  add byte ptr [eax], al
  03986d  add dh, al
  03986f  add eax, 0xdd
  039874  or dword ptr [ebx], eax
  039876  add eax, 0x18
  03987b  shld ebx, eax, 0x1c
  03987f  and eax, 0xf
  039882  mov word ptr [0xe4], bx
  039889  mov word ptr [0xd4], ax
  03988f  mov al, 0x21
  039891  int 0x33
  039893  ret 
  039894  or eax, 0x6c61680a
  039899  arpl word ptr [ecx + 0x6f], di
  03989c  outsb dx, byte ptr [esi]
  03989d  and byte ptr [ebx + 0x75], dh
  0398a0  jo 0x39907
  0398a2  jb 0x398c4
  0398a4  imul ebp, dword ptr [edi + 0x6c], 0x6d
  0398a8  and byte ptr gs:[ebp + 0x6e], ah
  0398af  imul ebp, dword ptr [ecx + 0x6e], 0x65
  0398b3  and byte ptr [eax], ch
  0398b5  je 0x39924
  0398b7  sub dword ptr [eax], esp
  0398b9  insb byte ptr es:[edi], dx
  0398ba  outsd dx, dword ptr [esi]
  0398bb  popal 
  0398bc  imul ebp, dword ptr fs:[esi + 0x67], 0xa0d2e2e
L398c4:
  0398c4  and al, 0x20
  0398c6  cli 
  0398c7  imul ebp, dword ptr [esi + 0x69], 0x6c616974
  0398ce  imul edi, dword ptr [edx + 0x69], 0x7420676e
  0398d5  popal 
  0398d6  bound ebp, qword ptr [ebp + 0x73]
  0398da  or eax, 0xfa20240a
  0398e1  popal 
  0398e2  insb byte ptr es:[edi], dx
  0398e3  insb byte ptr es:[edi], dx
  0398e4  outsd dx, dword ptr [esi]
  0398e5  arpl word ptr [ecx + 0x74], sp
  0398e8  imul ebp, dword ptr [esi + 0x67], 0x6d656d20
  0398ef  outsd dx, dword ptr [esi]
  0398f0  jb 0x3996b
  0398f2  or eax, 0xfa20240a
  0398f9  insb byte ptr es:[edi], dx
  0398fa  outsd dx, dword ptr [esi]
  0398fb  popal 
  0398fc  imul ebp, dword ptr fs:[esi + 0x67], 0x646e6120
  039904  and byte ptr [eax + 0x72], dh
L39907:
  039907  jo 0x3996b
  03990a  jb 0x39975
  03990c  outsb dx, byte ptr [esi]
  03990d  and byte ptr [bx + di + 0x6e], ah
  039911  imul ebp, dword ptr [ebp + 0x2e], 0x240a0d2e
  039918  and dl, bh
  03991a  arpl word ptr [ecx + 0x6c], sp
  03991d  arpl word ptr [ebp + 0x6c], si
  039920  popal 
  039921  je 0x3998c
  039923  outsb dx, byte ptr [esi]
L39924:
  039924  and byte ptr [bp + 0x6c], ah
  039928  popal 
  039929  jb 0x39990
  03992b  jae 0x3995b
  03992d  or eax, 0xfa20240a
  039933  insb byte ptr es:[edi], dx
  039934  outsd dx, dword ptr [esi]
  039935  popal 
  039936  imul ebp, dword ptr fs:[esi + 0x67], 0x78657420
  03993e  je 0x399b5
  039940  jb 0x399a7
  039942  jae 0x39972
  039944  or eax, 0xfa20240a
  03994a  arpl word ptr [edx + 0x65], si
  03994d  popal 
  03994e  je 0x399b9
  039950  outsb dx, byte ptr [esi]
  039951  and byte ptr [bx + di + 0x6e], ah
  039955  and byte ptr fs:[ecx + 0x75], dh
  039959  popal 
  03995a  outsb dx, byte ptr [esi]
L3995b:
  03995b  je 0x399c6
  03995d  jp 0x399c8
  03995f  outsb dx, byte ptr [esi]
  039960  and byte ptr [di + 0x69], ch
  039964  jo 0x399d3
  039966  popal 
  039967  jo 0x399dc
  039969  and byte ptr [eax], ch
L3996b:
  03996b  xor dword ptr [ecx], ebp
  03996d  or byte ptr cs:[eax], cl
  039971  or byte ptr [eax], cl
  039973  and al, 0x32
L39975:
  039975  sub dword ptr [esi], ebp
  039977  or byte ptr cs:[eax], cl
  03997a  or byte ptr [eax], cl
  03997c  and al, 0x33
  03997e  sub dword ptr [esi], ebp
  039980  or byte ptr cs:[eax], cl
  039983  or byte ptr [eax], cl
  039985  and al, 0x34
  039987  sub dword ptr [esi], ebp
  039989  or eax, 0xfa20240a
  03998f  jno 0x39a06
  039991  popal 
  039992  outsb dx, byte ptr [esi]
  039993  je 0x399fe
  039995  jp 0x39a00
  039997  outsb dx, byte ptr [esi]
  039998  and byte ptr [bp + 0x69], ah
  03999c  jb 0x39a11
  03999e  je 0x399c0
  0399a0  je 0x39a07
  0399a2  js 0x39a18
  0399a4  jne 0x39a18
  0399a6  jae 0x399c9
  0399a9  jae 0x39a13
  0399ab  popal 
  0399ac  imul ebp, dword ptr fs:[esi + 0x67], 0x62617420
  0399b4  insb byte ptr es:[edi], dx
L399b5:
  0399b5  or eax, 0xfa20240a
  0399bd  jno 0x39a34
  0399bf  popal 
L399c0:
  0399c0  outsb dx, byte ptr [esi]
  0399c1  je 0x39a2c
  0399c3  jp 0x39a2e
  0399c5  outsb dx, byte ptr [esi]
L399c6:
  0399c6  and byte ptr [bp + di + 0x65], dh
  0399ca  arpl word ptr [edi + 0x6e], bp
  0399cd  and byte ptr fs:[ebp + 0x78], dh
  0399d2  je 0x39a49
  0399d4  jb 0x39a3b
  0399d6  jae 0x399f8
  0399d8  jae 0x39a42
  0399da  popal 
  0399db  imul ebp, dword ptr fs:[esi + 0x67], 0x62617420
  0399e3  insb byte ptr es:[edi], dx
  0399e4  or eax, 0xfa20240a
  0399ec  jno 0x39a63
  0399ee  popal 
  0399ef  outsb dx, byte ptr [esi]
  0399f0  je 0x39a5b
  0399f2  jp 0x39a5d
  0399f4  outsb dx, byte ptr [esi]
  0399f5  and byte ptr [bx + 0x65], ah
  0399f9  outsb dx, byte ptr [esi]
  0399fa  jb 0x39a5e
  0399fd  insb byte ptr es:[edi], dx
L399fe:
  0399fe  and byte ptr [ebx + 0x68], dh
  039a01  popal 
  039a02  imul ebp, dword ptr fs:[esi + 0x67], 0x62617420
  039a0a  insb byte ptr es:[edi], dx
  039a0b  or eax, 0xfa20240a
L39a13:
  039a13  insb byte ptr es:[edi], dx
  039a14  outsd dx, dword ptr [esi]
  039a15  popal 
  039a16  imul ebp, dword ptr fs:[esi + 0x67], 0x646e6120
  039a1e  and byte ptr [eax + 0x72], dh
  039a21  jo 0x39a85
  039a24  jb 0x39a8f
  039a26  outsb dx, byte ptr [esi]
  039a27  and byte ptr [bp + di + 0x63], dh
  039a2b  outsb dx, byte ptr gs:[esi]
  039a2d  or eax, 0x5c7240a
  039a35  push eax
  039a36  jg 0x39a38
L39a38:
  039a38  add byte ptr [edx - 0x38fffc57], bh
  039a3e  add eax, 0x7f54
  039a43  xchg edx, eax
  039a44  movsd dword ptr es:[edi], dword ptr [esi]
  039a45  add eax, dword ptr [eax]
  039a47  mov dword ptr [0x7f58], 0x3a760
  039a51  xor edi, edi
  039a53  mov dword ptr [0x4688], 0
L39a5d:
  039a5d  mov dword ptr [0x467c], 0xa
  039a67  fild dword ptr [0x4688]
  039a6d  fild dword ptr [0x467c]
  039a73  fdivp st(1)
  039a75  fmul st(0)
  039a77  fmul st(0)
  039a79  fistp dword ptr [0x467c]
  039a7f  mov eax, dword ptr [0x467c]
  039a84  cmp eax, 0x3ff
  039a89  jl 0x39a90
  039a8b  mov eax, 0x3ff
L39a90:
  039a90  neg eax
  039a92  add eax, 0x3ff
  039a97  mov dword ptr [edi + 0x38494], eax
  039a9d  mov ebp, 0x1fc
  039aa2  sub ebp, edi
  039aa4  mov dword ptr ds:[ebp + 0x38494], eax
  039aab  add edi, 4
  039aae  inc dword ptr [0x4688]
  039ab4  cmp dword ptr [0x4688], 0x40
  039abb  jne 0x39a5d
  039abd  mov edi, 0x38094
  039ac2  fldpi 
  039ac4  mov dword ptr [0x467c], 0x10
  039ace  fild dword ptr [0x467c]
  039ad4  fdivp st(1)
  039ad6  fstp qword ptr [0x4a50]
  039adc  fldz 
  039ade  fstp qword ptr [0x4a58]
  039ae4  mov dword ptr [0x467c], 0x1ff
  039aee  fild dword ptr [0x467c]
  039af4  fstp dword ptr [0x467c]
  039afa  mov ecx, 0x10
L39aff:
  039aff  fld qword ptr [0x4a58]
  039b05  fcos 
  039b07  fmul dword ptr [0x467c]
  039b0d  fadd dword ptr [0x467c]
  039b13  fistp dword ptr [edi]
  039b15  fld qword ptr [0x4a58]
  039b1b  fadd qword ptr [0x4a50]
  039b21  fstp qword ptr [0x4a58]
  039b27  add edi, 4
  039b2a  dec ecx
  039b2b  jne 0x39aff
  039b2d  fldpi 
  039b2f  mov dword ptr [0x467c], 0x70
  039b39  fild dword ptr [0x467c]
  039b3f  fdivp st(1)
  039b41  fstp qword ptr [0x4a50]
  039b47  fldz 
  039b49  fstp qword ptr [0x4a58]
  039b4f  mov dword ptr [0x467c], 0x1ff
  039b59  fild dword ptr [0x467c]
  039b5f  fstp dword ptr [0x467c]
  039b65  mov ecx, 0x70
L39b6a:
  039b6a  fld qword ptr [0x4a58]
  039b70  fcos 
  039b72  fchs 
  039b74  fmul dword ptr [0x467c]
  039b7a  fadd dword ptr [0x467c]
  039b80  fistp dword ptr [edi]
  039b82  fld qword ptr [0x4a58]
  039b88  fadd qword ptr [0x4a50]
  039b8e  fstp qword ptr [0x4a58]
  039b94  add edi, 4
  039b97  dec ecx
  039b98  jne 0x39b6a
  039b9a  call 0x29300
  039b9f  call 0x1f4ba
  039ba4  mov edi, 0xa0000
  039ba9  sub edi, dword ptr [0x18]
  039baf  mov dword ptr [0x4668], edi
  039bb5  mov eax, 0x40000
  039bba  call 0x2ac
  039bbf  or eax, 0xffff
  039bc4  inc eax
  039bc5  mov dword ptr [0x388a4], eax
  039bca  add eax, 0x20000
  039bcf  mov dword ptr [0x388a8], eax
  039bd4  add eax, 0x10000
  039bd9  mov edi, dword ptr [0x388a4]
  039bdf  mov ecx, 0xc000
  039be4  xor eax, eax
  039be6  rep stosd dword ptr es:[edi], eax
  039be8  mov ecx, 0x80
  039bed  mov edx, 0x80
  039bf2  mov ebp, 0x20
  039bf7  mov edi, dword ptr [0x4678]
  039bfd  call 0x147a8
  039c02  mov ecx, 0x40
  039c07  mov edx, 0x40
  039c0c  mov ebp, 0x10
  039c11  mov edi, dword ptr [0x4678]
  039c17  add edi, 0x10000
  039c1d  call 0x147a8
  039c22  mov ecx, 0x20
  039c27  mov edx, 0x20
  039c2c  mov ebp, 8
  039c31  mov edi, dword ptr [0x4678]
  039c37  add edi, 0x18000
  039c3d  call 0x147a8
  039c42  mov ecx, 0x10
  039c47  mov edx, 0x10
  039c4c  mov ebp, 4
  039c51  mov edi, dword ptr [0x4678]
  039c57  add edi, 0x1c000
  039c5d  call 0x147a8
  039c62  mov ecx, 8
  039c67  mov edx, 8
  039c6c  mov ebp, 2
  039c71  mov edi, dword ptr [0x4678]
  039c77  add edi, 0x1e000
  039c7d  call 0x147a8
  039c82  mov ecx, 4
  039c87  mov edx, 4
  039c8c  mov ebp, 1
  039c91  mov edi, dword ptr [0x4678]
  039c97  add edi, 0x1f000
  039c9d  call 0x147a8
  039ca2  mov edx, 0x38078
  039ca7  call 0x3dcc
  039cac  jb 0x3a9ba
  039cb2  mov bl, 0
  039cb4  mov eax, 0xa
  039cb9  call 0x3e4a
  039cbe  mov edx, 0x388ac
  039cc3  mov ecx, 0x300
  039cc8  call 0x3eed
  039ccd  mov edx, dword ptr [0x388a4]
  039cd3  mov ecx, 0x10000
  039cd8  call 0x3eed
  039cdd  call 0x3e09
  039ce2  mov edi, 0x38bac
  039ce7  xor eax, eax
  039ce9  xor ebx, ebx
  039ceb  mov ecx, 0x100
L39cf0:
  039cf0  stosb byte ptr es:[edi], al
  039cf1  stosb byte ptr es:[edi], al
  039cf2  stosb byte ptr es:[edi], al
  039cf3  inc eax
  039cf4  dec ecx
  039cf5  jne 0x39cf0
  039cf7  mov edi, dword ptr [0x48b0]
  039cfd  mov esi, 0
L39d02:
  039d02  mov ebp, 0
L39d07:
  039d07  mov ecx, 3
L39d0c:
  039d0c  movzx eax, byte ptr ds:[ebp + 0x388ac]
  039d14  movzx ebx, byte ptr [esi + 0x38bac]
  039d1b  shl ebx, 1
  039d1d  imul eax, ebx
  039d20  sar eax, 4
  039d23  sar ebx, 2
  039d26  add eax, ebx
  039d28  cmp eax, 0
  039d2b  jg 0x39d2f
  039d2d  xor eax, eax
L39d2f:
  039d2f  cmp eax, 0xff
  039d34  jl 0x39d3b
  039d36  mov eax, 0xff
L39d3b:
  039d3b  mov byte ptr [edi], al
  039d3d  inc edi
  039d3e  inc ebp
  039d3f  inc esi
  039d40  loop 0x39d0c
  039d42  sub esi, 3
  039d45  cmp ebp, 0x300
  039d4b  jne 0x39d07
  039d4d  add esi, 3
  039d50  cmp esi, 0x300
  039d56  jne 0x39d02
  039d58  mov esi, dword ptr [0x48b0]
  039d5e  mov edi, dword ptr [0x388a8]
  039d64  mov ebp, 0x388ac
  039d69  call 0x1f5a9
  039d6e  mov esi, dword ptr [0x48b0]
  039d74  mov ecx, 0xc000
L39d79:
  039d79  shr byte ptr [esi], 2
  039d7c  inc esi
  039d7d  dec ecx
  039d7e  jne 0x39d79
  039d80  mov eax, dword ptr [0x388a8]
  039d85  xor ebx, ebx
  039d87  mov bl, byte ptr [eax]
  039d89  imul ebx, ebx, 3
  039d8c  mov al, byte ptr [ebx + 0x388ac]
  039d92  mov byte ptr [0x388ac], al
  039d97  mov al, byte ptr [ebx + 0x388ad]
  039d9d  mov byte ptr [0x388ad], al
  039da2  mov al, byte ptr [ebx + 0x388ae]
  039da8  mov byte ptr [0x388ae], al
  039dad  mov esi, dword ptr [0x48b0]
  039db3  mov edi, dword ptr [0x388a8]
  039db9  mov ebp, 0x388ac
  039dbe  mov ecx, 0x4000
  039dc3  call 0x1f4da
  039dc8  mov edi, dword ptr [0x388a8]
  039dce  add edi, 0x3f00
  039dd4  mov edx, 0x5f
L39dd9:
  039dd9  mov esi, dword ptr [0x388a8]
  039ddf  add esi, 0x3e00
  039de5  mov ecx, 0x40
  039dea  rep movsd dword ptr es:[edi], dword ptr [esi]
  039dec  dec edx
  039ded  jne 0x39dd9
  039def  ret 
  039df0  mov dword ptr [0x7f50], 0x3a9ba
  039dfa  mov dword ptr [0x7f54], 0x3a592
  039e04  mov dword ptr [0x7f58], 0x3a760
  039e0e  mov dword ptr [0x17210], 0
  039e18  mov dword ptr [0x17208], 0
  039e22  mov dword ptr [0x16630], 0
  039e2c  mov dword ptr [0x1f920], 0x1fefc
  039e36  mov edx, 0x38084
  039e3b  call 0x17570
  039e40  fld qword ptr [0x4998]
  039e46  fstp dword ptr [0x4660]
  039e4c  mov ebp, 0x7f98
  039e51  call 0x17596
  039e56  mov dword ptr [0x467c], 0xc0
  039e60  fild dword ptr [0x467c]
  039e66  fstp qword ptr [0x4950]
  039e6c  mov dword ptr [0x14798], 0
  039e76  mov ebp, 0xef98
  039e7b  mov eax, 0x9128745
  039e80  mov ebx, 0x23894175
  039e85  mov ecx, 0x1838415
  039e8a  mov edx, 1
  039e8f  mov edi, 0x178e0
L39e94:
  039e94  add eax, 0x40903484
  039e99  add ebx, 0x2935081
  039e9f  add ecx, 0x9234785
  039ea5  rol eax, 5
  039ea8  rol ebx, 7
  039eab  ror ecx, 4
  039eae  mov dword ptr [0x467c], eax
  039eb3  and dword ptr [0x467c], 0x1f
  039eba  sub dword ptr [0x467c], 0x10
  039ec1  mov dword ptr [0x4680], 0x64
  039ecb  fild dword ptr [0x467c]
  039ed1  fild dword ptr [0x4680]
  039ed7  fdivp st(1)
  039ed9  fstp qword ptr [edi + 8]
  039edc  mov esi, eax
  039ede  and esi, 0xff
  039ee4  imul esi, esi, 0x28
  039ee7  mov dword ptr [edi + 0x10], esi
  039eea  add edi, 0x18
  039eed  inc dword ptr [0x14798]
  039ef3  mov dword ptr [ebp], 0x3a5d4
  039efa  fldz 
  039efc  fstp dword ptr [ebp + 4]
  039eff  fldz 
  039f01  fstp dword ptr [ebp + 8]
  039f04  fldz 
  039f06  fstp dword ptr [ebp + 0xc]
  039f09  mov dword ptr [0x467c], 0xfffffff9
  039f13  fild dword ptr [0x467c]
  039f19  fstp dword ptr [ebp + 0x20]
  039f1c  add ebp, 0x2c
  039f1f  dec edx
  039f20  jne 0x39e94
  039f26  mov eax, dword ptr [0x14798]
  039f2b  add dword ptr [0x16630], eax
  039f31  call 0x16e44
  039f36  mov esi, 0x388ac
  039f3b  mov ebp, 0x38bac
  039f40  mov edi, 0x38eac
  039f45  mov ecx, 0x300
L39f4a:
  039f4a  movzx eax, byte ptr [esi]
  039f4d  mov ebx, eax
  039f4f  neg eax
  039f51  add eax, 0x3f
  039f54  cmp eax, 0x3f
  039f57  jl 0x39f5e
  039f59  mov eax, 0x3f
L39f5e:
  039f5e  mov byte ptr [edi], al
  039f60  imul ebx, ebx, 4
  039f63  cmp ebx, 0x3f
  039f66  jl 0x39f6d
  039f68  mov ebx, 0x3f
L39f6d:
  039f6d  mov byte ptr [ebp], bl
  039f70  inc esi
  039f71  inc edi
  039f72  inc ebp
  039f73  dec ecx
  039f74  jne 0x39f4a
  039f76  mov esi, dword ptr [0x388a4]
  039f7c  mov edi, dword ptr [0x4670]
  039f82  mov ecx, 0x4000
  039f87  rep movsd dword ptr es:[edi], dword ptr [esi]
  039f89  mov esi, dword ptr [0x388a8]
  039f8f  mov edi, dword ptr [0x48b4]
  039f95  mov ecx, 0x4000
  039f9a  rep movsd dword ptr es:[edi], dword ptr [esi]
  039f9c  xor eax, eax
  039f9e  mov edi, 0x38eac
  039fa3  mov ecx, 0xc0
  039fa8  rep stosd dword ptr es:[edi], eax
  039faa  mov dword ptr [0x4694], 0
  039fb4  call 0x37f48
  039fb9  call 0x37fc3
  039fbe  mov dword ptr [0x469c], 1
  039fc8  mov dword ptr [0x1479c], 0
  039fd2  mov dword ptr [0x147a0], 0
  039fdc  mov dword ptr [0x147a4], 0
  039fe6  mov eax, 0x2a30b
  039feb  mov dword ptr [0x4c00], eax
  039ff0  mov dword ptr [0x467c], 0xad
  039ffa  mov dword ptr [0x4680], 0x2710
  03a004  fild dword ptr [0x467c]
  03a00a  fild dword ptr [0x4680]
  03a010  fdivp st(1)
  03a012  fst qword ptr [0x178a0]
  03a018  fstp qword ptr [0x178d0]
  03a01e  mov dword ptr [0x178ac], 0x2a8
  03a028  mov dword ptr [0x178dc], 0x2a8
  03a032  fldz 
  03a034  fst qword ptr [0x17898]
  03a03a  fstp qword ptr [0x178c8]
  03a040  mov dword ptr [0x178a8], 0
  03a04a  mov dword ptr [0x178d8], 0
  03a054  mov dword ptr [0x467c], 0x3b
  03a05e  mov dword ptr [0x4680], 0x2710
  03a068  fild dword ptr [0x467c]
  03a06e  fild dword ptr [0x4680]
  03a074  fdivp st(1)
  03a076  fstp qword ptr [0x178b8]
  03a07c  mov dword ptr [0x178c4], 0x780
  03a086  fldz 
  03a088  fstp qword ptr [0x178b0]
  03a08e  mov dword ptr [0x178c0], 0
  03a098  mov dword ptr [0x38898], 0
L3a0a2:
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
  03a9b5  call 0x37f9c
L3a9ba:
  03a9ba  ret 
  03a9bb  xchg ebx, ebx
  03a9bd  xchg ebx, ebx
  03a9bf  nop 
  03a9c0  add byte ptr [eax], al
  03a9c2  add byte ptr [eax], al
  03a9c4  add byte ptr [eax], al
  03a9c6  add byte ptr [eax], al
  03a9c8  add byte ptr [eax], al
  03a9ca  add byte ptr [eax], al
  03a9cc  add byte ptr [eax], al
  03a9ce  add byte ptr [eax], al
  03a9d0  add byte ptr [eax], al
  03a9d2  add byte ptr [eax], al
  03a9d4  xchg ebx, ebx
  03a9d6  xchg ebx, ebx
  03a9d8  xchg ebx, ebx
  03a9da  xchg ebx, ebx
  03a9dc  xchg ebx, ebx
  03a9de  xchg ebx, ebx
  03a9e0  pushfd 
  03a9e1  pushal 
  03a9e2  wait 
  03a9e3  fnsave dword ptr [0x3946e]
  03a9e9  cmp byte ptr [0x496da], 3
  03a9f0  je 0x3a9fe
  03a9f2  mov eax, 4
  03a9f7  call 0x25c4
  03a9fc  jmp 0x3aa35
L3a9fe:
  03a9fe  inc byte ptr [0x496d9]
  03aa04  cmp byte ptr [0x496d9], 7
  03aa0b  jl 0x3aa35
  03aa0d  mov byte ptr [0x496d9], 0
  03aa14  inc word ptr [0x12ca]
  03aa1b  cmp word ptr [0x12ca], 0x40
  03aa23  jl 0x3aa35
  03aa25  inc word ptr [0x12bf]
  03aa2c  mov word ptr [0x12ca], 0
L3aa35:
  03aa35  inc dword ptr [0x469c]
  03aa3b  inc dword ptr [0x46a4]
  03aa41  cmp byte ptr [0x41d1], 1
  03aa48  je 0x3ae49
  03aa4e  mov edi, dword ptr [0x4698]
  03aa54  cmp byte ptr [0x41b7], 1
  03aa5b  jne 0x3aa62
  03aa5d  mov edi, 0x400
L3aa62:
  03aa62  mov ebp, dword ptr [0x4694]
  03aa68  mov edx, 0x3c8
  03aa6d  xor eax, eax
  03aa6f  out dx, al
  03aa70  inc edx
  03aa71  mov esi, 0xfffffd00
  03aa76  xchg ebx, ebx
L3aa78:
  03aa78  xor eax, eax
  03aa7a  xor ebx, ebx
  03aa7c  xor ecx, ecx
  03aa7e  mov al, byte ptr [esi + 0x38bac]
  03aa84  mov bl, byte ptr [esi + 0x38eac]
  03aa8a  mov cl, byte ptr [esi + 0x391ac]
  03aa90  sub eax, ebx
  03aa92  imul eax, edi
  03aa95  sar eax, 0xa
  03aa98  add eax, ebx
  03aa9a  sub eax, ecx
  03aa9c  imul eax, ebp
  03aa9f  sar eax, 0xa
  03aaa2  add eax, ecx
  03aaa4  out dx, al
  03aaa5  inc esi
  03aaa6  jne 0x3aa78
  03aaa8  cmp word ptr [0x12bf], 0x19
  03aab0  jl 0x3aadd
  03aab2  movzx eax, word ptr [0x12ca]
  03aab9  and eax, 0x3f
  03aabc  cmp eax, 0x20
  03aabf  jl 0x3aadd
  03aac1  sub dword ptr [0x4694], 0x10
  03aac8  cmp dword ptr [0x4694], 0
  03aacf  jg 0x3aadb
  03aad1  mov dword ptr [0x4694], 0
L3aadb:
  03aadb  jmp 0x3aafa
L3aadd:
  03aadd  add dword ptr [0x4694], 0x10
  03aae4  cmp dword ptr [0x4694], 0x3ff
  03aaee  jl 0x3aafa
  03aaf0  mov dword ptr [0x4694], 0x3ff
L3aafa:
  03aafa  mov dword ptr [0x3a9c0], 0x1ff
  03ab04  fld dword ptr [0x3889c]
  03ab0a  fcos 
  03ab0c  fimul dword ptr [0x3a9c0]
  03ab12  fiadd dword ptr [0x3a9c0]
  03ab18  fistp dword ptr [0x4698]
  03ab1e  neg dword ptr [0x4698]
  03ab24  add dword ptr [0x4698], 0x3ff
  03ab2e  fld dword ptr [0x3889c]
  03ab34  fadd dword ptr [0x388a0]
  03ab3a  fstp dword ptr [0x3889c]
  03ab40  cmp dword ptr [0x38898], 0
  03ab47  jne 0x3ab91
  03ab49  xor ebp, ebp
  03ab4b  mov dword ptr [0x3a9c4], ebp
  03ab51  fild dword ptr [0x3a9c4]
  03ab57  fmul qword ptr [0x178a0]
  03ab5d  mov dword ptr [0x3a9c0], 0x12c
  03ab67  fild dword ptr [0x3a9c0]
  03ab6d  fdivp st(1)
  03ab6f  fadd qword ptr [0x178a0]
  03ab75  fld st(0)
  03ab77  fadd qword ptr [0x17898]
  03ab7d  fstp qword ptr [0x17898]
  03ab83  fadd qword ptr [0x178c8]
  03ab89  fstp qword ptr [0x178c8]
  03ab8f  jmp 0x3aba3
L3ab91:
  03ab91  fld qword ptr [0x178b0]
  03ab97  fadd qword ptr [0x178b8]
  03ab9d  fstp qword ptr [0x178b0]
L3aba3:
  03aba3  fld qword ptr [0x4bb0]
  03aba9  fadd qword ptr [0x4968]
  03abaf  fstp qword ptr [0x4bb0]
  03abb5  mov dword ptr [0x48d8], 0xffffffff
  03abbf  cmp byte ptr [0x419b], 1
  03abc6  jne 0x3abd2
  03abc8  mov dword ptr [0x48d8], 0
L3abd2:
  03abd2  cmp byte ptr [0x419c], 1
  03abd9  jne 0x3abe5
  03abdb  mov dword ptr [0x48d8], 1
L3abe5:
  03abe5  cmp byte ptr [0x419d], 1
  03abec  jne 0x3abf8
  03abee  mov dword ptr [0x48d8], 2
L3abf8:
  03abf8  cmp byte ptr [0x419e], 1
  03abff  jne 0x3ac0b
  03ac01  mov dword ptr [0x48d8], 3
L3ac0b:
  03ac0b  cmp byte ptr [0x419f], 1
  03ac12  jne 0x3ac1e
  03ac14  mov dword ptr [0x48d8], 4
L3ac1e:
  03ac1e  mov dword ptr [0x48dc], 0xffffffff
  03ac28  cmp byte ptr [0x41a8], 1
  03ac2f  jne 0x3ac3b
  03ac31  mov dword ptr [0x48dc], 0
L3ac3b:
  03ac3b  cmp byte ptr [0x41a9], 1
  03ac42  jne 0x3ac4e
  03ac44  mov dword ptr [0x48dc], 1
L3ac4e:
  03ac4e  cmp byte ptr [0x41aa], 1
  03ac55  jne 0x3ac61
  03ac57  mov dword ptr [0x48dc], 2
L3ac61:
  03ac61  cmp byte ptr [0x41ab], 1
  03ac68  jne 0x3ac74
  03ac6a  mov dword ptr [0x48dc], 4
L3ac74:
  03ac74  cmp byte ptr [0x41ac], 1
  03ac7b  jne 0x3ac87
  03ac7d  mov dword ptr [0x48dc], 8
L3ac87:
  03ac87  cmp byte ptr [0x41ad], 1
  03ac8e  jne 0x3ac9a
  03ac90  mov dword ptr [0x48dc], 0x10
L3ac9a:
  03ac9a  add dword ptr [0x46a8], 0x26c
  03aca4  add dword ptr [0x46ac], 0x230
  03acae  fld dword ptr [0x7f30]
  03acb4  fadd dword ptr [0x7f34]
  03acba  fstp dword ptr [0x7f30]
  03acc0  fld dword ptr [0x7f38]
  03acc6  fadd dword ptr [0x7f3c]
  03accc  fstp dword ptr [0x7f38]
  03acd2  cmp byte ptr [0x41c4], 1
  03acd9  jne 0x3ace5
  03acdb  mov eax, 0x29d9a
  03ace0  mov dword ptr [0x4c00], eax
L3ace5:
  03ace5  cmp byte ptr [0x41c5], 1
  03acec  jne 0x3acf8
  03acee  mov eax, 0x2a0f5
  03acf3  mov dword ptr [0x4c00], eax
L3acf8:
  03acf8  cmp byte ptr [0x41c6], 1
  03acff  jne 0x3ad0b
  03ad01  mov eax, 0x2a30b
  03ad06  mov dword ptr [0x4c00], eax
L3ad0b:
  03ad0b  cmp byte ptr [0x41b0], 1
  03ad12  jne 0x3ad24
  03ad14  fld1 
  03ad16  fchs 
  03ad18  fadd dword ptr [0x7fbc]
  03ad1e  fstp dword ptr [0x7fbc]
L3ad24:
  03ad24  cmp byte ptr [0x41be], 1
  03ad2b  jne 0x3ad3b
  03ad2d  fld1 
  03ad2f  fadd dword ptr [0x7fbc]
  03ad35  fstp dword ptr [0x7fbc]
L3ad3b:
  03ad3b  cmp byte ptr [0x41b1], 1
  03ad42  jne 0x3ad54
  03ad44  fld1 
  03ad46  fchs 
  03ad48  fadd dword ptr [0x7fc0]
  03ad4e  fstp dword ptr [0x7fc0]
L3ad54:
  03ad54  cmp byte ptr [0x41bf], 1
  03ad5b  jne 0x3ad6b
  03ad5d  fld1 
  03ad5f  fadd dword ptr [0x7fc0]
  03ad65  fstp dword ptr [0x7fc0]
L3ad6b:
  03ad6b  cmp byte ptr [0x41b2], 1
  03ad72  jne 0x3ad84
  03ad74  fld1 
  03ad76  fchs 
  03ad78  fadd dword ptr [0x7fc4]
  03ad7e  fstp dword ptr [0x7fc4]
L3ad84:
  03ad84  cmp byte ptr [0x41c0], 1
  03ad8b  jne 0x3ad9b
  03ad8d  fld1 
  03ad8f  fadd dword ptr [0x7fc4]
  03ad95  fstp dword ptr [0x7fc4]
L3ad9b:
  03ad9b  add dword ptr [0x7fe8], 0x160
  03ada5  add dword ptr [0x7fec], 0x27b
  03adaf  add dword ptr [0x7ff0], 0x344
  03adb9  cmp dword ptr [0x391bc], 0
  03adc0  jne 0x3adeb
  03adc2  cmp dword ptr [0x391ac], 0
  03adc9  jne 0x3adeb
  03adcb  cmp dword ptr [0x178a8], 0x410
  03add5  jl 0x3adeb
  03add7  mov dword ptr [0x391ac], 1
  03ade1  mov dword ptr [0x391bc], 0
L3adeb:
  03adeb  cmp dword ptr [0x391ac], 0
  03adf2  je 0x3ae49
  03adf4  fld dword ptr [0x391b0]
  03adfa  fadd dword ptr [0x391b4]
  03ae00  fstp dword ptr [0x391b0]
  03ae06  inc dword ptr [0x391bc]
  03ae0c  fld1 
  03ae0e  fstp dword ptr [0x3a9c0]
  03ae14  mov eax, dword ptr [0x391b0]
  03ae19  cmp eax, dword ptr [0x3a9c0]
  03ae1f  jb 0x3ae49
  03ae21  fldz 
  03ae23  fstp dword ptr [0x391b0]
  03ae29  mov dword ptr [0x391ac], 0
  03ae33  mov eax, dword ptr [0x391c0]
  03ae38  mov ebx, dword ptr [0x4c00]
  03ae3e  mov dword ptr [0x4c00], eax
  03ae43  mov dword ptr [0x391c0], ebx
L3ae49:
  03ae49  wait 
  03ae4a  frstor dword ptr [0x3946e]
  03ae50  popal 
  03ae51  popfd 
  03ae52  ret 
  03ae53  add byte ptr [eax], al
  03ae55  add byte ptr [eax], al
  03ae57  add byte ptr [eax], al
  03ae59  add byte ptr [eax], al
  03ae5b  add byte ptr [eax], al
  03ae5d  add byte ptr [eax], al
  03ae5f  add byte ptr [eax], al
  03ae61  add byte ptr [eax], al
  03ae63  add byte ptr [eax], al
  03ae65  add byte ptr [eax], al
  03ae67  add dl, bh
  03ae69  mov eax, 0x3af70
  03ae6e  add eax, dword ptr [0x18]
  03ae74  shl eax, 0xc
  03ae77  shr ax, 0xc
  03ae7b  mov edx, 0x19
  03ae80  add dx, ax
  03ae83  mov word ptr [0x3af7f], dx
  03ae8a  xchg dword ptr gs:[0x20], eax
  03ae90  mov dword ptr [0x3ae60], eax
  03ae95  xor bl, bl
  03ae97  call dword ptr [0x24]
  03ae9d  mov dword ptr [0x3ae64], edx
  03aea3  mov edx, 0x3af34
  03aea8  call dword ptr [0x28]
  03aeae  mov al, 0x30
  03aeb0  out 0x43, al
  03aeb2  mov al, 0
  03aeb4  out 0x40, al
  03aeb6  mov al, 0x41
  03aeb8  out 0x40, al
  03aeba  sti 
  03aebb  ret 
L3aebc:
  03aebc  cli 
  03aebd  mov edx, dword ptr [0x3ae60]
  03aec3  mov dword ptr gs:[0x20], edx
  03aec9  mov edx, dword ptr [0x3ae64]
  03aecf  xor bl, bl
  03aed1  call dword ptr [0x28]
  03aed7  mov al, 0x36
  03aed9  out 0x43, al
  03aedb  xor al, al
  03aedd  out 0x40, al
  03aedf  out 0x40, al
  03aee1  sti 
  03aee2  ret 
L3aee3:
  03aee3  cli 
  03aee4  mov al, 0x30
  03aee6  out 0x43, al
  03aee8  mov dx, 0x3da
L3aeec:
  03aeec  in al, dx
  03aeed  test al, 8
  03aeef  jne 0x3aeec
L3aef1:
  03aef1  in al, dx
  03aef2  test al, 8
  03aef4  je 0x3aef1
  03aef6  xor al, al
  03aef8  out 0x40, al
  03aefa  out 0x40, al
L3aefc:
  03aefc  in al, dx
  03aefd  test al, 8
  03aeff  jne 0x3aefc
L3af01:
  03af01  in al, dx
  03af02  test al, 8
  03af04  je 0x3af01
  03af06  in al, 0x40
  03af08  mov ah, al
  03af0a  in al, 0x40
  03af0c  xchg ah, al
  03af0e  neg ax
  03af11  sub ax, 0xc0
  03af15  mov word ptr [0x3af89], ax
  03af1b  mov bx, ax
L3af1e:
  03af1e  in al, dx
  03af1f  test al, 8
  03af21  je 0x3af1e
L3af23:
  03af23  in al, dx
  03af24  test al, 8
  03af26  jne 0x3af23
  03af28  mov al, bl
  03af2a  out 0x40, al
  03af2c  mov al, bh
  03af2e  out 0x40, al
  03af30  sti 
  03af31  ret 
  03af32  xchg ebx, ebx
  03af34  push eax
  03af35  push edx
  03af36  push ds
  03af37  mov ds, word ptr cs:[0x1e]
  03af3e  mov dx, 0x3da
  03af42  in al, dx
  03af43  and eax, 8
  03af46  dec eax
  03af47  neg eax
  03af49  add word ptr [0x3af89], ax
L3af50:
  03af50  in al, dx
  03af51  test al, 8
  03af53  je 0x3af50
  03af55  mov ax, word ptr [0x3af89]
  03af5b  out 0x40, al
  03af5d  mov al, ah
  03af5f  out 0x40, al
  03af61  call dword ptr [0x3afd0]
  03af67  pop ds
  03af68  pop edx
  03af69  mov al, 0x20
  03af6b  out 0x20, al
  03af6d  pop eax
  03af6e  sti 
  03af6f  iretd 
  03af70  push eax
  03af71  push edx
  03af72  mov edx, 0x25ec03da
  03af77  or byte ptr [eax], al
  03af79  dec eax
  03af7a  neg eax
  03af7c  add dword ptr cs:[esi], eax
  03af7f  add byte ptr [eax], al
L3af81:
  03af81  in al, dx
  03af82  test al, 8
  03af84  je 0x3af81
  03af86  jmp 0x3af88
L3af88:
  03af88  mov eax, 0x40e64100
  03af8d  mov al, ah
  03af8f  out 0x40, al
  03af91  pop edx
  03af92  mov al, 0x20
  03af94  out 0x20, al
  03af96  pop eax
  03af97  iretd 
  03af98  je 0x3b012
  03af9a  je 0x3afc9
  03af9c  popal 
  03af9d  xor byte ptr [ebx], dh
  03af9f  jae 0x3b005
  03afa2  js 0x3afa4
L3afa4:
  03afa4  insd dword ptr es:[edi], dx
  03afa5  jne 0x3b015
  03afa7  popal 
  03afa8  jb 0x3afac
L3afac:
  03afac  insd dword ptr es:[edi], dx
  03afad  jne 0x3b01d
  03afaf  popal 
  03afb0  xor ch, byte ptr [esi]
  03afb2  jb 0x3afb5
L3afb5:
  03afb5  jb 0x3b018
  03afb7  je 0x3b01a
  03afb9  jbe 0x3b020
  03afbb  imul ebp, dword ptr [esi], 0x6a
  03afbe  jne 0x3b035
  03afc0  add byte ptr [edi - 0x78247825], al
  03afc6  fild dword ptr [edi - 0x78247825]
  03afcc  fild dword ptr [edi - 0x202f6f25]
  03afd2  add eax, dword ptr [eax]
  03afd4  inc byte ptr [ebx]
  03afd6  add byte ptr [eax], al
  03afd8  hlt 
  03afd9  add eax, dword ptr [eax]
  03afdb  add bh, dl
  03afdd  add eax, dword ptr [eax]
  03afdf  add byte ptr [eax + 0x68000003], ch
  03afe5  add eax, dword ptr [eax]
  03afe7  add byte ptr [ebx], bl
  03afe9  add eax, dword ptr [eax]
  03afeb  add bl, al
  03afed  add al, byte ptr [eax]
  03afef  add byte ptr [ebx + 2], ah
  03aff2  add byte ptr [eax], al
  03aff4  inc dword ptr [ecx]
  03aff6  add byte ptr [eax], al
  03aff8  wait 
  03aff9  add dword ptr [eax], eax
  03affb  add byte ptr [ebx], bh
  03affd  add dword ptr [eax], eax
  03afff  add bl, ah
  03b001  add byte ptr [eax], al
  03b003  add byte ptr [esi + 0x56000000], dl
  03b009  add byte ptr [eax], al
  03b00b  add byte ptr [edi], ah
  03b00d  add byte ptr [eax], al
  03b00f  add byte ptr [edx], cl
  03b011  add byte ptr [eax], al
  03b013  add byte ptr [eax], al
L3b015:
  03b015  add byte ptr [eax], al
  03b017  add byte ptr [eax], al
  03b019  add byte ptr [eax], al
  03b01b  add byte ptr [ecx], al
L3b01d:
  03b01d  add byte ptr [eax], al
  03b01f  add byte ptr [edx], al
  03b021  add byte ptr [eax], al
  03b023  add byte ptr [ebx], al
  03b025  add byte ptr [eax], al
  03b027  add byte ptr [0x7000000], al
  03b02d  add byte ptr [eax], al
  03b02f  add byte ptr [edx], cl
  03b031  add byte ptr [eax], al
  03b033  add byte ptr [0x10000000], cl
  03b039  add byte ptr [eax], al
  03b03b  add byte ptr [eax + eax], dl
  03b03e  add byte ptr [eax], al
  03b040  sbb byte ptr [eax], al
  03b042  add byte ptr [eax], al
  03b044  sbb eax, 0x22000000
  03b049  add byte ptr [eax], al
  03b04b  add byte ptr [edi], ah
  03b04d  add byte ptr [eax], al
  03b04f  add byte ptr [0x33000000], ch
  03b055  add byte ptr [eax], al
  03b057  add byte ptr [ecx], bh
  03b059  add byte ptr [eax], al
  03b05b  add byte ptr [eax], al
  03b05e  add byte ptr [eax], al
  03b060  inc edi
  03b061  add byte ptr [eax], al
  03b063  add byte ptr [esi], cl
  03b066  add byte ptr [eax], al
  03b068  push esi
  03b069  add byte ptr [eax], al
  03b06b  add byte ptr [esi], bl
  03b06e  add byte ptr [eax], al
  03b070  add byte ptr [bx + si], al
  03b073  add byte ptr [edi], ch
  03b076  add byte ptr [eax], al
  03b078  jns 0x3b07a
L3b07a:
  03b07a  add byte ptr [eax], al
  03b07c  add byte ptr [eax], 0
  03b07f  add byte ptr [eax + eax + 0x960000], cl
  03b086  add byte ptr [eax], al
  03b088  mov al, byte ptr [0xaa000000]
  03b08d  add byte ptr [eax], al
  03b08f  add byte ptr [ebp - 0x40000000], dh
  03b095  add byte ptr [eax], al
  03b097  add ah, cl
  03b099  add byte ptr [eax], al
  03b09b  add bh, dl
  03b09d  add byte ptr [eax], al
  03b09f  add bl, ah
  03b0a1  add byte ptr [eax], al
  03b0a3  add bh, ch
  03b0a5  add byte ptr [eax], al
  03b0a7  add bl, bh
  03b0a9  add byte ptr [eax], al
  03b0ab  add byte ptr [eax], cl
  03b0ad  add dword ptr [eax], eax
  03b0af  add byte ptr [ecx + eax], dl
  03b0b2  add byte ptr [eax], al
  03b0b4  and dword ptr [ecx], eax
  03b0b6  add byte ptr [eax], al
  03b0b8  add dword ptr cs:[eax], eax
  03b0bb  add byte ptr [ebx], bh
  03b0bd  add dword ptr [eax], eax
  03b0bf  add byte ptr [ecx + 1], cl
  03b0c2  add byte ptr [eax], al
  03b0c4  push esi
  03b0c5  add dword ptr [eax], eax
  03b0c7  add byte ptr [ecx + eax], ah
  03b0cb  add byte ptr [edx + 1], dh
  03b0ce  add byte ptr [eax], al
  03b0d0  jg 0x3b0d3
  03b0d2  add byte ptr [eax], al
  03b0d4  lea eax, [ecx]
  03b0d6  add byte ptr [eax], al
  03b0d8  wait 
  03b0d9  add dword ptr [eax], eax
  03b0db  add byte ptr [ecx - 0x47ffffff], ch
  03b0e1  add dword ptr [eax], eax
  03b0e3  add dh, al
  03b0e5  add dword ptr [eax], eax
  03b0e7  add ah, dl
  03b0e9  add dword ptr [eax], eax
  03b0eb  add dl, ah
  03b0ed  add dword ptr [eax], eax
  03b0ef  add cl, dh
  03b0f1  add dword ptr [eax], eax
  03b0f3  add bh, bh
  03b0f5  add dword ptr [eax], eax
  03b0f7  add byte ptr [0x1c000002], cl
  03b0fd  add al, byte ptr [eax]
  03b0ff  add byte ptr [edx], ch
  03b101  add al, byte ptr [eax]
  03b103  add byte ptr [eax], bh
  03b105  add al, byte ptr [eax]
  03b107  add byte ptr [esi + 2], al
  03b10a  add byte ptr [eax], al
  03b10c  push ebp
  03b10d  add al, byte ptr [eax]
  03b10f  add byte ptr [ebx + 2], ah
  03b112  add byte ptr [eax], al
  03b114  jno 0x3b118
  03b116  add byte ptr [eax], al
L3b118:
  03b118  jg 0x3b11c
  03b11a  add byte ptr [eax], al
L3b11c:
  03b11c  mov word ptr [edx], es
  03b11e  add byte ptr [eax], al
  03b120  lcall 2, 0xa8000002
  03b127  add byte ptr [ebp - 0x3cfffffe], dh
  03b12d  add al, byte ptr [eax]
  03b12f  add al, dl
  03b131  add al, byte ptr [eax]
  03b133  add ch, bl
  03b135  add al, byte ptr [eax]
  03b137  add dl, ch
  03b139  add al, byte ptr [eax]
  03b13b  add dh, dh
  03b13d  add al, byte ptr [eax]
  03b13f  add byte ptr [ebx], al
  03b141  add eax, dword ptr [eax]
  03b143  add byte ptr [edi], cl
  03b145  add eax, dword ptr [eax]
  03b147  add byte ptr [ebx], bl
  03b149  add eax, dword ptr [eax]
  03b14b  add byte ptr [edi], ah
  03b14d  add eax, dword ptr [eax]
  03b14f  add byte ptr [edx], dh
  03b151  add eax, dword ptr [eax]
  03b153  add byte ptr [esi], bh
  03b155  add eax, dword ptr [eax]
  03b157  add byte ptr [ecx + 3], cl
  03b15a  add byte ptr [eax], al
  03b15c  push esp
  03b15d  add eax, dword ptr [eax]
  03b15f  add byte ptr [esi + 3], bl
  03b162  add byte ptr [eax], al
  03b164  push 0x72000003
  03b169  add eax, dword ptr [eax]
  03b16b  add byte ptr [ebx + eax], bh
  03b16f  add byte ptr [ebp - 0x70fffffd], al
  03b175  add eax, dword ptr [eax]
  03b177  add byte ptr [edi - 0x5ffffffd], dl
  03b17d  add eax, dword ptr [eax]
  03b17f  add byte ptr [eax - 0x4ffffffd], ch
  03b185  add eax, dword ptr [eax]
  03b187  add byte ptr [edi - 0x41fffffd], dh
  03b18d  add eax, dword ptr [eax]
  03b18f  add ch, al
  03b191  add eax, dword ptr [eax]
  03b193  add bl, cl
  03b195  add eax, dword ptr [eax]
  03b197  add cl, dl
  03b199  add eax, dword ptr [eax]
  03b19b  add bh, dl
  03b19d  add eax, dword ptr [eax]
  03b19f  add ah, bl
  03b1a1  add eax, dword ptr [eax]
  03b1a3  add cl, ah
  03b1a5  add eax, dword ptr [eax]
  03b1a7  add dh, ah
  03b1a9  add eax, dword ptr [eax]
  03b1ab  add dl, ch
  03b1ad  add eax, dword ptr [eax]
  03b1af  add dh, ch
  03b1b1  add eax, dword ptr [eax]
  03b1b3  add cl, dh
  03b1b5  add eax, dword ptr [eax]
  03b1b7  add ah, dh
  03b1b9  add eax, dword ptr [eax]
  03b1bb  add bh, dh
  03b1bd  add eax, dword ptr [eax]
  03b1bf  add cl, bh
  03b1c1  add eax, dword ptr [eax]
  03b1c3  add bl, bh
  03b1c5  add eax, dword ptr [eax]
  03b1c7  add ah, bh
  03b1c9  add eax, dword ptr [eax]
  03b1cb  add ch, bh
  03b1cd  add eax, dword ptr [eax]
  03b1cf  add dh, bh
  03b1d1  add eax, dword ptr [eax]
  03b1d3  add byte ptr [eax], al
  03b1d5  add byte ptr [eax], al
  03b1d7  add byte ptr [eax], al
  03b1d9  add byte ptr [eax], al
  03b1db  add byte ptr [eax], al
  03b1dd  add byte ptr [eax], al
  03b1df  add byte ptr [eax], al
  03b1e1  add byte ptr [eax], al
  03b1e3  add byte ptr [eax], al
  03b1e5  add byte ptr [eax], al
  03b1e7  add byte ptr [eax], al
  03b1e9  add byte ptr [eax], al
  03b1eb  add byte ptr [eax], al
  03b1ed  add byte ptr [eax], al
  03b1ef  add byte ptr [eax], al
  03b1f1  add byte ptr [eax], al
  03b1f3  add byte ptr [eax], al
  03b1f5  add byte ptr [eax], al
  03b1f7  add byte ptr [eax], al
  03b1f9  add byte ptr [eax], al
  03b1fb  add byte ptr [eax], al
  03b1fd  add byte ptr [eax], al
  03b1ff  add byte ptr [eax], al
  03b201  add byte ptr [eax], al
  03b203  add byte ptr [eax], al
  03b205  add byte ptr [eax], al
  03b207  add byte ptr [eax], al
  03b209  add byte ptr [eax], al
  03b20b  add byte ptr [eax], al
  03b20d  add byte ptr [eax], al
  03b20f  add byte ptr [eax], al
  03b211  add byte ptr [eax], al
  03b213  add byte ptr [eax], al
  03b215  add byte ptr [eax], al
  03b217  add byte ptr [eax], al
  03b219  add byte ptr [eax], al
  03b21b  add byte ptr [eax], al
  03b21d  add byte ptr [eax], al
  03b21f  add byte ptr [eax], al
  03b221  add byte ptr [eax], al
  03b223  add byte ptr [eax], al
  03b225  add byte ptr [eax], al
  03b227  add byte ptr [eax], al
  03b229  add byte ptr [eax], al
  03b22b  add byte ptr [eax], al
  03b22d  add byte ptr [eax], al
  03b22f  add byte ptr [eax], al
  03b231  add byte ptr [eax], al
  03b233  add byte ptr [eax], al
  03b235  add byte ptr [eax], al
  03b237  add byte ptr [eax], al
  03b239  add byte ptr [eax], al
  03b23b  add byte ptr [eax], al
  03b23d  add byte ptr [eax], al
  03b23f  add byte ptr [eax], al
  03b241  add byte ptr [eax], al
  03b243  add byte ptr [eax], al
  03b245  add byte ptr [eax], al
  03b247  add byte ptr [eax], al
  03b249  add byte ptr [eax], al
  03b24b  add byte ptr [eax], al
  03b24d  add byte ptr [eax], al
  03b24f  add byte ptr [eax], al
  03b251  add byte ptr [eax], al
  03b253  add byte ptr [eax], al
  03b255  add byte ptr [eax], al
  03b257  add byte ptr [eax], al
  03b259  add byte ptr [eax], al
  03b25b  add byte ptr [eax], al
  03b25d  add byte ptr [eax], al
  03b25f  add byte ptr [eax], al
  03b261  add byte ptr [eax], al
  03b263  add byte ptr [eax], al
  03b265  add byte ptr [eax], al
  03b267  add byte ptr [eax], al
  03b269  add byte ptr [eax], al
  03b26b  add byte ptr [eax], al
  03b26d  add byte ptr [eax], al
  03b26f  add byte ptr [eax], al
  03b271  add byte ptr [eax], al
  03b273  add byte ptr [eax], al
  03b275  add byte ptr [eax], al
  03b277  add byte ptr [eax], al
  03b279  add byte ptr [eax], al
  03b27b  add byte ptr [eax], al
  03b27d  add byte ptr [eax], al
  03b27f  add byte ptr [eax], al
  03b281  add byte ptr [eax], al
  03b283  add byte ptr [eax], al
  03b285  add byte ptr [eax], al
  03b287  add byte ptr [eax], al
  03b289  add byte ptr [eax], al
  03b28b  add byte ptr [eax], al
  03b28d  add byte ptr [eax], al
  03b28f  add byte ptr [eax], al
  03b291  add byte ptr [eax], al
  03b293  add byte ptr [eax], al
  03b295  add byte ptr [eax], al
  03b297  add byte ptr [eax], al
  03b299  add byte ptr [eax], al
  03b29b  add byte ptr [eax], al
  03b29d  add byte ptr [eax], al
  03b29f  add byte ptr [eax], al
  03b2a1  add byte ptr [eax], al
  03b2a3  add byte ptr [eax], al
  03b2a5  add byte ptr [eax], al
  03b2a7  add byte ptr [eax], al
  03b2a9  add byte ptr [eax], al
  03b2ab  add byte ptr [eax], al
  03b2ad  add byte ptr [eax], al
  03b2af  add byte ptr [eax], al
  03b2b1  add byte ptr [eax], al
  03b2b3  add byte ptr [eax], al
  03b2b5  add byte ptr [eax], al
  03b2b7  add byte ptr [eax], al
  03b2b9  add byte ptr [eax], al
  03b2bb  add byte ptr [eax], al
  03b2bd  add byte ptr [eax], al
  03b2bf  add byte ptr [eax], al
  03b2c1  add byte ptr [eax], al
  03b2c3  add byte ptr [eax], al
  03b2c5  add byte ptr [eax], al
  03b2c7  add byte ptr [eax], al
  03b2c9  add byte ptr [eax], al
  03b2cb  add byte ptr [eax], al
  03b2cd  add byte ptr [eax], al
  03b2cf  add byte ptr [eax], al
  03b2d1  add byte ptr [eax], al
  03b2d3  add byte ptr [eax], al
  03b2d5  add byte ptr [eax], al
  03b2d7  add byte ptr [eax], al
  03b2d9  add byte ptr [eax], al
  03b2db  add byte ptr [eax], al
  03b2dd  add byte ptr [eax], al
  03b2df  add byte ptr [eax], al
  03b2e1  add byte ptr [eax], al
  03b2e3  add byte ptr [eax], al
  03b2e5  add byte ptr [eax], al
  03b2e7  add byte ptr [eax], al
  03b2e9  add byte ptr [eax], al
  03b2eb  add byte ptr [eax], al
  03b2ed  add byte ptr [eax], al
  03b2ef  add byte ptr [eax], al
  03b2f1  add byte ptr [eax], al
  03b2f3  add byte ptr [eax], al
  03b2f5  add byte ptr [eax], al
  03b2f7  add byte ptr [eax], al
  03b2f9  add byte ptr [eax], al
  03b2fb  add byte ptr [eax], al
  03b2fd  add byte ptr [eax], al
  03b2ff  add byte ptr [eax], al
  03b301  add byte ptr [eax], al
  03b303  add byte ptr [eax], al
  03b305  add byte ptr [eax], al
  03b307  add byte ptr [eax], al
  03b309  add byte ptr [eax], al
  03b30b  add byte ptr [eax], al
  03b30d  add byte ptr [eax], al
  03b30f  add byte ptr [eax], al
  03b311  add byte ptr [eax], al
  03b313  add byte ptr [eax], al
  03b315  add byte ptr [eax], al
  03b317  add byte ptr [eax], al
  03b319  add byte ptr [eax], al
  03b31b  add byte ptr [eax], al
  03b31d  add byte ptr [eax], al
  03b31f  add byte ptr [eax], al
  03b321  add byte ptr [eax], al
  03b323  add byte ptr [eax], al
  03b325  add byte ptr [eax], al
  03b327  add byte ptr [eax], al
  03b329  add byte ptr [eax], al
  03b32b  add byte ptr [eax], al
  03b32d  add byte ptr [eax], al
  03b32f  add byte ptr [eax], al
  03b331  add byte ptr [eax], al
  03b333  add byte ptr [eax], al
  03b335  add byte ptr [eax], al
  03b337  add byte ptr [eax], al
  03b339  add byte ptr [eax], al
  03b33b  add byte ptr [eax], al
  03b33d  add byte ptr [eax], al
  03b33f  add byte ptr [eax], al
  03b341  add byte ptr [eax], al
  03b343  add byte ptr [eax], al
  03b345  add byte ptr [eax], al
  03b347  add byte ptr [eax], al
  03b349  add byte ptr [eax], al
  03b34b  add byte ptr [eax], al
  03b34d  add byte ptr [eax], al
  03b34f  add byte ptr [eax], al
  03b351  add byte ptr [eax], al
  03b353  add byte ptr [eax], al
  03b355  add byte ptr [eax], al
  03b357  add byte ptr [eax], al
  03b359  add byte ptr [eax], al
  03b35b  add byte ptr [eax], al
  03b35d  add byte ptr [eax], al
  03b35f  add byte ptr [eax], al
  03b361  add byte ptr [eax], al
  03b363  add byte ptr [eax], al
  03b365  add byte ptr [eax], al
  03b367  add byte ptr [eax], al
  03b369  add byte ptr [eax], al
  03b36b  add byte ptr [eax], al
  03b36d  add byte ptr [eax], al
  03b36f  add byte ptr [eax], al
  03b371  add byte ptr [eax], al
  03b373  add byte ptr [eax], al
  03b375  add byte ptr [eax], al
  03b377  add byte ptr [eax], al
  03b379  add byte ptr [eax], al
  03b37b  add byte ptr [eax], al
  03b37d  add byte ptr [eax], al
  03b37f  add byte ptr [eax], al
  03b381  add byte ptr [eax], al
  03b383  add byte ptr [eax], al
  03b385  add byte ptr [eax], al
  03b387  add byte ptr [eax], al
  03b389  add byte ptr [eax], al
  03b38b  add byte ptr [eax], al
  03b38d  add byte ptr [eax], al
  03b38f  add byte ptr [eax], al
  03b391  add byte ptr [eax], al
  03b393  add byte ptr [eax], al
  03b395  add byte ptr [eax], al
  03b397  add byte ptr [eax], al
  03b399  add byte ptr [eax], al
  03b39b  add byte ptr [eax], al
  03b39d  add byte ptr [eax], al
  03b39f  add byte ptr [eax], al
  03b3a1  add byte ptr [eax], al
  03b3a3  add byte ptr [eax], al
  03b3a5  add byte ptr [eax], al
  03b3a7  add byte ptr [eax], al
  03b3a9  add byte ptr [eax], al
  03b3ab  add byte ptr [eax], al
  03b3ad  add byte ptr [eax], al
  03b3af  add byte ptr [eax], al
  03b3b1  add byte ptr [eax], al
  03b3b3  add byte ptr [eax], al
  03b3b5  add byte ptr [eax], al
  03b3b7  add byte ptr [eax], al
  03b3b9  add byte ptr [eax], al
  03b3bb  add byte ptr [eax], al
  03b3bd  add byte ptr [eax], al
  03b3bf  add byte ptr [eax], al
  03b3c1  add byte ptr [eax], al
  03b3c3  add byte ptr [eax], al
  03b3c5  add byte ptr [eax], al
  03b3c7  add byte ptr [eax], al
  03b3c9  add byte ptr [eax], al
  03b3cb  add byte ptr [eax], al
  03b3cd  add byte ptr [eax], al
  03b3cf  add byte ptr [eax], al
  03b3d1  add byte ptr [eax], al
  03b3d3  add bh, bh
  03b3d5  add eax, dword ptr [eax]
  03b3d7  add bh, bh
  03b3d9  add eax, dword ptr [eax]
  03b3db  add bh, bh
  03b3dd  add eax, dword ptr [eax]
  03b3df  add bh, bh
  03b3e1  add eax, dword ptr [eax]
  03b3e3  add bh, bh
  03b3e5  add eax, dword ptr [eax]
  03b3e7  add bh, bh
  03b3e9  add eax, dword ptr [eax]
  03b3eb  add bh, bh
  03b3ed  add eax, dword ptr [eax]
  03b3ef  add bh, bh
  03b3f1  add eax, dword ptr [eax]
  03b3f3  add bh, bh
  03b3f5  add eax, dword ptr [eax]
  03b3f7  add dh, bh
  03b3f9  add eax, dword ptr [eax]
  03b3fb  add dh, bh
  03b3fd  add eax, dword ptr [eax]
  03b3ff  add dh, bh
  03b401  add eax, dword ptr [eax]
  03b403  add ch, bh
  03b405  add eax, dword ptr [eax]
  03b407  add ah, bh
  03b409  add eax, dword ptr [eax]
  03b40b  add bl, bh
  03b40d  add eax, dword ptr [eax]
  03b40f  add dl, bh
  03b411  add eax, dword ptr [eax]
  03b413  add al, bh
  03b415  add eax, dword ptr [eax]
  03b417  add bh, dh
  03b419  add eax, dword ptr [eax]
  03b41b  add ch, dh
  03b41d  add eax, dword ptr [eax]
  03b41f  add dl, dh
  03b421  add eax, dword ptr [eax]
  03b423  add bh, ch
  03b425  add eax, dword ptr [eax]
  03b427  add ah, ch
  03b429  add eax, dword ptr [eax]
  03b42b  add al, ch
  03b42d  add eax, dword ptr [eax]
  03b42f  add bl, ah
  03b431  add eax, dword ptr [eax]
  03b433  add dh, bl
  03b435  add eax, dword ptr [eax]
  03b437  add al, bl
  03b439  add eax, dword ptr [eax]
  03b43b  add cl, dl
  03b43d  add eax, dword ptr [eax]
  03b43f  add dl, cl
  03b441  add eax, dword ptr [eax]
  03b443  add dl, al
  03b445  add eax, dword ptr [eax]
  03b447  add byte ptr [eax - 0x51fffffd], bh
  03b44d  add eax, dword ptr [eax]
  03b44f  add byte ptr [ebx - 0x69fffffd], ah
  03b455  add eax, dword ptr [eax]
  03b457  add byte ptr [eax + 0x79000003], cl
  03b45d  add eax, dword ptr [eax]
  03b45f  add byte ptr [ecx + 3], ch
  03b462  add byte ptr [eax], al
  03b464  push edi
  03b465  add eax, dword ptr [eax]
  03b467  add byte ptr [ebx + eax], al
  03b46b  add byte ptr [esi], ch
  03b46d  add eax, dword ptr [eax]
  03b46f  add byte ptr [eax], bl
  03b471  add eax, dword ptr [eax]
  03b473  add bh, bh
  03b475  add al, byte ptr [eax]
  03b477  add ah, ah
  03b479  add al, byte ptr [eax]
  03b47b  add al, cl
  03b47d  add al, byte ptr [eax]
  03b47f  add byte ptr [ecx - 0x77fffffe], ch
  03b485  add al, byte ptr [eax]
  03b487  add byte ptr [ebp + 2], ah
  03b48a  add byte ptr [eax], al
  03b48c  aas 
  03b48d  add al, byte ptr [eax]
  03b48f  add byte ptr [edi], dl
  03b491  add al, byte ptr [eax]
  03b493  add ah, ch
  03b495  add dword ptr [eax], eax
  03b497  add byte ptr [edi - 0x71ffffff], bh
  03b49d  add dword ptr [eax], eax
  03b49f  add byte ptr [edx + 1], bl
  03b4a2  add byte ptr [eax], al
  03b4a4  and al, 1
  03b4a6  add byte ptr [eax], al
  03b4a8  ljmp 0:0xad000000
  03b4af  add byte ptr [eax + eax], ch
  03b4b3  add byte ptr [eax], ch
  03b4b5  add byte ptr [eax], al
  03b4b7  add byte ptr [eax], al
  03b4b9  add byte ptr [eax], al
  03b4bb  add byte ptr [eax], al
  03b4bd  add byte ptr [eax], al
  03b4bf  add byte ptr [eax], al
  03b4c1  add byte ptr [eax], al
  03b4c3  add byte ptr [eax], al
  03b4c5  add byte ptr [eax], al
  03b4c7  add byte ptr [eax], al
  03b4c9  add byte ptr [eax], al
  03b4cb  add byte ptr [eax], al
  03b4cd  add byte ptr [eax], al
  03b4cf  add byte ptr [eax], al
  03b4d1  add byte ptr [eax], al
  03b4d3  add byte ptr [eax], al
  03b4d5  add byte ptr [eax], al
  03b4d7  add byte ptr [eax], al
  03b4d9  add byte ptr [eax], al
  03b4db  add byte ptr [eax], al
  03b4dd  add byte ptr [eax], al
  03b4df  add byte ptr [eax], al
  03b4e1  add byte ptr [eax], al
  03b4e3  add byte ptr [eax], al
  03b4e5  add byte ptr [eax], al
  03b4e7  add byte ptr [eax], al
  03b4e9  add byte ptr [eax], al
  03b4eb  add byte ptr [eax], al
  03b4ed  add byte ptr [eax], al
  03b4ef  add byte ptr [eax], ch
  03b4f1  add byte ptr [eax], al
  03b4f3  add byte ptr [eax + eax], ch
  03b4f7  add byte ptr [ebp - 0x16000000], ch
  03b4fd  add byte ptr [eax], al
  03b4ff  add byte ptr [ecx + eax], ah
  03b502  add byte ptr [eax], al
  03b504  pop edx
  03b505  add dword ptr [eax], eax
  03b507  add byte ptr [esi - 0x40ffffff], cl
  03b50d  add dword ptr [eax], eax
  03b50f  add ah, ch
  03b511  add dword ptr [eax], eax
  03b513  add byte ptr [edi], dl
  03b515  add al, byte ptr [eax]
  03b517  add byte ptr [edi], bh
  03b519  add al, byte ptr [eax]
  03b51b  add byte ptr [ebp + 2], ah
  03b51e  add byte ptr [eax], al
  03b520  mov byte ptr [edx], al
  03b522  add byte ptr [eax], al
  03b524  test eax, 0xc8000002
  03b529  add al, byte ptr [eax]
  03b52b  add ah, ah
  03b52d  add al, byte ptr [eax]
  03b52f  add bh, bh
  03b531  add al, byte ptr [eax]
  03b533  add byte ptr [eax], bl
  03b535  add eax, dword ptr [eax]
  03b537  add byte ptr [esi], ch
  03b539  add eax, dword ptr [eax]
  03b53b  add byte ptr [ebx + eax], al
  03b53f  add byte ptr [edi + 3], dl
  03b542  add byte ptr [eax], al
  03b544  imul eax, dword ptr [ebx], 0x3790000
  03b54a  add byte ptr [eax], al
  03b54c  mov byte ptr [ebx], al
  03b54e  add byte ptr [eax], al
  03b550  xchg esi, eax
  03b551  add eax, dword ptr [eax]
  03b553  add byte ptr [ebx - 0x51fffffd], ah
  03b559  add eax, dword ptr [eax]
  03b55b  add byte ptr [eax - 0x3dfffffd], bh
  03b561  add eax, dword ptr [eax]
  03b563  add dl, cl
  03b565  add eax, dword ptr [eax]
  03b567  add cl, dl
  03b569  add eax, dword ptr [eax]
  03b56b  add al, bl
  03b56d  add eax, dword ptr [eax]
  03b56f  add dh, bl
  03b571  add eax, dword ptr [eax]
  03b573  add bl, ah
  03b575  add eax, dword ptr [eax]
  03b577  add al, ch
  03b579  add eax, dword ptr [eax]
  03b57b  add ah, ch
  03b57d  add eax, dword ptr [eax]
  03b57f  add bh, ch
  03b581  add eax, dword ptr [eax]
  03b583  add dl, dh
  03b585  add eax, dword ptr [eax]
  03b587  add ch, dh
  03b589  add eax, dword ptr [eax]
  03b58b  add bh, dh
  03b58d  add eax, dword ptr [eax]
  03b58f  add al, bh
  03b591  add eax, dword ptr [eax]
  03b593  add dl, bh
  03b595  add eax, dword ptr [eax]
  03b597  add bl, bh
  03b599  add eax, dword ptr [eax]
  03b59b  add ah, bh
  03b59d  add eax, dword ptr [eax]
  03b59f  add ch, bh
  03b5a1  add eax, dword ptr [eax]
  03b5a3  add dh, bh
  03b5a5  add eax, dword ptr [eax]
  03b5a7  add dh, bh
  03b5a9  add eax, dword ptr [eax]
  03b5ab  add dh, bh
  03b5ad  add eax, dword ptr [eax]
  03b5af  add bh, bh
  03b5b1  add eax, dword ptr [eax]
  03b5b3  add bh, bh
  03b5b5  add eax, dword ptr [eax]
  03b5b7  add bh, bh
  03b5b9  add eax, dword ptr [eax]
  03b5bb  add bh, bh
  03b5bd  add eax, dword ptr [eax]
  03b5bf  add bh, bh
  03b5c1  add eax, dword ptr [eax]
  03b5c3  add bh, bh
  03b5c5  add eax, dword ptr [eax]
  03b5c7  add bh, bh
  03b5c9  add eax, dword ptr [eax]
  03b5cb  add bh, bh
  03b5cd  add eax, dword ptr [eax]
  03b5cf  add bh, bh
  03b5d1  add eax, dword ptr [eax]
  03b5d3  add byte ptr [eax], al
  03b5d5  add byte ptr [eax], al
  03b5d7  add byte ptr [eax], al
  03b5d9  add byte ptr [eax], al
  03b5db  add byte ptr [eax], al
  03b5dd  add byte ptr [eax], al
  03b5df  add byte ptr [eax], al
  03b5e1  add byte ptr [eax], al
  03b5e3  add byte ptr [eax], al
  03b5e5  add byte ptr [eax], al
  03b5e7  add byte ptr [eax], al
  03b5e9  add byte ptr [eax], al
  03b5eb  add byte ptr [eax], al
  03b5ed  add byte ptr [eax], al
  03b5ef  add byte ptr [eax], al
  03b5f1  add byte ptr [eax], al
  03b5f3  add byte ptr [eax], al
  03b5f5  add byte ptr [eax], al
  03b5f7  add byte ptr [eax], al
  03b5f9  add byte ptr [eax], al
  03b5fb  add byte ptr [eax], al
  03b5fd  add byte ptr [eax], al
  03b5ff  add byte ptr [eax], al
  03b601  add byte ptr [eax], al
  03b603  add byte ptr [eax], al
  03b605  add byte ptr [eax], al
  03b607  add byte ptr [eax], al
  03b609  add byte ptr [eax], al
  03b60b  add byte ptr [eax], al
  03b60d  add byte ptr [eax], al
  03b60f  add byte ptr [eax], al
  03b611  add byte ptr [eax], al
  03b613  add byte ptr [eax], al
  03b615  add byte ptr [eax], al
  03b617  add byte ptr [eax], al
  03b619  add byte ptr [eax], al
  03b61b  add byte ptr [eax], al
  03b61d  add byte ptr [eax], al
  03b61f  add byte ptr [eax], al
  03b621  add byte ptr [eax], al
  03b623  add byte ptr [eax], al
  03b625  add byte ptr [eax], al
  03b627  add byte ptr [eax], al
  03b629  add byte ptr [eax], al
  03b62b  add byte ptr [eax], al
  03b62d  add byte ptr [eax], al
  03b62f  add byte ptr [eax], al
  03b631  add byte ptr [eax], al
  03b633  add byte ptr [eax], al
  03b635  add byte ptr [eax], al
  03b637  add byte ptr [eax], al
  03b639  add byte ptr [eax], al
  03b63b  add byte ptr [eax], al
  03b63d  add byte ptr [eax], al
  03b63f  add byte ptr [eax], al
  03b641  add byte ptr [eax], al
  03b643  add byte ptr [eax], al
  03b645  add byte ptr [eax], al
  03b647  add byte ptr [eax], al
  03b649  add byte ptr [eax], al
  03b64b  add byte ptr [eax], al
  03b64d  add byte ptr [eax], al
  03b64f  add byte ptr [eax], al
  03b651  add byte ptr [eax], al
  03b653  add byte ptr [eax], al
  03b655  add byte ptr [eax], al
  03b657  add byte ptr [eax], al
  03b659  add byte ptr [eax], al
  03b65b  add byte ptr [eax], al
  03b65d  add byte ptr [eax], al
  03b65f  add byte ptr [eax], al
  03b661  add byte ptr [eax], al
  03b663  add byte ptr [eax], al
  03b665  add byte ptr [eax], al
  03b667  add byte ptr [eax], al
  03b669  add byte ptr [eax], al
  03b66b  add byte ptr [eax], al
  03b66d  add byte ptr [eax], al
  03b66f  add byte ptr [eax], al
  03b671  add byte ptr [eax], al
  03b673  add byte ptr [eax], al
  03b675  add byte ptr [eax], al
  03b677  add byte ptr [eax], al
  03b679  add byte ptr [eax], al
  03b67b  add byte ptr [eax], al
  03b67d  add byte ptr [eax], al
  03b67f  add byte ptr [eax], al
  03b681  add byte ptr [eax], al
  03b683  add byte ptr [eax], al
  03b685  add byte ptr [eax], al
  03b687  add byte ptr [eax], al
  03b689  add byte ptr [eax], al
  03b68b  add byte ptr [eax], al
  03b68d  add byte ptr [eax], al
  03b68f  add byte ptr [eax], al
  03b691  add byte ptr [eax], al
  03b693  add byte ptr [eax], al
  03b695  add byte ptr [eax], al
  03b697  add byte ptr [eax], al
  03b699  add byte ptr [eax], al
  03b69b  add byte ptr [eax], al
  03b69d  add byte ptr [eax], al
  03b69f  add byte ptr [eax], al
  03b6a1  add byte ptr [eax], al
  03b6a3  add byte ptr [eax], al
  03b6a5  add byte ptr [eax], al
  03b6a7  add byte ptr [eax], al
  03b6a9  add byte ptr [eax], al
  03b6ab  add byte ptr [eax], al
  03b6ad  add byte ptr [eax], al
  03b6af  add byte ptr [eax], al
  03b6b1  add byte ptr [eax], al
  03b6b3  add byte ptr [eax], al
  03b6b5  add byte ptr [eax], al
  03b6b7  add byte ptr [eax], al
  03b6b9  add byte ptr [eax], al
  03b6bb  add byte ptr [eax], al
  03b6bd  add byte ptr [eax], al
  03b6bf  add byte ptr [eax], al
  03b6c1  add byte ptr [eax], al
  03b6c3  add byte ptr [eax], al
  03b6c5  add byte ptr [eax], al
  03b6c7  add byte ptr [eax], al
  03b6c9  add byte ptr [eax], al
  03b6cb  add byte ptr [eax], al
  03b6cd  add byte ptr [eax], al
  03b6cf  add byte ptr [eax], al
  03b6d1  add byte ptr [eax], al
  03b6d3  add byte ptr [eax], al
  03b6d5  add byte ptr [eax], al
  03b6d7  add byte ptr [eax], al
  03b6d9  add byte ptr [eax], al
  03b6db  add byte ptr [eax], al
  03b6dd  add byte ptr [eax], al
  03b6df  add byte ptr [eax], al
  03b6e1  add byte ptr [eax], al
  03b6e3  add byte ptr [eax], al
  03b6e5  add byte ptr [eax], al
  03b6e7  add byte ptr [eax], al
  03b6e9  add byte ptr [eax], al
  03b6eb  add byte ptr [eax], al
  03b6ed  add byte ptr [eax], al
  03b6ef  add byte ptr [eax], al
  03b6f1  add byte ptr [eax], al
  03b6f3  add byte ptr [eax], al
  03b6f5  add byte ptr [eax], al
  03b6f7  add byte ptr [eax], al
  03b6f9  add byte ptr [eax], al
  03b6fb  add byte ptr [eax], al
  03b6fd  add byte ptr [eax], al
  03b6ff  add byte ptr [eax], al
  03b701  add byte ptr [eax], al
  03b703  add byte ptr [eax], al
  03b705  add byte ptr [eax], al
  03b707  add byte ptr [eax], al
  03b709  add byte ptr [eax], al
  03b70b  add byte ptr [eax], al
  03b70d  add byte ptr [eax], al
  03b70f  add byte ptr [eax], al
  03b711  add byte ptr [eax], al
  03b713  add byte ptr [eax], al
  03b715  add byte ptr [eax], al
  03b717  add byte ptr [eax], al
  03b719  add byte ptr [eax], al
  03b71b  add byte ptr [eax], al
  03b71d  add byte ptr [eax], al
  03b71f  add byte ptr [eax], al
  03b721  add byte ptr [eax], al
  03b723  add byte ptr [eax], al
  03b725  add byte ptr [eax], al
  03b727  add byte ptr [eax], al
  03b729  add byte ptr [eax], al
  03b72b  add byte ptr [eax], al
  03b72d  add byte ptr [eax], al
  03b72f  add byte ptr [eax], al
  03b731  add byte ptr [eax], al
  03b733  add byte ptr [eax], al
  03b735  add byte ptr [eax], al
  03b737  add byte ptr [eax], al
  03b739  add byte ptr [eax], al
  03b73b  add byte ptr [eax], al
  03b73d  add byte ptr [eax], al
  03b73f  add byte ptr [eax], al
  03b741  add byte ptr [eax], al
  03b743  add byte ptr [eax], al
  03b745  add byte ptr [eax], al
  03b747  add byte ptr [eax], al
  03b749  add byte ptr [eax], al
  03b74b  add byte ptr [eax], al
  03b74d  add byte ptr [eax], al
  03b74f  add byte ptr [eax], al
  03b751  add byte ptr [eax], al
  03b753  add byte ptr [eax], al
  03b755  add byte ptr [eax], al
  03b757  add byte ptr [eax], al
  03b759  add byte ptr [eax], al
  03b75b  add byte ptr [eax], al
  03b75d  add byte ptr [eax], al
  03b75f  add byte ptr [eax], al
  03b761  add byte ptr [eax], al
  03b763  add byte ptr [eax], al
  03b765  add byte ptr [eax], al
  03b767  add byte ptr [eax], al
  03b769  add byte ptr [eax], al
  03b76b  add byte ptr [eax], al
  03b76d  add byte ptr [eax], al
  03b76f  add byte ptr [eax], al
  03b771  add byte ptr [eax], al
  03b773  add byte ptr [eax], al
  03b775  add byte ptr [eax], al
  03b777  add byte ptr [eax], al
  03b779  add byte ptr [eax], al
  03b77b  add byte ptr [eax], al
  03b77d  add byte ptr [eax], al
  03b77f  add byte ptr [eax], al
  03b781  add byte ptr [eax], al
  03b783  add byte ptr [eax], al
  03b785  add byte ptr [eax], al
  03b787  add byte ptr [eax], al
  03b789  add byte ptr [eax], al
  03b78b  add byte ptr [eax], al
  03b78d  add byte ptr [eax], al
  03b78f  add byte ptr [eax], al
  03b791  add byte ptr [eax], al
  03b793  add byte ptr [eax], al
  03b795  add byte ptr [eax], al
  03b797  add byte ptr [eax], al
  03b799  add byte ptr [eax], al
  03b79b  add byte ptr [eax], al
  03b79d  add byte ptr [eax], al
  03b79f  add byte ptr [eax], al
  03b7a1  add byte ptr [eax], al
  03b7a3  add byte ptr [eax], al
  03b7a5  add byte ptr [eax], al
  03b7a7  add byte ptr [eax], al
  03b7a9  add byte ptr [eax], al
  03b7ab  add byte ptr [eax], al
  03b7ad  add byte ptr [eax], al
  03b7af  add byte ptr [eax], al
  03b7b1  add byte ptr [eax], al
  03b7b3  add byte ptr [eax], al
  03b7b5  add byte ptr [eax], al
  03b7b7  add byte ptr [eax], al
  03b7b9  add byte ptr [eax], al
  03b7bb  add byte ptr [eax], al
  03b7bd  add byte ptr [eax], al
  03b7bf  add byte ptr [eax], al
  03b7c1  add byte ptr [eax], al
  03b7c3  add byte ptr [eax], al
  03b7c5  add byte ptr [eax], al
  03b7c7  add byte ptr [eax], al
  03b7c9  add byte ptr [eax], al
  03b7cb  add byte ptr [eax], al
  03b7cd  add byte ptr [eax], al
  03b7cf  add byte ptr [eax], al
  03b7d1  add byte ptr [eax], al
  03b7d3  add byte ptr [eax], al
  03b7d5  add byte ptr [eax], al
  03b7d7  add byte ptr [edx], dl
  03b7d9  xor al, 0x4d
  03b7db  add byte ptr ds:[eax], al
  03b7de  add byte ptr [eax], al
  03b7e0  add byte ptr [eax], al
  03b7e2  add byte ptr [eax], al
  03b7e4  add byte ptr [eax], al
  03b7e6  pop edi
  03b7e7  add byte ptr [eax], al
  03b7e9  add byte ptr [ecx], ah
  03b7ec  add byte ptr [eax], al
  03b7ee  bound eax, qword ptr [eax]
  03b7f0  add byte ptr [eax], al
  03b7f2  add byte ptr [ecx], al
  03b7f4  add al, byte ptr [ebx + eax]
  03b7f7  add al, 3
  03b7f9  add dword ptr [esi + eax], eax
  03b7fc  add byte ptr [eax], al
  03b7fe  add byte ptr [eax + 0x8020205], al
  03b805  add al, byte ptr [0x1010109]
  03b80b  add al, 2
  03b80d  or al, byte ptr [0x6040c03]
  03b813  or dword ptr [edx], eax
  03b815  add al, byte ptr [edx]
  03b817  push es
  03b818  or dword ptr [esi], eax
  03b81a  add cl, byte ptr [eax]
  03b81c  or dword ptr [edx], eax
  03b81e  or byte ptr [0x5030303], cl
  03b824  or byte ptr [edx], cl
  03b826  add eax, 0xd050d09
  03b82b  or eax, 0x8040404
  03b830  or byte ptr [edx], cl
  03b832  or dword ptr [edx], ecx
  03b834  or eax, 0x5090d09
  03b839  add eax, 0xe0a0c05
  03b83e  or eax, 0x6050e0c
  03b843  adc dword ptr [esi], eax
  03b845  push es
  03b846  push es
  03b847  add cl, byte ptr [edx]
  03b849  adc al, 2
  03b84b  or eax, 0x150d0211
  03b850  pop es
  03b851  pop es
  03b852  pop es
  03b853  add eax, 0xc051509
  03b858  adc dword ptr [0x808150d], eax
  03b85e  or byte ptr [ebx], al
  03b860  cldemote byte ptr [0xe05190a]
  03b867  sbb dword ptr [ecx], ecx
  03b869  or dword ptr [ecx], ecx
  03b86b  or byte ptr [0x19070a15], al
  03b871  or dword ptr [edx], ecx
  03b873  adc byte ptr [edx], cl
  03b875  or cl, byte ptr [edx]
  03b877  or dword ptr [ecx + edx], ecx
  03b87a  or dword ptr [0x100b0c15], ecx
  03b880  or ecx, dword ptr [ebx]
  03b882  or ecx, dword ptr [0x908140e]
  03b888  sbb dword ptr [edx], ecx
  03b88a  or bl, byte ptr [0x90c0c0c]
  03b890  or eax, 0x180e0d1d
  03b895  or al, 0xf
  03b897  push ds
  03b898  or eax, 0x10020d0d
  03b89d  sbb dword ptr [edx], eax
  03b89f  adc dword ptr [0xe191403], ebx
  03b8a5  push cs
  03b8a6  push cs
  03b8a7  add eax, 0x11051910
  03b8ac  sbb eax, 0xf191504
  03b8b1  db 0x0f
  03b8b2  syscall 
  03b8b4  sbb bl, byte ptr [eax + ecx]
  03b8b7  adc byte ptr [ebx], dl
  03b8b9  or dword ptr [eax], edx
  03b8bb  push ss
  03b8bc  adc byte ptr [eax], dl
  03b8be  adc byte ptr [esi], cl
  03b8c0  adc byte ptr [edx], dl
  03b8c2  or eax, 0x10091510
  03b8c7  sbb dword ptr [ecx], edx
  03b8c9  adc dword ptr [ecx], edx
  03b8cb  or dl, byte ptr [0x1d140919]
  03b8d1  or eax, 0x12121911
  03b8d6  adc cl, byte ptr [0x150d1a14]
  03b8dc  sbb eax, 0x131f180f
  03b8e1  adc edx, dword ptr [ebx]
  03b8e3  adc byte ptr [esi], cl
  03b8e5  adc al, 0x11
  03b8e7  prefetcht1 byte ptr [ecx]
  03b8ea  adc byte ptr [edx], dl
  03b8ec  adc al, 0x14
  03b8ee  adc al, 0x12
  03b8f0  adc al, 0x17
  03b8f2  adc al, 0x12
  03b8f4  adc edx, dword ptr [edx + edx]
  03b8f7  adc eax, 0x11151515
  03b8fc  adc bl, byte ptr [ecx]
  03b8fe  adc byte ptr [edx], dl
  03b900  sbb al, 0x11
  03b902  adc al, 0x19
  03b904  push ss
  03b905  push ss
  03b906  push ss
  03b907  adc al, 0x12
  03b909  sbb dword ptr [edx + edx], edx
  03b90c  sbb eax, 0x17191515
  03b911  pop ss
  03b912  pop ss
  03b913  adc dword ptr [eax], ebx
  03b915  push ds
  03b916  pop ss
  03b917  sbb byte ptr [ebx], bl
  03b919  adc eax, 0x18181d18
  03b91e  sbb byte ptr [eax], bl
  03b920  adc eax, 0x1d151819
  03b925  sbb al, 0x17
  03b927  push ds
  03b928  sbb dword ptr [ecx], ebx
  03b92a  sbb dword ptr [ecx], ebx
  03b92c  sbb dword ptr [0x1d1f1c1b], ebx
  03b932  sbb dword ptr [0x61a1a1a], ebx
  03b938  push cs
  03b939  and dword ptr [edx], ecx
  03b93b  push cs
  03b93c  and dword ptr [0x1b1b2214], eax
  03b942  sbb eax, dword ptr [0x1b05231a]
  03b948  sub ecx, dword ptr [ecx]
  03b94a  adc ah, byte ptr [eax]
  03b94c  sbb al, 0x1c
  03b94e  sbb al, 9
  03b950  adc eax, 0x25150921
  03b955  or al, 0x11
  03b957  and dword ptr [0x150d1d1d], ebx
  03b95d  and dword ptr [0x160a2516], ecx
  03b963  sub dword ptr [esi], ebx
  03b965  push ds
  03b966  push ds
  03b967  or ebx, dword ptr [ebx]
  03b969  sub eax, dword ptr [esi]
  03b96b  sbb eax, 0x381f0732
  03b970  pop ds
  03b971  pop ds
  03b972  pop ds
  03b973  or ebx, dword ptr [edi]
  03b975  cmp byte ptr [edx], dl
  03b977  adc eax, 0x28171422
  03b97c  and byte ptr [eax], ah
  03b97e  and byte ptr [ecx], dl
  03b980  sbb dword ptr [0x12231c13], esp
  03b986  sbb al, 0x25
  03b988  and dword ptr [ecx], esp
  03b98a  and dword ptr [0x1c152519], edx
  03b990  and dl, byte ptr [0x2222251c]
  03b996  and bl, byte ptr [ecx]
  03b998  push ss
  03b999  and dword ptr [ecx], ebx
  03b99b  sbb dword ptr [ecx], esp
  03b99d  sbb dword ptr [ecx], ebx
  03b99f  and eax, 0x19232323
  03b9a4  sbb eax, 0x21191d25
  03b9a9  sbb eax, 0x2424251a
  03b9ae  and al, 0x1d
  03b9b0  sbb eax, 0x2a1d1a25
  03b9b5  adc bl, byte ptr [esi]
  03b9b7  xor dword ptr [0x21062525], esp
  03b9bd  and eax, 0x72b2206
  03b9c2  sub byte ptr [edi], ch
  03b9c4  push es
  03b9c8  and dh, byte ptr [ebx]
  03b9ca  push es
  03b9cb  and al, 0x3a
  03b9cd  push es
  03b9ce  sub dword ptr [ebx], esi
  03b9d0  daa 
  03b9d1  daa 
  03b9d2  daa 
  03b9d3  or al, 0x21
  03b9d5  xor al, 0xc
  03b9d7  and al, 0x3b
  03b9d9  push cs
  03b9da  sub byte ptr [edi], dh
  03b9dc  sub byte ptr [eax], ch
  03b9de  sub byte ptr [esi], al
  03b9e0  xor bh, byte ptr [edi]
  03b9e2  or al, 0x33
  03b9e4  aas 
  03b9e5  or edi, dword ptr [ecx]
  03b9e7  aas 
  03b9e8  sub dword ptr [ecx], ebp
  03b9ea  sub dword ptr [edi], edx
  03b9ec  and byte ptr [edi], ah
  03b9ee  adc al, 0x20
  03b9f0  sub eax, 0x2a272019
  03b9f5  sub ch, byte ptr [edx]
  03b9f7  sbb eax, 0x221b2620
  03b9fc  sub al, 0x13
  03b9fe  and dh, byte ptr [ebx]
  03ba00  sub ebp, dword ptr [ebx]
  03ba02  sub edx, dword ptr [0x2b143628]
  03ba08  sbb esp, dword ptr ds:[ebx + esi]
  03ba0c  sub al, 0x2c
  03ba0e  sub al, 0x1c
  03ba10  sub byte ptr [0x133d2b1b], dh
  03ba16  xor bh, byte ptr [edi]
  03ba18  sub eax, 0x321c2d2d
  03ba1d  sbb al, 0x3a
  03ba20  aas 
  03ba21  and byte ptr [edi + ebx], bl
  03ba24  and dword ptr cs:[0x301f222a], ebx
  03ba2d  and ah, byte ptr [eax]
  03ba2f  and ch, byte ptr [edi]
  03ba31  das 
  03ba32  das 
  03ba33  and ah, byte ptr [edi]
  03ba36  and eax, 0x25252621
  03ba3b  xor byte ptr es:[eax], dh
  03ba3e  xor byte ptr [0x24292e28], ah
  03ba44  daa 
  03ba45  sub ah, byte ptr [esp + ebp]
  03ba48  xor dword ptr [ecx], esi
  03ba4a  xor dword ptr [ebx], esp
  03ba4c  and al, 0x32
  03ba4e  and esp, dword ptr [0x3429243a]
  03ba54  xor dh, byte ptr [edx]
  03ba56  xor ch, byte ptr [edx]
  03ba58  and eax, 0x3a262933
  03ba5d  sub ch, byte ptr [ebx]
  03ba5f  xor al, 0x33
  03ba61  xor esi, dword ptr [ebx]
  03ba63  and esi, dword ptr [ebx]
  03ba65  and al, 0x3c
  03ba68  aas 
  03ba69  das 
  03ba6a  xor dword ptr [esi], esi
  03ba6c  xor al, 0x34
  03ba6e  xor al, 0x2b
  03ba70  cmp al, 0x3f
  03ba72  xor byte ptr [ebx], ch
  03ba74  xor ch, byte ptr cs:[ebx + esi]
  03ba78  xor eax, 0x2e383535
  03ba7d  xor esi, dword ptr ds:[ecx]
  03ba80  xor al, 0x32
  03ba82  xor al, 0x3d
  03ba84  cmp byte ptr ss:[edx], dh
  03ba89  cmp esi, dword ptr ss:[ebx]
  03ba8c  cmp eax, 0x373e3e3d
  03ba91  aaa 
  03ba92  aaa 
  03ba93  sub ebp, dword ptr [ebx]
  03ba95  xor ebp, dword ptr [edi]
  03ba97  das 
  03ba98  cmp dword ptr [ecx], ebp
  03ba9a  sub dword ptr [ebx], esi
  03ba9c  cmp byte ptr [eax], bh
  03ba9e  cmp byte ptr [ecx], ah
  03baa0  and dword ptr [ebx], ebp
  03baa2  push ds
  03baa3  push ds
  03baa4  sub dword ptr [esp + ebx], ebx
  03baa7  daa 
  03baa8  cmp dword ptr [ecx], edi
  03baaa  cmp dword ptr [esi], edx
  03baac  push ss
  03baad  and dword ptr [eax], edx
  03baaf  adc byte ptr [edx + eax], bl
  03bab2  add cl, byte ptr [edx + edi]
  03bab5  cmp bh, byte ptr [edx]
  03bab7  adc al, 0x12
  03bab9  push ds
  03baba  push ss
  03babb  adc al, 0x1e
  03babd  add al, byte ptr [eax]
  03babf  or bh, byte ptr [ebx]
  03bac1  cmp edi, dword ptr [ebx]
  03bac3  sbb byte ptr [esi], dl
  03bac5  and dword ptr [edi], esi
  03bac7  xor eax, 0x291c213b
  03bacc  cmp al, 0x3c
  03bace  cmp al, 0x21
  03bad0  sbb al, 0x27
  03bad2  xor esi, dword ptr [ecx]
  03bad4  xor eax, 0x3d291e25
  03bad9  cmp eax, 0x2921273d
  03bade  sub esp, dword ptr [0x3f3d3f2d]
  03bae4  add al, byte ptr ds:[eax]
  03bae9  add dh, byte ptr [ebx]
  03baeb  sub eax, 0x31
  03baf0  add byte ptr [eax], al
  03baf2  add byte ptr [eax], al
  03baf4  add byte ptr [ecx], al
  03baf6  add dword ptr [ecx], eax
  03baf8  add al, byte ptr [ecx]
  03bafa  add dword ptr [ebx], eax
  03bafc  add al, byte ptr [edx]
  03bafe  add al, 2
  03bb00  add al, byte ptr [0x3060303]
  03bb06  add eax, dword ptr [edi]
  03bb08  add al, 4
  03bb0a  or byte ptr [esp + eax], al
  03bb0d  or dword ptr [0x5050a05], eax
  03bb13  or eax, dword ptr [esi]
  03bb15  push es
  03bb16  or al, 6
  03bb18  push es
  03bb19  or eax, 0x70e0707
  03bb1e  pop es
  03bb1f  invd 
  03bb21  or byte ptr [eax], dl
  03bb23  or byte ptr [eax], cl
  03bb25  adc dword ptr [ecx], ecx
  03bb27  or dword ptr [edx], edx
  03bb29  or dword ptr [ecx], ecx
  03bb2b  adc ecx, dword ptr [edx]
  03bb2d  or dl, byte ptr [edx + ecx]
  03bb30  or dl, byte ptr [0xb160b0b]
  03bb36  or edx, dword ptr [edi]
  03bb38  or al, 0xc
  03bb3a  sbb byte ptr [esp + ecx], cl
  03bb3d  sbb dword ptr [0xd0d1a0d], ecx
  03bb43  sbb ecx, dword ptr [esi]
  03bb45  push cs
  03bb46  sbb al, 0xe
  03bb48  push cs
  03bb49  sbb eax, 0xf1e0f0f
  03bb4e  nop dword ptr [eax]
  03bb51  adc byte ptr [eax], ah
  03bb53  adc byte ptr [eax], dl
  03bb55  and dword ptr [ecx], edx
  03bb57  adc dword ptr [edx], esp
  03bb59  adc dword ptr [ecx], edx
  03bb5b  and edx, dword ptr [edx]
  03bb5d  adc ah, byte ptr [edx + edx]
  03bb60  adc ah, byte ptr [0x13261313]
  03bb66  adc esp, dword ptr [edi]
  03bb68  adc al, 0x14
  03bb6a  sub byte ptr [esp + edx], dl
  03bb6d  sub dword ptr [0x15152a15], edx
  03bb73  sub edx, dword ptr [esi]
  03bb75  push ss
  03bb76  sub al, 0x16
  03bb78  push ss
  03bb79  sub eax, 0x172e1717
  03bb7e  pop ss
  03bb7f  das 
  03bb80  sbb byte ptr [eax], bl
  03bb82  xor byte ptr [eax], bl
  03bb84  sbb byte ptr [ecx], dh
  03bb86  sbb dword ptr [ecx], ebx
  03bb88  xor bl, byte ptr [ecx]
  03bb8a  sbb dword ptr [ebx], esi
  03bb8c  sbb bl, byte ptr [edx]
  03bb8e  xor al, 0x1a
  03bb90  sbb dh, byte ptr [0x1b361b1b]
  03bb96  sbb esi, dword ptr [edi]
  03bb98  sbb al, 0x1c
  03bb9a  cmp byte ptr [esp + ebx], bl
  03bb9d  cmp dword ptr [0x1d1d3a1d], ebx
  03bba3  cmp ebx, dword ptr [esi]
  03bba5  push ds
  03bba6  cmp al, 0x1e
  03bba8  push ds
  03bba9  cmp eax, 0x1f3e1f1f
  03bbae  pop ds
  03bbaf  aas 
  03bbb0  and byte ptr [eax], ah
  03bbb2  inc eax
  03bbb3  and byte ptr [eax], ah
  03bbb5  inc ecx
  03bbb6  and dword ptr [ecx], esp
  03bbb8  inc edx
  03bbb9  and dword ptr [ecx], esp
  03bbbb  inc ebx
  03bbbc  and ah, byte ptr [edx]
  03bbbe  inc esp
  03bbbf  and ah, byte ptr [edx]
  03bbc1  inc ebp
  03bbc2  and esp, dword ptr [ebx]
  03bbc4  inc esi
  03bbc5  and esp, dword ptr [ebx]
  03bbc7  inc edi
  03bbc8  and al, 0x24
  03bbca  dec eax
  03bbcb  and al, 0x24
  03bbcd  dec ecx
  03bbce  and eax, 0x25254a25
  03bbd3  dec ebx
  03bbd4  dec esp
  03bbd7  dec ebp
  03bbda  daa 
  03bbdb  daa 
  03bbdc  dec esi
  03bbdd  daa 
  03bbde  daa 
  03bbdf  dec edi
  03bbe0  sub byte ptr [eax], ch
  03bbe2  push eax
  03bbe3  sub byte ptr [eax], ch
  03bbe5  push ecx
  03bbe6  sub dword ptr [ecx], ebp
  03bbe8  push edx
  03bbe9  sub dword ptr [ecx], ebp
  03bbeb  push ebx
  03bbec  sub ch, byte ptr [edx]
  03bbee  push esp
  03bbef  sub ch, byte ptr [edx]
  03bbf1  push ebp
  03bbf2  sub ebp, dword ptr [ebx]
  03bbf4  push esi
  03bbf5  sub ebp, dword ptr [ebx]
  03bbf7  push edi
  03bbf8  sub al, 0x2c
  03bbfa  pop eax
  03bbfb  sub al, 0x2c
  03bbfd  pop ecx
  03bbfe  sub eax, 0x2d2d5a2d
  03bc03  pop ebx
  03bc04  pop esp
  03bc07  pop ebp
  03bc0a  das 
  03bc0b  das 
  03bc0c  pop esi
  03bc0d  das 
  03bc0e  das 
  03bc0f  pop edi
  03bc10  xor byte ptr [eax], dh
  03bc12  pushal 
  03bc13  xor byte ptr [eax], dh
  03bc15  popal 
  03bc16  xor dword ptr [ecx], esi
  03bc18  bound esi, qword ptr [ecx]
  03bc1a  xor dword ptr [ebx + 0x32], esp
  03bc1d  xor ah, byte ptr [edx + esi + 0x32]
  03bc21  xor esi, dword ptr gs:[ebx]
  03bc24  xor si, word ptr [ebx]
  03bc27  xor al, 0x34
  03bc2a  push 0x35693434
  03bc2f  xor eax, 0x6b35356a
  03bc34  insb byte ptr es:[edi], dx
  03bc37  insd dword ptr es:[edi], dx
  03bc3a  aaa 
  03bc3b  aaa 
  03bc3c  outsb dx, byte ptr [esi]
  03bc3d  aaa 
  03bc3e  aaa 
  03bc3f  outsd dx, dword ptr [esi]
  03bc40  cmp byte ptr [eax], bh
  03bc42  jo 0x3bc7c
  03bc44  cmp byte ptr [ecx + 0x39], dh
  03bc47  cmp dword ptr [edx + 0x39], esi
  03bc4a  cmp dword ptr [ebx + 0x3a], esi
  03bc4d  cmp dh, byte ptr [edx + edi + 0x3a]
  03bc51  jne 0x3bc8e
  03bc53  cmp esi, dword ptr [esi + 0x3b]
  03bc56  cmp esi, dword ptr [edi + 0x3c]
  03bc59  cmp al, 0x78
  03bc5b  cmp al, 0x3c
  03bc5d  jns 0x3bc9c
  03bc5f  cmp eax, 0x7b3d3d7a
  03bc64  jl 0x3bca6
  03bc68  jge 0x3bcaa
  03bc6b  aas 
  03bc6c  jle 0x3bcad
  03bc6e  aas 
  03bc6f  jg 0x3bcb1
  03bc71  inc eax
  03bc72  add byte ptr [eax + 0x40], 0x81
  03bc76  inc ecx
  03bc77  inc ecx
  03bc78  add byte ptr [ecx + 0x41], 0x83
L3bc7c:
  03bc7c  inc edx
  03bc7d  inc edx
  03bc7e  test byte ptr [edx + 0x42], al
  03bc81  test dword ptr [ebx + 0x43], eax
  03bc84  xchg byte ptr [ebx + 0x43], al
  03bc87  xchg dword ptr [esp + eax*2 - 0x78], eax
  03bc8b  inc esp
  03bc8c  inc esp
  03bc8d  mov dword ptr [ebp + 0x45], eax
  03bc90  mov al, byte ptr [ebp + 0x45]
  03bc93  mov eax, dword ptr [esi + 0x46]
  03bc96  mov word ptr [esi + 0x46], es
  03bc99  lea eax, [edi + 0x47]
L3bc9c:
  03bc9c  mov es, word ptr [edi + 0x47]
  03bc9f  db 0x8f
  03bca0  dec eax
  03bca1  dec eax
  03bca2  nop 
  03bca3  dec eax
  03bca4  dec eax
  03bca5  xchg ecx, eax
L3bca6:
  03bca6  dec ecx
  03bca7  dec ecx
  03bca8  xchg edx, eax
  03bca9  dec ecx
L3bcaa:
  03bcaa  dec ecx
  03bcab  xchg ebx, eax
  03bcac  dec edx
L3bcad:
  03bcad  dec edx
  03bcae  xchg esp, eax
  03bcaf  dec edx
  03bcb0  dec edx
L3bcb1:
  03bcb1  xchg ebp, eax
  03bcb2  dec ebx
  03bcb3  dec ebx
  03bcb4  xchg esi, eax
  03bcb5  dec ebx
  03bcb6  dec ebx
  03bcb7  xchg edi, eax
  03bcb8  dec esp
  03bcb9  dec esp
  03bcba  cwde 
  03bcbb  dec esp
  03bcbc  dec esp
  03bcbd  cdq 
  03bcbe  dec ebp
  03bcbf  dec ebp
  03bcc0  lcall 0x9c4e, 0x4e9b4d4d
  03bcc7  dec esi
  03bcc8  dec esi
  03bcc9  popfd 
  03bcca  dec edi
  03bccb  dec edi
  03bccc  sahf 
  03bccd  dec edi
  03bcce  dec edi
  03bccf  lahf 
  03bcd0  push eax
  03bcd1  push eax
  03bcd2  mov al, byte ptr [0x51a15050]
  03bcd7  push ecx
  03bcd8  mov byte ptr [0x52a35151], al
  03bcdd  push edx
  03bcde  movsb byte ptr es:[edi], byte ptr [esi]
  03bcdf  push edx
  03bce0  push edx
  03bce1  movsd dword ptr es:[edi], dword ptr [esi]
  03bce2  push ebx
  03bce3  push ebx
  03bce4  cmpsb byte ptr [esi], byte ptr es:[edi]
  03bce5  push ebx
  03bce6  push ebx
  03bce7  cmpsd dword ptr [esi], dword ptr es:[edi]
  03bce8  push esp
  03bce9  push esp
  03bcea  test al, 0x54
  03bcec  push esp
  03bced  test eax, 0x55aa5555
  03bcf2  push ebp
  03bcf3  stosd dword ptr es:[edi], eax
  03bcf4  push esi
  03bcf5  push esi
  03bcf6  lodsb al, byte ptr [esi]
  03bcf7  push esi
  03bcf8  push esi
  03bcf9  lodsd eax, dword ptr [esi]
  03bcfa  push edi
  03bcfb  push edi
  03bcfc  scasb al, byte ptr es:[edi]
  03bcfd  push edi
  03bcfe  push edi
  03bcff  scasd eax, dword ptr es:[edi]
  03bd00  pop eax
  03bd01  pop eax
  03bd02  mov al, 0x58
  03bd04  pop eax
  03bd05  mov cl, 0x59
  03bd07  pop ecx
  03bd08  mov dl, 0x59
  03bd0a  pop ecx
  03bd0b  mov bl, 0x5a
  03bd0d  pop edx
  03bd0e  mov ah, 0x5a
  03bd10  pop edx
  03bd11  mov ch, 0x5b
  03bd13  pop ebx
  03bd14  mov dh, 0x5b
  03bd16  pop ebx
  03bd17  mov bh, 0x5c
  03bd19  pop esp
  03bd1a  mov eax, 0x5db95c5c
  03bd1f  pop ebp
  03bd20  mov edx, 0x5ebb5d5d
  03bd25  pop esi
  03bd26  mov esp, 0x5fbd5e5e
  03bd2b  pop edi
  03bd2c  mov esi, 0x60bf5f5f
  03bd31  pushal 
  03bd32  shl byte ptr [eax + 0x60], 0xc1
  03bd36  popal 
  03bd37  popal 
  03bd38  ret 0x6161
  03bd3b  ret 
  03bd3c  bound esp, qword ptr [edx - 0x3c]
  03bd3f  bound esp, qword ptr [edx - 0x3b]
  03bd42  arpl word ptr [ebx - 0x3a], sp
  03bd45  arpl word ptr [ebx - 0x39], sp
  03bd48  enter 0x6464, -0x37
  03bd4e  retf 0x6565
  03bd53  retf 
  03bd54  int3 
  03bd57  int 0x67
  03bd5b  into 
  03bd5d  iretd 
  03bd60  push 0x6868d068
  03bd65  shr dword ptr [ecx + 0x69], 1
  03bd68  shr byte ptr [ecx + 0x69], cl
  03bd6b  shr dword ptr [edx + 0x6a], cl
  03bd6e  aam 0x6a
  03bd70  push -0x2b
  03bd72  imul ebp, dword ptr [ebx - 0x2a], 0x6b
  03bd76  imul edx, edi, 0x6c
  03bd79  insb byte ptr es:[edi], dx
  03bd7a  fsubr dword ptr [esp + ebp*2 - 0x27]
  03bd7e  insd dword ptr es:[edi], dx
L3bd7f:
  03bd7f  insd dword ptr es:[edi], dx
  03bd80  fisubr dword ptr [ebp + 0x6d]
  03bd83  fld xword ptr [esi + 0x6e]
  03bd86  fsubr qword ptr [esi + 0x6e]
  03bd89  db 0xdd
  03bd8a  outsd dx, dword ptr [esi]
  03bd8b  outsd dx, dword ptr [esi]
  03bd8c  fisubr word ptr [edi + 0x6f]
L3bd8f:
  03bd8f  fbstp tbyte ptr [eax + 0x70]
  03bd92  loopne 0x3be04
  03bd94  jo 0x3bd77
  03bd96  jno 0x3be09
  03bd98  loop 0x3be0b
  03bd9a  jno 0x3bd7f
  03bd9c  jb 0x3be10
  03bd9e  in al, 0x72
  03bda0  jb 0x3bd87
  03bda2  jae 0x3be17
  03bda4  out 0x73, al
  03bda6  jae 0x3bd8f
  03bda8  je 0x3be1e
  03bdaa  call 0x75ed3223
  03bdaf  jne 0x3bd9b
  03bdb1  jne 0x3be28
  03bdb3  jmp 0x3be2b
  03bdb5  jbe 0x3bda3
  03bdb7  jbe 0x3be2f
  03bdb9  in eax, dx
  03bdba  ja 0x3be33
  03bdbc  out dx, al
  03bdbd  ja 0x3be36
  03bdbf  out dx, eax
  03bdc0  js 0x3be3a
  03bdc2  db 0xf0
  03bdc3  js 0x3be3d
  03bdc5  int1 
  03bdc6  jns 0x3be41
  03bdc8  bnd jns 0x3be44
  03bdcb  jp 0x3be48
  03bdce  hlt 
  03bdcf  jp 0x3be4b
  03bdd1  cmc 
  03bdd2  jnp 0x3be4f
  03bdd4  idiv byte ptr [ebx + 0x7b]
  03bdd7  idiv dword ptr [esp + edi*2 - 8]
  03bddb  jl 0x3be59
  03bddd  stc 
  03bdde  jge 0x3be5d
  03bde0  cli 
  03bde1  jge 0x3be60
  03bde3  sti 
  03bde4  jle 0x3be64
  03bde6  cld 
  03bde7  jle 0x3be67
  03bde9  std 
  03bdea  jg 0x3be6b
  03bdec  db 0xfe
  03bded  jg 0x3be6e
  03bdef  inc dword ptr [eax]
  03bdf1  add byte ptr [eax], al
  03bdf3  add byte ptr [eax], al
  03bdf5  add byte ptr [eax], al
  03bdf7  add byte ptr [eax], al
  03bdf9  add byte ptr [eax], al
  03bdfb  add byte ptr [eax], al
  03bdfd  add byte ptr [eax], al
  03bdff  add byte ptr [eax], al
  03be01  add byte ptr [eax], al
  03be03  add byte ptr [eax], al
  03be05  add byte ptr [eax], al
  03be07  add byte ptr [eax], al
L3be09:
  03be09  add byte ptr [eax], al
L3be0b:
  03be0b  add byte ptr [eax], al
  03be0d  add byte ptr [eax], al
  03be0f  add byte ptr [eax], al
  03be11  add byte ptr [eax], al
  03be13  add byte ptr [eax], al
  03be15  add byte ptr [eax], al
L3be17:
  03be17  add byte ptr [eax], al
  03be19  add byte ptr [eax], al
  03be1b  add byte ptr [eax], al
  03be1d  add byte ptr [eax], al
  03be1f  add byte ptr [eax], al
  03be21  add byte ptr [eax], al
  03be23  add byte ptr [eax], al
  03be25  add byte ptr [eax], al
  03be27  add byte ptr [eax], al
  03be29  add byte ptr [eax], al
L3be2b:
  03be2b  add byte ptr [eax], al
  03be2d  add byte ptr [eax], al
L3be2f:
  03be2f  add byte ptr [eax], al
  03be31  add byte ptr [eax], al
L3be33:
  03be33  add byte ptr [eax], al
  03be35  add byte ptr [eax], al
  03be37  add byte ptr [eax], al
  03be39  add byte ptr [eax], al
  03be3b  add byte ptr [eax], al
L3be3d:
  03be3d  add byte ptr [eax], al
  03be3f  add byte ptr [eax], al
L3be41:
  03be41  add byte ptr [eax], al
  03be43  add byte ptr [eax], al
  03be45  add byte ptr [eax], al
  03be47  add byte ptr [eax], al
  03be49  add byte ptr [eax], al
L3be4b:
  03be4b  add byte ptr [eax], al
  03be4d  add byte ptr [eax], al
L3be4f:
  03be4f  add byte ptr [eax], al
  03be51  add byte ptr [eax], al
  03be53  add byte ptr [eax], al
  03be55  add byte ptr [eax], al
  03be57  add byte ptr [eax], al
L3be59:
  03be59  add byte ptr [eax], al
  03be5b  add byte ptr [eax], al
L3be5d:
  03be5d  add byte ptr [eax], al
  03be5f  add byte ptr [eax], al
  03be61  add byte ptr [eax], al
  03be63  add byte ptr [eax], al
  03be65  add byte ptr [eax], al
L3be67:
  03be67  add byte ptr [eax], al
  03be69  add byte ptr [eax], al
L3be6b:
  03be6b  add byte ptr [eax], al
  03be6d  add byte ptr [eax], al
  03be6f  add byte ptr [eax], al
  03be71  add byte ptr [eax], al
  03be73  add byte ptr [eax], al
  03be75  add byte ptr [eax], al
  03be77  add byte ptr [eax], al
  03be79  add byte ptr [eax], al
  03be7b  add byte ptr [eax], al
  03be7d  add byte ptr [eax], al
  03be7f  add byte ptr [eax], al
  03be81  add byte ptr [eax], al
  03be83  add byte ptr [eax], al
  03be85  add byte ptr [eax], al
  03be87  add byte ptr [eax], al
  03be89  add byte ptr [eax], al
  03be8b  add byte ptr [eax], al
  03be8d  add byte ptr [eax], al
  03be8f  add byte ptr [eax], al
  03be91  add byte ptr [eax], al
  03be93  add byte ptr [eax], al
  03be95  add byte ptr [eax], al
  03be97  add byte ptr [eax], al
  03be99  add byte ptr [eax], al
  03be9b  add byte ptr [eax], al
  03be9d  add byte ptr [eax], al
  03be9f  add byte ptr [eax], al
  03bea1  add byte ptr [eax], al
  03bea3  add byte ptr [eax], al
  03bea5  add byte ptr [eax], al
  03bea7  add byte ptr [eax], al
  03bea9  add byte ptr [eax], al
  03beab  add byte ptr [eax], al
  03bead  add byte ptr [eax], al
  03beaf  add byte ptr [eax], al
  03beb1  add byte ptr [eax], al
  03beb3  add byte ptr [eax], al
  03beb5  add byte ptr [eax], al
  03beb7  add byte ptr [eax], al
  03beb9  add byte ptr [eax], al
  03bebb  add byte ptr [eax], al
  03bebd  add byte ptr [eax], al
  03bebf  add byte ptr [eax], al
  03bec1  add byte ptr [eax], al
  03bec3  add byte ptr [eax], al
  03bec5  add byte ptr [eax], al
  03bec7  add byte ptr [eax], al
  03bec9  add byte ptr [eax], al
  03becb  add byte ptr [eax], al
  03becd  add byte ptr [eax], al
  03becf  add byte ptr [eax], al
  03bed1  add byte ptr [eax], al
  03bed3  add byte ptr [eax], al
  03bed5  add byte ptr [eax], al
  03bed7  add byte ptr [eax], al
  03bed9  add byte ptr [eax], al
  03bedb  add byte ptr [eax], al
  03bedd  add byte ptr [eax], al
  03bedf  add byte ptr [eax], al
  03bee1  add byte ptr [eax], al
  03bee3  add byte ptr [eax], al
  03bee5  add byte ptr [eax], al
  03bee7  add byte ptr [eax], al
  03bee9  add byte ptr [eax], al
  03beeb  add byte ptr [eax], al
  03beed  add byte ptr [eax], al
  03beef  add byte ptr [eax], al
  03bef1  add byte ptr [eax], al
  03bef3  add byte ptr [eax], al
  03bef5  add byte ptr [eax], al
  03bef7  add byte ptr [eax], al
  03bef9  add byte ptr [eax], al
  03befb  add byte ptr [eax], al
  03befd  add byte ptr [eax], al
  03beff  add byte ptr [eax], al
  03bf01  add byte ptr [eax], al
  03bf03  add byte ptr [eax], al
  03bf05  add byte ptr [eax], al
  03bf07  add byte ptr [eax], al
  03bf09  add byte ptr [eax], al
  03bf0b  add byte ptr [eax], al
  03bf0d  add byte ptr [eax], al
  03bf0f  add byte ptr [eax], al
  03bf11  add byte ptr [eax], al
  03bf13  add byte ptr [eax], al
  03bf15  add byte ptr [eax], al
  03bf17  add byte ptr [eax], al
  03bf19  add byte ptr [eax], al
  03bf1b  add byte ptr [eax], al
  03bf1d  add byte ptr [eax], al
  03bf1f  add byte ptr [eax], al
  03bf21  add byte ptr [eax], al
  03bf23  add byte ptr [eax], al
  03bf25  add byte ptr [eax], al
  03bf27  add byte ptr [eax], al
  03bf29  add byte ptr [eax], al
  03bf2b  add byte ptr [eax], al
  03bf2d  add byte ptr [eax], al
  03bf2f  add byte ptr [eax], al
  03bf31  add byte ptr [eax], al
  03bf33  add byte ptr [eax], al
  03bf35  add byte ptr [eax], al
  03bf37  add byte ptr [eax], al
  03bf39  add byte ptr [eax], al
  03bf3b  add byte ptr [eax], al
  03bf3d  add byte ptr [eax], al
  03bf3f  add byte ptr [eax], al
  03bf41  add byte ptr [eax], al
  03bf43  add byte ptr [eax], al
  03bf45  add byte ptr [eax], al
  03bf47  add byte ptr [eax], al
  03bf49  add byte ptr [eax], al
  03bf4b  add byte ptr [eax], al
  03bf4d  add byte ptr [eax], al
  03bf4f  add byte ptr [eax], al
  03bf51  add byte ptr [eax], al
  03bf53  add byte ptr [eax], al
  03bf55  add byte ptr [eax], al
  03bf57  add byte ptr [eax], al
  03bf59  add byte ptr [eax], al
  03bf5b  add byte ptr [eax], al
  03bf5d  add byte ptr [eax], al
  03bf5f  add byte ptr [eax], al
  03bf61  add byte ptr [eax], al
  03bf63  add byte ptr [eax], al
  03bf65  add byte ptr [eax], al
  03bf67  add byte ptr [eax], al
  03bf69  add byte ptr [eax], al
  03bf6b  add byte ptr [eax], al
  03bf6d  add byte ptr [eax], al
  03bf6f  add byte ptr [eax], al
  03bf71  add byte ptr [eax], al
  03bf73  add byte ptr [eax], al
  03bf75  add byte ptr [eax], al
  03bf77  add byte ptr [eax], al
  03bf79  add byte ptr [eax], al
  03bf7b  add byte ptr [eax], al
  03bf7d  add byte ptr [eax], al
  03bf7f  add byte ptr [eax], al
  03bf81  add byte ptr [eax], al
  03bf83  add byte ptr [eax], al
  03bf85  add byte ptr [eax], al
  03bf87  add byte ptr [eax], al
  03bf89  add byte ptr [eax], al
  03bf8b  add byte ptr [eax], al
  03bf8d  add byte ptr [eax], al
  03bf8f  add byte ptr [eax], al
  03bf91  add byte ptr [eax], al
  03bf93  add byte ptr [eax], al
  03bf95  add byte ptr [eax], al
  03bf97  add byte ptr [eax], al
  03bf99  add byte ptr [eax], al
  03bf9b  add byte ptr [eax], al
  03bf9d  add byte ptr [eax], al
  03bf9f  add byte ptr [eax], al
  03bfa1  add byte ptr [eax], al
  03bfa3  add byte ptr [eax], al
  03bfa5  add byte ptr [eax], al
  03bfa7  add byte ptr [eax], al
  03bfa9  add byte ptr [eax], al
  03bfab  add byte ptr [eax], al
  03bfad  add byte ptr [eax], al
  03bfaf  add byte ptr [eax], al
  03bfb1  add byte ptr [eax], al
  03bfb3  add byte ptr [eax], al
  03bfb5  add byte ptr [eax], al
  03bfb7  add byte ptr [eax], al
  03bfb9  add byte ptr [eax], al
  03bfbb  add byte ptr [eax], al
  03bfbd  add byte ptr [eax], al
  03bfbf  add byte ptr [eax], al
  03bfc1  add byte ptr [eax], al
  03bfc3  add byte ptr [eax], al
  03bfc5  add byte ptr [eax], al
  03bfc7  add byte ptr [eax], al
  03bfc9  add byte ptr [eax], al
  03bfcb  add byte ptr [eax], al
  03bfcd  add byte ptr [eax], al
  03bfcf  add byte ptr [eax], al
  03bfd1  add byte ptr [eax], al
  03bfd3  add byte ptr [eax], al
  03bfd5  add byte ptr [eax], al
  03bfd7  add byte ptr [eax], al
  03bfd9  add byte ptr [eax], al
  03bfdb  add byte ptr [eax], al
  03bfdd  add byte ptr [eax], al
  03bfdf  add byte ptr [eax], al
  03bfe1  add byte ptr [eax], al
  03bfe3  add byte ptr [eax], al
  03bfe5  add byte ptr [eax], al
  03bfe7  add byte ptr [eax], al
  03bfe9  add byte ptr [eax], al
  03bfeb  add byte ptr [eax], al
  03bfed  add byte ptr [eax], al
  03bfef  add byte ptr [eax], al
  03bff1  add byte ptr [eax], al
  03bff3  add byte ptr [eax], al
  03bff5  add byte ptr [eax], al
  03bff7  add byte ptr [eax], al
  03bff9  add byte ptr [eax], al
  03bffb  add byte ptr [eax], al
  03bffd  add byte ptr [eax], al
  03bfff  add byte ptr [eax], al
  03c001  add byte ptr [eax], al
  03c003  add byte ptr [eax], al
  03c005  add byte ptr [eax], al
  03c007  add byte ptr [eax], al
  03c009  add byte ptr [eax], al
  03c00b  add byte ptr [eax], al
  03c00d  add byte ptr [eax], al
  03c00f  add byte ptr [eax], al
  03c011  add byte ptr [eax], al
  03c013  add byte ptr [eax], al
  03c015  add byte ptr [eax], al
  03c017  add byte ptr [eax], al
  03c019  add byte ptr [eax], al
  03c01b  add byte ptr [eax], al
  03c01d  add byte ptr [eax], al
  03c01f  add byte ptr [eax], al
  03c021  add byte ptr [eax], al
  03c023  add byte ptr [eax], al
  03c025  add byte ptr [eax], al
  03c027  add byte ptr [eax], al
  03c029  add byte ptr [eax], al
  03c02b  add byte ptr [eax], al
  03c02d  add byte ptr [eax], al
  03c02f  add byte ptr [eax], al
  03c031  add byte ptr [eax], al
  03c033  add byte ptr [eax], al
  03c035  add byte ptr [eax], al
  03c037  add byte ptr [eax], al
  03c039  add byte ptr [eax], al
  03c03b  add byte ptr [eax], al
  03c03d  add byte ptr [eax], al
  03c03f  add byte ptr [eax], al
  03c041  add byte ptr [eax], al
  03c043  add byte ptr [eax], al
  03c045  add byte ptr [eax], al
  03c047  add byte ptr [eax], al
  03c049  add byte ptr [eax], al
  03c04b  add byte ptr [eax], al
  03c04d  add byte ptr [eax], al
  03c04f  add byte ptr [eax], al
  03c051  add byte ptr [eax], al
  03c053  add byte ptr [eax], al
  03c055  add byte ptr [eax], al
  03c057  add byte ptr [eax], al
  03c059  add byte ptr [eax], al
  03c05b  add byte ptr [eax], al
  03c05d  add byte ptr [eax], al
  03c05f  add byte ptr [eax], al
  03c061  add byte ptr [eax], al
  03c063  add byte ptr [eax], al
  03c065  add byte ptr [eax], al
  03c067  add byte ptr [eax], al
  03c069  add byte ptr [eax], al
  03c06b  add byte ptr [eax], al
  03c06d  add byte ptr [eax], al
  03c06f  add byte ptr [eax], al
  03c071  add byte ptr [eax], al
  03c073  add byte ptr [eax], al
  03c075  add byte ptr [eax], al
  03c077  add byte ptr [eax], al
  03c079  add byte ptr [eax], al
  03c07b  add byte ptr [eax], al
  03c07d  add byte ptr [eax], al
  03c07f  add byte ptr [eax], al
  03c081  add byte ptr [eax], al
  03c083  add byte ptr [eax], al
  03c085  add byte ptr [eax], al
  03c087  add byte ptr [eax], al
  03c089  add byte ptr [eax], al
  03c08b  add byte ptr [eax], al
  03c08d  add byte ptr [eax], al
  03c08f  add byte ptr [eax], al
  03c091  add byte ptr [eax], al
  03c093  add byte ptr [eax], al
  03c095  add byte ptr [eax], al
  03c097  add byte ptr [eax], al
  03c099  add byte ptr [eax], al
  03c09b  add byte ptr [eax], al
  03c09d  add byte ptr [eax], al
  03c09f  add byte ptr [eax], al
  03c0a1  add byte ptr [eax], al
  03c0a3  add byte ptr [eax], al
  03c0a5  add byte ptr [eax], al
  03c0a7  add byte ptr [eax], al
  03c0a9  add byte ptr [eax], al
  03c0ab  add byte ptr [eax], al
  03c0ad  add byte ptr [eax], al
  03c0af  add byte ptr [eax], al
  03c0b1  add byte ptr [eax], al
  03c0b3  add byte ptr [eax], al
  03c0b5  add byte ptr [eax], al
  03c0b7  add byte ptr [eax], al
  03c0b9  add byte ptr [eax], al
  03c0bb  add byte ptr [eax], al
  03c0bd  add byte ptr [eax], al
  03c0bf  add byte ptr [eax], al
  03c0c1  add byte ptr [eax], al
  03c0c3  add byte ptr [eax], al
  03c0c5  add byte ptr [eax], al
  03c0c7  add byte ptr [eax], al
  03c0c9  add byte ptr [eax], al
  03c0cb  add byte ptr [eax], al
  03c0cd  add byte ptr [eax], al
  03c0cf  add byte ptr [eax], al
  03c0d1  add byte ptr [eax], al
  03c0d3  add byte ptr [eax], al
  03c0d5  add byte ptr [eax], al
  03c0d7  add byte ptr [eax], al
  03c0d9  add byte ptr [eax], al
  03c0db  add byte ptr [eax], al
  03c0dd  add byte ptr [eax], al
  03c0df  add byte ptr [eax], al
  03c0e1  add byte ptr [eax], al
  03c0e3  add byte ptr [eax], al
  03c0e5  add byte ptr [eax], al
  03c0e7  add byte ptr [eax], al
  03c0e9  add byte ptr [eax], al
  03c0eb  add byte ptr [eax], al
  03c0ed  add byte ptr [eax], al
  03c0ef  add byte ptr [eax], al
  03c0f1  add byte ptr [eax], al
  03c0f3  add byte ptr [eax], al
  03c0f5  add byte ptr [eax], al
  03c0f7  add byte ptr [ecx + ebp*4], ah
  03c0fa  jns 0x3c136
  03c0fc  mov al, 0xf
  03c0fe  mov eax, dword ptr [0x35]
  03c103  add byte ptr [ebx], cl
  03c105  mov dword ptr [0x6c8e0002], eax
  03c10a  jns 0x3c14b
  03c10c  inc esi
  03c10d  adc eax, 0x9651be63
  03c112  and byte ptr [ebp + 0x41b8b562], bh
  03c118  int 0x9a
  03c11a  dec edx
  03c11b  inc eax
  03c11c  push fs
  03c11e  hlt 
  03c11f  inc esp
  03c120  mov eax, 0xfe41b918
  03c125  dec esp
  03c127  inc eax
L3c128:
  03c128  add al, al
  03c12a  hlt 
  03c12b  inc esp
  03c12c  add byte ptr [eax], al
  03c12e  mov al, byte ptr [0xab5fce43]
  03c133  cmp eax, 0x3abf7130
  03c139  popfd 
  03c13a  xchg ebp, eax
  03c13b  cmp al, 0x35
  03c13d  dec ebp
  03c13e  mov ch, 0x41
  03c140  outsd dx, dword ptr [esi]
  03c141  jge 0x3c128
  03c143  rol byte ptr [ebx - 0x74bb189a], 0xb0
  03c14a  mov ch, 0x41
  03c14c  ret 
  03c14d  push ecx
  03c14e  in al, 0xc0
  03c150  je 0x3c0d8
  03c152  out 0x44, eax
  03c154  add byte ptr [eax], al
  03c156  mov al, byte ptr [0x29700743]
  03c15b  mov esi, 0x3f7ad5e5
  03c160  mov esp, 0x33de588
  03c165  push dword ptr [edx - 0x71420840]
  03c16b  shl dword ptr [ebp + 0x7744c9ae], 0x5c
  03c172  mov cl, 0xc0
  03c174  hlt 
  03c175  xchg esp, eax
  03c176  pop ecx
  03c178  insd dword ptr es:[edi], dx
  03c179  into 
  03c17a  leave 
  03c17b  inc esp
  03c17c  add byte ptr [eax], al
  03c17e  mov al, byte ptr [0x54bd6643]
  03c183  mov edi, 0x3f0c13e3
  03c188  mov esp, esi
  03c18a  int3 
  03c18b  cmp eax, 0xc15609f7
  03c190  push esi
  03c191  rcr byte ptr [ecx + 0x40], 0xbd
  03c195  scasb al, byte ptr es:[edi]
  03c197  inc esp
  03c198  sub eax, 0xd0c154b6
  03c19d  sub edx, dword ptr [esi + 0x40]
  03c1a0  xchg esp, eax
  03c1a1  dec esi
  03c1a2  scasb al, byte ptr es:[edi]
  03c1a3  inc esp
  03c1a4  add byte ptr [eax], al
  03c1a6  mov al, byte ptr [0x7135d043]
  03c1ab  mov edi, 0x3e9b8bba
  03c1b0  and al, 0x80
  03c1b2  adc byte ptr [esi], bh
  03c1b4  test al, 9
  03c1b6  xchg edx, eax
  03c1b7  rcl ebp, 0xce
  03c1ba  mov ah, 0xbf
  03c1bc  add al, 0x30
  03c1be  lcall 0x98c1, 0x90cd4644
  03c1c5  xor eax, 0x4fa0bfb2
  03c1ca  lcall 0xb243, 0xa0000044
  03c1d1  arpl word ptr [esi], cx
  03c1d3  mov ebp, 0x3f7fbb6b
  03c1d8  sub al, 0x7c
  03c1da  cmp al, 0xfe
  03c1dd  push -0x55
  03c1df  rcr byte ptr [0x60418d9f], 4
  03c1e6  xchg byte ptr [esi + ecx*2 + 0x11], al
  03c1ea  stosd dword ptr es:[edi], eax
  03c1eb  sar ch, 0x62
  03c1ee  lea eax, [ecx + 0x5c]
  03c1f1  and al, 0x86
  03c1f3  inc esp
  03c1f4  add byte ptr [eax], al
  03c1f6  mov al, byte ptr [0x770d5443]
  03c1fb  mov edi, 0xbe856fee
  03c200  xchg edx, eax
  03c201  adc dl, ah
  03c203  mov esp, 0xc12c7ed3
  03c208  out 0xa8, al
  03c20a  jbe 0x3c1cd
  03c20c  in eax, dx
  03c20d  inc edx
  03c20e  xor dword ptr [ebp + edx*4 - 0x36], eax
  03c212  sub al, 0xc1
  03c214  mov dh, 0x41
  03c216  ja 0x3c1d9
  03c218  fild word ptr [edx + 0x4431]
  03c21e  mov al, byte ptr [0x75ca2443]
  03c223  mov edi, 0xbe86c465
  03c228  ja 0x3c250
  03c22a  sar dword ptr [0xc17b427b], 0x91
  03c231  and dword ptr [edi + 0x40], esi
  03c234  push ebp
  03c235  push 0x53bc4381
  03c23a  jp 0x3c1fd
  03c23c  mov edx, 0xd3408017
  03c241  out 0x81, al
  03c243  inc ebx
  03c244  add byte ptr [eax], al
  03c246  mov al, byte ptr [0x6e62a043]
  03c24b  mov edi, 0xbe885306
L3c250:
  03c250  xchg edx, eax
  03c251  bnd jle 0x3c292
  03c254  xchg edi, eax
  03c255  daa 
  03c256  sub eax, 0x93111041
  03c25b  sar dword ptr [edi - 0x6f], 0xb6
  03c25f  inc edx
  03c260  jge 0x3c25e
  03c262  xor al, byte ptr [ecx + 0x5e]
  03c265  push -0x68
  03c267  rcr dword ptr [ebp + ebx*8 - 0x49], 0x42
  03c26c  add byte ptr [eax], al
  03c26e  mov al, byte ptr [0x6a26e943]
  03c273  mov edi, 0xbecc3ca0
  03c278  push eax
  03c279  pop es
  03c27a  xchg byte ptr [ebp - 0x3ebbccbf], bh
  03c280  aam 0xe4
  03c283  aas 
  03c284  imul ecx, dword ptr [edx - 0x32f53ce5], 0x1190c142
  03c28e  loopne 0x3c2cf
  03c290  inc eax
  03c291  mov dword ptr [ebx + eax*8], ebx
  03c294  add byte ptr [eax], al
  03c296  mov al, byte ptr [0xc2329043]
  03c29b  mov ebp, 0xbf7ebd45
  03c2a0  push ds
  03c2a1  jle 0x3c28f
  03c2a3  cmp al, 0xbc
  03c2a5  push ebx
  03c2a6  push esi
  03c2a7  rcl byte ptr [eax - 0x3e], 0x9a
  03c2ab  rcl dword ptr [edi], 0xbd
  03c2ae  repz ret 
  03c2b0  loopne 0x3c26d
  03c2b2  push eax
  03c2b3  rol byte ptr [esi + ecx + 0x3c83c19b], 0xf4
  03c2bb  ret 
  03c2bc  add byte ptr [eax], al
  03c2be  mov al, byte ptr [0x91333543]
  03c2c3  mov ebp, 0xbf797e10
  03c2c8  xchg esp, eax
  03c2c9  mov al, byte ptr [0x769cbe59]
  03c2ce  xor al, byte ptr [ecx - 0x40]
  03c2d1  mov byte ptr [0x2d4d4107], al
  03c2d6  les ebp, ptr ss:[esi - 0x45becbd1]
  03c2dd  out 0xa, eax
  03c2df  inc ecx
  03c2e0  xchg edx, eax
  03c2e1  imul esi, dword ptr [esi], -0x3c
  03c2e4  add byte ptr [eax], al
  03c2e6  mov al, byte ptr [0x5598343]
  03c2eb  mov edi, 0xbf592607
  03c2f0  push edx
  03c2f1  add eax, 0x4595bdc4
  03c2f6  rol dword ptr fs:[edx], 0x73
  03c2fa  ffreep st(0)
  03c2fc  sub al, byte ptr [edi]
  03c2fe  xchg ebx, eax
  03c2ff  les esi, ptr [ebx + 0x62c16617]
  03c305  scasd eax, dword ptr es:[edi]
  03c306  fld st(0)
  03c308  outsb dx, byte ptr [esi]
  03c309  xchg ebx, eax
  03c30b  les eax, ptr [eax]
  03c30d  add byte ptr [eax + 0x304c543], ah
  03c313  mov edi, 0xbf53d2c4
  03c318  popal 
  03c319  lodsd eax, dword ptr [esi]
  03c31a  insb byte ptr es:[edi], dx
  03c31b  mov esi, 0x4125c7c1
  03c320  loop 0x3c329
  03c322  in al, 0xc0
  03c324  jnp 0x3c383
  03c326  mov ebx, 0x293ca8c4
  03c32b  inc ecx
  03c32c  aaa 
  03c32d  stosb byte ptr es:[edi], al
  03c32e  ffreep st(0)
  03c330  imul edi, dword ptr [ebx + edi*4 - 0x3c], 0
  03c335  add byte ptr [eax + 0x8c7e143], ah
  03c33b  mov edi, 0xbf568022
  03c340  xor dword ptr [edx - 0x309f421c], ebx
  03c346  or al, 0xc0
  03c348  mov edx, 0xa0c0e03c
  03c34d  popal 
  03c34e  out 0xc4, al
  03c350  aam 0x14
  03c352  add eax, eax
  03c354  aam 0x20
  03c356  ffreep st(0)
  03c358  cmp al, 0x81
  03c35a  out 0xc4, al
  03c35c  add byte ptr [eax], al
  03c35e  mov al, byte ptr [0x8c8bc43]
  03c363  mov edi, 0xbf568054
  03c368  int3 
  03c369  insd dword ptr es:[edi], dx
  03c36a  in al, 0xbd
  03c36c  db 0x2e
  03c36d  db 0xc6
  03c36e  inc ecx
  03c370  mul byte ptr [edx + eax + 0xf6f840]
  03c377  lds edx, ptr [edi + 0x34]
  03c37a  xor dword ptr [ecx + 0x59], eax
  03c37d  fadd qword ptr [eax + eax*2]
  03c380  mov byte ptr [esi], 1
L3c383:
  03c383  lds eax, ptr [eax]
  03c385  add byte ptr [eax + 0x43], ah
  03c38b  add byte ptr [eax], al
  03c38d  add byte ptr [eax], al
  03c38f  add byte ptr [eax], al
  03c391  add byte ptr [eax], al
  03c393  add byte ptr [eax], al
  03c395  add byte ptr [eax], al
  03c397  add byte ptr [eax], al
  03c399  add byte ptr [eax], al
  03c39b  add byte ptr [eax], al
  03c39d  add byte ptr [eax], al
  03c39f  add byte ptr [eax], al
  03c3a1  add byte ptr [eax], al
  03c3a3  add byte ptr [eax], al
  03c3a5  add byte ptr [eax], al
  03c3a7  add byte ptr [eax], al
  03c3a9  add byte ptr [eax], al
  03c3ab  add byte ptr [eax], al
  03c3ad  add byte ptr [eax], al
  03c3af  add byte ptr [eax], al
  03c3b1  add byte ptr [eax], al
  03c3b3  add byte ptr [eax], al
  03c3b5  add byte ptr [eax], al
  03c3b7  add byte ptr [eax], al
  03c3b9  add byte ptr [eax], al
  03c3bb  add byte ptr [eax], al
  03c3bd  add byte ptr [eax], al
  03c3bf  add byte ptr [eax], al
  03c3c1  add byte ptr [eax], al
  03c3c3  add byte ptr [eax], al
  03c3c5  add byte ptr [eax], al
  03c3c7  add byte ptr [eax], al
  03c3c9  add byte ptr [eax], al
  03c3cb  add byte ptr [eax], al
  03c3cd  add byte ptr [eax], al
  03c3cf  add byte ptr [eax], al
  03c3d1  add byte ptr [eax], al
  03c3d3  add byte ptr [eax], al
  03c3d5  add byte ptr [eax], al
  03c3d7  add byte ptr [eax], al
  03c3d9  add byte ptr [eax], al
  03c3db  add byte ptr [eax], al
  03c3dd  add byte ptr [eax], al
  03c3df  add byte ptr [eax], al
  03c3e1  add byte ptr [eax], al
  03c3e3  add byte ptr [eax], al
  03c3e5  add byte ptr [eax], al
  03c3e7  add byte ptr [eax], al
  03c3e9  add byte ptr [eax], al
  03c3eb  add byte ptr [eax], al
  03c3ed  add byte ptr [eax], al
  03c3ef  add byte ptr [eax], al
  03c3f1  add byte ptr [eax], al
  03c3f3  add byte ptr [eax], al
  03c3f5  add byte ptr [eax], al
  03c3f7  add byte ptr [eax], al
  03c3f9  add byte ptr [eax], al
  03c3fb  add byte ptr [eax], al
  03c3fd  add byte ptr [eax], al
  03c3ff  add byte ptr [eax], al
  03c401  add byte ptr [eax], al
  03c403  add byte ptr [eax], al
  03c405  add byte ptr [eax], al
  03c407  add byte ptr [eax], al
  03c409  add byte ptr [eax], al
  03c40b  add byte ptr [eax], al
  03c40d  add byte ptr [eax], al
  03c40f  add byte ptr [eax], al
  03c411  add byte ptr [eax], al
  03c413  add byte ptr [eax], al
  03c415  add byte ptr [eax], al
  03c417  add byte ptr [eax], al
  03c419  add byte ptr [eax], al
  03c41b  add byte ptr [eax], al
  03c41d  add byte ptr [eax], al
  03c41f  add byte ptr [eax], al
  03c421  add byte ptr [eax], al
  03c423  add byte ptr [eax], al
  03c425  add byte ptr [eax], al
  03c427  add byte ptr [eax], al
  03c429  add byte ptr [eax], al
  03c42b  add byte ptr [eax], al
  03c42d  add byte ptr [eax], al
  03c42f  add byte ptr [eax], al
  03c431  add byte ptr [eax], al
  03c433  add byte ptr [eax], al
  03c435  add byte ptr [eax], al
  03c437  add byte ptr [eax], al
  03c439  add byte ptr [eax], al
  03c43b  add byte ptr [eax], al
  03c43d  add byte ptr [eax], al
  03c43f  add byte ptr [eax], al
  03c441  add byte ptr [eax], al
  03c443  add byte ptr [eax], al
  03c445  add byte ptr [eax], al
  03c447  add byte ptr [eax], al
  03c449  add byte ptr [eax], al
  03c44b  add byte ptr [eax], al
  03c44d  add byte ptr [eax], al
  03c44f  add byte ptr [eax], al
  03c451  add byte ptr [eax], al
  03c453  add byte ptr [eax], al
  03c455  add byte ptr [eax], al
  03c457  add byte ptr [eax], al
  03c459  add byte ptr [eax], al
  03c45b  add byte ptr [eax], al
  03c45d  add byte ptr [eax], al
  03c45f  add byte ptr [eax], al
  03c461  add byte ptr [eax], al
  03c463  add byte ptr [eax], al
  03c465  add byte ptr [eax], al
  03c467  add byte ptr [eax], al
  03c469  add byte ptr [eax], al
  03c46b  add byte ptr [eax], al
  03c46d  add byte ptr [eax], al
  03c46f  add byte ptr [eax], al
  03c471  add byte ptr [eax], al
  03c473  add byte ptr [eax], al
  03c475  add byte ptr [eax], al
  03c477  add byte ptr [eax], al
  03c479  add byte ptr [eax], al
  03c47b  add byte ptr [eax], al
  03c47d  add byte ptr [eax], al
  03c47f  add byte ptr [eax], al
  03c481  add byte ptr [eax], al
  03c483  add byte ptr [eax], al
  03c485  add byte ptr [eax], al
  03c487  add byte ptr [eax], al
  03c489  add byte ptr [eax], al
  03c48b  add byte ptr [eax], al
  03c48d  add byte ptr [eax], al
  03c48f  add byte ptr [eax], al
  03c491  add byte ptr [eax], al
  03c493  add byte ptr [eax], al
  03c495  add byte ptr [eax], al
  03c497  add byte ptr [eax], al
  03c499  add byte ptr [eax], al
  03c49b  add byte ptr [eax], al
  03c49d  add byte ptr [eax], al
  03c49f  add byte ptr [eax], al
  03c4a1  add byte ptr [eax], al
  03c4a3  add byte ptr [eax], al
  03c4a5  add byte ptr [eax], al
  03c4a7  add byte ptr [eax], al
  03c4a9  add byte ptr [eax], al
  03c4ab  add byte ptr [eax], al
  03c4ad  add byte ptr [eax], al
  03c4af  add byte ptr [eax], al
  03c4b1  add byte ptr [eax], al
  03c4b3  add byte ptr [eax], al
  03c4b5  add byte ptr [eax], al
  03c4b7  add byte ptr [eax], al
  03c4b9  add byte ptr [eax], al
  03c4bb  add byte ptr [eax], al
  03c4bd  add byte ptr [eax], al
  03c4bf  add byte ptr [eax], al
  03c4c1  add byte ptr [eax], al
  03c4c3  add byte ptr [eax], al
  03c4c5  add byte ptr [eax], al
  03c4c7  add byte ptr [eax], al
  03c4c9  add byte ptr [eax], al
  03c4cb  add byte ptr [eax], al
  03c4cd  add byte ptr [eax], al
  03c4cf  add byte ptr [eax], al
  03c4d1  add byte ptr [eax], al
  03c4d3  add byte ptr [eax], al
  03c4d5  add byte ptr [eax], al
  03c4d7  add byte ptr [eax], al
  03c4d9  add byte ptr [eax], al
  03c4db  add byte ptr [eax], al
  03c4dd  add byte ptr [eax], al
  03c4df  add byte ptr [eax], al
  03c4e1  add byte ptr [eax], al
  03c4e3  add byte ptr [eax], al
  03c4e5  add byte ptr [eax], al
  03c4e7  add byte ptr [eax], al
  03c4e9  add byte ptr [eax], al
  03c4eb  add byte ptr [eax], al
  03c4ed  add byte ptr [eax], al
  03c4ef  add byte ptr [eax], al
  03c4f1  add byte ptr [eax], al
  03c4f3  add byte ptr [eax], al
  03c4f5  add byte ptr [eax], al
  03c4f7  add byte ptr [eax], al
  03c4f9  add byte ptr [eax], al
  03c4fb  add byte ptr [eax], al
  03c4fd  add byte ptr [eax], al
  03c4ff  add byte ptr [eax], al
  03c501  add byte ptr [eax], al
  03c503  add byte ptr [eax], al
  03c505  add byte ptr [eax], al
  03c507  add byte ptr [eax], al
  03c509  add byte ptr [eax], al
  03c50b  add byte ptr [eax], al
  03c50d  add byte ptr [eax], al
  03c50f  add byte ptr [eax], al
  03c511  add byte ptr [eax], al
  03c513  add byte ptr [eax], al
  03c515  add byte ptr [eax], al
  03c517  add byte ptr [eax], al
  03c519  add byte ptr [eax], al
  03c51b  add byte ptr [eax], al
  03c51d  add byte ptr [eax], al
  03c51f  add byte ptr [eax], al
  03c521  add byte ptr [eax], al
  03c523  add byte ptr [eax], al
  03c525  add byte ptr [eax], al
  03c527  add byte ptr [eax], al
  03c529  add byte ptr [eax], al
  03c52b  add byte ptr [eax], al
  03c52d  add byte ptr [eax], al
  03c52f  add byte ptr [eax], al
  03c531  add byte ptr [eax], al
  03c533  add byte ptr [eax], al
  03c535  add byte ptr [eax], al
  03c537  add byte ptr [eax], al
  03c539  add byte ptr [eax], al
  03c53b  add byte ptr [eax], al
  03c53d  add byte ptr [eax], al
  03c53f  add byte ptr [eax], al
  03c541  add byte ptr [eax], al
  03c543  add byte ptr [eax], al
  03c545  add byte ptr [eax], al
  03c547  add byte ptr [eax], al
  03c549  add byte ptr [eax], al
  03c54b  add byte ptr [eax], al
  03c54d  add byte ptr [eax], al
  03c54f  add byte ptr [eax], al
  03c551  add byte ptr [eax], al
  03c553  add byte ptr [eax], al
  03c555  add byte ptr [eax], al
  03c557  add byte ptr [eax], al
  03c559  add byte ptr [eax], al
  03c55b  add byte ptr [eax], al
  03c55d  add byte ptr [eax], al
  03c55f  add byte ptr [eax], al
  03c561  add byte ptr [eax], al
  03c563  add byte ptr [eax], al
  03c565  add byte ptr [eax], al
  03c567  add byte ptr [eax], al
  03c569  add byte ptr [eax], al
  03c56b  add byte ptr [eax], al
  03c56d  add byte ptr [eax], al
  03c56f  add byte ptr [eax], al
  03c571  add byte ptr [eax], al
  03c573  add byte ptr [eax], al
  03c575  add byte ptr [eax], al
  03c577  add byte ptr [eax], al
  03c579  add byte ptr [eax], al
  03c57b  add byte ptr [eax], al
  03c57d  add byte ptr [eax], al
  03c57f  add byte ptr [eax], al
  03c581  add byte ptr [eax], al
  03c583  add byte ptr [eax], al
  03c585  add byte ptr [eax], al
  03c587  add byte ptr [eax], al
  03c589  add byte ptr [eax], al
  03c58b  add byte ptr [eax], al
  03c58d  add byte ptr [eax], al
  03c58f  add byte ptr [eax], al
  03c591  add byte ptr [eax], al
  03c593  add byte ptr [eax], al
  03c595  add byte ptr [eax], al
  03c597  add byte ptr [eax], al
  03c599  add byte ptr [eax], al
  03c59b  add byte ptr [eax], al
  03c59d  add byte ptr [eax], al
  03c59f  add byte ptr [eax], al
  03c5a1  add byte ptr [eax], al
  03c5a3  add byte ptr [eax], al
  03c5a5  add byte ptr [eax], al
  03c5a7  add byte ptr [eax], al
  03c5a9  add byte ptr [eax], al
  03c5ab  add byte ptr [eax], al
  03c5ad  add byte ptr [eax], al
  03c5af  add byte ptr [eax], al
  03c5b1  add byte ptr [eax], al
  03c5b3  add byte ptr [eax], al
  03c5b5  add byte ptr [eax], al
  03c5b7  add byte ptr [eax], al
  03c5b9  add byte ptr [eax], al
  03c5bb  add byte ptr [eax], al
  03c5bd  add byte ptr [eax], al
  03c5bf  add byte ptr [eax], al
  03c5c1  add byte ptr [eax], al
  03c5c3  add byte ptr [eax], al
  03c5c5  add byte ptr [eax], al
  03c5c7  add byte ptr [eax], al
  03c5c9  add byte ptr [eax], al
  03c5cb  add byte ptr [eax], al
  03c5cd  add byte ptr [eax], al
  03c5cf  add byte ptr [eax], al
  03c5d1  add byte ptr [eax], al
  03c5d3  add byte ptr [eax], al
  03c5d5  add byte ptr [eax], al
  03c5d7  add byte ptr [eax], al
  03c5d9  add byte ptr [eax], al
  03c5db  add byte ptr [eax], al
  03c5dd  add byte ptr [eax], al
  03c5df  add byte ptr [eax], al
  03c5e1  add byte ptr [eax], al
  03c5e3  add byte ptr [eax], al
  03c5e5  add byte ptr [eax], al
  03c5e7  add byte ptr [eax], al
  03c5e9  add byte ptr [eax], al
  03c5eb  add byte ptr [eax], al
  03c5ed  add byte ptr [eax], al
  03c5ef  add byte ptr [eax], al
  03c5f1  add byte ptr [eax], al
  03c5f3  add byte ptr [eax], al
  03c5f5  add byte ptr [eax], al
  03c5f7  add byte ptr [eax], al
  03c5f9  add byte ptr [eax], al
  03c5fb  add byte ptr [eax], al
  03c5fd  add byte ptr [eax], al
  03c5ff  add byte ptr [eax], al
  03c601  add byte ptr [eax], al
  03c603  add byte ptr [eax], al
  03c605  add byte ptr [eax], al
  03c607  add byte ptr [eax], al
  03c609  add byte ptr [eax], al
  03c60b  add byte ptr [eax], al
  03c60d  add byte ptr [eax], al
  03c60f  add byte ptr [eax], al
  03c611  add byte ptr [eax], al
  03c613  add byte ptr [eax], al
  03c615  add byte ptr [eax], al
  03c617  add byte ptr [eax], al
  03c619  add byte ptr [eax], al
  03c61b  add byte ptr [eax], al
  03c61d  add byte ptr [eax], al
  03c61f  add byte ptr [eax], al
  03c621  add byte ptr [eax], al
  03c623  add byte ptr [eax], al
  03c625  add byte ptr [eax], al
  03c627  add byte ptr [eax], al
  03c629  add byte ptr [eax], al
  03c62b  add byte ptr [eax], al
  03c62d  add byte ptr [eax], al
  03c62f  add byte ptr [eax], al
  03c631  add byte ptr [eax], al
  03c633  add byte ptr [eax], al
  03c635  add byte ptr [eax], al
  03c637  add byte ptr [eax], al
  03c639  add byte ptr [eax], al
  03c63b  add byte ptr [eax], al
  03c63d  add byte ptr [eax], al
  03c63f  add byte ptr [eax], al
  03c641  add byte ptr [eax], al
  03c643  add byte ptr [eax], al
  03c645  add byte ptr [eax], al
  03c647  add byte ptr [eax], al
  03c649  add byte ptr [eax], al
  03c64b  add byte ptr [eax], al
  03c64d  add byte ptr [eax], al
  03c64f  add byte ptr [eax], al
  03c651  add byte ptr [eax], al
  03c653  add byte ptr [eax], al
  03c655  add byte ptr [eax], al
  03c657  add byte ptr [eax], al
  03c659  add byte ptr [eax], al
  03c65b  add byte ptr [eax], al
  03c65d  add byte ptr [eax], al
  03c65f  add byte ptr [eax], al
  03c661  add byte ptr [eax], al
  03c663  add byte ptr [eax], al
  03c665  add byte ptr [eax], al
  03c667  add byte ptr [eax], al
  03c669  add byte ptr [eax], al
  03c66b  add byte ptr [eax], al
  03c66d  add byte ptr [eax], al
  03c66f  add byte ptr [eax], al
  03c671  add byte ptr [eax], al
  03c673  add byte ptr [eax], al
  03c675  add byte ptr [eax], al
  03c677  add byte ptr [eax], al
  03c679  add byte ptr [eax], al
  03c67b  add byte ptr [eax], al
  03c67d  add byte ptr [eax], al
  03c67f  add byte ptr [eax], al
  03c681  add byte ptr [eax], al
  03c683  add byte ptr [eax], al
  03c685  add byte ptr [eax], al
  03c687  add byte ptr [eax], al
  03c689  add byte ptr [eax], al
  03c68b  add byte ptr [eax], al
  03c68d  add byte ptr [eax], al
  03c68f  add byte ptr [eax], al
  03c691  add byte ptr [eax], al
  03c693  add byte ptr [eax], al
  03c695  add byte ptr [eax], al
  03c697  add byte ptr [eax], al
  03c699  add byte ptr [eax], al
  03c69b  add byte ptr [eax], al
  03c69d  add byte ptr [eax], al
  03c69f  add byte ptr [eax], al
  03c6a1  add byte ptr [eax], al
  03c6a3  add byte ptr [eax], al
  03c6a5  add byte ptr [eax], al
  03c6a7  add byte ptr [eax], al
  03c6a9  add byte ptr [eax], al
  03c6ab  add byte ptr [eax], al
  03c6ad  add byte ptr [eax], al
  03c6af  add byte ptr [eax], al
  03c6b1  add byte ptr [eax], al
  03c6b3  add byte ptr [eax], al
  03c6b5  add byte ptr [eax], al
  03c6b7  add byte ptr [eax], al
  03c6b9  add byte ptr [eax], al
  03c6bb  add byte ptr [eax], al
  03c6bd  add byte ptr [eax], al
  03c6bf  add byte ptr [eax], al
  03c6c1  add byte ptr [eax], al
  03c6c3  add byte ptr [eax], al
  03c6c5  add byte ptr [eax], al
  03c6c7  add byte ptr [eax], al
  03c6c9  add byte ptr [eax], al
  03c6cb  add byte ptr [eax], al
  03c6cd  add byte ptr [eax], al
  03c6cf  add byte ptr [eax], al
  03c6d1  add byte ptr [eax], al
  03c6d3  add byte ptr [eax], al
  03c6d5  add byte ptr [eax], al
  03c6d7  add byte ptr [eax], al
  03c6d9  add byte ptr [eax], al
  03c6db  add byte ptr [eax], al
  03c6dd  add byte ptr [eax], al
  03c6df  add byte ptr [eax], al
  03c6e1  add byte ptr [eax], al
  03c6e3  add byte ptr [eax], al
  03c6e5  add byte ptr [eax], al
  03c6e7  add byte ptr [eax], al
  03c6e9  add byte ptr [eax], al
  03c6eb  add byte ptr [eax], al
  03c6ed  add byte ptr [eax], al
  03c6ef  add byte ptr [eax], al
  03c6f1  add byte ptr [eax], al
  03c6f3  add byte ptr [eax], al
  03c6f5  add byte ptr [eax], al
  03c6f7  add byte ptr [eax], al
  03c6f9  add byte ptr [eax], al
  03c6fb  add byte ptr [eax], al
  03c6fd  add byte ptr [eax], al
  03c6ff  add byte ptr [eax], al
  03c701  add byte ptr [eax], al
  03c703  add byte ptr [eax], al
  03c705  add byte ptr [eax], al
  03c707  add byte ptr [eax], al
  03c709  add byte ptr [eax], al
  03c70b  add byte ptr [eax], al
  03c70d  add byte ptr [eax], al
  03c70f  add byte ptr [eax], al
  03c711  add byte ptr [eax], al
  03c713  add byte ptr [eax], al
  03c715  add byte ptr [eax], al
  03c717  add byte ptr [eax], al
  03c719  add byte ptr [eax], al
  03c71b  add byte ptr [eax], al
  03c71d  add byte ptr [eax], al
  03c71f  add byte ptr [eax], al
  03c721  add byte ptr [eax], al
  03c723  add byte ptr [eax], al
  03c725  add byte ptr [eax], al
  03c727  add byte ptr [eax], al
  03c729  add byte ptr [eax], al
  03c72b  add byte ptr [eax], al
  03c72d  add byte ptr [eax], al
  03c72f  add byte ptr [eax], al
  03c731  add byte ptr [eax], al
  03c733  add byte ptr [eax], al
  03c735  add byte ptr [eax], al
  03c737  add byte ptr [eax], al
  03c739  add byte ptr [eax], al
  03c73b  add byte ptr [eax], al
  03c73d  add byte ptr [eax], al
  03c73f  add byte ptr [eax], al
  03c741  add byte ptr [eax], al
  03c743  add byte ptr [eax], al
  03c745  add byte ptr [eax], al
  03c747  add byte ptr [eax], al
  03c749  add byte ptr [eax], al
  03c74b  add byte ptr [eax], al
  03c74d  add byte ptr [eax], al
  03c74f  add byte ptr [eax], al
  03c751  add byte ptr [eax], al
  03c753  add byte ptr [eax], al
  03c755  add byte ptr [eax], al
  03c757  add byte ptr [eax], al
  03c759  add byte ptr [eax], al
  03c75b  add byte ptr [eax], al
  03c75d  add byte ptr [eax], al
  03c75f  add byte ptr [eax], al
  03c761  add byte ptr [eax], al
  03c763  add byte ptr [eax], al
  03c765  add byte ptr [eax], al
  03c767  add byte ptr [eax], al
  03c769  add byte ptr [eax], al
  03c76b  add byte ptr [eax], al
  03c76d  add byte ptr [eax], al
  03c76f  add byte ptr [eax], al
  03c771  add byte ptr [eax], al
  03c773  add byte ptr [eax], al
  03c775  add byte ptr [eax], al
  03c777  add byte ptr [eax], al
  03c779  add byte ptr [eax], al
  03c77b  add byte ptr [eax], al
  03c77d  add byte ptr [eax], al
  03c77f  add byte ptr [eax], al
  03c781  add byte ptr [eax], al
  03c783  add byte ptr [eax], al
  03c785  add byte ptr [eax], al
  03c787  add byte ptr [eax], al
  03c789  add byte ptr [edi - 0x78247825], al
  03c78f  fild dword ptr [eax]
  03c791  add byte ptr [eax], al
  03c793  add byte ptr [eax], al
  03c795  add byte ptr [eax], al
  03c797  add byte ptr [eax], al
  03c799  add byte ptr [eax], al
  03c79b  add byte ptr [eax], al
  03c79d  add byte ptr [eax], al
  03c79f  add byte ptr [eax], al
  03c7a1  add byte ptr [eax], al
  03c7a3  add byte ptr [eax], al
  03c7a5  add byte ptr [eax], al
  03c7a7  add byte ptr [eax], al
  03c7a9  add byte ptr [eax], al
  03c7ab  add byte ptr [eax], al
  03c7ad  add byte ptr [eax], al
  03c7af  add byte ptr [eax], al
  03c7b1  add byte ptr [eax], al
  03c7b3  add byte ptr [eax], al
  03c7b5  add byte ptr [eax], al
  03c7b7  add byte ptr [eax], al
  03c7b9  add byte ptr [eax], al
  03c7bb  add byte ptr [eax], al
  03c7bd  add byte ptr [eax], al
  03c7bf  add byte ptr [eax], al
  03c7c1  add byte ptr [eax], al
  03c7c3  add byte ptr [eax], al
  03c7c5  add byte ptr [eax], al
  03c7c7  add byte ptr [eax], al
  03c7c9  add byte ptr [eax], al
  03c7cb  add byte ptr [eax], al
  03c7cd  add byte ptr [eax], al
  03c7cf  add dh, al
  03c7d1  add eax, 0xdd
  03c7d6  or dword ptr [ebx], eax
  03c7d8  add eax, 0x18
  03c7dd  shld ebx, eax, 0x1c
  03c7e1  and eax, 0xf
  03c7e4  mov word ptr [0xe4], bx
  03c7eb  mov word ptr [0xd4], ax
  03c7f1  mov al, 0x21
  03c7f3  int 0x33
  03c7f5  ret 
  03c7f6  or eax, 0x6c61680a
  03c7fb  arpl word ptr [ecx + 0x6f], di
  03c7fe  outsb dx, byte ptr [esi]
  03c7ff  and byte ptr [ebx + 0x75], dh
  03c802  jo 0x3c869
  03c804  jb 0x3c826
  03c806  imul ebp, dword ptr [edi + 0x6c], 0x6d
  03c80a  and byte ptr gs:[ebp + 0x6e], ah
  03c811  imul ebp, dword ptr [ecx + 0x6e], 0x65
  03c815  and byte ptr [eax], ch
  03c817  je 0x3c886
  03c819  sub dword ptr [eax], esp
  03c81b  insb byte ptr es:[edi], dx
  03c81c  outsd dx, dword ptr [esi]
  03c81d  popal 
  03c81e  imul ebp, dword ptr fs:[esi + 0x67], 0xa0d2e2e
L3c826:
  03c826  and al, 0x20
  03c828  cli 
  03c829  imul ebp, dword ptr [esi + 0x69], 0x6c616974
  03c830  imul edi, dword ptr [edx + 0x69], 0x7420676e
  03c837  popal 
  03c838  bound ebp, qword ptr [ebp + 0x73]
  03c83c  or eax, 0xfa20240a
  03c843  popal 
  03c844  insb byte ptr es:[edi], dx
  03c845  insb byte ptr es:[edi], dx
  03c846  outsd dx, dword ptr [esi]
  03c847  arpl word ptr [ecx + 0x74], sp
  03c84a  imul ebp, dword ptr [esi + 0x67], 0x6d656d20
  03c851  outsd dx, dword ptr [esi]
  03c852  jb 0x3c8cd
  03c854  or eax, 0xfa20240a
  03c85b  insb byte ptr es:[edi], dx
  03c85c  outsd dx, dword ptr [esi]
  03c85d  popal 
  03c85e  imul ebp, dword ptr fs:[esi + 0x67], 0x646e6120
  03c866  and byte ptr [eax + 0x72], dh
L3c869:
  03c869  jo 0x3c8cd
  03c86c  jb 0x3c8d7
  03c86e  outsb dx, byte ptr [esi]
  03c86f  and byte ptr [bx + di + 0x6e], ah
  03c873  imul ebp, dword ptr [ebp + 0x2e], 0x240a0d2e
  03c87a  and dl, bh
  03c87c  arpl word ptr [ecx + 0x6c], sp
  03c87f  arpl word ptr [ebp + 0x6c], si
  03c882  popal 
  03c883  je 0x3c8ee
  03c885  outsb dx, byte ptr [esi]
L3c886:
  03c886  and byte ptr [bp + 0x6c], ah
  03c88a  popal 
  03c88b  jb 0x3c8f2
  03c88d  jae 0x3c8bd
  03c88f  or eax, 0xfa20240a
  03c895  insb byte ptr es:[edi], dx
  03c896  outsd dx, dword ptr [esi]
  03c897  popal 
  03c898  imul ebp, dword ptr fs:[esi + 0x67], 0x78657420
  03c8a0  je 0x3c917
  03c8a2  jb 0x3c909
  03c8a4  jae 0x3c8d4
  03c8a6  or eax, 0xfa20240a
  03c8ac  arpl word ptr [edx + 0x65], si
  03c8af  popal 
  03c8b0  je 0x3c91b
  03c8b2  outsb dx, byte ptr [esi]
  03c8b3  and byte ptr [bx + di + 0x6e], ah
  03c8b7  and byte ptr fs:[ecx + 0x75], dh
  03c8bb  popal 
  03c8bc  outsb dx, byte ptr [esi]
L3c8bd:
  03c8bd  je 0x3c928
  03c8bf  jp 0x3c92a
  03c8c1  outsb dx, byte ptr [esi]
  03c8c2  and byte ptr [di + 0x69], ch
  03c8c6  jo 0x3c935
  03c8c8  popal 
  03c8c9  jo 0x3c93e
  03c8cb  and byte ptr [eax], ch
L3c8cd:
  03c8cd  xor dword ptr [ecx], ebp
  03c8cf  or byte ptr cs:[eax], cl
  03c8d3  or byte ptr [eax], cl
  03c8d5  and al, 0x32
L3c8d7:
  03c8d7  sub dword ptr [esi], ebp
  03c8d9  or byte ptr cs:[eax], cl
  03c8dc  or byte ptr [eax], cl
  03c8de  and al, 0x33
  03c8e0  sub dword ptr [esi], ebp
  03c8e2  or byte ptr cs:[eax], cl
  03c8e5  or byte ptr [eax], cl
  03c8e7  and al, 0x34
  03c8e9  sub dword ptr [esi], ebp
  03c8eb  or eax, 0xfa20240a
  03c8f1  jno 0x3c968
  03c8f3  popal 
  03c8f4  outsb dx, byte ptr [esi]
  03c8f5  je 0x3c960
  03c8f7  jp 0x3c962
  03c8f9  outsb dx, byte ptr [esi]
  03c8fa  and byte ptr [bp + 0x69], ah
  03c8fe  jb 0x3c973
  03c900  je 0x3c922
  03c902  je 0x3c969
  03c904  js 0x3c97a
  03c906  jne 0x3c97a
  03c908  jae 0x3c92b
  03c90b  jae 0x3c975
  03c90d  popal 
  03c90e  imul ebp, dword ptr fs:[esi + 0x67], 0x62617420
  03c916  insb byte ptr es:[edi], dx
L3c917:
  03c917  or eax, 0xfa20240a
  03c91f  jno 0x3c996
  03c921  popal 
L3c922:
  03c922  outsb dx, byte ptr [esi]
  03c923  je 0x3c98e
  03c925  jp 0x3c990
  03c927  outsb dx, byte ptr [esi]
L3c928:
  03c928  and byte ptr [bp + di + 0x65], dh
  03c92c  arpl word ptr [edi + 0x6e], bp
  03c92f  and byte ptr fs:[ebp + 0x78], dh
  03c934  je 0x3c9ab
  03c936  jb 0x3c99d
  03c938  jae 0x3c95a
  03c93a  jae 0x3c9a4
  03c93c  popal 
  03c93d  imul ebp, dword ptr fs:[esi + 0x67], 0x62617420
  03c945  insb byte ptr es:[edi], dx
  03c946  or eax, 0xfa20240a
  03c94e  jno 0x3c9c5
  03c950  popal 
  03c951  outsb dx, byte ptr [esi]
  03c952  je 0x3c9bd
  03c954  jp 0x3c9bf
  03c956  outsb dx, byte ptr [esi]
  03c957  and byte ptr [bx + 0x65], ah
  03c95b  outsb dx, byte ptr [esi]
  03c95c  jb 0x3c9c0
  03c95f  insb byte ptr es:[edi], dx
L3c960:
  03c960  and byte ptr [ebx + 0x68], dh
  03c963  popal 
  03c964  imul ebp, dword ptr fs:[esi + 0x67], 0x62617420
  03c96c  insb byte ptr es:[edi], dx
  03c96d  or eax, 0xfa20240a
L3c975:
  03c975  insb byte ptr es:[edi], dx
  03c976  outsd dx, dword ptr [esi]
  03c977  popal 
  03c978  imul ebp, dword ptr fs:[esi + 0x67], 0x646e6120
  03c980  and byte ptr [eax + 0x72], dh
  03c983  jo 0x3c9e7
  03c986  jb 0x3c9f1
  03c988  outsb dx, byte ptr [esi]
  03c989  and byte ptr [bp + di + 0x63], dh
  03c98d  outsb dx, byte ptr gs:[esi]
  03c98f  or eax, 0x5c7240a
  03c997  push eax
  03c998  jg 0x3c99a
L3c99a:
  03c99a  add byte ptr [edx - 0x38fffc21], dh
  03c9a0  add eax, 0x7f54
  03c9a5  test ebx, ebx
  03c9a7  add eax, dword ptr [eax]
  03c9a9  mov dword ptr [0x7f58], 0x3dd53
  03c9b3  xor edi, edi
  03c9b5  mov dword ptr [0x4688], 0
L3c9bf:
  03c9bf  mov dword ptr [0x467c], 0xa
  03c9c9  fild dword ptr [0x4688]
  03c9cf  fild dword ptr [0x467c]
  03c9d5  fdivp st(1)
  03c9d7  fmul st(0)
  03c9d9  fmul st(0)
  03c9db  fistp dword ptr [0x467c]
  03c9e1  mov eax, dword ptr [0x467c]
  03c9e6  cmp eax, 0x3ff
  03c9eb  jl 0x3c9f2
  03c9ed  mov eax, 0x3ff
L3c9f2:
  03c9f2  neg eax
  03c9f4  add eax, 0x3ff
  03c9f9  mov dword ptr [edi + 0x3b3d4], eax
  03c9ff  mov ebp, 0x1fc
  03ca04  sub ebp, edi
  03ca06  mov dword ptr ds:[ebp + 0x3b3d4], eax
  03ca0d  add edi, 4
  03ca10  inc dword ptr [0x4688]
  03ca16  cmp dword ptr [0x4688], 0x40
  03ca1d  jne 0x3c9bf
  03ca1f  mov edi, 0x3afd4
  03ca24  fldpi 
  03ca26  mov dword ptr [0x467c], 0x10
  03ca30  fild dword ptr [0x467c]
  03ca36  fdivp st(1)
  03ca38  fstp qword ptr [0x4a50]
  03ca3e  fldz 
  03ca40  fstp qword ptr [0x4a58]
  03ca46  mov dword ptr [0x467c], 0x1ff
  03ca50  fild dword ptr [0x467c]
  03ca56  fstp dword ptr [0x467c]
  03ca5c  mov ecx, 0x10
L3ca61:
  03ca61  fld qword ptr [0x4a58]
  03ca67  fcos 
  03ca69  fmul dword ptr [0x467c]
  03ca6f  fadd dword ptr [0x467c]
  03ca75  fistp dword ptr [edi]
  03ca77  fld qword ptr [0x4a58]
  03ca7d  fadd qword ptr [0x4a50]
  03ca83  fstp qword ptr [0x4a58]
  03ca89  add edi, 4
  03ca8c  dec ecx
  03ca8d  jne 0x3ca61
  03ca8f  fldpi 
  03ca91  mov dword ptr [0x467c], 0x70
  03ca9b  fild dword ptr [0x467c]
  03caa1  fdivp st(1)
  03caa3  fstp qword ptr [0x4a50]
  03caa9  fldz 
  03caab  fstp qword ptr [0x4a58]
  03cab1  mov dword ptr [0x467c], 0x1ff
  03cabb  fild dword ptr [0x467c]
  03cac1  fstp dword ptr [0x467c]
  03cac7  mov ecx, 0x70
L3cacc:
  03cacc  fld qword ptr [0x4a58]
  03cad2  fcos 
  03cad4  fchs 
  03cad6  fmul dword ptr [0x467c]
  03cadc  fadd dword ptr [0x467c]
  03cae2  fistp dword ptr [edi]
  03cae4  fld qword ptr [0x4a58]
  03caea  fadd qword ptr [0x4a50]
  03caf0  fstp qword ptr [0x4a58]
  03caf6  add edi, 4
  03caf9  dec ecx
  03cafa  jne 0x3cacc
  03cafc  call 0x29300
  03cb01  call 0x1f4ba
  03cb06  mov edi, 0xa0000
  03cb0b  sub edi, dword ptr [0x18]
  03cb11  mov dword ptr [0x4668], edi
  03cb17  mov eax, 0x50000
  03cb1c  call 0x2ac
  03cb21  or eax, 0xffff
  03cb26  inc eax
  03cb27  mov dword ptr [0x3b7e4], eax
  03cb2c  add eax, 0x20000
  03cb31  mov dword ptr [0x3b7e8], eax
  03cb36  add eax, 0x10000
  03cb3b  mov dword ptr [0x3b7ec], eax
  03cb40  add eax, 0x10000
  03cb45  mov edi, dword ptr [0x3b7e4]
  03cb4b  mov ecx, 0x10000
  03cb50  xor eax, eax
  03cb52  rep stosd dword ptr es:[edi], eax
  03cb54  mov ecx, 0x80
  03cb59  mov edx, 0x80
  03cb5e  mov ebp, 0x20
  03cb63  mov edi, dword ptr [0x4678]
  03cb69  call 0x147a8
  03cb6e  mov ecx, 0x40
  03cb73  mov edx, 0x40
  03cb78  mov ebp, 0x10
  03cb7d  mov edi, dword ptr [0x4678]
  03cb83  add edi, 0x10000
  03cb89  call 0x147a8
  03cb8e  mov ecx, 0x20
  03cb93  mov edx, 0x20
  03cb98  mov ebp, 8
  03cb9d  mov edi, dword ptr [0x4678]
  03cba3  add edi, 0x18000
  03cba9  call 0x147a8
  03cbae  mov ecx, 0x10
  03cbb3  mov edx, 0x10
  03cbb8  mov ebp, 4
  03cbbd  mov edi, dword ptr [0x4678]
  03cbc3  add edi, 0x1c000
  03cbc9  call 0x147a8
  03cbce  mov ecx, 8
  03cbd3  mov edx, 8
  03cbd8  mov ebp, 2
  03cbdd  mov edi, dword ptr [0x4678]
  03cbe3  add edi, 0x1e000
  03cbe9  call 0x147a8
  03cbee  mov ecx, 4
  03cbf3  mov edx, 4
  03cbf8  mov ebp, 1
  03cbfd  mov edi, dword ptr [0x4678]
  03cc03  add edi, 0x1f000
  03cc09  call 0x147a8
  03cc0e  mov edx, 0x3af98
  03cc13  call 0x3dcc
  03cc18  jb 0x3dfb2
  03cc1e  mov bl, 0
  03cc20  mov eax, 0xa
  03cc25  call 0x3e4a
  03cc2a  mov edx, 0x3b7f0
  03cc2f  mov ecx, 0x300
  03cc34  call 0x3eed
  03cc39  mov edx, dword ptr [0x3b7e4]
  03cc3f  mov ecx, 0x10000
  03cc44  call 0x3eed
  03cc49  call 0x3e09
  03cc4e  mov edi, 0x3baf0
  03cc53  xor eax, eax
  03cc55  xor ebx, ebx
  03cc57  mov ecx, 0x100
L3cc5c:
  03cc5c  stosb byte ptr es:[edi], al
  03cc5d  stosb byte ptr es:[edi], al
  03cc5e  stosb byte ptr es:[edi], al
  03cc5f  inc eax
  03cc60  dec ecx
  03cc61  jne 0x3cc5c
  03cc63  mov edi, dword ptr [0x48b0]
  03cc69  mov esi, 0
L3cc6e:
  03cc6e  mov ebp, 0
L3cc73:
  03cc73  mov ecx, 3
L3cc78:
  03cc78  movzx eax, byte ptr ds:[ebp + 0x3b7f0]
  03cc80  movzx ebx, byte ptr [esi + 0x3baf0]
  03cc87  shl ebx, 1
  03cc89  imul eax, ebx
  03cc8c  sar eax, 4
  03cc8f  sar ebx, 2
  03cc92  add eax, ebx
  03cc94  cmp eax, 0
  03cc97  jg 0x3cc9b
  03cc99  xor eax, eax
L3cc9b:
  03cc9b  cmp eax, 0xff
  03cca0  jl 0x3cca7
  03cca2  mov eax, 0xff
L3cca7:
  03cca7  mov byte ptr [edi], al
  03cca9  inc edi
  03ccaa  inc ebp
  03ccab  inc esi
  03ccac  loop 0x3cc78
  03ccae  sub esi, 3
  03ccb1  cmp ebp, 0x300
  03ccb7  jne 0x3cc73
  03ccb9  add esi, 3
  03ccbc  cmp esi, 0x300
  03ccc2  jne 0x3cc6e
  03ccc4  mov esi, dword ptr [0x48b0]
  03ccca  mov edi, dword ptr [0x3b7e8]
  03ccd0  mov ebp, 0x3b7f0
  03ccd5  call 0x1f5a9
  03ccda  mov edi, 0x3b7f0
  03ccdf  mov edx, 0
  03cce4  mov ecx, 0x40
L3cce9:
  03cce9  mov eax, 0
  03ccee  imul eax, ecx
  03ccf1  mov ebx, 0x3f
  03ccf6  imul ebx, edx
  03ccf9  add eax, ebx
  03ccfb  sar eax, 6
  03ccfe  stosb byte ptr es:[edi], al
  03ccff  mov eax, 0
  03cd04  imul eax, ecx
  03cd07  mov ebx, 0x3f
  03cd0c  imul ebx, edx
  03cd0f  add eax, ebx
  03cd11  sar eax, 6
  03cd14  stosb byte ptr es:[edi], al
  03cd15  mov eax, 0
  03cd1a  imul eax, ecx
  03cd1d  mov ebx, 0x3f
  03cd22  imul ebx, edx
  03cd25  add eax, ebx
  03cd27  sar eax, 6
  03cd2a  stosb byte ptr es:[edi], al
  03cd2b  add edi, 9
  03cd2e  inc edx
  03cd2f  dec ecx
  03cd30  jne 0x3cce9
  03cd32  mov esi, dword ptr [0x48b0]
  03cd38  mov ecx, 0xc000
L3cd3d:
  03cd3d  shr byte ptr [esi], 2
  03cd40  inc esi
  03cd41  dec ecx
  03cd42  jne 0x3cd3d
  03cd44  mov eax, dword ptr [0x3b7e8]
  03cd49  xor ebx, ebx
  03cd4b  mov bl, byte ptr [eax]
  03cd4d  imul ebx, ebx, 3
  03cd50  mov al, byte ptr [ebx + 0x3b7f0]
  03cd56  mov byte ptr [0x3b7f0], al
  03cd5b  mov al, byte ptr [ebx + 0x3b7f1]
  03cd61  mov byte ptr [0x3b7f1], al
  03cd66  mov al, byte ptr [ebx + 0x3b7f2]
  03cd6c  mov byte ptr [0x3b7f2], al
  03cd71  mov esi, dword ptr [0x48b0]
  03cd77  mov edi, dword ptr [0x3b7e8]
  03cd7d  mov ebp, 0x3b7f0
  03cd82  mov ecx, 0x4000
  03cd87  call 0x1f4da
  03cd8c  mov edi, dword ptr [0x3b7e8]
  03cd92  add edi, 0x3f00
  03cd98  mov edx, 0x5f
L3cd9d:
  03cd9d  mov esi, dword ptr [0x3b7e8]
  03cda3  add esi, 0x3e00
  03cda9  mov ecx, 0x40
  03cdae  rep movsd dword ptr es:[edi], dword ptr [esi]
  03cdb0  dec edx
  03cdb1  jne 0x3cd9d
  03cdb3  mov edi, 0x3baf0
  03cdb8  xor eax, eax
  03cdba  xor ebx, ebx
  03cdbc  mov ecx, 0x100
L3cdc1:
  03cdc1  mov eax, ebx
  03cdc3  shr eax, 1
  03cdc5  stosb byte ptr es:[edi], al
  03cdc6  stosb byte ptr es:[edi], al
  03cdc7  mov eax, ebx
  03cdc9  stosb byte ptr es:[edi], al
  03cdca  inc ebx
  03cdcb  dec ecx
  03cdcc  jne 0x3cdc1
  03cdce  mov edi, dword ptr [0x48b0]
  03cdd4  mov esi, 0
L3cdd9:
  03cdd9  mov ebp, 0
L3cdde:
  03cdde  mov ecx, 3
L3cde3:
  03cde3  movzx eax, byte ptr ds:[ebp + 0x3b7f0]
  03cdeb  movzx ebx, byte ptr [esi + 0x3baf0]
  03cdf2  shl ebx, 1
  03cdf4  add eax, ebx
  03cdf6  cmp eax, 0
  03cdf9  jg 0x3cdfd
  03cdfb  xor eax, eax
L3cdfd:
  03cdfd  cmp eax, 0x3f
  03ce00  jl 0x3ce07
  03ce02  mov eax, 0x3f
L3ce07:
  03ce07  mov byte ptr [edi], al
  03ce09  inc edi
  03ce0a  inc ebp
  03ce0b  inc esi
  03ce0c  loop 0x3cde3
  03ce0e  sub esi, 3
  03ce11  cmp ebp, 0x300
  03ce17  jne 0x3cdde
  03ce19  add esi, 3
  03ce1c  cmp esi, 0x300
  03ce22  jne 0x3cdd9
  03ce24  mov esi, dword ptr [0x48b0]
  03ce2a  mov edi, dword ptr [0x3b7ec]
  03ce30  mov ebp, 0x3b7f0
  03ce35  mov ecx, 0x4000
  03ce3a  call 0x1f4da
  03ce3f  ret 
  03ce40  mov dword ptr [0x7f50], 0x3dfb2
  03ce4a  mov dword ptr [0x7f54], 0x3db85
  03ce54  mov dword ptr [0x7f58], 0x3dd53
  03ce5e  mov dword ptr [0x17210], 0
  03ce68  mov dword ptr [0x17208], 0
  03ce72  mov dword ptr [0x16630], 0
  03ce7c  mov dword ptr [0x1f920], 0x1fefc
  03ce86  mov edx, 0x3afa4
  03ce8b  call 0x17570
  03ce90  mov dword ptr [0x467c], 0xb
  03ce9a  fild dword ptr [0x467c]
  03cea0  fstp dword ptr [0x4660]
  03cea6  mov ebp, 0x7f98
  03ceab  call 0x17596
  03ceb0  mov dword ptr [0x1f920], 0x1fc7b
  03ceba  mov edx, 0x3afac
  03cebf  call 0x17570
  03cec4  call 0x17596
  03cec9  mov ebp, 0x7f98
  03cece  mov ecx, dword ptr [0x17210]
L3ced4:
  03ced4  mov dword ptr [ebp + 0x18], 0
  03cedb  mov dword ptr [ebp + 0x1c], 0
  03cee2  mov dword ptr [ebp + 0x20], 0
  03cee9  add ebp, 0x38
  03ceec  dec ecx
  03ceed  jne 0x3ced4
  03ceef  mov dword ptr [0x467c], 0xc0
  03cef9  fild dword ptr [0x467c]
  03ceff  fstp qword ptr [0x4950]
  03cf05  mov dword ptr [0x14798], 0
  03cf0f  mov ebp, 0xef98
  03cf14  mov eax, 0x9128745
  03cf19  mov ebx, 0x23894175
  03cf1e  mov ecx, 0x1838415
  03cf23  mov edx, 1
  03cf28  mov edi, 0x178e0
L3cf2d:
  03cf2d  add eax, 0x40903484
  03cf32  add ebx, 0x2935081
  03cf38  add ecx, 0x9234785
  03cf3e  rol eax, 5
  03cf41  rol ebx, 7
  03cf44  ror ecx, 4
  03cf47  mov dword ptr [0x467c], eax
  03cf4c  and dword ptr [0x467c], 0x1f
  03cf53  sub dword ptr [0x467c], 0x10
  03cf5a  mov dword ptr [0x4680], 0x64
  03cf64  fild dword ptr [0x467c]
  03cf6a  fild dword ptr [0x4680]
  03cf70  fdivp st(1)
  03cf72  fstp qword ptr [edi + 8]
  03cf75  mov esi, eax
  03cf77  and esi, 0xff
  03cf7d  imul esi, esi, 0x28
  03cf80  mov dword ptr [edi + 0x10], esi
  03cf83  add edi, 0x18
  03cf86  inc dword ptr [0x14798]
  03cf8c  mov dword ptr [ebp], 0x3dbc7
  03cf93  fldz 
  03cf95  fstp dword ptr [ebp + 4]
  03cf98  fldz 
  03cf9a  fstp dword ptr [ebp + 8]
  03cf9d  fldz 
  03cf9f  fstp dword ptr [ebp + 0xc]
  03cfa2  mov dword ptr [0x467c], 0xfffffff9
  03cfac  fild dword ptr [0x467c]
  03cfb2  fstp dword ptr [ebp + 0x20]
  03cfb5  add ebp, 0x2c
  03cfb8  dec edx
  03cfb9  jne 0x3cf2d
  03cfbf  mov eax, dword ptr [0x14798]
  03cfc4  add dword ptr [0x16630], eax
  03cfca  call 0x16e44
  03cfcf  mov esi, 0x3b7f0
  03cfd4  mov ebp, 0x3baf0
  03cfd9  mov edi, 0x3bdf0
  03cfde  mov ecx, 0x300
L3cfe3:
  03cfe3  movzx eax, byte ptr [esi]
  03cfe6  mov ebx, eax
  03cfe8  neg eax
  03cfea  add eax, 0x3f
  03cfed  cmp eax, 0x3f
  03cff0  jl 0x3cff7
  03cff2  mov eax, 0x3f
L3cff7:
  03cff7  mov byte ptr [edi], al
  03cff9  imul ebx, ebx, 4
  03cffc  cmp ebx, 0x3f
  03cfff  jl 0x3d006
  03d001  mov ebx, 0x3f
L3d006:
  03d006  mov byte ptr [ebp], bl
  03d009  inc esi
  03d00a  inc edi
  03d00b  inc ebp
  03d00c  dec ecx
  03d00d  jne 0x3cfe3
  03d00f  mov esi, dword ptr [0x3b7e4]
  03d015  mov edi, dword ptr [0x4670]
  03d01b  mov ecx, 0x4000
  03d020  rep movsd dword ptr es:[edi], dword ptr [esi]
  03d022  mov esi, dword ptr [0x3b7e8]
  03d028  mov edi, dword ptr [0x48b4]
  03d02e  mov ecx, 0x4000
  03d033  rep movsd dword ptr es:[edi], dword ptr [esi]
  03d035  mov esi, dword ptr [0x3b7ec]
  03d03b  mov edi, dword ptr [0x48bc]
  03d041  mov ecx, 0x4000
  03d046  rep movsd dword ptr es:[edi], dword ptr [esi]
  03d048  xor eax, eax
  03d04a  mov edi, 0x3bdf0
  03d04f  mov ecx, 0xc0
  03d054  rep stosd dword ptr es:[edi], eax
  03d056  mov dword ptr [0x4694], 0
  03d060  call 0x3ae68
  03d065  call 0x3aee3
  03d06a  mov dword ptr [0x469c], 1
  03d074  mov dword ptr [0x1479c], 0
  03d07e  mov dword ptr [0x147a0], 0
  03d088  mov dword ptr [0x147a4], 0
  03d092  mov eax, 0x29f62
  03d097  mov dword ptr [0x4c00], eax
  03d09c  mov dword ptr [0x467c], 0x86
  03d0a6  mov dword ptr [0x4680], 0x2710
  03d0b0  fild dword ptr [0x467c]
  03d0b6  fild dword ptr [0x4680]
  03d0bc  fdivp st(1)
  03d0be  fst qword ptr [0x178a0]
  03d0c4  fstp qword ptr [0x178d0]
  03d0ca  mov dword ptr [0x178ac], 0x280
  03d0d4  mov dword ptr [0x178dc], 0x280
  03d0de  fldz 
  03d0e0  fst qword ptr [0x17898]
  03d0e6  fstp qword ptr [0x178c8]
  03d0ec  mov dword ptr [0x178a8], 0x78
  03d0f6  mov dword ptr [0x178d8], 0xa0
  03d100  mov dword ptr [0x467c], 0x3b
  03d10a  mov dword ptr [0x4680], 0x2710
  03d114  fild dword ptr [0x467c]
  03d11a  fild dword ptr [0x4680]
  03d120  fdivp st(1)
  03d122  fstp qword ptr [0x178b8]
  03d128  mov dword ptr [0x178c4], 0x780
  03d132  fldz 
  03d134  fstp qword ptr [0x178b0]
  03d13a  mov dword ptr [0x178c0], 0
  03d144  mov dword ptr [0x3b7e0], 0
L3d14e:
  03d14e  mov dword ptr [0x469c], 0
L3d158:
  03d158  cmp dword ptr [0x469c], 1
  03d15f  jl 0x3d158
  03d161  mov esi, dword ptr [0x466c]
  03d167  mov edi, dword ptr [0x4668]
  03d16d  xor ebp, ebp
  03d16f  mov ecx, 0x1f40
L3d174:
  03d174  mov eax, dword ptr [esi]
  03d176  mov ebx, dword ptr [esi + 4]
  03d179  mov dword ptr [esi], ebp
  03d17b  mov dword ptr [esi + 4], ebp
  03d17e  mov dword ptr [edi], eax
  03d180  mov dword ptr [edi + 4], ebx
  03d183  add esi, 8
  03d186  add edi, 8
  03d189  dec ecx
  03d18a  jne 0x3d174
  03d18c  mov ebx, 0x17898
  03d191  mov edi, 0x3c108
  03d196  call 0x1f2c0
  03d19b  fld qword ptr [0x17830]
  03d1a1  fstp qword ptr [0x4af0]
  03d1a7  fld qword ptr [0x17838]
  03d1ad  fstp qword ptr [0x4af8]
  03d1b3  fld qword ptr [0x17840]
  03d1b9  fstp qword ptr [0x4b00]
  03d1bf  fld qword ptr [0x17848]
  03d1c5  fstp qword ptr [0x4a20]
  03d1cb  fld qword ptr [0x17850]
  03d1d1  fstp qword ptr [0x4a28]
  03d1d7  fld qword ptr [0x17858]
  03d1dd  fstp qword ptr [0x4a30]
  03d1e3  fld qword ptr [0x17860]
  03d1e9  fstp qword ptr [0x49f0]
  03d1ef  fld qword ptr [0x17868]
  03d1f5  fstp qword ptr [0x49f8]
  03d1fb  fld qword ptr [0x17870]
  03d201  fstp qword ptr [0x4a00]
  03d207  fld qword ptr [0x17878]
  03d20d  fstp qword ptr [0x4938]
  03d213  mov ebx, 0x178c8
  03d218  mov edi, 0x3c108
  03d21d  call 0x1f2c0
  03d222  fld qword ptr [0x17860]
  03d228  fstp qword ptr [0x49c0]
  03d22e  fld qword ptr [0x17868]
  03d234  fstp qword ptr [0x49c8]
  03d23a  fld qword ptr [0x17870]
  03d240  fstp qword ptr [0x49d0]
  03d246  fld qword ptr [0x4938]
  03d24c  fmul qword ptr [0x4960]
  03d252  fstp qword ptr [0x4a78]
  03d258  call 0x15d91
  03d25d  call 0x150d4
  03d262  cmp byte ptr [0x41b7], 1
  03d269  je 0x3d7a9
  03d26f  fld qword ptr [0x49f0]
  03d275  fstp dword ptr [0x4c1c]
  03d27b  fld qword ptr [0x49f8]
  03d281  fstp dword ptr [0x4c20]
  03d287  fld qword ptr [0x4a00]
  03d28d  fstp dword ptr [0x4c24]
  03d293  fld dword ptr [0x7f30]
  03d299  fcos 
  03d29b  fld1 
  03d29d  faddp st(1)
  03d29f  fdiv qword ptr [0x4988]
  03d2a5  fstp qword ptr [0x7eb8]
  03d2ab  fld dword ptr [0x7f30]
  03d2b1  fsin 
  03d2b3  fmul qword ptr [0x7f18]
  03d2b9  fstp qword ptr [0x7ed0]
  03d2bf  fld dword ptr [0x7f38]
  03d2c5  fcos 
  03d2c7  fmul qword ptr [0x7f00]
  03d2cd  fstp qword ptr [0x7ed8]
  03d2d3  fld dword ptr [0x7f30]
  03d2d9  fsin 
  03d2db  fmul qword ptr [0x7f28]
  03d2e1  fstp qword ptr [0x7ef0]
  03d2e7  fld dword ptr [0x7f38]
  03d2ed  fcos 
  03d2ef  fmul qword ptr [0x7f10]
  03d2f5  fstp qword ptr [0x7ef8]
  03d2fb  fld dword ptr [0x7f30]
  03d301  fsin 
  03d303  fmul qword ptr [0x7f20]
  03d309  fstp qword ptr [0x7ee0]
  03d30f  fld dword ptr [0x7f38]
  03d315  fcos 
  03d317  fmul qword ptr [0x7f08]
  03d31d  fstp qword ptr [0x7ee8]
  03d323  mov esi, 0x4c84
  03d328  mov edi, dword ptr [0x466c]
  03d32e  add edi, 0x10000
  03d334  mov edx, 0x1a
L3d339:
  03d339  mov ecx, 0x29
L3d33e:
  03d33e  fld dword ptr [esi]
  03d340  fmul qword ptr [0x15be0]
  03d346  fld dword ptr [esi + 4]
  03d349  fmul qword ptr [0x15be8]
  03d34f  fld dword ptr [esi + 8]
  03d352  fmul qword ptr [0x15bf0]
  03d358  faddp st(1)
  03d35a  faddp st(1)
  03d35c  fadd dword ptr [0x4c1c]
  03d362  fstp dword ptr [0x4c28]
  03d368  fld dword ptr [esi]
  03d36a  fmul qword ptr [0x15c00]
  03d370  fld dword ptr [esi + 4]
  03d373  fmul qword ptr [0x15c08]
  03d379  fld dword ptr [esi + 8]
  03d37c  fmul qword ptr [0x15c10]
  03d382  faddp st(1)
  03d384  faddp st(1)
  03d386  fadd dword ptr [0x4c20]
  03d38c  fstp dword ptr [0x4c2c]
  03d392  fld dword ptr [esi]
  03d394  fmul qword ptr [0x15c20]
  03d39a  fld dword ptr [esi + 4]
  03d39d  fmul qword ptr [0x15c28]
  03d3a3  fld dword ptr [esi + 8]
  03d3a6  fmul qword ptr [0x15c30]
  03d3ac  faddp st(1)
  03d3ae  faddp st(1)
  03d3b0  fadd dword ptr [0x4c24]
  03d3b6  fstp dword ptr [0x4c30]
  03d3bc  call dword ptr [0x4c00]
  03d3c2  cmp dword ptr [0x3c0f0], 1
  03d3c9  jne 0x3d465
  03d3cf  mov eax, dword ptr [0x4c34]
  03d3d4  mov ebx, dword ptr [0x4c38]
  03d3da  mov dword ptr [0x4c40], eax
  03d3df  mov dword ptr [0x4c44], ebx
  03d3e5  mov eax, dword ptr [0x4c3c]
  03d3ea  mov dword ptr [0x4c48], eax
  03d3ef  call dword ptr [0x3c104]
  03d3f5  fld dword ptr [0x4c34]
  03d3fb  fmul dword ptr [0x3c0f4]
  03d401  fld1 
  03d403  fsub dword ptr [0x3c0f4]
  03d409  fmul dword ptr [0x4c40]
  03d40f  faddp st(1)
  03d411  fmul qword ptr [0x7ea0]
  03d417  fistp dword ptr [edi]
  03d419  fld dword ptr [0x4c38]
  03d41f  fmul dword ptr [0x3c0f4]
  03d425  fld1 
  03d427  fsub dword ptr [0x3c0f4]
  03d42d  fmul dword ptr [0x4c44]
  03d433  faddp st(1)
  03d435  fmul qword ptr [0x7ea0]
  03d43b  fistp dword ptr [edi + 4]
  03d43e  fld dword ptr [0x4c3c]
  03d444  fmul dword ptr [0x3c0f4]
  03d44a  fld1 
  03d44c  fsub dword ptr [0x3c0f4]
  03d452  fmul dword ptr [0x4c48]
  03d458  faddp st(1)
  03d45a  fmul qword ptr [0x7ea0]
  03d460  fistp dword ptr [edi + 8]
  03d463  jmp 0x3d491
L3d465:
  03d465  fld dword ptr [0x4c34]
  03d46b  fmul qword ptr [0x7ea0]
  03d471  fistp dword ptr [edi]
  03d473  fld dword ptr [0x4c38]
  03d479  fmul qword ptr [0x7ea0]
  03d47f  fistp dword ptr [edi + 4]
  03d482  fld dword ptr [0x4c3c]
  03d488  fmul qword ptr [0x7ea0]
  03d48e  fistp dword ptr [edi + 8]
L3d491:
  03d491  add edi, 0xc
  03d494  add esi, 0xc
  03d497  dec ecx
  03d498  jne 0x3d33e
  03d49e  dec edx
  03d49f  jne 0x3d339
  03d4a5  mov esi, dword ptr [0x466c]
  03d4ab  add esi, 0x10000
  03d4b1  mov edi, dword ptr [0x466c]
  03d4b7  sub edi, 2
  03d4ba  mov dword ptr [0x4680], 0x19
L3d4c4:
  03d4c4  mov dword ptr [0x467c], 0x28
L3d4ce:
  03d4ce  mov eax, dword ptr [esi + 8]
  03d4d1  add eax, dword ptr [esi + 0x14]
  03d4d4  add eax, dword ptr [esi + 0x1f4]
  03d4da  add eax, dword ptr [esi + 0x200]
  03d4e0  je 0x3d782
  03d4e6  push edi
  03d4e7  mov edx, dword ptr [esi]
  03d4e9  mov ebp, dword ptr [esi + 4]
  03d4ec  mov edi, dword ptr [esi + 8]
  03d4ef  mov eax, dword ptr [esi + 0x1ec]
  03d4f5  mov ebx, dword ptr [esi + 0x1f0]
  03d4fb  mov ecx, dword ptr [esi + 0x1f4]
  03d501  sub eax, edx
  03d503  sub ebx, ebp
  03d505  sub ecx, edi
  03d507  mov dword ptr [0x3c790], edx
  03d50d  mov dword ptr [0x3c794], ebp
  03d513  mov dword ptr [0x3c798], edi
  03d519  sar eax, 3
  03d51c  sar ebx, 3
  03d51f  sar ecx, 3
  03d522  mov dword ptr [0x3c7ac], eax
  03d527  mov dword ptr [0x3c7b0], ebx
  03d52d  mov dword ptr [0x3c7b4], ecx
  03d533  mov edx, dword ptr [esi + 0xc]
  03d536  mov ebp, dword ptr [esi + 0x10]
  03d539  mov edi, dword ptr [esi + 0x14]
  03d53c  mov eax, dword ptr [esi + 0x1f8]
  03d542  mov ebx, dword ptr [esi + 0x1fc]
  03d548  mov ecx, dword ptr [esi + 0x200]
  03d54e  sub eax, edx
  03d550  sub ebx, ebp
  03d552  sub ecx, edi
  03d554  mov dword ptr [0x3c79c], edx
  03d55a  mov dword ptr [0x3c7a0], ebp
  03d560  mov dword ptr [0x3c7a4], edi
  03d566  sar eax, 3
  03d569  sar ebx, 3
  03d56c  sar ecx, 3
  03d56f  pop edi
  03d570  mov dword ptr [0x3c7b8], eax
  03d575  mov dword ptr [0x3c7bc], ebx
  03d57b  mov dword ptr [0x3c7c0], ecx
  03d581  push esi
  03d582  mov dword ptr [0x3c7a8], 8
L3d58c:
  03d58c  mov ebp, dword ptr [0x3c790]
  03d592  mov esi, dword ptr [0x3c794]
  03d598  mov edx, dword ptr [0x3c798]
  03d59e  mov eax, dword ptr [0x3c79c]
  03d5a3  mov ebx, dword ptr [0x3c7a0]
  03d5a9  mov ecx, dword ptr [0x3c7a4]
  03d5af  sub eax, ebp
  03d5b1  sub ebx, esi
  03d5b3  sub ecx, edx
  03d5b5  sar eax, 0xb
  03d5b8  sar ebx, 0xb
  03d5bb  sar ecx, 0xb
  03d5be  mov dword ptr [0x3c7c4], eax
  03d5c3  mov dword ptr [0x3c7c8], ebx
  03d5c9  mov dword ptr [0x3c7cc], ecx
  03d5cf  sar ebp, 8
  03d5d2  sar esi, 8
  03d5d5  sar edx, 8
  03d5d8  mov ecx, ebp
  03d5da  mov eax, dword ptr [0x4670]
  03d5df  mov ax, si
  03d5e2  add edi, 2
  03d5e5  mov al, ch
  03d5e7  add ecx, dword ptr [0x3c7c4]
  03d5ed  add esi, dword ptr [0x3c7c8]
  03d5f3  mov al, byte ptr [eax]
  03d5f5  mov ah, dh
  03d5f7  add edx, dword ptr [0x3c7cc]
  03d5fd  mov bl, byte ptr [eax + 0x10000]
  03d603  mov ax, si
  03d606  mov al, ch
  03d608  add ecx, dword ptr [0x3c7c4]
  03d60e  add esi, dword ptr [0x3c7c8]
  03d614  mov al, byte ptr [eax]
  03d616  mov ah, dh
  03d618  add edx, dword ptr [0x3c7cc]
  03d61e  mov bh, byte ptr [eax + 0x10000]
  03d624  mov word ptr [edi], bx
  03d627  mov ax, si
  03d62a  add edi, 2
  03d62d  mov al, ch
  03d62f  add ecx, dword ptr [0x3c7c4]
  03d635  add esi, dword ptr [0x3c7c8]
  03d63b  mov al, byte ptr [eax]
  03d63d  mov ah, dh
  03d63f  add edx, dword ptr [0x3c7cc]
  03d645  mov bl, byte ptr [eax + 0x10000]
  03d64b  mov ax, si
  03d64e  mov al, ch
  03d650  add ecx, dword ptr [0x3c7c4]
  03d656  add esi, dword ptr [0x3c7c8]
  03d65c  mov al, byte ptr [eax]
  03d65e  mov ah, dh
  03d660  add edx, dword ptr [0x3c7cc]
  03d666  mov bh, byte ptr [eax + 0x10000]
  03d66c  mov word ptr [edi], bx
  03d66f  mov ax, si
  03d672  add edi, 2
  03d675  mov al, ch
  03d677  add ecx, dword ptr [0x3c7c4]
  03d67d  add esi, dword ptr [0x3c7c8]
  03d683  mov al, byte ptr [eax]
  03d685  mov ah, dh
  03d687  add edx, dword ptr [0x3c7cc]
  03d68d  mov bl, byte ptr [eax + 0x10000]
  03d693  mov ax, si
  03d696  mov al, ch
  03d698  add ecx, dword ptr [0x3c7c4]
  03d69e  add esi, dword ptr [0x3c7c8]
  03d6a4  mov al, byte ptr [eax]
  03d6a6  mov ah, dh
  03d6a8  add edx, dword ptr [0x3c7cc]
  03d6ae  mov bh, byte ptr [eax + 0x10000]
  03d6b4  mov word ptr [edi], bx
  03d6b7  mov ax, si
  03d6ba  add edi, 2
  03d6bd  mov al, ch
  03d6bf  add ecx, dword ptr [0x3c7c4]
  03d6c5  add esi, dword ptr [0x3c7c8]
  03d6cb  mov al, byte ptr [eax]
  03d6cd  mov ah, dh
  03d6cf  add edx, dword ptr [0x3c7cc]
  03d6d5  mov bl, byte ptr [eax + 0x10000]
  03d6db  mov ax, si
  03d6de  mov al, ch
  03d6e0  add ecx, dword ptr [0x3c7c4]
  03d6e6  add esi, dword ptr [0x3c7c8]
  03d6ec  mov al, byte ptr [eax]
  03d6ee  mov ah, dh
  03d6f0  add edx, dword ptr [0x3c7cc]
  03d6f6  mov bh, byte ptr [eax + 0x10000]
  03d6fc  mov word ptr [edi], bx
  03d6ff  mov eax, dword ptr [0x3c790]
  03d704  mov ebx, dword ptr [0x3c794]
  03d70a  mov ecx, dword ptr [0x3c798]
  03d710  mov edx, dword ptr [0x3c79c]
  03d716  mov esi, dword ptr [0x3c7a0]
  03d71c  mov ebp, dword ptr [0x3c7a4]
  03d722  add eax, dword ptr [0x3c7ac]
  03d728  add ebx, dword ptr [0x3c7b0]
  03d72e  add ecx, dword ptr [0x3c7b4]
  03d734  add edx, dword ptr [0x3c7b8]
  03d73a  add esi, dword ptr [0x3c7bc]
  03d740  add ebp, dword ptr [0x3c7c0]
  03d746  mov dword ptr [0x3c790], eax
  03d74b  mov dword ptr [0x3c794], ebx
  03d751  mov dword ptr [0x3c798], ecx
  03d757  mov dword ptr [0x3c79c], edx
  03d75d  mov dword ptr [0x3c7a0], esi
  03d763  mov dword ptr [0x3c7a4], ebp
  03d769  add edi, 0x138
  03d76f  dec dword ptr [0x3c7a8]
  03d775  jne 0x3d58c
  03d77b  pop esi
  03d77c  add edi, 0xfffff600
L3d782:
  03d782  add edi, 8
  03d785  add esi, 0xc
  03d788  dec dword ptr [0x467c]
  03d78e  jne 0x3d4ce
  03d794  add edi, 0x8c0
  03d79a  add esi, 0xc
  03d79d  dec dword ptr [0x4680]
  03d7a3  jne 0x3d4c4
L3d7a9:
  03d7a9  mov eax, dword ptr [0x1584c]
  03d7ae  mov dword ptr [0x15854], eax
  03d7b3  mov eax, dword ptr [0x15850]
  03d7b8  mov dword ptr [0x15858], eax
  03d7bd  mov dword ptr [0x1663c], 0
  03d7c7  mov eax, dword ptr [0x16634]
  03d7cc  mov dword ptr [0x16640], eax
  03d7d1  mov ecx, dword ptr [0x17210]
  03d7d7  mov ebp, 0x7f98
L3d7dc:
  03d7dc  push ecx
  03d7dd  cmp dword ptr [ebp + 4], 0
  03d7e1  jne 0x3d98c
  03d7e7  fld dword ptr [ebp + 0x34]
  03d7ea  fstp dword ptr [0x17214]
  03d7f0  fild dword ptr [ebp + 0x18]
  03d7f3  fdiv qword ptr [0x4a68]
  03d7f9  fstp qword ptr [0x4a38]
  03d7ff  fild dword ptr [ebp + 0x1c]
  03d802  fdiv qword ptr [0x4a68]
  03d808  fstp qword ptr [0x4a40]
  03d80e  fild dword ptr [ebp + 0x20]
  03d811  fdiv qword ptr [0x4a68]
  03d817  fstp qword ptr [0x4a48]
  03d81d  fld dword ptr [ebp + 0x24]
  03d820  fstp qword ptr [0x49a8]
  03d826  fld dword ptr [ebp + 0x28]
  03d829  fstp qword ptr [0x49b0]
  03d82f  fld dword ptr [ebp + 0x2c]
  03d832  fstp qword ptr [0x49b8]
  03d838  mov ebx, 0x15b60
  03d83d  call 0x15f1b
  03d842  mov eax, 0x15b60
  03d847  mov ebx, 0x15be0
  03d84c  mov ecx, 0x15ae0
  03d851  call 0x160b5
  03d856  cmp dword ptr [ebp], 0x4f627521
  03d85d  je 0x3d8d6
  03d85f  mov esi, dword ptr [ebp + 0x10]
  03d862  mov ecx, dword ptr [ebp + 8]
L3d865:
  03d865  mov dword ptr [esi + 4], 0
  03d86c  add esi, 0x40
  03d86f  dec ecx
  03d870  jne 0x3d865
  03d872  call 0x16244
  03d877  mov esi, ebp
  03d879  mov edi, 0x7f60
  03d87e  mov ecx, 0xe
  03d883  rep movsd dword ptr es:[edi], dword ptr [esi]
  03d885  mov dword ptr [0x7f68], 0
  03d88f  mov dword ptr [0x7f6c], 0
  03d899  mov ebx, dword ptr [0x15854]
  03d89f  mov dword ptr [0x7f74], ebx
  03d8a5  mov ebx, dword ptr [0x15858]
  03d8ab  mov dword ptr [0x7f70], ebx
  03d8b1  call 0x15a18
  03d8b6  call 0x162fd
  03d8bb  call 0x17028
  03d8c0  push ebp
  03d8c1  mov ebp, 0x7f60
  03d8c6  call 0x162fd
  03d8cb  call 0x17028
  03d8d0  pop ebp
  03d8d1  jmp 0x3d98c
L3d8d6:
  03d8d6  cmp byte ptr [0x41b6], 1
  03d8dd  je 0x3d98c
  03d8e3  mov esi, dword ptr [ebp + 0x14]
  03d8e6  mov eax, 0x1fa33
  03d8eb  sub eax, dword ptr [esi + 4]
  03d8ee  mov dword ptr [0x4664], eax
  03d8f3  mov eax, dword ptr [esi + 4]
  03d8f6  cmp eax, 0x1fc7b
  03d8fb  jne 0x3d907
  03d8fd  mov dword ptr [0x4664], 1
L3d907:
  03d907  call 0x16100
  03d90c  call 0x16244
  03d911  call 0x163a4
  03d916  mov esi, ebp
  03d918  mov edi, 0x7f60
  03d91d  mov ecx, 0xe
  03d922  rep movsd dword ptr es:[edi], dword ptr [esi]
  03d924  mov dword ptr [0x7f68], 0
  03d92e  mov dword ptr [0x7f6c], 0
  03d938  mov ebx, dword ptr [0x15854]
  03d93e  mov dword ptr [0x7f74], ebx
  03d944  mov ebx, dword ptr [0x15858]
  03d94a  mov dword ptr [0x7f70], ebx
  03d950  call 0x1592e
  03d955  call 0x162fd
  03d95a  call 0x16ea7
  03d95f  cmp dword ptr [0x4664], 1
  03d966  je 0x3d96d
  03d968  call 0x1653f
L3d96d:
  03d96d  push ebp
  03d96e  mov ebp, 0x7f60
  03d973  call 0x162fd
  03d978  call 0x16ea7
  03d97d  cmp dword ptr [0x4664], 1
  03d984  je 0x3d98b
  03d986  call 0x1653f
L3d98b:
  03d98b  pop ebp
L3d98c:
  03d98c  pop ecx
  03d98d  add ebp, 0x38
  03d990  dec ecx
  03d991  jne 0x3d7dc
  03d997  mov dword ptr [0x467c], 0x28
  03d9a1  fild dword ptr [0x467c]
  03d9a7  fld dword ptr [0xefb8]
  03d9ad  fmul qword ptr [0x4988]
  03d9b3  fmul qword ptr [0x4938]
  03d9b9  fdivp st(1)
  03d9bb  fstp dword ptr [0x4658]
  03d9c1  mov dword ptr [0x467c], 0xff
  03d9cb  fild dword ptr [0x467c]
  03d9d1  fld dword ptr [0xefb8]
  03d9d7  fmul qword ptr [0x4988]
  03d9dd  fmul qword ptr [0x4938]
  03d9e3  fdivp st(1)
  03d9e5  fstp dword ptr [0x465c]
  03d9eb  mov ecx, dword ptr [0x14798]
  03d9f1  cmp ecx, 0
  03d9f4  je 0x3db48
  03d9fa  mov ebp, 0xef98
  03d9ff  mov edi, dword ptr [0x16640]
  03da05  mov ebx, 0x178e0
L3da0a:
  03da0a  fld dword ptr [ebp + 4]
  03da0d  fmul qword ptr [0x15be0]
  03da13  fld dword ptr [ebp + 4]
  03da16  fmul qword ptr [0x15be8]
  03da1c  fld dword ptr [ebp + 4]
  03da1f  fmul qword ptr [0x15bf0]
  03da25  fld dword ptr [ebp + 8]
  03da28  fmul qword ptr [0x15c00]
  03da2e  fld dword ptr [ebp + 8]
  03da31  fmul qword ptr [0x15c08]
  03da37  fld dword ptr [ebp + 8]
  03da3a  fmul qword ptr [0x15c10]
  03da40  fxch st(2)
  03da42  faddp st(5)
  03da44  faddp st(3)
  03da46  faddp st(1)
  03da48  fld dword ptr [ebp + 0xc]
  03da4b  fmul qword ptr [0x15c20]
  03da51  fld dword ptr [ebp + 0xc]
  03da54  fmul qword ptr [0x15c28]
  03da5a  fld dword ptr [ebp + 0xc]
  03da5d  fmul qword ptr [0x15c30]
  03da63  fxch st(2)
  03da65  faddp st(5)
  03da67  faddp st(3)
  03da69  faddp st(1)
  03da6b  fxch st(2)
  03da6d  fadd qword ptr [0x15c40]
  03da73  fxch st(1)
  03da75  fadd qword ptr [0x15c48]
  03da7b  fxch st(2)
  03da7d  fadd qword ptr [0x15c50]
  03da83  fst dword ptr [ebp + 0x1c]
  03da86  fstp dword ptr [0x4684]
  03da8c  fstp dword ptr [0x467c]
  03da92  fstp dword ptr [0x4680]
  03da98  test dword ptr [0x4684], 0x80000000
  03daa2  je 0x3db38
  03daa8  fld1 
  03daaa  fld dword ptr [0x4684]
  03dab0  fdivp st(1)
  03dab2  fld dword ptr [0x467c]
  03dab8  fld dword ptr [0x4680]
  03dabe  fmul qword ptr [0x4a78]
  03dac4  fmul st(2)
  03dac6  fxch st(1)
  03dac8  fmul qword ptr [0x4938]
  03dace  fmul st(2)
  03dad0  fxch st(1)
  03dad2  fadd qword ptr [0x4930]
  03dad8  fstp dword ptr [ebp + 0x18]
  03dadb  fadd qword ptr [0x4928]
  03dae1  fstp dword ptr [ebp + 0x14]
  03dae4  fstp dword ptr [ebp + 0x10]
  03dae7  mov eax, dword ptr [0x4658]
  03daec  cmp dword ptr [ebp], 0x3dbc7
  03daf3  jne 0x3dafa
  03daf5  mov eax, dword ptr [0x465c]
L3dafa:
  03dafa  mov dword ptr [ebp + 0x28], eax
  03dafd  fld dword ptr [0x4684]
  03db03  fsub dword ptr [0x150d0]
  03db09  fmul dword ptr [0x150c0]
  03db0f  fmul qword ptr [0x4990]
  03db15  fchs 
  03db17  fistp dword ptr [0x4680]
  03db1d  mov eax, 0xffff
  03db22  sub eax, dword ptr [0x4680]
  03db28  mov dword ptr [edi], eax
  03db2a  add edi, 4
  03db2d  mov dword ptr [edi], ebp
  03db2f  add edi, 4
  03db32  inc dword ptr [0x1663c]
L3db38:
  03db38  add ebp, 0x2c
  03db3b  dec ecx
  03db3c  jne 0x3da0a
  03db42  mov dword ptr [0x16640], edi
L3db48:
  03db48  wait 
  03db49  fnstcw word ptr [0x3c388]
  03db4f  push word ptr [0x3c388]
  03db56  or word ptr [0x3c388], 0xc00
  03db5f  fldcw word ptr [0x3c388]
  03db65  cmp dword ptr [0x1663c], 0
  03db6c  je 0x3df48
  03db72  call 0x170f7
  03db77  mov esi, dword ptr [0x16634]
  03db7d  add esi, 4
L3db80:
  03db80  mov ecx, dword ptr [esi]
  03db82  push esi
  03db83  jmp dword ptr [ecx]
  03db85  mov esi, dword ptr [ecx + 8]
  03db88  mov edi, dword ptr [ecx + 0xc]
  03db8b  fld dword ptr [esi + 0x14]
  03db8e  fld dword ptr [esi + 0x18]
  03db91  fxch st(1)
  03db93  fstp dword ptr [0x2936c]
  03db99  fstp dword ptr [0x29370]
  03db9f  fld dword ptr [edi + 0x14]
  03dba2  fld dword ptr [edi + 0x18]
  03dba5  fxch st(1)
  03dba7  fstp dword ptr [0x2937c]
  03dbad  fstp dword ptr [0x29380]
  03dbb3  mov esi, 0x2936c
  03dbb8  mov edi, 0x2937c
  03dbbd  call 0x293a4
  03dbc2  jmp 0x3df38
  03dbc7  fld dword ptr [ecx + 0x28]
  03dbca  fmul dword ptr [ecx + 0x1c]
  03dbcd  fmul dword ptr [0x29690]
  03dbd3  fistp dword ptr [0x4688]
  03dbd9  mov eax, dword ptr [0x4688]
  03dbde  shr eax, 8
  03dbe1  cmp eax, 0x3f
  03dbe4  jl 0x3dbeb
  03dbe6  mov eax, 0x3f
L3dbeb:
  03dbeb  cmp dword ptr [0x48dc], -1
  03dbf2  je 0x3dbf9
  03dbf4  mov eax, dword ptr [0x48dc]
L3dbf9:
  03dbf9  mov ebx, dword ptr [eax*4 + 0x4558]
  03dc00  mov dword ptr [0x296a4], ebx
  03dc06  fld dword ptr [ecx + 0x28]
  03dc09  fmul dword ptr [ecx + 0x1c]
  03dc0c  fmul dword ptr [eax*4 + 0x4458]
  03dc13  fst dword ptr [0x296c0]
  03dc19  fmul dword ptr [0x29690]
  03dc1f  fistp dword ptr [0x296c8]
  03dc25  fld dword ptr [ecx + 0x20]
  03dc28  fmul qword ptr [0x4938]
  03dc2e  fmul dword ptr [ecx + 0x10]
  03dc31  fstp dword ptr [0x2969c]
  03dc37  fld dword ptr [ecx + 0x14]
  03dc3a  fsub dword ptr [0x2969c]
  03dc40  fstp dword ptr [0x296a8]
  03dc46  fld dword ptr [ecx + 0x18]
  03dc49  fsub dword ptr [0x2969c]
  03dc4f  fstp dword ptr [0x296ac]
  03dc55  fld dword ptr [ecx + 0x14]
  03dc58  fadd dword ptr [0x2969c]
  03dc5e  fstp dword ptr [0x296b0]
  03dc64  fld dword ptr [ecx + 0x18]
  03dc67  fadd dword ptr [0x2969c]
  03dc6d  fstp dword ptr [0x296b4]
  03dc73  call 0x298b7
  03dc78  jmp 0x3df38
  03dc7d  fld qword ptr [0x49f0]
  03dc83  fsub dword ptr [ecx + 4]
  03dc86  fld qword ptr [0x49f8]
  03dc8c  fsub dword ptr [ecx + 8]
  03dc8f  fpatan 
  03dc91  fldpi 
  03dc93  fmul qword ptr [0x4988]
  03dc99  fdivp st(1)
  03dc9b  fmul qword ptr [0x4a68]
  03dca1  fistp dword ptr [0x4688]
  03dca7  mov eax, dword ptr [0x4688]
  03dcac  and eax, 0xffff
  03dcb1  mov ebx, 0x690
  03dcb6  cdq 
  03dcb7  idiv ebx
  03dcb9  mov esi, eax
  03dcbb  and esi, 3
  03dcbe  imul esi, esi, 0x28
  03dcc1  shr eax, 2
  03dcc4  imul eax, eax, 0x5300
  03dcca  add eax, esi
  03dccc  mov dword ptr [0x296a4], eax
  03dcd1  fld dword ptr [ecx + 0x28]
  03dcd4  fmul dword ptr [ecx + 0x1c]
  03dcd7  fst dword ptr [0x296c0]
  03dcdd  fmul dword ptr [0x29690]
  03dce3  fistp dword ptr [0x296c8]
  03dce9  fld dword ptr [ecx + 0x20]
  03dcec  fmul qword ptr [0x4938]
  03dcf2  fmul dword ptr [ecx + 0x10]
  03dcf5  fstp dword ptr [0x2969c]
  03dcfb  fld dword ptr [ecx + 0x24]
  03dcfe  fmul qword ptr [0x4938]
  03dd04  fmul dword ptr [ecx + 0x10]
  03dd07  fstp dword ptr [0x296a0]
  03dd0d  fld dword ptr [ecx + 0x14]
  03dd10  fsub dword ptr [0x2969c]
  03dd16  fstp dword ptr [0x296a8]
  03dd1c  fld dword ptr [ecx + 0x18]
  03dd1f  fsub dword ptr [0x296a0]
  03dd25  fstp dword ptr [0x296ac]
  03dd2b  fld dword ptr [ecx + 0x14]
  03dd2e  fadd dword ptr [0x2969c]
  03dd34  fstp dword ptr [0x296b0]
  03dd3a  fld dword ptr [ecx + 0x18]
  03dd3d  fadd dword ptr [0x296a0]
  03dd43  fstp dword ptr [0x296b4]
  03dd49  call 0x296d8
  03dd4e  jmp 0x3df38
  03dd53  mov esi, dword ptr [ecx + 0xc]
  03dd56  mov edi, dword ptr [ecx + 0x10]
  03dd59  mov ebp, dword ptr [ecx + 0x14]
  03dd5c  xor eax, eax
  03dd5e  mov edx, eax
  03dd60  shl edx, 0x10
  03dd63  mov eax, dword ptr [eax*4 + 0x48e4]
  03dd6a  mov dword ptr [0x48f8], eax
  03dd6f  fild dword ptr [ecx + 0x2c]
  03dd72  fld dword ptr [esi + 0x1c]
  03dd75  fmul qword ptr [0x4940]
  03dd7b  faddp st(1)
  03dd7d  fistp dword ptr [0x4690]
  03dd83  mov eax, dword ptr [0x4690]
  03dd88  shl eax, 2
  03dd8b  add eax, 0x80
  03dd90  cmp eax, 0
  03dd93  jg 0x3dd97
  03dd95  xor eax, eax
L3dd97:
  03dd97  cmp eax, 0xff
  03dd9c  jl 0x3dda3
  03dd9e  mov eax, 0xff
L3dda3:
  03dda3  mov byte ptr [0x1fa31], al
  03dda8  mov eax, dword ptr [ecx + 0x28]
  03ddab  shl eax, 0x10
  03ddae  mov ebx, eax
  03ddb0  add eax, dword ptr [0x4670]
  03ddb6  add eax, edx
  03ddb8  mov dword ptr [0x1f924], eax
  03ddbd  add ebx, dword ptr [0x48b4]
  03ddc3  mov dword ptr [0x1f928], ebx
  03ddc9  mov eax, dword ptr [ecx + 4]
  03ddcc  cmp eax, 0x1fa32
  03ddd1  je 0x3de03
  03ddd3  cmp eax, 0x1fc7b
  03ddd8  je 0x3de03
  03ddda  fld dword ptr [esi + 0x38]
  03dddd  fadd dword ptr [edi + 0x38]
  03dde0  fadd dword ptr [ebp + 0x38]
  03dde3  fstp dword ptr [0x48d0]
  03dde9  mov ebx, dword ptr [0x490c]
  03ddef  cmp dword ptr [0x48d0], ebx
  03ddf5  jne 0x3de03
  03ddf7  mov byte ptr [0x1fa31], 0
  03ddfe  mov eax, 0x1fa32
L3de03:
  03de03  mov dword ptr [0x1f920], eax
  03de08  mov eax, dword ptr [esi]
  03de0a  add eax, dword ptr [edi]
  03de0c  add eax, dword ptr [ebp]
  03de0f  jne 0x3de1c
  03de11  call dword ptr [0x1f920]
  03de17  jmp 0x3df38
L3de1c:
  03de1c  push dword ptr [0x15858]
  03de22  mov dword ptr [0x14cb0], esi
  03de28  mov dword ptr [0x14cb4], edi
  03de2e  mov dword ptr [0x14cb8], ebp
  03de34  mov dword ptr [0x14cbc], esi
  03de3a  mov esi, 0x14cb0
  03de3f  mov edi, 0x14d00
  03de44  mov dword ptr [0x14d50], 0
  03de4e  call 0x14d54
  03de53  call 0x14d54
  03de58  call 0x14d54
  03de5d  cmp dword ptr [0x14d50], 3
  03de64  jl 0x3df32
  03de6a  mov eax, dword ptr [0x14d00]
  03de6f  mov dword ptr [edi], eax
  03de71  mov esi, 0x14d00
  03de76  mov edi, 0x14cb0
  03de7b  mov ebp, dword ptr [0x14d50]
  03de81  mov dword ptr [0x14d50], 0
L3de8b:
  03de8b  call 0x14e3a
  03de90  dec ebp
  03de91  jne 0x3de8b
  03de93  cmp dword ptr [0x14d50], 3
  03de9a  jl 0x3df32
  03dea0  mov eax, dword ptr [0x14cb0]
  03dea5  mov dword ptr [edi], eax
  03dea7  mov esi, 0x14cb0
  03deac  mov edi, 0x14d00
  03deb1  mov ebp, dword ptr [0x14d50]
  03deb7  mov dword ptr [0x14d50], 0
L3dec1:
  03dec1  call 0x14f28
  03dec6  dec ebp
  03dec7  jne 0x3dec1
  03dec9  cmp dword ptr [0x14d50], 3
  03ded0  jl 0x3df32
  03ded2  mov eax, dword ptr [0x14d00]
  03ded7  mov dword ptr [edi], eax
  03ded9  mov esi, 0x14d00
  03dede  mov edi, 0x14cb0
  03dee3  mov ebp, dword ptr [0x14d50]
  03dee9  mov dword ptr [0x14d50], 0
L3def3:
  03def3  call 0x14fed
  03def8  dec ebp
  03def9  jne 0x3def3
  03defb  cmp dword ptr [0x14d50], 3
  03df02  jl 0x3df32
  03df04  sub dword ptr [0x14d50], 2
  03df0b  xor eax, eax
L3df0d:
  03df0d  mov esi, dword ptr [0x14cb0]
  03df13  mov edi, dword ptr [eax + 0x14cb4]
  03df19  mov ebp, dword ptr [eax + 0x14cb8]
  03df1f  push eax
  03df20  call dword ptr [0x1f920]
  03df26  pop eax
  03df27  add eax, 4
  03df2a  dec dword ptr [0x14d50]
  03df30  jne 0x3df0d
L3df32:
  03df32  pop dword ptr [0x15858]
L3df38:
  03df38  pop esi
  03df39  add esi, 8
  03df3c  dec dword ptr [0x1663c]
  03df42  jne 0x3db80
L3df48:
  03df48  pop word ptr [0x3c388]
  03df4f  fldcw word ptr [0x3c388]
  03df55  cmp byte ptr [0x41cb], 1
  03df5c  jne 0x3df70
  03df5e  fld qword ptr [0x4958]
  03df64  fadd qword ptr [0x4950]
  03df6a  fstp qword ptr [0x4950]
L3df70:
  03df70  cmp byte ptr [0x41cc], 1
  03df77  jne 0x3df8d
  03df79  fld qword ptr [0x4958]
  03df7f  fchs 
  03df81  fadd qword ptr [0x4950]
  03df87  fstp qword ptr [0x4950]
L3df8d:
  03df8d  in al, 0x60
  03df8f  cmp al, 1
  03df91  jne 0x3df9f
  03df93  mov dword ptr [0x4aeb0], 1
  03df9d  jmp 0x3dfad
L3df9f:
  03df9f  cmp word ptr [0x12bf], 0x1c
  03dfa7  jl 0x3d14e
L3dfad:
  03dfad  call 0x3aebc
L3dfb2:
  03dfb2  ret 
  03dfb3  xchg ebx, ebx
  03dfb5  xchg ebx, ebx
  03dfb7  xchg ebx, ebx
  03dfb9  xchg ebx, ebx
  03dfbb  xchg ebx, ebx
  03dfbd  xchg ebx, ebx
  03dfbf  nop 
  03dfc0  add byte ptr [eax], al
  03dfc2  add byte ptr [eax], al
  03dfc4  add byte ptr [eax], al
  03dfc6  add byte ptr [eax], al
  03dfc8  xchg ebx, ebx
  03dfca  xchg ebx, ebx
  03dfcc  xchg ebx, ebx
  03dfce  xchg ebx, ebx
  03dfd0  pushfd 
  03dfd1  pushal 
  03dfd2  wait 
  03dfd3  fnsave dword ptr [0x3c38a]
  03dfd9  cmp byte ptr [0x496da], 3
  03dfe0  je 0x3dfee
  03dfe2  mov eax, 4
  03dfe7  call 0x25c4
  03dfec  jmp 0x3e025
L3dfee:
  03dfee  inc byte ptr [0x496d9]
  03dff4  cmp byte ptr [0x496d9], 7
  03dffb  jl 0x3e025
  03dffd  mov byte ptr [0x496d9], 0
  03e004  inc word ptr [0x12ca]
  03e00b  cmp word ptr [0x12ca], 0x40
  03e013  jl 0x3e025
  03e015  inc word ptr [0x12bf]
  03e01c  mov word ptr [0x12ca], 0
L3e025:
  03e025  inc dword ptr [0x469c]
  03e02b  inc dword ptr [0x46a4]
  03e031  cmp byte ptr [0x41d1], 1
  03e038  je 0x3e41b
  03e03e  mov edi, dword ptr [0x4698]
  03e044  cmp byte ptr [0x41b7], 1
  03e04b  jne 0x3e052
  03e04d  mov edi, 0x400
L3e052:
  03e052  mov ebp, dword ptr [0x4694]
  03e058  mov edx, 0x3c8
  03e05d  xor eax, eax
  03e05f  out dx, al
  03e060  inc edx
  03e061  mov esi, 0xfffffd00
  03e066  xchg ebx, ebx
L3e068:
  03e068  xor eax, eax
  03e06a  xor ebx, ebx
  03e06c  xor ecx, ecx
  03e06e  mov al, byte ptr [esi + 0x3baf0]
  03e074  mov bl, byte ptr [esi + 0x3bdf0]
  03e07a  mov cl, byte ptr [esi + 0x3c0f0]
  03e080  sub eax, ebx
  03e082  imul eax, edi
  03e085  sar eax, 0xa
  03e088  add eax, ebx
  03e08a  sub eax, ecx
  03e08c  imul eax, ebp
  03e08f  sar eax, 0xa
  03e092  add eax, ecx
  03e094  out dx, al
  03e095  inc esi
  03e096  jne 0x3e068
  03e098  cmp word ptr [0x12bf], 0x1b
  03e0a0  jl 0x3e0cd
  03e0a2  movzx eax, word ptr [0x12ca]
  03e0a9  and eax, 0x3f
  03e0ac  cmp eax, 0x20
  03e0af  jl 0x3e0cd
  03e0b1  sub dword ptr [0x4694], 0x10
  03e0b8  cmp dword ptr [0x4694], 0
  03e0bf  jg 0x3e0cb
  03e0c1  mov dword ptr [0x4694], 0
L3e0cb:
  03e0cb  jmp 0x3e0ea
L3e0cd:
  03e0cd  add dword ptr [0x4694], 0x10
  03e0d4  cmp dword ptr [0x4694], 0x3ff
  03e0de  jl 0x3e0ea
  03e0e0  mov dword ptr [0x4694], 0x3ff
L3e0ea:
  03e0ea  cmp dword ptr [0x3b7e0], 0
  03e0f1  jne 0x3e13b
  03e0f3  xor ebp, ebp
  03e0f5  mov dword ptr [0x3dfc4], ebp
  03e0fb  fild dword ptr [0x3dfc4]
  03e101  fmul qword ptr [0x178a0]
  03e107  mov dword ptr [0x3dfc0], 0x12c
  03e111  fild dword ptr [0x3dfc0]
  03e117  fdivp st(1)
  03e119  fadd qword ptr [0x178a0]
  03e11f  fld st(0)
  03e121  fadd qword ptr [0x17898]
  03e127  fstp qword ptr [0x17898]
  03e12d  fadd qword ptr [0x178c8]
  03e133  fstp qword ptr [0x178c8]
  03e139  jmp 0x3e14d
L3e13b:
  03e13b  fld qword ptr [0x178b0]
  03e141  fadd qword ptr [0x178b8]
  03e147  fstp qword ptr [0x178b0]
L3e14d:
  03e14d  fld qword ptr [0x4bb0]
  03e153  fadd qword ptr [0x4968]
  03e159  fstp qword ptr [0x4bb0]
  03e15f  mov dword ptr [0x48d8], 0xffffffff
  03e169  cmp byte ptr [0x419b], 1
  03e170  jne 0x3e17c
  03e172  mov dword ptr [0x48d8], 0
L3e17c:
  03e17c  cmp byte ptr [0x419c], 1
  03e183  jne 0x3e18f
  03e185  mov dword ptr [0x48d8], 1
L3e18f:
  03e18f  cmp byte ptr [0x419d], 1
  03e196  jne 0x3e1a2
  03e198  mov dword ptr [0x48d8], 2
L3e1a2:
  03e1a2  cmp byte ptr [0x419e], 1
  03e1a9  jne 0x3e1b5
  03e1ab  mov dword ptr [0x48d8], 3
L3e1b5:
  03e1b5  cmp byte ptr [0x419f], 1
  03e1bc  jne 0x3e1c8
  03e1be  mov dword ptr [0x48d8], 4
L3e1c8:
  03e1c8  mov dword ptr [0x48dc], 0xffffffff
  03e1d2  cmp byte ptr [0x41a8], 1
  03e1d9  jne 0x3e1e5
  03e1db  mov dword ptr [0x48dc], 0
L3e1e5:
  03e1e5  cmp byte ptr [0x41a9], 1
  03e1ec  jne 0x3e1f8
  03e1ee  mov dword ptr [0x48dc], 1
L3e1f8:
  03e1f8  cmp byte ptr [0x41aa], 1
  03e1ff  jne 0x3e20b
  03e201  mov dword ptr [0x48dc], 2
L3e20b:
  03e20b  cmp byte ptr [0x41ab], 1
  03e212  jne 0x3e21e
  03e214  mov dword ptr [0x48dc], 4
L3e21e:
  03e21e  cmp byte ptr [0x41ac], 1
  03e225  jne 0x3e231
  03e227  mov dword ptr [0x48dc], 8
L3e231:
  03e231  cmp byte ptr [0x41ad], 1
  03e238  jne 0x3e244
  03e23a  mov dword ptr [0x48dc], 0x10
L3e244:
  03e244  add dword ptr [0x46a8], 0x26c
  03e24e  add dword ptr [0x46ac], 0x230
  03e258  fld dword ptr [0x7f30]
  03e25e  fadd dword ptr [0x7f34]
  03e264  fstp dword ptr [0x7f30]
  03e26a  fld dword ptr [0x7f38]
  03e270  fadd dword ptr [0x7f3c]
  03e276  fstp dword ptr [0x7f38]
  03e27c  cmp byte ptr [0x41c4], 1
  03e283  jne 0x3e28f
  03e285  mov eax, 0x29d9a
  03e28a  mov dword ptr [0x4c00], eax
L3e28f:
  03e28f  cmp byte ptr [0x41c5], 1
  03e296  jne 0x3e2a2
  03e298  mov eax, 0x2a0f5
  03e29d  mov dword ptr [0x4c00], eax
L3e2a2:
  03e2a2  cmp byte ptr [0x41c6], 1
  03e2a9  jne 0x3e2b5
  03e2ab  mov eax, 0x2a30b
  03e2b0  mov dword ptr [0x4c00], eax
L3e2b5:
  03e2b5  cmp byte ptr [0x41b0], 1
  03e2bc  jne 0x3e2ce
  03e2be  fld1 
  03e2c0  fchs 
  03e2c2  fadd dword ptr [0x7fbc]
  03e2c8  fstp dword ptr [0x7fbc]
L3e2ce:
  03e2ce  cmp byte ptr [0x41be], 1
  03e2d5  jne 0x3e2e5
  03e2d7  fld1 
  03e2d9  fadd dword ptr [0x7fbc]
  03e2df  fstp dword ptr [0x7fbc]
L3e2e5:
  03e2e5  cmp byte ptr [0x41b1], 1
  03e2ec  jne 0x3e2fe
  03e2ee  fld1 
  03e2f0  fchs 
  03e2f2  fadd dword ptr [0x7fc0]
  03e2f8  fstp dword ptr [0x7fc0]
L3e2fe:
  03e2fe  cmp byte ptr [0x41bf], 1
  03e305  jne 0x3e315
  03e307  fld1 
  03e309  fadd dword ptr [0x7fc0]
  03e30f  fstp dword ptr [0x7fc0]
L3e315:
  03e315  cmp byte ptr [0x41b2], 1
  03e31c  jne 0x3e32e
  03e31e  fld1 
  03e320  fchs 
  03e322  fadd dword ptr [0x7fc4]
  03e328  fstp dword ptr [0x7fc4]
L3e32e:
  03e32e  cmp byte ptr [0x41c0], 1
  03e335  jne 0x3e345
  03e337  fld1 
  03e339  fadd dword ptr [0x7fc4]
  03e33f  fstp dword ptr [0x7fc4]
L3e345:
  03e345  cmp dword ptr [0x3c100], 0
  03e34c  jne 0x3e377
  03e34e  cmp dword ptr [0x3c0f0], 0
  03e355  jne 0x3e377
  03e357  cmp dword ptr [0x178a8], 0x410
  03e361  jl 0x3e377
  03e363  mov dword ptr [0x3c0f0], 1
  03e36d  mov dword ptr [0x3c100], 0
L3e377:
  03e377  cmp dword ptr [0x3c0f0], 0
  03e37e  je 0x3e3d5
  03e380  fld dword ptr [0x3c0f4]
  03e386  fadd dword ptr [0x3c0f8]
  03e38c  fstp dword ptr [0x3c0f4]
  03e392  inc dword ptr [0x3c100]
  03e398  fld1 
  03e39a  fstp dword ptr [0x3dfc0]
  03e3a0  mov eax, dword ptr [0x3c0f4]
  03e3a5  cmp eax, dword ptr [0x3dfc0]
  03e3ab  jb 0x3e3d5
  03e3ad  fldz 
  03e3af  fstp dword ptr [0x3c0f4]
  03e3b5  mov dword ptr [0x3c0f0], 0
  03e3bf  mov eax, dword ptr [0x3c104]
  03e3c4  mov ebx, dword ptr [0x4c00]
  03e3ca  mov dword ptr [0x4c00], eax
  03e3cf  mov dword ptr [0x3c104], ebx
L3e3d5:
  03e3d5  mov dword ptr [0x3dfc0], 0x1ff
  03e3df  fld dword ptr [0x3b7d4]
  03e3e5  fcos 
  03e3e7  fimul dword ptr [0x3dfc0]
  03e3ed  fiadd dword ptr [0x3dfc0]
  03e3f3  fistp dword ptr [0x4698]
  03e3f9  neg dword ptr [0x4698]
  03e3ff  add dword ptr [0x4698], 0x3ff
  03e409  fld dword ptr [0x3b7d4]
  03e40f  fadd dword ptr [0x3b7d8]
  03e415  fstp dword ptr [0x3b7d4]
L3e41b:
  03e41b  wait 
  03e41c  frstor dword ptr [0x3c38a]
  03e422  popal 
  03e423  popfd 
  03e424  ret 
  03e425  add byte ptr [eax], al
  03e427  add byte ptr [eax], al
  03e429  add byte ptr [eax], al
  03e42b  add byte ptr [eax], al
  03e42d  add byte ptr [eax], al
  03e42f  add byte ptr [eax], al
  03e431  add byte ptr [eax], al
  03e433  add byte ptr [eax], al
  03e435  add byte ptr [eax], al
  03e437  add dl, bh
  03e439  mov eax, 0x3e540
  03e43e  add eax, dword ptr [0x18]
  03e444  shl eax, 0xc
  03e447  shr ax, 0xc
  03e44b  mov edx, 0x19
  03e450  add dx, ax
  03e453  mov word ptr [0x3e54f], dx
  03e45a  xchg dword ptr gs:[0x20], eax
  03e460  mov dword ptr [0x3e430], eax
  03e465  xor bl, bl
  03e467  call dword ptr [0x24]
  03e46d  mov dword ptr [0x3e434], edx
  03e473  mov edx, 0x3e504
  03e478  call dword ptr [0x28]
  03e47e  mov al, 0x30
  03e480  out 0x43, al
  03e482  mov al, 0
  03e484  out 0x40, al
  03e486  mov al, 0x41
  03e488  out 0x40, al
  03e48a  sti 
  03e48b  ret 
L3e48c:
  03e48c  cli 
  03e48d  mov edx, dword ptr [0x3e430]
  03e493  mov dword ptr gs:[0x20], edx
  03e499  mov edx, dword ptr [0x3e434]
  03e49f  xor bl, bl
  03e4a1  call dword ptr [0x28]
  03e4a7  mov al, 0x36
  03e4a9  out 0x43, al
  03e4ab  xor al, al
  03e4ad  out 0x40, al
  03e4af  out 0x40, al
  03e4b1  sti 
  03e4b2  ret 
L3e4b3:
  03e4b3  cli 
  03e4b4  mov al, 0x30
  03e4b6  out 0x43, al
  03e4b8  mov dx, 0x3da
L3e4bc:
  03e4bc  in al, dx
  03e4bd  test al, 8
  03e4bf  jne 0x3e4bc
L3e4c1:
  03e4c1  in al, dx
  03e4c2  test al, 8
  03e4c4  je 0x3e4c1
  03e4c6  xor al, al
  03e4c8  out 0x40, al
  03e4ca  out 0x40, al
L3e4cc:
  03e4cc  in al, dx
  03e4cd  test al, 8
  03e4cf  jne 0x3e4cc
L3e4d1:
  03e4d1  in al, dx
  03e4d2  test al, 8
  03e4d4  je 0x3e4d1
  03e4d6  in al, 0x40
  03e4d8  mov ah, al
  03e4da  in al, 0x40
  03e4dc  xchg ah, al
  03e4de  neg ax
  03e4e1  sub ax, 0xc0
  03e4e5  mov word ptr [0x3e559], ax
  03e4eb  mov bx, ax
L3e4ee:
  03e4ee  in al, dx
  03e4ef  test al, 8
  03e4f1  je 0x3e4ee
L3e4f3:
  03e4f3  in al, dx
  03e4f4  test al, 8
  03e4f6  jne 0x3e4f3
  03e4f8  mov al, bl
  03e4fa  out 0x40, al
  03e4fc  mov al, bh
  03e4fe  out 0x40, al
  03e500  sti 
  03e501  ret 
  03e502  xchg ebx, ebx
  03e504  push eax
  03e505  push edx
  03e506  push ds
  03e507  mov ds, word ptr cs:[0x1e]
  03e50e  mov dx, 0x3da
  03e512  in al, dx
  03e513  and eax, 8
  03e516  dec eax
  03e517  neg eax
  03e519  add word ptr [0x3e559], ax
L3e520:
  03e520  in al, dx
  03e521  test al, 8
  03e523  je 0x3e520
  03e525  mov ax, word ptr [0x3e559]
  03e52b  out 0x40, al
  03e52d  mov al, ah
  03e52f  out 0x40, al
  03e531  call dword ptr [0x3ebc0]
  03e537  pop ds
  03e538  pop edx
  03e539  mov al, 0x20
  03e53b  out 0x20, al
  03e53d  pop eax
  03e53e  sti 
  03e53f  iretd 
  03e540  push eax
  03e541  push edx
  03e542  mov edx, 0x25ec03da
  03e547  or byte ptr [eax], al
  03e549  dec eax
  03e54a  neg eax
  03e54c  add dword ptr cs:[esi], eax
  03e54f  add byte ptr [eax], al
L3e551:
  03e551  in al, dx
  03e552  test al, 8
  03e554  je 0x3e551
  03e556  jmp 0x3e558
L3e558:
  03e558  mov eax, 0x40e64100
  03e55d  mov al, ah
  03e55f  out 0x40, al
  03e561  pop edx
  03e562  mov al, 0x20
  03e564  out 0x20, al
  03e566  pop eax
  03e567  iretd 
  03e568  outsb dx, byte ptr gs:[esi]
  03e56a  insb byte ptr es:[edi], dx
  03e56c  outsd dx, dword ptr [esi]
  03e56d  outsd dx, dword ptr [si]
  03e56f  jae 0x3e5d5
  03e572  js 0x3e574
L3e574:
  03e574  add byte ptr [eax], al
  03e576  insd dword ptr es:[edi], dx
  03e577  add byte ptr [eax], al
  03e579  add byte ptr [eax], al
  03e57b  add al, byte ptr [edx]
  03e57d  add al, byte ptr [esp + eax]
  03e580  add al, 6
  03e582  push es
  03e583  push es
  03e584  or byte ptr [eax], cl
  03e586  or byte ptr [edx], cl
  03e588  or cl, byte ptr [edx]
  03e58a  or al, 0xc
  03e58c  or al, 0xe
  03e58e  push cs
  03e58f  push cs
  03e590  adc byte ptr [eax], dl
  03e592  adc byte ptr [edx], dl
  03e594  adc dl, byte ptr [edx]
  03e596  adc al, 0x14
  03e598  adc al, 0x16
  03e59a  push ss
  03e59b  push ss
  03e59c  sbb byte ptr [eax], bl
  03e59e  sbb byte ptr [edx], bl
  03e5a0  sbb bl, byte ptr [edx]
  03e5a2  sbb al, 0x1c
  03e5a4  sbb al, 0x1e
  03e5a6  push ds
  03e5a7  push ds
  03e5a8  and dword ptr [ecx], esp
  03e5aa  and dword ptr [ebx], esp
  03e5ac  and esp, dword ptr [ebx]
  03e5ae  and eax, 0x27272525
  03e5b3  daa 
  03e5b4  sub dword ptr [ecx], ebp
  03e5b6  sub dword ptr [ebx], ebp
  03e5b8  sub ebp, dword ptr [ebx]
  03e5ba  sub eax, 0x2f2f2d2d
  03e5bf  das 
  03e5c0  xor dword ptr [ecx], esi
  03e5c2  xor dword ptr [ebx], esi
  03e5c4  xor esi, dword ptr [ebx]
  03e5c6  xor eax, 0x37373535
  03e5cb  aaa 
  03e5cc  cmp dword ptr [ecx], edi
  03e5ce  cmp dword ptr [eax], eax
  03e5d0  add byte ptr [eax], al
  03e5d2  add byte ptr [eax], al
  03e5d4  add byte ptr [eax], al
  03e5d6  add byte ptr [eax], al
  03e5d8  aas 
  03e5d9  add byte ptr [eax], al
  03e5db  cmp eax, dword ptr [eax]
  03e5dd  add byte ptr [eax], bh
  03e5df  add byte ptr [eax], al
  03e5e1  xor eax, 0x320000
  03e5e6  add byte ptr [edi], ch
  03e5e8  add byte ptr [eax], al
  03e5ea  sub al, 0
  03e5ec  add byte ptr [ecx], ch
  03e5ee  add byte ptr [eax], al
  03e5f0  add byte ptr es:[eax], al
  03e5f3  and al, byte ptr [eax]
  03e5f5  add byte ptr [edi], bl
  03e5f7  add byte ptr [eax], al
  03e5f9  sbb al, 0
  03e5fb  add byte ptr [ecx], bl
  03e5fd  add byte ptr [eax], al
  03e5ff  push ss
  03e600  add byte ptr [eax], al
  03e602  adc eax, dword ptr [eax]
  03e604  add byte ptr [eax], dl
  03e606  add byte ptr [eax], al
  03e608  aas 
  03e609  aas 
  03e60c  aas 
  03e60f  daa 
  03e610  daa 
  03e611  aas 
  03e612  pop ds
  03e613  pop ds
  03e614  aas 
  03e615  pop ss
  03e616  pop ss
  03e617  aas 
  03e618  adc byte ptr [eax], dl
  03e61a  aas 
  03e61b  or byte ptr [eax], cl
  03e61d  aas 
  03e61e  add byte ptr [eax], al
  03e620  aas 
  03e621  sub dl, byte ptr [edi]
  03e623  aas 
  03e624  adc byte ptr es:[edi], bh
  03e627  and cl, byte ptr [eax]
  03e629  aas 
  03e62a  push ds
  03e62b  add byte ptr [ecx], bh
  03e62d  sbb eax, dword ptr [eax]
  03e62f  xor ebx, dword ptr [eax]
  03e631  add byte ptr [0x13270015], ch
  03e637  add byte ptr [edi], bh
  03e639  aas 
  03e63a  aas 
  03e63c  aas 
  03e63d  aas 
  03e63f  aas 
  03e640  daa 
  03e641  aas 
  03e642  aas 
  03e643  pop ds
  03e644  aas 
  03e645  pop ss
  03e647  aas 
  03e648  cmp eax, 0x83d3f10
  03e64d  aas 
  03e64e  cmp eax, 0x363900
  03e653  xor esi, dword ptr [ecx]
  03e655  add byte ptr [0x2727002b], ch
  03e65b  add byte ptr [ecx], ah
  03e65d  and dword ptr [eax], eax
  03e65f  sbb al, 0x1b
  03e661  add byte ptr [esi], dl
  03e663  adc eax, 0x101000
  03e668  xor al, 0x3f
  03e66a  pop ss
  03e66b  xor dword ptr [edi], edi
  03e66d  adc byte ptr [0x3f28083f], ch
  03e673  add byte ptr [ecx + edi], ah
  03e676  add byte ptr [eax], ah
  03e678  xor eax, dword ptr [eax]
  03e67a  sbb eax, 0x2718002d
  03e67f  add byte ptr [esi], dh
  03e681  aas 
  03e682  das 
  03e684  aas 
  03e685  daa 
  03e687  aas 
  03e688  daa 
  03e689  and byte ptr [edi], bh
  03e68b  pop ds
  03e68c  sbb byte ptr [edi], bh
  03e68e  pop ss
  03e68f  adc byte ptr [edi], bh
  03e691  adc byte ptr [eax], cl
  03e693  aas 
  03e694  or byte ptr [eax], al
  03e696  aas 
  03e697  add byte ptr [eax], al
  03e699  aas 
  03e69a  add byte ptr [eax], al
  03e69c  cmp eax, dword ptr [eax]
  03e69e  add byte ptr [eax], bh
  03e6a0  add byte ptr [eax], al
  03e6a2  xor eax, 0x320100
  03e6a7  add dword ptr [edi], ebp
  03e6a9  add byte ptr [ecx], al
  03e6ab  sub al, 0
  03e6ad  add dword ptr [ecx], ebp
  03e6af  add byte ptr [ecx], al
  03e6b1  add byte ptr es:[ecx], al
  03e6b4  and al, byte ptr [eax]
  03e6b6  add dword ptr [edi], ebx
  03e6b8  add byte ptr [ecx], al
  03e6ba  sbb al, 0
  03e6bc  add dword ptr [ecx], ebx
  03e6be  add byte ptr [ecx], al
  03e6c0  push ss
  03e6c1  add byte ptr [ecx], al
  03e6c3  adc eax, dword ptr [eax]
  03e6c5  add dword ptr [eax], edx
  03e6c7  add byte ptr [esi], dh
  03e6c9  aas 
  03e6ca  aas 
  03e6cb  aas 
  03e6cd  aas 
  03e6ce  daa 
  03e6cf  aas 
  03e6d0  aas 
  03e6d1  pop ds
  03e6d2  aas 
  03e6d3  pop ss
  03e6d5  aas 
  03e6d6  aas 
  03e6d7  adc byte ptr [edi], bh
  03e6d9  aas 
  03e6da  or byte ptr [edi], bh
  03e6dc  aas 
  03e6dd  add byte ptr [edi], bh
  03e6df  aas 
  03e6e0  add byte ptr [ecx], bh
  03e6e2  cmp dword ptr [eax], eax
  03e6e4  xor esi, dword ptr [ebx]
  03e6e6  add byte ptr [0x2727002d], ch
  03e6ec  add byte ptr [ecx], ah
  03e6ee  and dword ptr [eax], eax
  03e6f0  sbb al, 0x1c
  03e6f2  add byte ptr [esi], dl
  03e6f4  push ss
  03e6f5  add byte ptr [eax], dl
  03e6f7  adc byte ptr [edi], dl
  03e6f9  das 
  03e6fa  aas 
  03e6fb  adc byte ptr [edi + edi], ch
  03e6fe  or byte ptr [edx], ch
  03e700  aas 
  03e701  add byte ptr [edi], ah
  03e703  aas 
  03e704  add byte ptr [ebx], ah
  03e706  cmp dword ptr [eax], eax
  03e708  pop ds
  03e709  xor eax, dword ptr [eax]
  03e70b  sbb ebp, dword ptr [0x36271700]
  03e711  aas 
  03e713  das 
  03e715  aas 
  03e716  daa 
  03e717  daa 
  03e718  aas 
  03e719  pop ds
  03e71a  and byte ptr [edi], bh
  03e71c  pop ss
  03e71d  sbb byte ptr [edi], bh
  03e71f  adc byte ptr [eax], dl
  03e721  aas 
  03e722  or byte ptr [ecx], cl
  03e724  aas 
  03e725  add byte ptr [ecx], al
  03e727  aas 
  03e728  add byte ptr [eax], al
  03e72a  aas 
  03e72b  add byte ptr [eax], al
  03e72d  cmp eax, dword ptr [eax]
  03e72f  add byte ptr [eax], bh
  03e731  add byte ptr [eax], al
  03e733  xor eax, 0x320000
  03e738  add byte ptr [edi], ch
  03e73a  add byte ptr [eax], al
  03e73c  sub al, 0
  03e73e  add byte ptr [ecx], ch
  03e740  add byte ptr [eax], al
  03e742  add byte ptr es:[eax], al
  03e745  and al, byte ptr [eax]
  03e747  add byte ptr [edi], bl
  03e749  add byte ptr [eax], al
  03e74b  sbb al, 0
  03e74d  add byte ptr [ecx], bl
  03e74f  add byte ptr [eax], al
  03e751  push ss
  03e752  add byte ptr [eax], al
  03e754  adc eax, dword ptr [eax]
  03e756  add byte ptr [eax], dl
  03e758  cmp al, 0x36
  03e75a  aas 
  03e75b  cmp dword ptr [esi], ebp
  03e75d  aas 
  03e75e  daa 
  03e760  aas 
  03e761  xor al, 0x1f
  03e763  aas 
  03e764  xor dl, byte ptr [edi]
  03e766  aas 
  03e767  das 
  03e768  adc byte ptr [edi], bh
  03e76a  sub eax, 0x2a3f08
  03e76f  aas 
  03e770  add byte ptr es:[ecx], bh
  03e773  and byte ptr [eax], al
  03e775  xor ebx, dword ptr [0x182d00]
  03e77b  daa 
  03e77c  adc al, 0
  03e77e  and dword ptr [ecx], edx
  03e780  add byte ptr [ecx + 0xa1600], bl
  03e787  adc byte ptr [edi], bh
  03e789  aas 
  03e78b  aas 
  03e78c  aas 
  03e78e  aas 
  03e78f  daa 
  03e790  aas 
  03e791  aas 
  03e792  pop ds
  03e793  aas 
  03e794  aas 
  03e795  pop ss
  03e796  aas 
  03e797  aas 
  03e798  adc byte ptr [edi], bh
  03e79a  aas 
  03e79b  or byte ptr [edi], bh
  03e79d  aas 
  03e79e  add byte ptr [edi], bh
  03e7a0  cmp byte ptr [eax], al
  03e7a2  cmp dword ptr [edx], esi
  03e7a4  add byte ptr [ebx], dh
  03e7a6  sub eax, 0x272d00
  03e7ab  daa 
  03e7ac  and dword ptr [eax], eax
  03e7ae  and dword ptr [ebx], ebx
  03e7b0  add byte ptr [esi + edx], bl
  03e7b3  add byte ptr [esi], dl
  03e7b5  adc byte ptr [eax], al
  03e7b7  adc byte ptr [edi], bh
  03e7b9  cmp dh, byte ptr [edi]
  03e7bb  aas 
  03e7bc  cmp byte ptr [edi + edi], dh
  03e7bf  xor dword ptr ss:[edi], edi
  03e7c2  xor eax, 0x2c333f2f
  03e7c7  aas 
  03e7c8  xor dword ptr [ecx], ebp
  03e7ca  aas 
  03e7cb  das 
  03e7cc  daa 
  03e7cd  aas 
  03e7ce  and al, 0x3f
  03e7d1  sub al, 0x20
  03e7d3  aas 
  03e7d4  sub dword ptr [edi + edi], ebx
  03e7d7  daa 
  03e7d8  sbb byte ptr [0x16233a17], bh
  03e7df  aaa 
  03e7e0  and dl, byte ptr [0x32142034]
  03e7e6  pop ds
  03e7e7  adc ebp, dword ptr [edi]
  03e7e9  push ds
  03e7ea  adc ch, byte ptr [0x1a2a111c]
  03e7f0  adc byte ptr [eax], ch
  03e7f2  sbb dword ptr [edi], ecx
  03e7f4  daa 
  03e7f5  sbb byte ptr [esi], cl
  03e7f7  and al, 0x17
  03e7f9  or eax, 0x200c1622
  03e7fe  adc al, 0xb
  03e800  sbb eax, 0x121b0a13
  03e805  or dword ptr [edi], edx
  03e807  adc byte ptr [eax], cl
  03e809  adc eax, 0xe12070f
  03e80e  push es
  03e80f  adc byte ptr [esi + eax], cl
  03e812  push cs
  03e813  or eax, dword ptr [0x3080a]
  03e819  add byte ptr [eax], al
  03e81b  add byte ptr [eax], al
  03e81d  add byte ptr [eax], al
  03e81f  add byte ptr [eax], al
  03e821  add byte ptr [eax], al
  03e823  add byte ptr [eax], al
  03e825  add byte ptr [eax], al
  03e827  add byte ptr [eax], al
  03e829  add byte ptr [eax], al
  03e82b  add byte ptr [eax], al
  03e82d  add byte ptr [eax], al
  03e82f  add byte ptr [ecx], dh
  03e831  or cl, byte ptr [edx]
  03e833  xor dword ptr [ebx], edx
  03e835  or dh, byte ptr [ecx]
  03e837  sbb eax, 0xa27310a
  03e83c  xor dword ptr [ecx], esi
  03e83e  or ah, byte ptr [edi]
  03e840  xor dword ptr [edx], ecx
  03e842  sbb eax, 0x31130a31
  03e847  or cl, byte ptr [edx]
  03e849  xor dword ptr [edx + ecx], ecx
  03e84c  xor dword ptr [edi], edx
  03e84e  or dh, byte ptr [ecx]
  03e850  and cl, byte ptr [edx]
  03e852  xor dword ptr [0xa312a0a], ebp
  03e858  pop ds
  03e859  xor dword ptr [edx], ecx
  03e85b  adc al, 0x31
  03e85d  or ecx, dword ptr [edx]
  03e85f  xor dword ptr [esi], edx
  03e861  or dh, byte ptr [ecx]
  03e863  and dword ptr [edx], ecx
  03e865  xor dword ptr [edx + ecx], ebp
  03e868  xor dword ptr [ecx], esi
  03e86a  or ch, byte ptr [ebx]
  03e86c  xor dword ptr [edx], ecx
  03e86e  and byte ptr [ecx], dh
  03e870  or dl, byte ptr [0x3f0a0a31]
  03e876  aas 
  03e877  aas 
  03e878  imul ebp, dword ptr [edi + 0x6f], 0x73
  03e87c  outsd dx, dword ptr [esi]
  03e87d  jae 0x3e8e3
  03e880  js 0x3e882
L3e882:
  03e882  imul esp, dword ptr [ecx + 0x6c], 0x61
  03e886  insd dword ptr es:[edi], dx
  03e887  popal 
  03e888  jae 0x3e8b8
  03e88a  jb 0x3e88d
L3e88d:
  03e88d  imul esp, dword ptr [ecx + 0x6c], 0x61
  03e891  insb byte ptr es:[edi], dx
  03e892  popal 
  03e893  jae 0x3e8c3
  03e895  jb 0x3e898
L3e898:
  03e898  jne 0x3e905
  03e89a  imul ebp, dword ptr [edi + 0x2e], 0x61
  03e89e  outsb dx, byte ptr [esi]
  03e89f  add byte ptr [edx + 0x61], dh
  03e8a2  je 0x3e905
  03e8a4  jbe 0x3e90b
  03e8a6  imul ebp, dword ptr [esi], 0x6a
  03e8a9  jne 0x3e920
  03e8ab  add byte ptr [ebx + 0x30], dh
  03e8ae  aaa 
  03e8af  jae 0x3e915
  03e8b2  js 0x3e8b4
L3e8b4:
  03e8b4  add byte ptr [eax], al
  03e8b6  insb byte ptr es:[edi], dx
  03e8b7  add byte ptr [eax], al
  03e8b9  add byte ptr [eax], al
  03e8bb  add al, byte ptr [edx]
  03e8bd  add al, byte ptr [esp + eax]
  03e8c0  add al, 0x12
  03e8c2  adc dl, byte ptr [edx]
  03e8c4  daa 
  03e8c5  daa 
  03e8c6  daa 
  03e8c7  xor eax, 0x3b3b3535
  03e8cc  cmp ebx, dword ptr [eax]
  03e8ce  push ss
  03e8cf  push ss
  03e8d0  adc byte ptr [esi], cl
  03e8d2  push cs
  03e8d3  push ss
  03e8d4  push cs
  03e8d5  push cs
  03e8d6  xor ebx, dword ptr [edx + ebx]
  03e8d9  sbb al, 0x10
  03e8db  push cs
  03e8dc  push ss
  03e8dd  or al, 0xa
  03e8df  sub eax, 0x1c2f1216
  03e8e4  sbb byte ptr [0x14271418], ch
  03e8ea  adc byte ptr [0x141c0e12], ah
  03e8f0  adc ah, byte ptr [ecx]
  03e8f2  adc byte ptr [esp + ebx], cl
  03e8f5  push cs
  03e8f6  or ch, byte ptr [ebx]
  03e8f8  sbb dl, byte ptr [ecx + edi]
  03e8fb  and eax, 0x141c2f1c
  03e900  and ebx, dword ptr [edx]
  03e902  push ss
  03e903  adc cl, byte ptr [edx]
L3e905:
  03e905  push es
  03e906  sub dword ptr [edx], ebx
  03e908  adc ah, byte ptr [0x2329141a]
  03e90e  push ds
  03e90f  push ds
  03e910  sbb byte ptr [ecx + esi], dl
  03e913  and eax, 0x18232f1a
  03e918  and eax, 0x2b351c21
  03e91d  and dword ptr [ecx], ebp
  03e91f  and dword ptr [eax], ebx
  03e921  xor dword ptr [edi], esp
  03e923  sbb al, 0xa
  03e925  or byte ptr [esi], al
  03e927  xor ebp, dword ptr [edi]
  03e929  sub dword ptr [0x35391c2b], esi
  03e92f  das 
  03e930  cmp dword ptr [ecx], esi
  03e932  and eax, 0x33252b2f
  03e937  das 
  03e938  daa 
  03e939  cmp dword ptr [ecx], esi
  03e93b  and dword ptr [ecx], edi
  03e93d  xor eax, 0x353b3b29
  03e942  das 
  03e943  xor esi, dword ptr [edi]
  03e945  sub dword ptr [edi], ebp
  03e947  xor eax, 0x332f2925
  03e94c  xor eax, 0x27211e39
  03e951  sub eax, 0x2b29352f
  03e956  xor dword ptr [ebx], esp
  03e958  and eax, 0x3533332d
  03e95d  sub eax, 0x23232f2d
  03e962  sub dword ptr [esp + ebx], ebx
  03e965  and eax, 0x16181212
  03e96a  push ss
  03e96b  push ds
  03e96c  xor dword ptr [edi], ebp
  03e96e  xor dword ptr [esi], ebx
  03e970  sbb al, 0x1e
  03e972  or al, 0xa
  03e974  or al, 0x3f
  03e976  aas 
  03e977  aas 
  03e978  aas 
  03e979  add byte ptr [eax], al
  03e97b  aas 
  03e97c  add byte ptr [eax], al
  03e97e  aas 
  03e97f  add byte ptr [eax], al
  03e981  aas 
  03e982  add byte ptr [eax], al
  03e984  aas 
  03e985  add byte ptr [eax], al
  03e987  aas 
  03e988  add byte ptr [eax], al
  03e98a  aas 
  03e98b  add byte ptr [eax], al
  03e98d  aas 
  03e98e  add byte ptr [eax], al
  03e990  aas 
  03e991  add byte ptr [eax], al
  03e993  aas 
  03e994  add byte ptr [eax], al
  03e996  aas 
  03e997  add byte ptr [eax], al
  03e999  aas 
  03e99a  add byte ptr [eax], al
  03e99c  aas 
  03e99d  add byte ptr [eax], al
  03e99f  aas 
  03e9a0  add byte ptr [eax], al
  03e9a2  aas 
  03e9a3  add byte ptr [eax], al
  03e9a5  aas 
  03e9a6  add byte ptr [eax], al
  03e9a8  aas 
  03e9a9  add byte ptr [eax], al
  03e9ab  aas 
  03e9ac  add byte ptr [eax], al
  03e9ae  aas 
  03e9af  add byte ptr [eax], al
  03e9b1  aas 
  03e9b2  add byte ptr [eax], al
  03e9b4  aas 
  03e9b5  add byte ptr [eax], al
  03e9b7  aas 
  03e9b8  add byte ptr [eax], al
  03e9ba  aas 
  03e9bb  add byte ptr [eax], al
  03e9bd  aas 
  03e9be  add byte ptr [eax], al
  03e9c0  aas 
  03e9c1  add byte ptr [eax], al
  03e9c3  aas 
  03e9c4  add byte ptr [eax], al
  03e9c6  aas 
  03e9c7  add byte ptr [eax], al
  03e9c9  aas 
  03e9ca  add byte ptr [eax], al
  03e9cc  aas 
  03e9cd  add byte ptr [eax], al
  03e9cf  aas 
  03e9d0  add byte ptr [eax], al
  03e9d2  aas 
  03e9d3  add byte ptr [eax], al
  03e9d5  aas 
  03e9d6  add byte ptr [eax], al
  03e9d8  aas 
  03e9d9  add byte ptr [eax], al
  03e9db  aas 
  03e9dc  add byte ptr [eax], al
  03e9de  aas 
  03e9df  add byte ptr [eax], al
  03e9e1  aas 
  03e9e2  add byte ptr [eax], al
  03e9e4  aas 
  03e9e5  add byte ptr [eax], al
  03e9e7  aas 
  03e9e8  add byte ptr [eax], al
  03e9ea  aas 
  03e9eb  add byte ptr [eax], al
  03e9ed  aas 
  03e9ee  add byte ptr [eax], al
  03e9f0  aas 
  03e9f1  add byte ptr [eax], al
  03e9f3  aas 
  03e9f4  add byte ptr [eax], al
  03e9f6  aas 
  03e9f7  add byte ptr [eax], al
  03e9f9  aas 
  03e9fa  add byte ptr [eax], al
  03e9fc  aas 
  03e9fd  add byte ptr [eax], al
  03e9ff  aas 
  03ea00  add byte ptr [eax], al
  03ea02  aas 
  03ea03  add byte ptr [eax], al
  03ea05  aas 
  03ea06  add byte ptr [eax], al
  03ea08  aas 
  03ea09  add byte ptr [eax], al
  03ea0b  aas 
  03ea0c  add byte ptr [eax], al
  03ea0e  aas 
  03ea0f  add byte ptr [eax], al
  03ea11  aas 
  03ea12  add byte ptr [eax], al
  03ea14  aas 
  03ea15  add byte ptr [eax], al
  03ea17  aas 
  03ea18  add byte ptr [eax], al
  03ea1a  aas 
  03ea1b  add byte ptr [eax], al
  03ea1d  aas 
  03ea1e  add byte ptr [eax], al
  03ea20  aas 
  03ea21  add byte ptr [eax], al
  03ea23  aas 
  03ea24  add byte ptr [eax], al
  03ea26  aas 
  03ea27  add byte ptr [eax], al
  03ea29  aas 
  03ea2a  add byte ptr [eax], al
  03ea2c  aas 
  03ea2d  add byte ptr [eax], al
  03ea2f  aas 
  03ea30  add byte ptr [eax], al
  03ea32  aas 
  03ea33  add byte ptr [eax], al
  03ea35  aas 
  03ea36  add byte ptr [eax], al
  03ea38  aas 
  03ea39  add byte ptr [eax], al
  03ea3b  aas 
  03ea3c  add byte ptr [eax], al
  03ea3e  aas 
  03ea3f  add byte ptr [eax], al
  03ea41  aas 
  03ea42  add byte ptr [eax], al
  03ea44  aas 
  03ea45  add byte ptr [eax], al
  03ea47  aas 
  03ea48  add byte ptr [eax], al
  03ea4a  aas 
  03ea4b  add byte ptr [eax], al
  03ea4d  aas 
  03ea4e  add byte ptr [eax], al
  03ea50  aas 
  03ea51  add byte ptr [eax], al
  03ea53  aas 
  03ea54  add byte ptr [eax], al
  03ea56  aas 
  03ea57  add byte ptr [eax], al
  03ea59  aas 
  03ea5a  add byte ptr [eax], al
  03ea5c  aas 
  03ea5d  add byte ptr [eax], al
  03ea5f  aas 
  03ea60  add byte ptr [eax], al
  03ea62  aas 
  03ea63  add byte ptr [eax], al
  03ea65  aas 
  03ea66  add byte ptr [eax], al
  03ea68  aas 
  03ea69  add byte ptr [eax], al
  03ea6b  aas 
  03ea6c  add byte ptr [eax], al
  03ea6e  aas 
  03ea6f  add byte ptr [eax], al
  03ea71  aas 
  03ea72  add byte ptr [eax], al
  03ea74  aas 
  03ea75  add byte ptr [eax], al
  03ea77  aas 
  03ea78  add byte ptr [eax], al
  03ea7a  aas 
  03ea7b  add byte ptr [eax], al
  03ea7d  aas 
  03ea7e  add byte ptr [eax], al
  03ea80  aas 
  03ea81  add byte ptr [eax], al
  03ea83  aas 
  03ea84  add byte ptr [eax], al
  03ea86  aas 
  03ea87  add byte ptr [eax], al
  03ea89  aas 
  03ea8a  add byte ptr [eax], al
  03ea8c  aas 
  03ea8d  add byte ptr [eax], al
  03ea8f  aas 
  03ea90  add byte ptr [eax], al
  03ea92  aas 
  03ea93  add byte ptr [eax], al
  03ea95  aas 
  03ea96  add byte ptr [eax], al
  03ea98  aas 
  03ea99  add byte ptr [eax], al
  03ea9b  aas 
  03ea9c  add byte ptr [eax], al
  03ea9e  aas 
  03ea9f  add byte ptr [eax], al
  03eaa1  aas 
  03eaa2  add byte ptr [eax], al
  03eaa4  aas 
  03eaa5  add byte ptr [eax], al
  03eaa7  aas 
  03eaa8  add byte ptr [eax], al
  03eaaa  aas 
  03eaab  add byte ptr [eax], al
  03eaad  aas 
  03eaae  add byte ptr [eax], al
  03eab0  aas 
  03eab1  add byte ptr [eax], al
  03eab3  aas 
  03eab4  add byte ptr [eax], al
  03eab6  aas 
  03eab7  add byte ptr [eax], al
  03eab9  aas 
  03eaba  add byte ptr [eax], al
  03eabc  aas 
  03eabd  add byte ptr [eax], al
  03eabf  aas 
  03eac0  add byte ptr [eax], al
  03eac2  aas 
  03eac3  add byte ptr [eax], al
  03eac5  aas 
  03eac6  add byte ptr [eax], al
  03eac8  aas 
  03eac9  add byte ptr [eax], al
  03eacb  aas 
  03eacc  add byte ptr [eax], al
  03eace  aas 
  03eacf  add byte ptr [eax], al
  03ead1  aas 
  03ead2  add byte ptr [eax], al
  03ead4  aas 
  03ead5  add byte ptr [eax], al
  03ead7  aas 
  03ead8  add byte ptr [eax], al
  03eada  aas 
  03eadb  add byte ptr [eax], al
  03eadd  aas 
  03eade  add byte ptr [eax], al
  03eae0  aas 
  03eae1  add byte ptr [eax], al
  03eae3  aas 
  03eae4  add byte ptr [eax], al
  03eae6  aas 
  03eae7  add byte ptr [eax], al
  03eae9  aas 
  03eaea  add byte ptr [eax], al
  03eaec  aas 
  03eaed  add byte ptr [eax], al
  03eaef  aas 
  03eaf0  add byte ptr [eax], al
  03eaf2  aas 
  03eaf3  add byte ptr [eax], al
  03eaf5  aas 
  03eaf6  add byte ptr [eax], al
  03eaf8  aas 
  03eaf9  add byte ptr [eax], al
  03eafb  aas 
  03eafc  add byte ptr [eax], al
  03eafe  aas 
  03eaff  add byte ptr [eax], al
  03eb01  aas 
  03eb02  add byte ptr [eax], al
  03eb04  aas 
  03eb05  add byte ptr [eax], al
  03eb07  aas 
  03eb08  add byte ptr [eax], al
  03eb0a  aas 
  03eb0b  add byte ptr [eax], al
  03eb0d  aas 
  03eb0e  add byte ptr [eax], al
  03eb10  aas 
  03eb11  add byte ptr [eax], al
  03eb13  aas 
  03eb14  add byte ptr [eax], al
  03eb16  aas 
  03eb17  add byte ptr [eax], al
  03eb19  aas 
  03eb1a  add byte ptr [eax], al
  03eb1c  aas 
  03eb1d  add byte ptr [eax], al
  03eb1f  aas 
  03eb20  add byte ptr [eax], al
  03eb22  aas 
  03eb23  add byte ptr [eax], al
  03eb25  aas 
  03eb26  add byte ptr [eax], al
  03eb28  aas 
  03eb29  add byte ptr [eax], al
  03eb2b  aas 
  03eb2c  add byte ptr [eax], al
  03eb2e  aas 
  03eb2f  add byte ptr [eax], al
  03eb31  aas 
  03eb32  add byte ptr [eax], al
  03eb34  aas 
  03eb35  add byte ptr [eax], al
  03eb37  aas 
  03eb38  add byte ptr [eax], al
  03eb3a  aas 
  03eb3b  add byte ptr [eax], al
  03eb3d  aas 
  03eb3e  add byte ptr [eax], al
  03eb40  aas 
  03eb41  add byte ptr [eax], al
  03eb43  aas 
  03eb44  add byte ptr [eax], al
  03eb46  aas 
  03eb47  add byte ptr [eax], al
  03eb49  aas 
  03eb4a  add byte ptr [eax], al
  03eb4c  aas 
  03eb4d  add byte ptr [eax], al
  03eb4f  aas 
  03eb50  add byte ptr [eax], al
  03eb52  aas 
  03eb53  add byte ptr [eax], al
  03eb55  aas 
  03eb56  add byte ptr [eax], al
  03eb58  aas 
  03eb59  add byte ptr [eax], al
  03eb5b  aas 
  03eb5c  add byte ptr [eax], al
  03eb5e  aas 
  03eb5f  add byte ptr [eax], al
  03eb61  aas 
  03eb62  add byte ptr [eax], al
  03eb64  aas 
  03eb65  add byte ptr [eax], al
  03eb67  aas 
  03eb68  add byte ptr [eax], al
  03eb6a  aas 
  03eb6b  add byte ptr [eax], al
  03eb6d  aas 
  03eb6e  add byte ptr [eax], al
  03eb70  aas 
  03eb71  add byte ptr [eax], al
  03eb73  aas 
  03eb74  add byte ptr [eax], al
  03eb76  aas 
  03eb77  add byte ptr [eax], al
  03eb79  aas 
  03eb7a  add byte ptr [eax], al
  03eb7c  aas 
  03eb7d  add byte ptr [eax], al
  03eb7f  aas 
  03eb80  add byte ptr [eax], al
  03eb82  aas 
  03eb83  add byte ptr [eax], al
  03eb85  aas 
  03eb86  add byte ptr [eax], al
  03eb88  aas 
  03eb89  add byte ptr [eax], al
  03eb8b  aas 
  03eb8c  add byte ptr [eax], al
  03eb8e  aas 
  03eb8f  add byte ptr [eax], al
  03eb91  aas 
  03eb92  add byte ptr [eax], al
  03eb94  aas 
  03eb95  add byte ptr [eax], al
  03eb97  aas 
  03eb98  add byte ptr [eax], al
  03eb9a  aas 
  03eb9b  add byte ptr [eax], al
  03eb9d  aas 
  03eb9e  add byte ptr [eax], al
  03eba0  aas 
  03eba1  add byte ptr [eax], al
  03eba3  aas 
  03eba4  add byte ptr [eax], al
  03eba6  aas 
  03eba7  add byte ptr [eax], al
  03eba9  aas 
  03ebaa  add byte ptr [eax], al
  03ebac  aas 
  03ebad  add byte ptr [eax], al
  03ebaf  aas 
  03ebb0  add byte ptr [eax], al
  03ebb2  aas 
  03ebb3  add byte ptr [eax], al
  03ebb5  aas 
  03ebb6  add byte ptr [eax], al
  03ebb8  xchg ebx, ebx
  03ebba  xchg ebx, ebx
  03ebbc  xchg ebx, ebx
  03ebbe  xchg ebx, ebx
  03ebc0  mov al, byte ptr [0xfe000421]
  03ebc5  add eax, dword ptr [eax]
  03ebc7  add ah, dh
  03ebc9  add eax, dword ptr [eax]
  03ebcb  add bh, dl
  03ebcd  add eax, dword ptr [eax]
  03ebcf  add byte ptr [eax + 0x68000003], ch
  03ebd5  add eax, dword ptr [eax]
  03ebd7  add byte ptr [ebx], bl
  03ebd9  add eax, dword ptr [eax]
  03ebdb  add bl, al
  03ebdd  add al, byte ptr [eax]
  03ebdf  add byte ptr [ebx + 2], ah
  03ebe2  add byte ptr [eax], al
  03ebe4  inc dword ptr [ecx]
  03ebe6  add byte ptr [eax], al
  03ebe8  wait 
  03ebe9  add dword ptr [eax], eax
  03ebeb  add byte ptr [ebx], bh
  03ebed  add dword ptr [eax], eax
  03ebef  add bl, ah
  03ebf1  add byte ptr [eax], al
  03ebf3  add byte ptr [esi + 0x56000000], dl
  03ebf9  add byte ptr [eax], al
  03ebfb  add byte ptr [edi], ah
  03ebfd  add byte ptr [eax], al
  03ebff  add byte ptr [edx], cl
  03ec01  add byte ptr [eax], al
  03ec03  add byte ptr [eax], al
  03ec05  add byte ptr [eax], al
  03ec07  add byte ptr [eax], al
  03ec09  add byte ptr [eax], al
  03ec0b  add byte ptr [ecx], al
  03ec0d  add byte ptr [eax], al
  03ec0f  add byte ptr [edx], al
  03ec11  add byte ptr [eax], al
  03ec13  add byte ptr [ebx], al
  03ec15  add byte ptr [eax], al
  03ec17  add byte ptr [0x7000000], al
  03ec1d  add byte ptr [eax], al
  03ec1f  add byte ptr [edx], cl
  03ec21  add byte ptr [eax], al
  03ec23  add byte ptr [0x10000000], cl
  03ec29  add byte ptr [eax], al
  03ec2b  add byte ptr [eax + eax], dl
  03ec2e  add byte ptr [eax], al
  03ec30  sbb byte ptr [eax], al
  03ec32  add byte ptr [eax], al
  03ec34  sbb eax, 0x22000000
  03ec39  add byte ptr [eax], al
  03ec3b  add byte ptr [edi], ah
  03ec3d  add byte ptr [eax], al
  03ec3f  add byte ptr [0x33000000], ch
  03ec45  add byte ptr [eax], al
  03ec47  add byte ptr [ecx], bh
  03ec49  add byte ptr [eax], al
  03ec4b  add byte ptr [eax], al
  03ec4e  add byte ptr [eax], al
  03ec50  inc edi
  03ec51  add byte ptr [eax], al
  03ec53  add byte ptr [esi], cl
  03ec56  add byte ptr [eax], al
  03ec58  push esi
  03ec59  add byte ptr [eax], al
  03ec5b  add byte ptr [esi], bl
  03ec5e  add byte ptr [eax], al
  03ec60  add byte ptr [bx + si], al
  03ec63  add byte ptr [edi], ch
  03ec66  add byte ptr [eax], al
  03ec68  jns 0x3ec6a
L3ec6a:
  03ec6a  add byte ptr [eax], al
  03ec6c  add byte ptr [eax], 0
  03ec6f  add byte ptr [eax + eax + 0x960000], cl
  03ec76  add byte ptr [eax], al
  03ec78  mov al, byte ptr [0xaa000000]
  03ec7d  add byte ptr [eax], al
  03ec7f  add byte ptr [ebp - 0x40000000], dh
  03ec85  add byte ptr [eax], al
  03ec87  add ah, cl
  03ec89  add byte ptr [eax], al
  03ec8b  add bh, dl
  03ec8d  add byte ptr [eax], al
  03ec8f  add bl, ah
  03ec91  add byte ptr [eax], al
  03ec93  add bh, ch
  03ec95  add byte ptr [eax], al
  03ec97  add bl, bh
  03ec99  add byte ptr [eax], al
  03ec9b  add byte ptr [eax], cl
  03ec9d  add dword ptr [eax], eax
  03ec9f  add byte ptr [ecx + eax], dl
  03eca2  add byte ptr [eax], al
  03eca4  and dword ptr [ecx], eax
  03eca6  add byte ptr [eax], al
  03eca8  add dword ptr cs:[eax], eax
  03ecab  add byte ptr [ebx], bh
  03ecad  add dword ptr [eax], eax
  03ecaf  add byte ptr [ecx + 1], cl
  03ecb2  add byte ptr [eax], al
  03ecb4  push esi
  03ecb5  add dword ptr [eax], eax
  03ecb7  add byte ptr [ecx + eax], ah
  03ecbb  add byte ptr [edx + 1], dh
  03ecbe  add byte ptr [eax], al
  03ecc0  jg 0x3ecc3
  03ecc2  add byte ptr [eax], al
  03ecc4  lea eax, [ecx]
  03ecc6  add byte ptr [eax], al
  03ecc8  wait 
  03ecc9  add dword ptr [eax], eax
  03eccb  add byte ptr [ecx - 0x47ffffff], ch
  03ecd1  add dword ptr [eax], eax
  03ecd3  add dh, al
  03ecd5  add dword ptr [eax], eax
  03ecd7  add ah, dl
  03ecd9  add dword ptr [eax], eax
  03ecdb  add dl, ah
  03ecdd  add dword ptr [eax], eax
  03ecdf  add cl, dh
  03ece1  add dword ptr [eax], eax
  03ece3  add bh, bh
  03ece5  add dword ptr [eax], eax
  03ece7  add byte ptr [0x1c000002], cl
  03eced  add al, byte ptr [eax]
  03ecef  add byte ptr [edx], ch
  03ecf1  add al, byte ptr [eax]
  03ecf3  add byte ptr [eax], bh
  03ecf5  add al, byte ptr [eax]
  03ecf7  add byte ptr [esi + 2], al
  03ecfa  add byte ptr [eax], al
  03ecfc  push ebp
  03ecfd  add al, byte ptr [eax]
  03ecff  add byte ptr [ebx + 2], ah
  03ed02  add byte ptr [eax], al
  03ed04  jno 0x3ed08
  03ed06  add byte ptr [eax], al
L3ed08:
  03ed08  jg 0x3ed0c
  03ed0a  add byte ptr [eax], al
L3ed0c:
  03ed0c  mov word ptr [edx], es
  03ed0e  add byte ptr [eax], al
  03ed10  lcall 2, 0xa8000002
  03ed17  add byte ptr [ebp - 0x3cfffffe], dh
  03ed1d  add al, byte ptr [eax]
  03ed1f  add al, dl
  03ed21  add al, byte ptr [eax]
  03ed23  add ch, bl
  03ed25  add al, byte ptr [eax]
  03ed27  add dl, ch
  03ed29  add al, byte ptr [eax]
  03ed2b  add dh, dh
  03ed2d  add al, byte ptr [eax]
  03ed2f  add byte ptr [ebx], al
  03ed31  add eax, dword ptr [eax]
  03ed33  add byte ptr [edi], cl
  03ed35  add eax, dword ptr [eax]
  03ed37  add byte ptr [ebx], bl
  03ed39  add eax, dword ptr [eax]
  03ed3b  add byte ptr [edi], ah
  03ed3d  add eax, dword ptr [eax]
  03ed3f  add byte ptr [edx], dh
  03ed41  add eax, dword ptr [eax]
  03ed43  add byte ptr [esi], bh
  03ed45  add eax, dword ptr [eax]
  03ed47  add byte ptr [ecx + 3], cl
  03ed4a  add byte ptr [eax], al
  03ed4c  push esp
  03ed4d  add eax, dword ptr [eax]
  03ed4f  add byte ptr [esi + 3], bl
  03ed52  add byte ptr [eax], al
  03ed54  push 0x72000003
  03ed59  add eax, dword ptr [eax]
  03ed5b  add byte ptr [ebx + eax], bh
  03ed5f  add byte ptr [ebp - 0x70fffffd], al
  03ed65  add eax, dword ptr [eax]
  03ed67  add byte ptr [edi - 0x5ffffffd], dl
  03ed6d  add eax, dword ptr [eax]
  03ed6f  add byte ptr [eax - 0x4ffffffd], ch
  03ed75  add eax, dword ptr [eax]
  03ed77  add byte ptr [edi - 0x41fffffd], dh
  03ed7d  add eax, dword ptr [eax]
  03ed7f  add ch, al
  03ed81  add eax, dword ptr [eax]
  03ed83  add bl, cl
  03ed85  add eax, dword ptr [eax]
  03ed87  add cl, dl
  03ed89  add eax, dword ptr [eax]
  03ed8b  add bh, dl
  03ed8d  add eax, dword ptr [eax]
  03ed8f  add ah, bl
  03ed91  add eax, dword ptr [eax]
  03ed93  add cl, ah
  03ed95  add eax, dword ptr [eax]
  03ed97  add dh, ah
  03ed99  add eax, dword ptr [eax]
  03ed9b  add dl, ch
  03ed9d  add eax, dword ptr [eax]
  03ed9f  add dh, ch
  03eda1  add eax, dword ptr [eax]
  03eda3  add cl, dh
  03eda5  add eax, dword ptr [eax]
  03eda7  add ah, dh
  03eda9  add eax, dword ptr [eax]
  03edab  add bh, dh
  03edad  add eax, dword ptr [eax]
  03edaf  add cl, bh
  03edb1  add eax, dword ptr [eax]
  03edb3  add bl, bh
  03edb5  add eax, dword ptr [eax]
  03edb7  add ah, bh
  03edb9  add eax, dword ptr [eax]
  03edbb  add ch, bh
  03edbd  add eax, dword ptr [eax]
  03edbf  add dh, bh
  03edc1  add eax, dword ptr [eax]
  03edc3  add byte ptr [eax], al
  03edc5  add byte ptr [eax], al
  03edc7  add byte ptr [eax], al
  03edc9  add byte ptr [eax], al
  03edcb  add byte ptr [eax], al
  03edcd  add byte ptr [eax], al
  03edcf  add byte ptr [eax], al
  03edd1  add byte ptr [eax], al
  03edd3  add byte ptr [eax], al
  03edd5  add byte ptr [eax], al
  03edd7  add byte ptr [eax], al
  03edd9  add byte ptr [eax], al
  03eddb  add byte ptr [eax], al
  03eddd  add byte ptr [eax], al
  03eddf  add byte ptr [eax], al
  03ede1  add byte ptr [eax], al
  03ede3  add byte ptr [eax], al
  03ede5  add byte ptr [eax], al
  03ede7  add byte ptr [eax], al
  03ede9  add byte ptr [eax], al
  03edeb  add byte ptr [eax], al
  03eded  add byte ptr [eax], al
  03edef  add byte ptr [eax], al
  03edf1  add byte ptr [eax], al
  03edf3  add byte ptr [eax], al
  03edf5  add byte ptr [eax], al
  03edf7  add byte ptr [eax], al
  03edf9  add byte ptr [eax], al
  03edfb  add byte ptr [eax], al
  03edfd  add byte ptr [eax], al
  03edff  add byte ptr [eax], al
  03ee01  add byte ptr [eax], al
  03ee03  add byte ptr [eax], al
  03ee05  add byte ptr [eax], al
  03ee07  add byte ptr [eax], al
  03ee09  add byte ptr [eax], al
  03ee0b  add byte ptr [eax], al
  03ee0d  add byte ptr [eax], al
  03ee0f  add byte ptr [eax], al
  03ee11  add byte ptr [eax], al
  03ee13  add byte ptr [eax], al
  03ee15  add byte ptr [eax], al
  03ee17  add byte ptr [eax], al
  03ee19  add byte ptr [eax], al
  03ee1b  add byte ptr [eax], al
  03ee1d  add byte ptr [eax], al
  03ee1f  add byte ptr [eax], al
  03ee21  add byte ptr [eax], al
  03ee23  add byte ptr [eax], al
  03ee25  add byte ptr [eax], al
  03ee27  add byte ptr [eax], al
  03ee29  add byte ptr [eax], al
  03ee2b  add byte ptr [eax], al
  03ee2d  add byte ptr [eax], al
  03ee2f  add byte ptr [eax], al
  03ee31  add byte ptr [eax], al
  03ee33  add byte ptr [eax], al
  03ee35  add byte ptr [eax], al
  03ee37  add byte ptr [eax], al
  03ee39  add byte ptr [eax], al
  03ee3b  add byte ptr [eax], al
  03ee3d  add byte ptr [eax], al
  03ee3f  add byte ptr [eax], al
  03ee41  add byte ptr [eax], al
  03ee43  add byte ptr [eax], al
  03ee45  add byte ptr [eax], al
  03ee47  add byte ptr [eax], al
  03ee49  add byte ptr [eax], al
  03ee4b  add byte ptr [eax], al
  03ee4d  add byte ptr [eax], al
  03ee4f  add byte ptr [eax], al
  03ee51  add byte ptr [eax], al
  03ee53  add byte ptr [eax], al
  03ee55  add byte ptr [eax], al
  03ee57  add byte ptr [eax], al
  03ee59  add byte ptr [eax], al
  03ee5b  add byte ptr [eax], al
  03ee5d  add byte ptr [eax], al
  03ee5f  add byte ptr [eax], al
  03ee61  add byte ptr [eax], al
  03ee63  add byte ptr [eax], al
  03ee65  add byte ptr [eax], al
  03ee67  add byte ptr [eax], al
  03ee69  add byte ptr [eax], al
  03ee6b  add byte ptr [eax], al
  03ee6d  add byte ptr [eax], al
  03ee6f  add byte ptr [eax], al
  03ee71  add byte ptr [eax], al
  03ee73  add byte ptr [eax], al
  03ee75  add byte ptr [eax], al
  03ee77  add byte ptr [eax], al
  03ee79  add byte ptr [eax], al
  03ee7b  add byte ptr [eax], al
  03ee7d  add byte ptr [eax], al
  03ee7f  add byte ptr [eax], al
  03ee81  add byte ptr [eax], al
  03ee83  add byte ptr [eax], al
  03ee85  add byte ptr [eax], al
  03ee87  add byte ptr [eax], al
  03ee89  add byte ptr [eax], al
  03ee8b  add byte ptr [eax], al
  03ee8d  add byte ptr [eax], al
  03ee8f  add byte ptr [eax], al
  03ee91  add byte ptr [eax], al
  03ee93  add byte ptr [eax], al
  03ee95  add byte ptr [eax], al
  03ee97  add byte ptr [eax], al
  03ee99  add byte ptr [eax], al
  03ee9b  add byte ptr [eax], al
  03ee9d  add byte ptr [eax], al
  03ee9f  add byte ptr [eax], al
  03eea1  add byte ptr [eax], al
  03eea3  add byte ptr [eax], al
  03eea5  add byte ptr [eax], al
  03eea7  add byte ptr [eax], al
  03eea9  add byte ptr [eax], al
  03eeab  add byte ptr [eax], al
  03eead  add byte ptr [eax], al
  03eeaf  add byte ptr [eax], al
  03eeb1  add byte ptr [eax], al
  03eeb3  add byte ptr [eax], al
  03eeb5  add byte ptr [eax], al
  03eeb7  add byte ptr [eax], al
  03eeb9  add byte ptr [eax], al
  03eebb  add byte ptr [eax], al
  03eebd  add byte ptr [eax], al
  03eebf  add byte ptr [eax], al
  03eec1  add byte ptr [eax], al
  03eec3  add byte ptr [eax], al
  03eec5  add byte ptr [eax], al
  03eec7  add byte ptr [eax], al
  03eec9  add byte ptr [eax], al
  03eecb  add byte ptr [eax], al
  03eecd  add byte ptr [eax], al
  03eecf  add byte ptr [eax], al
  03eed1  add byte ptr [eax], al
  03eed3  add byte ptr [eax], al
  03eed5  add byte ptr [eax], al
  03eed7  add byte ptr [eax], al
  03eed9  add byte ptr [eax], al
  03eedb  add byte ptr [eax], al
  03eedd  add byte ptr [eax], al
  03eedf  add byte ptr [eax], al
  03eee1  add byte ptr [eax], al
  03eee3  add byte ptr [eax], al
  03eee5  add byte ptr [eax], al
  03eee7  add byte ptr [eax], al
  03eee9  add byte ptr [eax], al
  03eeeb  add byte ptr [eax], al
  03eeed  add byte ptr [eax], al
  03eeef  add byte ptr [eax], al
  03eef1  add byte ptr [eax], al
  03eef3  add byte ptr [eax], al
  03eef5  add byte ptr [eax], al
  03eef7  add byte ptr [eax], al
  03eef9  add byte ptr [eax], al
  03eefb  add byte ptr [eax], al
  03eefd  add byte ptr [eax], al
  03eeff  add byte ptr [eax], al
  03ef01  add byte ptr [eax], al
  03ef03  add byte ptr [eax], al
  03ef05  add byte ptr [eax], al
  03ef07  add byte ptr [eax], al
  03ef09  add byte ptr [eax], al
  03ef0b  add byte ptr [eax], al
  03ef0d  add byte ptr [eax], al
  03ef0f  add byte ptr [eax], al
  03ef11  add byte ptr [eax], al
  03ef13  add byte ptr [eax], al
  03ef15  add byte ptr [eax], al
  03ef17  add byte ptr [eax], al
  03ef19  add byte ptr [eax], al
  03ef1b  add byte ptr [eax], al
  03ef1d  add byte ptr [eax], al
  03ef1f  add byte ptr [eax], al
  03ef21  add byte ptr [eax], al
  03ef23  add byte ptr [eax], al
  03ef25  add byte ptr [eax], al
  03ef27  add byte ptr [eax], al
  03ef29  add byte ptr [eax], al
  03ef2b  add byte ptr [eax], al
  03ef2d  add byte ptr [eax], al
  03ef2f  add byte ptr [eax], al
  03ef31  add byte ptr [eax], al
  03ef33  add byte ptr [eax], al
  03ef35  add byte ptr [eax], al
  03ef37  add byte ptr [eax], al
  03ef39  add byte ptr [eax], al
  03ef3b  add byte ptr [eax], al
  03ef3d  add byte ptr [eax], al
  03ef3f  add byte ptr [eax], al
  03ef41  add byte ptr [eax], al
  03ef43  add byte ptr [eax], al
  03ef45  add byte ptr [eax], al
  03ef47  add byte ptr [eax], al
  03ef49  add byte ptr [eax], al
  03ef4b  add byte ptr [eax], al
  03ef4d  add byte ptr [eax], al
  03ef4f  add byte ptr [eax], al
  03ef51  add byte ptr [eax], al
  03ef53  add byte ptr [eax], al
  03ef55  add byte ptr [eax], al
  03ef57  add byte ptr [eax], al
  03ef59  add byte ptr [eax], al
  03ef5b  add byte ptr [eax], al
  03ef5d  add byte ptr [eax], al
  03ef5f  add byte ptr [eax], al
  03ef61  add byte ptr [eax], al
  03ef63  add byte ptr [eax], al
  03ef65  add byte ptr [eax], al
  03ef67  add byte ptr [eax], al
  03ef69  add byte ptr [eax], al
  03ef6b  add byte ptr [eax], al
  03ef6d  add byte ptr [eax], al
  03ef6f  add byte ptr [eax], al
  03ef71  add byte ptr [eax], al
  03ef73  add byte ptr [eax], al
  03ef75  add byte ptr [eax], al
  03ef77  add byte ptr [eax], al
  03ef79  add byte ptr [eax], al
  03ef7b  add byte ptr [eax], al
  03ef7d  add byte ptr [eax], al
  03ef7f  add byte ptr [eax], al
  03ef81  add byte ptr [eax], al
  03ef83  add byte ptr [eax], al
  03ef85  add byte ptr [eax], al
  03ef87  add byte ptr [eax], al
  03ef89  add byte ptr [eax], al
  03ef8b  add byte ptr [eax], al
  03ef8d  add byte ptr [eax], al
  03ef8f  add byte ptr [eax], al
  03ef91  add byte ptr [eax], al
  03ef93  add byte ptr [eax], al
  03ef95  add byte ptr [eax], al
  03ef97  add byte ptr [eax], al
  03ef99  add byte ptr [eax], al
  03ef9b  add byte ptr [eax], al
  03ef9d  add byte ptr [eax], al
  03ef9f  add byte ptr [eax], al
  03efa1  add byte ptr [eax], al
  03efa3  add byte ptr [eax], al
  03efa5  add byte ptr [eax], al
  03efa7  add byte ptr [eax], al
  03efa9  add byte ptr [eax], al
  03efab  add byte ptr [eax], al
  03efad  add byte ptr [eax], al
  03efaf  add byte ptr [eax], al
  03efb1  add byte ptr [eax], al
  03efb3  add byte ptr [eax], al
  03efb5  add byte ptr [eax], al
  03efb7  add byte ptr [eax], al
  03efb9  add byte ptr [eax], al
  03efbb  add byte ptr [eax], al
  03efbd  add byte ptr [eax], al
  03efbf  add byte ptr [eax], al
  03efc1  add byte ptr [eax], al
  03efc3  add bh, bh
  03efc5  add eax, dword ptr [eax]
  03efc7  add bh, bh
  03efc9  add eax, dword ptr [eax]
  03efcb  add bh, bh
  03efcd  add eax, dword ptr [eax]
  03efcf  add bh, bh
  03efd1  add eax, dword ptr [eax]
  03efd3  add bh, bh
  03efd5  add eax, dword ptr [eax]
  03efd7  add bh, bh
  03efd9  add eax, dword ptr [eax]
  03efdb  add bh, bh
  03efdd  add eax, dword ptr [eax]
  03efdf  add bh, bh
  03efe1  add eax, dword ptr [eax]
  03efe3  add bh, bh
  03efe5  add eax, dword ptr [eax]
  03efe7  add dh, bh
  03efe9  add eax, dword ptr [eax]
  03efeb  add dh, bh
  03efed  add eax, dword ptr [eax]
  03efef  add dh, bh
  03eff1  add eax, dword ptr [eax]
  03eff3  add ch, bh
  03eff5  add eax, dword ptr [eax]
  03eff7  add ah, bh
  03eff9  add eax, dword ptr [eax]
  03effb  add bl, bh
  03effd  add eax, dword ptr [eax]
  03efff  add dl, bh
  03f001  add eax, dword ptr [eax]
  03f003  add al, bh
  03f005  add eax, dword ptr [eax]
  03f007  add bh, dh
  03f009  add eax, dword ptr [eax]
  03f00b  add ch, dh
  03f00d  add eax, dword ptr [eax]
  03f00f  add dl, dh
  03f011  add eax, dword ptr [eax]
  03f013  add bh, ch
  03f015  add eax, dword ptr [eax]
  03f017  add ah, ch
  03f019  add eax, dword ptr [eax]
  03f01b  add al, ch
  03f01d  add eax, dword ptr [eax]
  03f01f  add bl, ah
  03f021  add eax, dword ptr [eax]
  03f023  add dh, bl
  03f025  add eax, dword ptr [eax]
  03f027  add al, bl
  03f029  add eax, dword ptr [eax]
  03f02b  add cl, dl
  03f02d  add eax, dword ptr [eax]
  03f02f  add dl, cl
  03f031  add eax, dword ptr [eax]
  03f033  add dl, al
  03f035  add eax, dword ptr [eax]
  03f037  add byte ptr [eax - 0x51fffffd], bh
  03f03d  add eax, dword ptr [eax]
  03f03f  add byte ptr [ebx - 0x69fffffd], ah
  03f045  add eax, dword ptr [eax]
  03f047  add byte ptr [eax + 0x79000003], cl
  03f04d  add eax, dword ptr [eax]
  03f04f  add byte ptr [ecx + 3], ch
  03f052  add byte ptr [eax], al
  03f054  push edi
  03f055  add eax, dword ptr [eax]
  03f057  add byte ptr [ebx + eax], al
  03f05b  add byte ptr [esi], ch
  03f05d  add eax, dword ptr [eax]
  03f05f  add byte ptr [eax], bl
  03f061  add eax, dword ptr [eax]
  03f063  add bh, bh
  03f065  add al, byte ptr [eax]
  03f067  add ah, ah
  03f069  add al, byte ptr [eax]
  03f06b  add al, cl
  03f06d  add al, byte ptr [eax]
  03f06f  add byte ptr [ecx - 0x77fffffe], ch
  03f075  add al, byte ptr [eax]
  03f077  add byte ptr [ebp + 2], ah
  03f07a  add byte ptr [eax], al
  03f07c  aas 
  03f07d  add al, byte ptr [eax]
  03f07f  add byte ptr [edi], dl
  03f081  add al, byte ptr [eax]
  03f083  add ah, ch
  03f085  add dword ptr [eax], eax
  03f087  add byte ptr [edi - 0x71ffffff], bh
  03f08d  add dword ptr [eax], eax
  03f08f  add byte ptr [edx + 1], bl
  03f092  add byte ptr [eax], al
  03f094  and al, 1
  03f096  add byte ptr [eax], al
  03f098  ljmp 0:0xad000000
  03f09f  add byte ptr [eax + eax], ch
  03f0a3  add byte ptr [eax], ch
  03f0a5  add byte ptr [eax], al
  03f0a7  add byte ptr [eax], al
  03f0a9  add byte ptr [eax], al
  03f0ab  add byte ptr [eax], al
  03f0ad  add byte ptr [eax], al
  03f0af  add byte ptr [eax], al
  03f0b1  add byte ptr [eax], al
  03f0b3  add byte ptr [eax], al
  03f0b5  add byte ptr [eax], al
  03f0b7  add byte ptr [eax], al
  03f0b9  add byte ptr [eax], al
  03f0bb  add byte ptr [eax], al
  03f0bd  add byte ptr [eax], al
  03f0bf  add byte ptr [eax], al
  03f0c1  add byte ptr [eax], al
  03f0c3  add byte ptr [eax], al
  03f0c5  add byte ptr [eax], al
  03f0c7  add byte ptr [eax], al
  03f0c9  add byte ptr [eax], al
  03f0cb  add byte ptr [eax], al
  03f0cd  add byte ptr [eax], al
  03f0cf  add byte ptr [eax], al
  03f0d1  add byte ptr [eax], al
  03f0d3  add byte ptr [eax], al
  03f0d5  add byte ptr [eax], al
  03f0d7  add byte ptr [eax], al
  03f0d9  add byte ptr [eax], al
  03f0db  add byte ptr [eax], al
  03f0dd  add byte ptr [eax], al
  03f0df  add byte ptr [eax], ch
  03f0e1  add byte ptr [eax], al
  03f0e3  add byte ptr [eax + eax], ch
  03f0e7  add byte ptr [ebp - 0x16000000], ch
  03f0ed  add byte ptr [eax], al
  03f0ef  add byte ptr [ecx + eax], ah
  03f0f2  add byte ptr [eax], al
  03f0f4  pop edx
  03f0f5  add dword ptr [eax], eax
  03f0f7  add byte ptr [esi - 0x40ffffff], cl
  03f0fd  add dword ptr [eax], eax
  03f0ff  add ah, ch
  03f101  add dword ptr [eax], eax
  03f103  add byte ptr [edi], dl
  03f105  add al, byte ptr [eax]
  03f107  add byte ptr [edi], bh
  03f109  add al, byte ptr [eax]
  03f10b  add byte ptr [ebp + 2], ah
  03f10e  add byte ptr [eax], al
  03f110  mov byte ptr [edx], al
  03f112  add byte ptr [eax], al
  03f114  test eax, 0xc8000002
  03f119  add al, byte ptr [eax]
  03f11b  add ah, ah
  03f11d  add al, byte ptr [eax]
  03f11f  add bh, bh
  03f121  add al, byte ptr [eax]
  03f123  add byte ptr [eax], bl
  03f125  add eax, dword ptr [eax]
  03f127  add byte ptr [esi], ch
  03f129  add eax, dword ptr [eax]
  03f12b  add byte ptr [ebx + eax], al
  03f12f  add byte ptr [edi + 3], dl
  03f132  add byte ptr [eax], al
  03f134  imul eax, dword ptr [ebx], 0x3790000
  03f13a  add byte ptr [eax], al
  03f13c  mov byte ptr [ebx], al
  03f13e  add byte ptr [eax], al
  03f140  xchg esi, eax
  03f141  add eax, dword ptr [eax]
  03f143  add byte ptr [ebx - 0x51fffffd], ah
  03f149  add eax, dword ptr [eax]
  03f14b  add byte ptr [eax - 0x3dfffffd], bh
  03f151  add eax, dword ptr [eax]
  03f153  add dl, cl
  03f155  add eax, dword ptr [eax]
  03f157  add cl, dl
  03f159  add eax, dword ptr [eax]
  03f15b  add al, bl
  03f15d  add eax, dword ptr [eax]
  03f15f  add dh, bl
  03f161  add eax, dword ptr [eax]
  03f163  add bl, ah
  03f165  add eax, dword ptr [eax]
  03f167  add al, ch
  03f169  add eax, dword ptr [eax]
  03f16b  add ah, ch
  03f16d  add eax, dword ptr [eax]
  03f16f  add bh, ch
  03f171  add eax, dword ptr [eax]
  03f173  add dl, dh
  03f175  add eax, dword ptr [eax]
  03f177  add ch, dh
  03f179  add eax, dword ptr [eax]
  03f17b  add bh, dh
  03f17d  add eax, dword ptr [eax]
  03f17f  add al, bh
  03f181  add eax, dword ptr [eax]
  03f183  add dl, bh
  03f185  add eax, dword ptr [eax]
  03f187  add bl, bh
  03f189  add eax, dword ptr [eax]
  03f18b  add ah, bh
  03f18d  add eax, dword ptr [eax]
  03f18f  add ch, bh
  03f191  add eax, dword ptr [eax]
  03f193  add dh, bh
  03f195  add eax, dword ptr [eax]
  03f197  add dh, bh
  03f199  add eax, dword ptr [eax]
  03f19b  add dh, bh
  03f19d  add eax, dword ptr [eax]
  03f19f  add bh, bh
  03f1a1  add eax, dword ptr [eax]
  03f1a3  add bh, bh
  03f1a5  add eax, dword ptr [eax]
  03f1a7  add bh, bh
  03f1a9  add eax, dword ptr [eax]
  03f1ab  add bh, bh
  03f1ad  add eax, dword ptr [eax]
  03f1af  add bh, bh
  03f1b1  add eax, dword ptr [eax]
  03f1b3  add bh, bh
  03f1b5  add eax, dword ptr [eax]
  03f1b7  add bh, bh
  03f1b9  add eax, dword ptr [eax]
  03f1bb  add bh, bh
  03f1bd  add eax, dword ptr [eax]
  03f1bf  add bh, bh
  03f1c1  add eax, dword ptr [eax]
  03f1c3  add byte ptr [eax], al
  03f1c5  add byte ptr [eax], al
  03f1c7  add byte ptr [eax], al
  03f1c9  add byte ptr [eax], al
  03f1cb  add byte ptr [eax], al
  03f1cd  add byte ptr [eax], al
  03f1cf  add byte ptr [eax], al
  03f1d1  add byte ptr [eax], al
  03f1d3  add byte ptr [eax], al
  03f1d5  add byte ptr [eax], al
  03f1d7  add byte ptr [eax], al
  03f1d9  add byte ptr [eax], al
  03f1db  add byte ptr [eax], al
  03f1dd  add byte ptr [eax], al
  03f1df  add byte ptr [eax], al
  03f1e1  add byte ptr [eax], al
  03f1e3  add byte ptr [eax], al
  03f1e5  add byte ptr [eax], al
  03f1e7  add byte ptr [eax], al
  03f1e9  add byte ptr [eax], al
  03f1eb  add byte ptr [eax], al
  03f1ed  add byte ptr [eax], al
  03f1ef  add byte ptr [eax], al
  03f1f1  add byte ptr [eax], al
  03f1f3  add byte ptr [eax], al
  03f1f5  add byte ptr [eax], al
  03f1f7  add byte ptr [eax], al
  03f1f9  add byte ptr [eax], al
  03f1fb  add byte ptr [eax], al
  03f1fd  add byte ptr [eax], al
  03f1ff  add byte ptr [eax], al
  03f201  add byte ptr [eax], al
  03f203  add byte ptr [eax], al
  03f205  add byte ptr [eax], al
  03f207  add byte ptr [eax], al
  03f209  add byte ptr [eax], al
  03f20b  add byte ptr [eax], al
  03f20d  add byte ptr [eax], al
  03f20f  add byte ptr [eax], al
  03f211  add byte ptr [eax], al
  03f213  add byte ptr [eax], al
  03f215  add byte ptr [eax], al
  03f217  add byte ptr [eax], al
  03f219  add byte ptr [eax], al
  03f21b  add byte ptr [eax], al
  03f21d  add byte ptr [eax], al
  03f21f  add byte ptr [eax], al
  03f221  add byte ptr [eax], al
  03f223  add byte ptr [eax], al
  03f225  add byte ptr [eax], al
  03f227  add byte ptr [eax], al
  03f229  add byte ptr [eax], al
  03f22b  add byte ptr [eax], al
  03f22d  add byte ptr [eax], al
  03f22f  add byte ptr [eax], al
  03f231  add byte ptr [eax], al
  03f233  add byte ptr [eax], al
  03f235  add byte ptr [eax], al
  03f237  add byte ptr [eax], al
  03f239  add byte ptr [eax], al
  03f23b  add byte ptr [eax], al
  03f23d  add byte ptr [eax], al
  03f23f  add byte ptr [eax], al
  03f241  add byte ptr [eax], al
  03f243  add byte ptr [eax], al
  03f245  add byte ptr [eax], al
  03f247  add byte ptr [eax], al
  03f249  add byte ptr [eax], al
  03f24b  add byte ptr [eax], al
  03f24d  add byte ptr [eax], al
  03f24f  add byte ptr [eax], al
  03f251  add byte ptr [eax], al
  03f253  add byte ptr [eax], al
  03f255  add byte ptr [eax], al
  03f257  add byte ptr [eax], al
  03f259  add byte ptr [eax], al
  03f25b  add byte ptr [eax], al
  03f25d  add byte ptr [eax], al
  03f25f  add byte ptr [eax], al
  03f261  add byte ptr [eax], al
  03f263  add byte ptr [eax], al
  03f265  add byte ptr [eax], al
  03f267  add byte ptr [eax], al
  03f269  add byte ptr [eax], al
  03f26b  add byte ptr [eax], al
  03f26d  add byte ptr [eax], al
  03f26f  add byte ptr [eax], al
  03f271  add byte ptr [eax], al
  03f273  add byte ptr [eax], al
  03f275  add byte ptr [eax], al
  03f277  add byte ptr [eax], al
  03f279  add byte ptr [eax], al
  03f27b  add byte ptr [eax], al
  03f27d  add byte ptr [eax], al
  03f27f  add byte ptr [eax], al
  03f281  add byte ptr [eax], al
  03f283  add byte ptr [eax], al
  03f285  add byte ptr [eax], al
  03f287  add byte ptr [eax], al
  03f289  add byte ptr [eax], al
  03f28b  add byte ptr [eax], al
  03f28d  add byte ptr [eax], al
  03f28f  add byte ptr [eax], al
  03f291  add byte ptr [eax], al
  03f293  add byte ptr [eax], al
  03f295  add byte ptr [eax], al
  03f297  add byte ptr [eax], al
  03f299  add byte ptr [eax], al
  03f29b  add byte ptr [eax], al
  03f29d  add byte ptr [eax], al
  03f29f  add byte ptr [eax], al
  03f2a1  add byte ptr [eax], al
  03f2a3  add byte ptr [eax], al
  03f2a5  add byte ptr [eax], al
  03f2a7  add byte ptr [eax], al
  03f2a9  add byte ptr [eax], al
  03f2ab  add byte ptr [eax], al
  03f2ad  add byte ptr [eax], al
  03f2af  add byte ptr [eax], al
  03f2b1  add byte ptr [eax], al
  03f2b3  add byte ptr [eax], al
  03f2b5  add byte ptr [eax], al
  03f2b7  add byte ptr [eax], al
  03f2b9  add byte ptr [eax], al
  03f2bb  add byte ptr [eax], al
  03f2bd  add byte ptr [eax], al
  03f2bf  add byte ptr [eax], al
  03f2c1  add byte ptr [eax], al
  03f2c3  add byte ptr [eax], al
  03f2c5  add byte ptr [eax], al
  03f2c7  add byte ptr [eax], al
  03f2c9  add byte ptr [eax], al
  03f2cb  add byte ptr [eax], al
  03f2cd  add byte ptr [eax], al
  03f2cf  add byte ptr [eax], al
  03f2d1  add byte ptr [eax], al
  03f2d3  add byte ptr [eax], al
  03f2d5  add byte ptr [eax], al
  03f2d7  add byte ptr [eax], al
  03f2d9  add byte ptr [eax], al
  03f2db  add byte ptr [eax], al
  03f2dd  add byte ptr [eax], al
  03f2df  add byte ptr [eax], al
  03f2e1  add byte ptr [eax], al
  03f2e3  add byte ptr [eax], al
  03f2e5  add byte ptr [eax], al
  03f2e7  add byte ptr [eax], al
  03f2e9  add byte ptr [eax], al
  03f2eb  add byte ptr [eax], al
  03f2ed  add byte ptr [eax], al
  03f2ef  add byte ptr [eax], al
  03f2f1  add byte ptr [eax], al
  03f2f3  add byte ptr [eax], al
  03f2f5  add byte ptr [eax], al
  03f2f7  add byte ptr [eax], al
  03f2f9  add byte ptr [eax], al
  03f2fb  add byte ptr [eax], al
  03f2fd  add byte ptr [eax], al
  03f2ff  add byte ptr [eax], al
  03f301  add byte ptr [eax], al
  03f303  add byte ptr [eax], al
  03f305  add byte ptr [eax], al
  03f307  add byte ptr [eax], al
  03f309  add byte ptr [eax], al
  03f30b  add byte ptr [eax], al
  03f30d  add byte ptr [eax], al
  03f30f  add byte ptr [eax], al
  03f311  add byte ptr [eax], al
  03f313  add byte ptr [eax], al
  03f315  add byte ptr [eax], al
  03f317  add byte ptr [eax], al
  03f319  add byte ptr [eax], al
  03f31b  add byte ptr [eax], al
  03f31d  add byte ptr [eax], al
  03f31f  add byte ptr [eax], al
  03f321  add byte ptr [eax], al
  03f323  add byte ptr [eax], al
  03f325  add byte ptr [eax], al
  03f327  add byte ptr [eax], al
  03f329  add byte ptr [eax], al
  03f32b  add byte ptr [eax], al
  03f32d  add byte ptr [eax], al
  03f32f  add byte ptr [eax], al
  03f331  add byte ptr [eax], al
  03f333  add byte ptr [eax], al
  03f335  add byte ptr [eax], al
  03f337  add byte ptr [eax], al
  03f339  add byte ptr [eax], al
  03f33b  add byte ptr [eax], al
  03f33d  add byte ptr [eax], al
  03f33f  add byte ptr [eax], al
  03f341  add byte ptr [eax], al
  03f343  add byte ptr [eax], al
  03f345  add byte ptr [eax], al
  03f347  add byte ptr [eax], al
  03f349  add byte ptr [eax], al
  03f34b  add byte ptr [eax], al
  03f34d  add byte ptr [eax], al
  03f34f  add byte ptr [eax], al
  03f351  add byte ptr [eax], al
  03f353  add byte ptr [eax], al
  03f355  add byte ptr [eax], al
  03f357  add byte ptr [eax], al
  03f359  add byte ptr [eax], al
  03f35b  add byte ptr [eax], al
  03f35d  add byte ptr [eax], al
  03f35f  add byte ptr [eax], al
  03f361  add byte ptr [eax], al
  03f363  add byte ptr [eax], al
  03f365  add byte ptr [eax], al
  03f367  add byte ptr [eax], al
  03f369  add byte ptr [eax], al
  03f36b  add byte ptr [eax], al
  03f36d  add byte ptr [eax], al
  03f36f  add byte ptr [eax], al
  03f371  add byte ptr [eax], al
  03f373  add byte ptr [eax], al
  03f375  add byte ptr [eax], al
  03f377  add byte ptr [eax], al
  03f379  add byte ptr [eax], al
  03f37b  add byte ptr [eax], al
  03f37d  add byte ptr [eax], al
  03f37f  add byte ptr [eax], al
  03f381  add byte ptr [eax], al
  03f383  add byte ptr [eax], al
  03f385  add byte ptr [eax], al
  03f387  add byte ptr [eax], al
  03f389  add byte ptr [eax], al
  03f38b  add byte ptr [eax], al
  03f38d  add byte ptr [eax], al
  03f38f  add byte ptr [eax], al
  03f391  add byte ptr [eax], al
  03f393  add byte ptr [eax], al
  03f395  add byte ptr [eax], al
  03f397  add byte ptr [eax], al
  03f399  add byte ptr [eax], al
  03f39b  add byte ptr [eax], al
  03f39d  add byte ptr [eax], al
  03f39f  add byte ptr [eax], al
  03f3a1  add byte ptr [eax], al
  03f3a3  add byte ptr [eax], al
  03f3a5  add byte ptr [eax], al
  03f3a7  add byte ptr [eax], al
  03f3a9  add byte ptr [eax], al
  03f3ab  add byte ptr [eax], al
  03f3ad  add byte ptr [eax], al
  03f3af  add byte ptr [eax], al
  03f3b1  add byte ptr [eax], al
  03f3b3  add byte ptr [eax], al
  03f3b5  add byte ptr [eax], al
  03f3b7  add byte ptr [eax], al
  03f3b9  add byte ptr [eax], al
  03f3bb  add byte ptr [eax], al
  03f3bd  add byte ptr [eax], al
  03f3bf  add byte ptr [eax], al
  03f3c1  add byte ptr [eax], al
  03f3c3  add byte ptr [eax], al
  03f3c5  add byte ptr [eax], al
  03f3c7  add byte ptr [eax], al
  03f3c9  add byte ptr [eax], al
  03f3cb  add byte ptr [eax], al
  03f3cd  add byte ptr [eax], al
  03f3cf  add byte ptr [edx], dl
  03f3d1  xor al, 0x4d
  03f3d3  add byte ptr ds:[eax], al
  03f3d6  add byte ptr fs:[eax], al
  03f3d9  add byte ptr [esi], ah
  03f3dc  add byte ptr [eax], al
  03f3de  add byte ptr [bx + si], al
  03f3e1  add byte ptr [eax], al
  03f3e3  add byte ptr [eax], al
  03f3e5  add byte ptr [edx + eax], al
  03f3e8  add al, byte ptr [0x402]
  03f3ee  add byte ptr [edx], al
  03f3f0  add al, byte ptr [edx]
  03f3f2  push es
  03f3f3  add eax, 0x2030809
  03f3f8  add dword ptr [ecx], eax
  03f3fa  add dword ptr [esp + eax], eax
  03f3fd  add al, 9
  03f3ff  add eax, 0x2050d05
  03f404  add al, byte ptr [edx]
  03f406  add dl, byte ptr [edx]
  03f408  adc dl, byte ptr [edx]
  03f40a  or dword ptr [esi], eax
  03f40c  or eax, 0x309060d
  03f411  add eax, dword ptr [ebx]
  03f413  daa 
  03f414  daa 
  03f415  daa 
  03f416  or eax, 0xc0f0608
  03f41b  pop es
  03f41c  add al, 4
  03f41e  add al, 0x35
  03f420  xor eax, 0x9090d35
  03f425  or eax, 0x5050c09
  03f42a  add eax, 0xe3b3b3b
  03f42f  push cs
  03f430  adc byte ptr [eax], dl
  03f432  pop es
  03f433  add eax, dword ptr [esi]
  03f435  push es
  03f436  push es
  03f437  sbb byte ptr [esi], dl
  03f439  push ss
  03f43a  adc dword ptr [esi], eax
  03f43c  or dword ptr [ecx], edx
  03f43e  push es
  03f43f  or eax, 0x10070707
  03f444  push cs
  03f445  push cs
  03f446  adc dword ptr [ecx], ecx
  03f448  push es
  03f449  adc dword ptr [esi + eax], ecx
  03f44c  or byte ptr [eax], cl
  03f44e  or byte ptr [esi], dl
  03f450  push cs
  03f451  push cs
  03f452  adc dword ptr [ecx], ecx
  03f454  or dword ptr [ecx], edx
  03f456  or dword ptr [0x33090909], ecx
  03f45c  sbb al, 0x1a
  03f45e  adc eax, 0xa150909
  03f463  or eax, 0x1c0a0a0a
  03f468  adc byte ptr [esi], cl
  03f46a  sbb cl, byte ptr [ebx]
  03f46c  push es
  03f46d  sbb dword ptr [edx], ecx
  03f46f  or dword ptr [ebx], ecx
  03f471  or ecx, dword ptr [ebx]
  03f473  push ss
  03f474  or al, 0xa
  03f476  sbb dword ptr [0x90a1d0d], ecx
  03f47c  or al, 0xc
  03f47e  or al, 0x2d
  03f480  push ss
  03f481  adc bl, byte ptr [0x7150c0e]
  03f487  adc byte ptr [0x1c2f0d0d], cl
  03f48d  sbb byte ptr [0xa15110a], dl
  03f493  adc al, 0xe
  03f495  push cs
  03f496  push cs
  03f497  sub eax, 0x9191418
  03f49c  adc dword ptr [ecx], ebx
  03f49e  or dl, byte ptr [0x270f0f0f]
  03f4a4  adc al, 0x10
  03f4a6  sbb eax, 0xa1d120a
  03f4ab  adc eax, 0x25101010
  03f4b0  adc cl, byte ptr [esi]
  03f4b2  sbb al, 0xe
  03f4b4  sbb dword ptr [edx], edx
  03f4b6  adc byte ptr [ebx], cl
  03f4b8  adc dword ptr [ecx], edx
  03f4ba  adc dword ptr [esp + edx], ebx
  03f4bd  adc dl, byte ptr [0x14170e10]
  03f4c3  push cs
  03f4c4  adc dl, byte ptr [edx]
  03f4c6  adc ah, byte ptr [ecx]
  03f4c8  adc byte ptr [ecx + ebx], cl
  03f4cb  adc dword ptr [0x130b1419], ecx
  03f4d1  adc edx, dword ptr [ebx]
  03f4d3  sbb al, 0xe
  03f4d5  or bl, byte ptr [0x141e0d11]
  03f4db  or dl, byte ptr [esp + edx]
  03f4de  adc al, 0x2b
  03f4e0  sbb dl, byte ptr [ecx + edx]
  03f4e3  adc dword ptr [ecx], edx
  03f4e5  adc dl, byte ptr [edx]
  03f4e7  adc al, 0x15
  03f4e9  adc eax, 0x1c253915
  03f4ee  adc eax, 0x15151114
  03f4f3  adc eax, 0x2f161616
  03f4f8  sbb al, 0x14
  03f4fa  sbb dword ptr [ecx], edx
  03f4fc  adc eax, 0x17111519
  03f501  pop ss
  03f502  pop ss
  03f503  and ebx, dword ptr [edx]
  03f505  push ss
  03f506  sbb eax, 0x151d1511
  03f50b  adc dword ptr [eax], ebx
  03f50d  sbb byte ptr [eax], bl
  03f50f  adc cl, byte ptr [edx]
  03f511  push es
  03f512  sbb dword ptr [0x19121d18], edx
  03f518  sbb dword ptr [ecx], ebx
  03f51a  sbb dword ptr [ecx], ebp
  03f51c  sbb dl, byte ptr [edx]
  03f51e  push ds
  03f51f  adc eax, 0x1518191d
  03f524  sbb bl, byte ptr [edx]
  03f526  sbb ah, byte ptr [0x1c1e141a]
  03f52c  push ss
  03f52d  sbb dword ptr [ecx], ebx
  03f52f  sbb dword ptr [ebx], ebx
  03f531  sbb ebx, dword ptr [ebx]
  03f533  sub dword ptr [ebx], esp
  03f535  push ds
  03f536  sbb eax, 0x1c1d1c19
  03f53b  sbb dword ptr [esp + ebx], ebx
  03f53e  sbb al, 0x1e
  03f540  sbb byte ptr [ecx], dl
  03f543  push cs
  03f544  pop es
  03f545  and cl, byte ptr [0x1d1d1d0a]
  03f54b  xor dword ptr [0x160e211a], esp
  03f551  and dword ptr [esi], ecx
  03f553  sbb al, 0x1e
  03f555  push ds
  03f556  push ds
  03f557  das 
  03f558  and ebx, dword ptr [eax]
  03f55a  sub dl, byte ptr [ebx]
  03f55c  or eax, 0x1f0f182a
  03f561  pop ds
  03f562  pop ds
  03f563  and eax, 0x19211c21
  03f568  adc dword ptr [ecx], esp
  03f56a  sbb dword ptr [0x35202020], edx
  03f570  sub esp, dword ptr [ecx]
  03f572  and eax, 0x19251219
  03f577  adc eax, 0x29212121
  03f57c  and dword ptr [eax], ebx
  03f57e  and dword ptr [ecx], ebx
  03f580  sbb dword ptr [ecx], esp
  03f582  sbb dword ptr [0x31222222], ebx
  03f588  daa 
  03f589  sbb al, 0x25
  03f58b  sbb dword ptr [ecx], ebx
  03f58d  and eax, 0x23231d19
  03f592  and ecx, dword ptr [edx]
  03f594  or byte ptr [esi], al
  03f596  sub dl, byte ptr [esi]
  03f598  adc ch, byte ptr [ecx]
  03f59a  push ss
  03f59b  sbb al, 0x24
  03f59d  and al, 0x24
  03f59f  xor ebp, dword ptr [edi]
  03f5a1  sub dword ptr [edx], esi
  03f5a3  sbb eax, 0x1c1e3114
  03f5a8  and eax, 0x2b352525
  03f5ad  sbb al, 0x21
  03f5af  sbb eax, 0x211a2520
  03f5b4  cmp dword ptr es:[0x241d262f], esi
  03f5bd  sub bl, byte ptr [0x27272723]
  03f5c3  cmp dword ptr [ecx], esi
  03f5c5  and eax, 0x251d2021
  03f5ca  and byte ptr [edx], bl
  03f5cc  sub byte ptr [eax], ch
  03f5ce  sub byte ptr [edi], ch
  03f5d0  sub esp, dword ptr [0x2e1d222b]
  03f5d6  sub byte ptr [edi], bl
  03f5d8  sub dword ptr [ecx], ebp
  03f5da  sub dword ptr [ebx], esi
  03f5dc  das 
  03f5dd  daa 
  03f5de  cmp dword ptr [edx], esp
  03f5e0  push ss
  03f5e1  cmp dword ptr [esi], esp
  03f5e3  push ds
  03f5e4  sub ch, byte ptr [edx]
  03f5e6  sub bh, byte ptr [ecx]
  03f5e8  xor dword ptr [ecx], esp
  03f5ea  and eax, 0x24252421
  03f5ef  and dword ptr [ebx], ebp
  03f5f1  sub ebp, dword ptr [ebx]
  03f5f3  cmp dword ptr [0x25212929], esi
  03f5f9  sub dword ptr [0x2c2c2c21], esp
  03f5ff  cmp edi, dword ptr [ebx]
  03f601  xor eax, 0x2d25212d
  03f606  and eax, 0x2d2d2d21
  03f60b  das 
  03f60c  xor esi, dword ptr [edi]
  03f60e  sub dword ptr [0x29222d28], esp
  03f614  sub dword ptr cs:[edi], ebp
  03f619  xor eax, 0x2d252829
  03f61e  sub byte ptr [edx], ah
  03f620  das 
  03f621  das 
  03f622  das 
  03f623  and eax, 0x29292f29
  03f628  sub dword ptr [0x30302929], ebp
  03f62e  xor byte ptr [ebx], dh
  03f630  xor eax, 0x2d2d2d39
  03f635  xor ah, byte ptr [ebx]
  03f638  xor dword ptr [ecx], esi
  03f63a  xor dword ptr [esi], ebx
  03f63c  and dword ptr [edi], esp
  03f63e  xor ebp, dword ptr [ebx + ebp]
  03f641  cmp dword ptr [esi], esp
  03f643  and esi, dword ptr [edx]
  03f645  xor dh, byte ptr [edx]
  03f647  sub eax, 0x2c34352f
  03f64c  xor dword ptr [edx], edi
  03f64e  sub eax, 0x33333332
  03f653  sub dword ptr [ebx], ebp
  03f655  xor dword ptr [edx], edi
  03f657  xor ch, byte ptr [0x34313131]
  03f65d  xor al, 0x34
  03f65f  and esp, dword ptr [0x3135352d]
  03f665  xor eax, 0x35353535
  03f66a  xor eax, 0x3d353333
  03f66f  cmp dword ptr [ecx + edi], esi
  03f672  cmp dword ptr [ecx], edi
  03f674  sub eax, 0x3d3e2f2d
  03f67c  cmp dword ptr [esi], edi
  03f67e  aaa 
  03f681  aaa 
  03f682  aaa 
  03f683  and esp, dword ptr [ebx]
  03f685  sub dword ptr [eax], ebx
  03f687  push cs
  03f688  adc dl, byte ptr [eax]
  03f68a  push es
  03f68b  or bh, byte ptr [eax]
  03f68d  cmp byte ptr [eax], bh
  03f68f  sbb al, 0x1c
  03f691  and eax, 0x1c06020c
  03f696  push ss
  03f697  sbb byte ptr [ecx], bh
  03f699  cmp dword ptr [ecx], edi
  03f69b  adc dl, byte ptr [edx]
  03f69d  sbb byte ptr [esi], bl
  03f69f  sbb byte ptr [edx], bl
  03f6a1  push ss
  03f6a2  adc byte ptr [edx], dl
  03f6a4  cmp bh, byte ptr [edx]
  03f6a6  cmp dl, byte ptr [esi]
  03f6a8  push ss
  03f6a9  push ds
  03f6aa  sbb dl, byte ptr [esi + edx]
  03f6ad  adc byte ptr [edx], cl
  03f6af  or al, 0x3b
  03f6b1  cmp edi, dword ptr [ebx]
  03f6b3  xor dword ptr [edi], ebp
  03f6b5  xor dword ptr [esi], edx
  03f6b7  push cs
  03f6b8  adc byte ptr [esi], cl
  03f6ba  push es
  03f6bb  or byte ptr [esp + edi], bh
  03f6be  cmp al, 0x1e
  03f6c0  sbb al, 0x1e
  03f6c2  adc al, 0xc
  03f6c4  push cs
  03f6c5  adc cl, byte ptr [edx]
  03f6c7  or al, 0x3d
  03f6c9  cmp eax, 0xc0a0c3d
  03f6ce  push ss
  03f6cf  or al, 0xe
  03f6d1  adc al, 0xa
  03f6d3  or al, 0x3e
  03f6d5  aas 
  03f6d8  aas 
  03f6d9  aas 
  03f6da  or al, 2
  03f6dc  add al, 0
  03f6de  add byte ptr [eax], al
  03f6e0  add byte ptr [eax], al
  03f6e2  add byte ptr [eax], al
  03f6e4  add byte ptr [ecx], al
  03f6e6  add dword ptr [ecx], eax
  03f6e8  add al, byte ptr [ecx]
  03f6ea  add dword ptr [ebx], eax
  03f6ec  add al, byte ptr [edx]
  03f6ee  add al, 2
  03f6f0  add al, byte ptr [0x3060303]
  03f6f6  add eax, dword ptr [edi]
  03f6f8  add al, 4
  03f6fa  or byte ptr [esp + eax], al
  03f6fd  or dword ptr [0x5050a05], eax
  03f703  or eax, dword ptr [esi]
  03f705  push es
  03f706  or al, 6
  03f708  push es
  03f709  or eax, 0x70e0707
  03f70e  pop es
  03f70f  invd 
  03f711  or byte ptr [eax], dl
  03f713  or byte ptr [eax], cl
  03f715  adc dword ptr [ecx], ecx
  03f717  or dword ptr [edx], edx
  03f719  or dword ptr [ecx], ecx
  03f71b  adc ecx, dword ptr [edx]
  03f71d  or dl, byte ptr [edx + ecx]
  03f720  or dl, byte ptr [0xb160b0b]
  03f726  or edx, dword ptr [edi]
  03f728  or al, 0xc
  03f72a  sbb byte ptr [esp + ecx], cl
  03f72d  sbb dword ptr [0xd0d1a0d], ecx
  03f733  sbb ecx, dword ptr [esi]
  03f735  push cs
  03f736  sbb al, 0xe
  03f738  push cs
  03f739  sbb eax, 0xf1e0f0f
  03f73e  nop dword ptr [eax]
  03f741  adc byte ptr [eax], ah
  03f743  adc byte ptr [eax], dl
  03f745  and dword ptr [ecx], edx
  03f747  adc dword ptr [edx], esp
  03f749  adc dword ptr [ecx], edx
  03f74b  and edx, dword ptr [edx]
  03f74d  adc ah, byte ptr [edx + edx]
  03f750  adc ah, byte ptr [0x13261313]
  03f756  adc esp, dword ptr [edi]
  03f758  adc al, 0x14
  03f75a  sub byte ptr [esp + edx], dl
  03f75d  sub dword ptr [0x15152a15], edx
  03f763  sub edx, dword ptr [esi]
  03f765  push ss
  03f766  sub al, 0x16
  03f768  push ss
  03f769  sub eax, 0x172e1717
  03f76e  pop ss
  03f76f  das 
  03f770  sbb byte ptr [eax], bl
  03f772  xor byte ptr [eax], bl
  03f774  sbb byte ptr [ecx], dh
  03f776  sbb dword ptr [ecx], ebx
  03f778  xor bl, byte ptr [ecx]
  03f77a  sbb dword ptr [ebx], esi
  03f77c  sbb bl, byte ptr [edx]
  03f77e  xor al, 0x1a
  03f780  sbb dh, byte ptr [0x1b361b1b]
  03f786  sbb esi, dword ptr [edi]
  03f788  sbb al, 0x1c
  03f78a  cmp byte ptr [esp + ebx], bl
  03f78d  cmp dword ptr [0x1d1d3a1d], ebx
  03f793  cmp ebx, dword ptr [esi]
  03f795  push ds
  03f796  cmp al, 0x1e
  03f798  push ds
  03f799  cmp eax, 0x1f3e1f1f
  03f79e  pop ds
  03f79f  aas 
  03f7a0  and byte ptr [eax], ah
  03f7a2  inc eax
  03f7a3  and byte ptr [eax], ah
  03f7a5  inc ecx
  03f7a6  and dword ptr [ecx], esp
  03f7a8  inc edx
  03f7a9  and dword ptr [ecx], esp
  03f7ab  inc ebx
  03f7ac  and ah, byte ptr [edx]
  03f7ae  inc esp
  03f7af  and ah, byte ptr [edx]
  03f7b1  inc ebp
  03f7b2  and esp, dword ptr [ebx]
  03f7b4  inc esi
  03f7b5  and esp, dword ptr [ebx]
  03f7b7  inc edi
  03f7b8  and al, 0x24
  03f7ba  dec eax
  03f7bb  and al, 0x24
  03f7bd  dec ecx
  03f7be  and eax, 0x25254a25
  03f7c3  dec ebx
  03f7c4  dec esp
  03f7c7  dec ebp
  03f7ca  daa 
  03f7cb  daa 
  03f7cc  dec esi
  03f7cd  daa 
  03f7ce  daa 
  03f7cf  dec edi
  03f7d0  sub byte ptr [eax], ch
  03f7d2  push eax
  03f7d3  sub byte ptr [eax], ch
  03f7d5  push ecx
  03f7d6  sub dword ptr [ecx], ebp
  03f7d8  push edx
  03f7d9  sub dword ptr [ecx], ebp
  03f7db  push ebx
  03f7dc  sub ch, byte ptr [edx]
  03f7de  push esp
  03f7df  sub ch, byte ptr [edx]
  03f7e1  push ebp
  03f7e2  sub ebp, dword ptr [ebx]
  03f7e4  push esi
  03f7e5  sub ebp, dword ptr [ebx]
  03f7e7  push edi
  03f7e8  sub al, 0x2c
  03f7ea  pop eax
  03f7eb  sub al, 0x2c
  03f7ed  pop ecx
  03f7ee  sub eax, 0x2d2d5a2d
  03f7f3  pop ebx
  03f7f4  pop esp
  03f7f7  pop ebp
  03f7fa  das 
  03f7fb  das 
  03f7fc  pop esi
  03f7fd  das 
  03f7fe  das 
  03f7ff  pop edi
  03f800  xor byte ptr [eax], dh
  03f802  pushal 
  03f803  xor byte ptr [eax], dh
  03f805  popal 
  03f806  xor dword ptr [ecx], esi
  03f808  bound esi, qword ptr [ecx]
  03f80a  xor dword ptr [ebx + 0x32], esp
  03f80d  xor ah, byte ptr [edx + esi + 0x32]
  03f811  xor esi, dword ptr gs:[ebx]
  03f814  xor si, word ptr [ebx]
  03f817  xor al, 0x34
  03f81a  push 0x35693434
  03f81f  xor eax, 0x6b35356a
  03f824  insb byte ptr es:[edi], dx
  03f827  insd dword ptr es:[edi], dx
  03f82a  aaa 
  03f82b  aaa 
  03f82c  outsb dx, byte ptr [esi]
  03f82d  aaa 
  03f82e  aaa 
  03f82f  outsd dx, dword ptr [esi]
  03f830  cmp byte ptr [eax], bh
  03f832  jo 0x3f86c
  03f834  cmp byte ptr [ecx + 0x39], dh
  03f837  cmp dword ptr [edx + 0x39], esi
  03f83a  cmp dword ptr [ebx + 0x3a], esi
  03f83d  cmp dh, byte ptr [edx + edi + 0x3a]
  03f841  jne 0x3f87e
  03f843  cmp esi, dword ptr [esi + 0x3b]
  03f846  cmp esi, dword ptr [edi + 0x3c]
  03f849  cmp al, 0x78
  03f84b  cmp al, 0x3c
  03f84d  jns 0x3f88c
  03f84f  cmp eax, 0x7b3d3d7a
  03f854  jl 0x3f896
  03f858  jge 0x3f89a
  03f85b  aas 
  03f85c  jle 0x3f89d
  03f85e  aas 
  03f85f  jg 0x3f8a1
  03f861  inc eax
  03f862  add byte ptr [eax + 0x40], 0x81
  03f866  inc ecx
  03f867  inc ecx
  03f868  add byte ptr [ecx + 0x41], 0x83
L3f86c:
  03f86c  inc edx
  03f86d  inc edx
  03f86e  test byte ptr [edx + 0x42], al
  03f871  test dword ptr [ebx + 0x43], eax
  03f874  xchg byte ptr [ebx + 0x43], al
  03f877  xchg dword ptr [esp + eax*2 - 0x78], eax
  03f87b  inc esp
  03f87c  inc esp
  03f87d  mov dword ptr [ebp + 0x45], eax
  03f880  mov al, byte ptr [ebp + 0x45]
  03f883  mov eax, dword ptr [esi + 0x46]
  03f886  mov word ptr [esi + 0x46], es
  03f889  lea eax, [edi + 0x47]
L3f88c:
  03f88c  mov es, word ptr [edi + 0x47]
  03f88f  db 0x8f
  03f890  dec eax
  03f891  dec eax
  03f892  nop 
  03f893  dec eax
  03f894  dec eax
  03f895  xchg ecx, eax
L3f896:
  03f896  dec ecx
  03f897  dec ecx
  03f898  xchg edx, eax
  03f899  dec ecx
L3f89a:
  03f89a  dec ecx
  03f89b  xchg ebx, eax
  03f89c  dec edx
L3f89d:
  03f89d  dec edx
  03f89e  xchg esp, eax
  03f89f  dec edx
  03f8a0  dec edx
L3f8a1:
  03f8a1  xchg ebp, eax
  03f8a2  dec ebx
  03f8a3  dec ebx
  03f8a4  xchg esi, eax
  03f8a5  dec ebx
  03f8a6  dec ebx
  03f8a7  xchg edi, eax
  03f8a8  dec esp
  03f8a9  dec esp
  03f8aa  cwde 
  03f8ab  dec esp
  03f8ac  dec esp
  03f8ad  cdq 
  03f8ae  dec ebp
  03f8af  dec ebp
  03f8b0  lcall 0x9c4e, 0x4e9b4d4d
  03f8b7  dec esi
  03f8b8  dec esi
  03f8b9  popfd 
  03f8ba  dec edi
  03f8bb  dec edi
  03f8bc  sahf 
  03f8bd  dec edi
  03f8be  dec edi
  03f8bf  lahf 
  03f8c0  push eax
  03f8c1  push eax
  03f8c2  mov al, byte ptr [0x51a15050]
  03f8c7  push ecx
  03f8c8  mov byte ptr [0x52a35151], al
  03f8cd  push edx
  03f8ce  movsb byte ptr es:[edi], byte ptr [esi]
  03f8cf  push edx
  03f8d0  push edx
  03f8d1  movsd dword ptr es:[edi], dword ptr [esi]
  03f8d2  push ebx
  03f8d3  push ebx
  03f8d4  cmpsb byte ptr [esi], byte ptr es:[edi]
  03f8d5  push ebx
  03f8d6  push ebx
  03f8d7  cmpsd dword ptr [esi], dword ptr es:[edi]
  03f8d8  push esp
  03f8d9  push esp
  03f8da  test al, 0x54
  03f8dc  push esp
  03f8dd  test eax, 0x55aa5555
  03f8e2  push ebp
  03f8e3  stosd dword ptr es:[edi], eax
  03f8e4  push esi
  03f8e5  push esi
  03f8e6  lodsb al, byte ptr [esi]
  03f8e7  push esi
  03f8e8  push esi
  03f8e9  lodsd eax, dword ptr [esi]
  03f8ea  push edi
  03f8eb  push edi
  03f8ec  scasb al, byte ptr es:[edi]
  03f8ed  push edi
  03f8ee  push edi
  03f8ef  scasd eax, dword ptr es:[edi]
  03f8f0  pop eax
  03f8f1  pop eax
  03f8f2  mov al, 0x58
  03f8f4  pop eax
  03f8f5  mov cl, 0x59
  03f8f7  pop ecx
  03f8f8  mov dl, 0x59
  03f8fa  pop ecx
  03f8fb  mov bl, 0x5a
  03f8fd  pop edx
  03f8fe  mov ah, 0x5a
  03f900  pop edx
  03f901  mov ch, 0x5b
  03f903  pop ebx
  03f904  mov dh, 0x5b
  03f906  pop ebx
  03f907  mov bh, 0x5c
  03f909  pop esp
  03f90a  mov eax, 0x5db95c5c
  03f90f  pop ebp
  03f910  mov edx, 0x5ebb5d5d
  03f915  pop esi
  03f916  mov esp, 0x5fbd5e5e
  03f91b  pop edi
  03f91c  mov esi, 0x60bf5f5f
  03f921  pushal 
  03f922  shl byte ptr [eax + 0x60], 0xc1
  03f926  popal 
  03f927  popal 
  03f928  ret 0x6161
  03f92b  ret 
  03f92c  bound esp, qword ptr [edx - 0x3c]
  03f92f  bound esp, qword ptr [edx - 0x3b]
  03f932  arpl word ptr [ebx - 0x3a], sp
  03f935  arpl word ptr [ebx - 0x39], sp
  03f938  enter 0x6464, -0x37
  03f93e  retf 0x6565
  03f943  retf 
  03f944  int3 
  03f947  int 0x67
  03f94b  into 
  03f94d  iretd 
  03f950  push 0x6868d068
  03f955  shr dword ptr [ecx + 0x69], 1
  03f958  shr byte ptr [ecx + 0x69], cl
  03f95b  shr dword ptr [edx + 0x6a], cl
  03f95e  aam 0x6a
  03f960  push -0x2b
  03f962  imul ebp, dword ptr [ebx - 0x2a], 0x6b
  03f966  imul edx, edi, 0x6c
  03f969  insb byte ptr es:[edi], dx
  03f96a  fsubr dword ptr [esp + ebp*2 - 0x27]
  03f96e  insd dword ptr es:[edi], dx
L3f96f:
  03f96f  insd dword ptr es:[edi], dx
  03f970  fisubr dword ptr [ebp + 0x6d]
  03f973  fld xword ptr [esi + 0x6e]
  03f976  fsubr qword ptr [esi + 0x6e]
  03f979  db 0xdd
  03f97a  outsd dx, dword ptr [esi]
  03f97b  outsd dx, dword ptr [esi]
  03f97c  fisubr word ptr [edi + 0x6f]
L3f97f:
  03f97f  fbstp tbyte ptr [eax + 0x70]
  03f982  loopne 0x3f9f4
  03f984  jo 0x3f967
  03f986  jno 0x3f9f9
  03f988  loop 0x3f9fb
  03f98a  jno 0x3f96f
  03f98c  jb 0x3fa00
  03f98e  in al, 0x72
  03f990  jb 0x3f977
  03f992  jae 0x3fa07
  03f994  out 0x73, al
  03f996  jae 0x3f97f
  03f998  je 0x3fa0e
  03f99a  call 0x75ed6e13
  03f99f  jne 0x3f98b
  03f9a1  jne 0x3fa18
  03f9a3  jmp 0x3fa1b
  03f9a5  jbe 0x3f993
  03f9a7  jbe 0x3fa1f
  03f9a9  in eax, dx
  03f9aa  ja 0x3fa23
  03f9ac  out dx, al
  03f9ad  ja 0x3fa26
  03f9af  out dx, eax
  03f9b0  js 0x3fa2a
  03f9b2  db 0xf0
  03f9b3  js 0x3fa2d
  03f9b5  int1 
  03f9b6  jns 0x3fa31
  03f9b8  bnd jns 0x3fa34
  03f9bb  jp 0x3fa38
  03f9be  hlt 
  03f9bf  jp 0x3fa3b
  03f9c1  cmc 
  03f9c2  jnp 0x3fa3f
  03f9c4  idiv byte ptr [ebx + 0x7b]
  03f9c7  idiv dword ptr [esp + edi*2 - 8]
  03f9cb  jl 0x3fa49
  03f9cd  stc 
  03f9ce  jge 0x3fa4d
  03f9d0  cli 
  03f9d1  jge 0x3fa50
  03f9d3  sti 
  03f9d4  jle 0x3fa54
  03f9d6  cld 
  03f9d7  jle 0x3fa57
  03f9d9  std 
  03f9da  jg 0x3fa5b
  03f9dc  db 0xfe
  03f9dd  jg 0x3fa5e
  03f9df  inc dword ptr [eax]
  03f9e1  add byte ptr [eax], al
  03f9e3  add byte ptr [eax], al
  03f9e5  add byte ptr [eax], al
  03f9e7  add byte ptr [eax], al
  03f9e9  add byte ptr [eax], al
  03f9eb  add byte ptr [eax], al
  03f9ed  add byte ptr [eax], al
  03f9ef  add byte ptr [eax], al
  03f9f1  add byte ptr [eax], al
  03f9f3  add byte ptr [eax], al
  03f9f5  add byte ptr [eax], al
  03f9f7  add byte ptr [eax], al
L3f9f9:
  03f9f9  add byte ptr [eax], al
L3f9fb:
  03f9fb  add byte ptr [eax], al
  03f9fd  add byte ptr [eax], al
  03f9ff  add byte ptr [eax], al
  03fa01  add byte ptr [eax], al
  03fa03  add byte ptr [eax], al
  03fa05  add byte ptr [eax], al
L3fa07:
  03fa07  add byte ptr [eax], al
  03fa09  add byte ptr [eax], al
  03fa0b  add byte ptr [eax], al
  03fa0d  add byte ptr [eax], al
  03fa0f  add byte ptr [eax], al
  03fa11  add byte ptr [eax], al
  03fa13  add byte ptr [eax], al
  03fa15  add byte ptr [eax], al
  03fa17  add byte ptr [eax], al
  03fa19  add byte ptr [eax], al
L3fa1b:
  03fa1b  add byte ptr [eax], al
  03fa1d  add byte ptr [eax], al
L3fa1f:
  03fa1f  add byte ptr [eax], al
  03fa21  add byte ptr [eax], al
L3fa23:
  03fa23  add byte ptr [eax], al
  03fa25  add byte ptr [eax], al
  03fa27  add byte ptr [eax], al
  03fa29  add byte ptr [eax], al
  03fa2b  add byte ptr [eax], al
L3fa2d:
  03fa2d  add byte ptr [eax], al
  03fa2f  add byte ptr [eax], al
L3fa31:
  03fa31  add byte ptr [eax], al
  03fa33  add byte ptr [eax], al
  03fa35  add byte ptr [eax], al
  03fa37  add byte ptr [eax], al
  03fa39  add byte ptr [eax], al
L3fa3b:
  03fa3b  add byte ptr [eax], al
  03fa3d  add byte ptr [eax], al
L3fa3f:
  03fa3f  add byte ptr [eax], al
  03fa41  add byte ptr [eax], al
  03fa43  add byte ptr [eax], al
  03fa45  add byte ptr [eax], al
  03fa47  add byte ptr [eax], al
L3fa49:
  03fa49  add byte ptr [eax], al
  03fa4b  add byte ptr [eax], al
L3fa4d:
  03fa4d  add byte ptr [eax], al
  03fa4f  add byte ptr [eax], al
  03fa51  add byte ptr [eax], al
  03fa53  add byte ptr [eax], al
  03fa55  add byte ptr [eax], al
L3fa57:
  03fa57  add byte ptr [eax], al
  03fa59  add byte ptr [eax], al
L3fa5b:
  03fa5b  add byte ptr [eax], al
  03fa5d  add byte ptr [eax], al
  03fa5f  add byte ptr [eax], al
  03fa61  add byte ptr [eax], al
  03fa63  add byte ptr [eax], al
  03fa65  add byte ptr [eax], al
  03fa67  add byte ptr [eax], al
  03fa69  add byte ptr [eax], al
  03fa6b  add byte ptr [eax], al
  03fa6d  add byte ptr [eax], al
  03fa6f  add byte ptr [eax], al
  03fa71  add byte ptr [eax], al
  03fa73  add byte ptr [eax], al
  03fa75  add byte ptr [eax], al
  03fa77  add byte ptr [eax], al
  03fa79  add byte ptr [eax], al
  03fa7b  add byte ptr [eax], al
  03fa7d  add byte ptr [eax], al
  03fa7f  add byte ptr [eax], al
  03fa81  add byte ptr [eax], al
  03fa83  add byte ptr [eax], al
  03fa85  add byte ptr [eax], al
  03fa87  add byte ptr [eax], al
  03fa89  add byte ptr [eax], al
  03fa8b  add byte ptr [eax], al
  03fa8d  add byte ptr [eax], al
  03fa8f  add byte ptr [eax], al
  03fa91  add byte ptr [eax], al
  03fa93  add byte ptr [eax], al
  03fa95  add byte ptr [eax], al
  03fa97  add byte ptr [eax], al
  03fa99  add byte ptr [eax], al
  03fa9b  add byte ptr [eax], al
  03fa9d  add byte ptr [eax], al
  03fa9f  add byte ptr [eax], al
  03faa1  add byte ptr [eax], al
  03faa3  add byte ptr [eax], al
  03faa5  add byte ptr [eax], al
  03faa7  add byte ptr [eax], al
  03faa9  add byte ptr [eax], al
  03faab  add byte ptr [eax], al
  03faad  add byte ptr [eax], al
  03faaf  add byte ptr [eax], al
  03fab1  add byte ptr [eax], al
  03fab3  add byte ptr [eax], al
  03fab5  add byte ptr [eax], al
  03fab7  add byte ptr [eax], al
  03fab9  add byte ptr [eax], al
  03fabb  add byte ptr [eax], al
  03fabd  add byte ptr [eax], al
  03fabf  add byte ptr [eax], al
  03fac1  add byte ptr [eax], al
  03fac3  add byte ptr [eax], al
  03fac5  add byte ptr [eax], al
  03fac7  add byte ptr [eax], al
  03fac9  add byte ptr [eax], al
  03facb  add byte ptr [eax], al
  03facd  add byte ptr [eax], al
  03facf  add byte ptr [eax], al
  03fad1  add byte ptr [eax], al
  03fad3  add byte ptr [eax], al
  03fad5  add byte ptr [eax], al
  03fad7  add byte ptr [eax], al
  03fad9  add byte ptr [eax], al
  03fadb  add byte ptr [eax], al
  03fadd  add byte ptr [eax], al
  03fadf  add byte ptr [eax], al
  03fae1  add byte ptr [eax], al
  03fae3  add byte ptr [eax], al
  03fae5  add byte ptr [eax], al
  03fae7  add byte ptr [eax], al
  03fae9  add byte ptr [eax], al
  03faeb  add byte ptr [eax], al
  03faed  add byte ptr [eax], al
  03faef  add byte ptr [eax], al
  03faf1  add byte ptr [eax], al
  03faf3  add byte ptr [eax], al
  03faf5  add byte ptr [eax], al
  03faf7  add byte ptr [eax], al
  03faf9  add byte ptr [eax], al
  03fafb  add byte ptr [eax], al
  03fafd  add byte ptr [eax], al
  03faff  add byte ptr [eax], al
  03fb01  add byte ptr [eax], al
  03fb03  add byte ptr [eax], al
  03fb05  add byte ptr [eax], al
  03fb07  add byte ptr [eax], al
  03fb09  add byte ptr [eax], al
  03fb0b  add byte ptr [eax], al
  03fb0d  add byte ptr [eax], al
  03fb0f  add byte ptr [eax], al
  03fb11  add byte ptr [eax], al
  03fb13  add byte ptr [eax], al
  03fb15  add byte ptr [eax], al
  03fb17  add byte ptr [eax], al
  03fb19  add byte ptr [eax], al
  03fb1b  add byte ptr [eax], al
  03fb1d  add byte ptr [eax], al
  03fb1f  add byte ptr [eax], al
  03fb21  add byte ptr [eax], al
  03fb23  add byte ptr [eax], al
  03fb25  add byte ptr [eax], al
  03fb27  add byte ptr [eax], al
  03fb29  add byte ptr [eax], al
  03fb2b  add byte ptr [eax], al
  03fb2d  add byte ptr [eax], al
  03fb2f  add byte ptr [eax], al
  03fb31  add byte ptr [eax], al
  03fb33  add byte ptr [eax], al
  03fb35  add byte ptr [eax], al
  03fb37  add byte ptr [eax], al
  03fb39  add byte ptr [eax], al
  03fb3b  add byte ptr [eax], al
  03fb3d  add byte ptr [eax], al
  03fb3f  add byte ptr [eax], al
  03fb41  add byte ptr [eax], al
  03fb43  add byte ptr [eax], al
  03fb45  add byte ptr [eax], al
  03fb47  add byte ptr [eax], al
  03fb49  add byte ptr [eax], al
  03fb4b  add byte ptr [eax], al
  03fb4d  add byte ptr [eax], al
  03fb4f  add byte ptr [eax], al
  03fb51  add byte ptr [eax], al
  03fb53  add byte ptr [eax], al
  03fb55  add byte ptr [eax], al
  03fb57  add byte ptr [eax], al
  03fb59  add byte ptr [eax], al
  03fb5b  add byte ptr [eax], al
  03fb5d  add byte ptr [eax], al
  03fb5f  add byte ptr [eax], al
  03fb61  add byte ptr [eax], al
  03fb63  add byte ptr [eax], al
  03fb65  add byte ptr [eax], al
  03fb67  add byte ptr [eax], al
  03fb69  add byte ptr [eax], al
  03fb6b  add byte ptr [eax], al
  03fb6d  add byte ptr [eax], al
  03fb6f  add byte ptr [eax], al
  03fb71  add byte ptr [eax], al
  03fb73  add byte ptr [eax], al
  03fb75  add byte ptr [eax], al
  03fb77  add byte ptr [eax], al
  03fb79  add byte ptr [eax], al
  03fb7b  add byte ptr [eax], al
  03fb7d  add byte ptr [eax], al
  03fb7f  add byte ptr [eax], al
  03fb81  add byte ptr [eax], al
  03fb83  add byte ptr [eax], al
  03fb85  add byte ptr [eax], al
  03fb87  add byte ptr [eax], al
  03fb89  add byte ptr [eax], al
  03fb8b  add byte ptr [eax], al
  03fb8d  add byte ptr [eax], al
  03fb8f  add byte ptr [eax], al
  03fb91  add byte ptr [eax], al
  03fb93  add byte ptr [eax], al
  03fb95  add byte ptr [eax], al
  03fb97  add byte ptr [eax], al
  03fb99  add byte ptr [eax], al
  03fb9b  add byte ptr [eax], al
  03fb9d  add byte ptr [eax], al
  03fb9f  add byte ptr [eax], al
  03fba1  add byte ptr [eax], al
  03fba3  add byte ptr [eax], al
  03fba5  add byte ptr [eax], al
  03fba7  add byte ptr [eax], al
  03fba9  add byte ptr [eax], al
  03fbab  add byte ptr [eax], al
  03fbad  add byte ptr [eax], al
  03fbaf  add byte ptr [eax], al
  03fbb1  add byte ptr [eax], al
  03fbb3  add byte ptr [eax], al
  03fbb5  add byte ptr [eax], al
  03fbb7  add byte ptr [eax], al
  03fbb9  add byte ptr [eax], al
  03fbbb  add byte ptr [eax], al
  03fbbd  add byte ptr [eax], al
  03fbbf  add byte ptr [eax], al
  03fbc1  add byte ptr [eax], al
  03fbc3  add byte ptr [eax], al
  03fbc5  add byte ptr [eax], al
  03fbc7  add byte ptr [eax], al
  03fbc9  add byte ptr [eax], al
  03fbcb  add byte ptr [eax], al
  03fbcd  add byte ptr [eax], al
  03fbcf  add byte ptr [eax], al
  03fbd1  add byte ptr [eax], al
  03fbd3  add byte ptr [eax], al
  03fbd5  add byte ptr [eax], al
  03fbd7  add byte ptr [eax], al
  03fbd9  add byte ptr [eax], al
  03fbdb  add byte ptr [eax], al
  03fbdd  add byte ptr [eax], al
  03fbdf  add byte ptr [eax], al
  03fbe1  add byte ptr [eax], al
  03fbe3  add byte ptr [eax], al
  03fbe5  add byte ptr [eax], al
  03fbe7  add byte ptr [eax], al
  03fbe9  add byte ptr [eax], al
  03fbeb  add byte ptr [eax], al
  03fbed  add byte ptr [eax], al
  03fbef  add byte ptr [eax], al
  03fbf1  add byte ptr [eax], al
  03fbf3  add byte ptr [eax], al
  03fbf5  add byte ptr [eax], al
  03fbf7  add byte ptr [eax], al
  03fbf9  add byte ptr [eax], al
  03fbfb  add byte ptr [eax], al
  03fbfd  add byte ptr [eax], al
  03fbff  add byte ptr [eax], al
  03fc01  add byte ptr [eax], al
  03fc03  add byte ptr [eax], al
  03fc05  add byte ptr [eax], al
  03fc07  add byte ptr [eax], al
  03fc09  add byte ptr [eax], al
  03fc0b  add byte ptr [eax], al
  03fc0d  add byte ptr [eax], al
  03fc0f  add byte ptr [eax], al
  03fc11  add byte ptr [eax], al
  03fc13  add byte ptr [eax], al
  03fc15  add byte ptr [eax], al
  03fc17  add byte ptr [eax], al
  03fc19  add byte ptr [eax], al
  03fc1b  add byte ptr [eax], al
  03fc1d  add byte ptr [eax], al
  03fc1f  add byte ptr [eax], al
  03fc21  add byte ptr [eax], al
  03fc23  add byte ptr [eax], al
  03fc25  add byte ptr [eax], al
  03fc27  add byte ptr [eax], al
  03fc29  add byte ptr [eax], al
  03fc2b  add byte ptr [eax], al
  03fc2d  add byte ptr [eax], al
  03fc2f  add byte ptr [eax], al
  03fc31  add byte ptr [eax], al
  03fc33  add byte ptr [eax], al
  03fc35  add byte ptr [eax], al
  03fc37  add byte ptr [eax], al
  03fc39  add byte ptr [eax], al
  03fc3b  add byte ptr [eax], al
  03fc3d  add byte ptr [eax], al
  03fc3f  add byte ptr [eax], al
  03fc41  add byte ptr [eax], al
  03fc43  add byte ptr [eax], al
  03fc45  add byte ptr [eax], al
  03fc47  add byte ptr [eax], al
  03fc49  add byte ptr [eax], al
  03fc4b  add byte ptr [eax], al
  03fc4d  add byte ptr [eax], al
  03fc4f  add byte ptr [eax], al
  03fc51  add byte ptr [eax], al
  03fc53  add byte ptr [eax], al
  03fc55  add byte ptr [eax], al
  03fc57  add byte ptr [eax], al
  03fc59  add byte ptr [eax], al
  03fc5b  add byte ptr [eax], al
  03fc5d  add byte ptr [eax], al
  03fc5f  add byte ptr [eax], al
  03fc61  add byte ptr [eax], al
  03fc63  add byte ptr [eax], al
  03fc65  add byte ptr [eax], al
  03fc67  add byte ptr [eax], al
  03fc69  add byte ptr [eax], al
  03fc6b  add byte ptr [eax], al
  03fc6d  add byte ptr [eax], al
  03fc6f  add byte ptr [eax], al
  03fc71  add byte ptr [eax], al
  03fc73  add byte ptr [eax], al
  03fc75  add byte ptr [eax], al
  03fc77  add byte ptr [eax], al
  03fc79  add byte ptr [eax], al
  03fc7b  add byte ptr [eax], al
  03fc7d  add byte ptr [eax], al
  03fc7f  add byte ptr [eax], al
  03fc81  add byte ptr [eax], al
  03fc83  add byte ptr [eax], al
  03fc85  add byte ptr [eax], al
  03fc87  add byte ptr [eax], al
  03fc89  add byte ptr [eax], al
  03fc8b  add byte ptr [eax], al
  03fc8d  add byte ptr [eax], al
  03fc8f  add byte ptr [eax], al
  03fc91  add byte ptr [eax], al
  03fc93  add byte ptr [eax], al
  03fc95  add byte ptr [eax], al
  03fc97  add byte ptr [eax], al
  03fc99  add byte ptr [eax], al
  03fc9b  add byte ptr [eax], al
  03fc9d  add byte ptr [eax], al
  03fc9f  add byte ptr [eax], al
  03fca1  add byte ptr [eax], al
  03fca3  add byte ptr [eax], al
  03fca5  add byte ptr [eax], al
  03fca7  add byte ptr [eax], al
  03fca9  add byte ptr [eax], al
  03fcab  add byte ptr [eax], al
  03fcad  add byte ptr [eax], al
  03fcaf  add byte ptr [eax], al
  03fcb1  add byte ptr [eax], al
  03fcb3  add byte ptr [eax], al
  03fcb5  add byte ptr [eax], al
  03fcb7  add byte ptr [eax], al
  03fcb9  add byte ptr [eax], al
  03fcbb  add byte ptr [eax], al
  03fcbd  add byte ptr [eax], al
  03fcbf  add byte ptr [eax], al
  03fcc1  add byte ptr [eax], al
L3fcc3:
  03fcc3  add byte ptr [eax], al
  03fcc5  add byte ptr [eax], al
  03fcc7  add byte ptr [eax], al
  03fcc9  add byte ptr [eax], al
  03fccb  add byte ptr [eax], al
  03fccd  add byte ptr [eax], al
  03fccf  add byte ptr [eax], al
  03fcd1  add byte ptr [eax], al
  03fcd3  add byte ptr [eax], al
  03fcd5  add byte ptr [eax], al
  03fcd7  add byte ptr [eax], al
  03fcd9  add byte ptr [eax], al
  03fcdb  add byte ptr [eax], al
  03fcdd  add byte ptr [eax], al
  03fcdf  add byte ptr [eax], al
  03fce1  add byte ptr [eax], al
  03fce3  add byte ptr [eax], al
  03fce5  add byte ptr [eax], al
  03fce7  add byte ptr [ecx + ebp*4], ah
  03fcea  jns 0x3fd26
  03fcec  mov al, 0xf
  03fcee  mov eax, dword ptr [0x35]
  03fcf3  add byte ptr [ebx], cl
  03fcf5  mov dword ptr [0x9b950002], eax
  03fcfa  movsb byte ptr es:[edi], byte ptr [esi]
  03fcfb  mov ebp, 0xbd53e4d0
  03fd00  out dx, eax
  03fd01  sar dword ptr [esi - 0x41], cl
  03fd04  rol byte ptr [eax + 0x318743e5], cl
  03fd0a  lodsb al, byte ptr [esi]
  03fd0b  inc ebx
  03fd0c  jbe 0x3fd30
  03fd0e  pushal 
  03fd0f  ret 
  03fd10  sbb eax, 0x4643e5ea
  03fd15  jns 0x3fcc3
  03fd17  inc ebx
  03fd18  in al, dx
  03fd19  cmp ah, byte ptr [eax - 0x3d]
  03fd1c  add byte ptr [eax], al
  03fd1e  mov al, byte ptr [0xa4966343]
  03fd23  mov ebp, 0xbd53d7a7
  03fd28  or esp, edx
  03fd2a  jle 0x3fceb
  03fd2c  add bh, al
  03fd2e  fild dword ptr [edx + 0x3e]
  03fd31  mov ah, 0x14
  03fd33  inc esp
  03fd34  push ss
  03fd35  not byte ptr [eax - 0x3d]
  03fd38  stosb byte ptr es:[edi], al
  03fd39  fild dword ptr [edx - 0x1a]
  03fd3d  adc al, 0x44
  03fd40  adc al, 5
  03fd42  push ecx
  03fd43  ret 
  03fd44  add byte ptr [eax], al
  03fd46  mov al, byte ptr [0x7f3a343]
  03fd4b  mov esi, 0xbca9d57d
  03fd50  mov byte ptr [0x26bf7dad], al
  03fd55  leave 
  03fd56  or eax, 0xc32b3fc4
  03fd5b  inc ebx
  03fd5c  cmp byte ptr [ebp - 0x2323cf1], 0xd
L3fd63:
  03fd63  db 0xc4
  03fd64  ljmp 0xfa4:0x4a43c372
  03fd6b  ret 
  03fd6c  add byte ptr [eax], al
  03fd6e  mov al, byte ptr [0xad34e443]
  03fd73  mov ebp, 0xbd00c617
  03fd78  mov cl, 0xf4
  03fd7a  jle 0x3fd3b
  03fd7c  retf 
  03fd7d  inc ebx
  03fd7e  mov eax, dword ptr [0xf88579c3]
  03fd83  ret 
  03fd84  db 0xc4
  03fd85  ret 
  03fd86  sub al, 0xc3
  03fd88  mov al, byte ptr [0x59c3a17d]
  03fd8d  idiv eax
  03fd8f  ret 
  03fd90  sal dword ptr [edx + 0xc32c], 0xa0
  03fd97  inc ebx
  03fd98  mov al, 0x78
  03fd9a  inc esp
  03fd9b  mov ebx, 0xbd954ec2
  03fda0  push eax
  03fda1  push ecx
  03fda2  jg 0x3fd63
  03fda4  push eax
  03fda5  jp 0x3fe0e
  03fda7  ret 
  03fda8  retf 0xbf57
  03fdab  ret 
  03fdac  mov fs, word ptr [ecx + 0x37]
  03fdaf  inc ecx
  03fdb0  pop edi
  03fdb1  add ch, byte ptr [eax - 0x3d]
  03fdb4  jmp 0x3c7bd7c
  03fdb9  cmp byte ptr gs:[ecx], al
  03fdbd  add byte ptr [eax + 0x5686243], ah
  03fdc3  mov esi, 0xbdce01d3
  03fdc8  sub eax, 0xaabf7c82
  03fdcd  or byte ptr [edi - 0x3e], dl
  03fdd0  xchg edi, eax
  03fdd1  db 0xc7
  03fdd2  int 0xc2
  03fdd4  mov edi, 0x94420df9
  03fdd9  db 0x8f
  03fdda  pop eax
L3fddb:
  03fddb  ret 0x9b12
  03fdde  iretd 
  03fddf  ret 0x8cba
  03fde2  push cs
  03fde3  inc edx
  03fde4  add byte ptr [eax], al
  03fde6  mov al, byte ptr [0x67964a43]
  03fdeb  mov ebp, 0xbcc6ea43
  03fdf0  rol byte ptr [ebx + 0x5cbebf7f], 1
  03fdf6  ja 0x3fdba
  03fdf8  mov dl, 0x4c
  03fdfa  or al, byte ptr [ebx - 0x2c]
  03fdfd  jno 0x3fe3e
  03fdff  inc ecx
  03fe00  or edi, dword ptr [ebx]
  03fe02  jp 0x3fdc6
  03fe04  add eax, 0xcd430aff
  03fe09  sar byte ptr [edi], cl
  03fe0b  inc ecx
  03fe0c  add byte ptr [eax], al
L3fe0e:
  03fe0e  mov al, byte ptr [0x5624a143]
  03fe13  mov ebp, 0x3d15d888
  03fe18  jb 0x3fe94
  03fe1a  jg 0x3fddb
  03fe1c  enter -0x4116, 0x42
  03fe20  dec edx
  03fe21  pushal 
  03fe22  inc ebx
  03fe23  rol byte ptr [esi + 0x764324bb], 0xf
  03fe2a  mov edi, 0x3933942
  03fe2f  shr bl, 0xc3
  03fe32  and al, 0x43
  03fe34  add byte ptr [eax], al
  03fe36  mov al, byte ptr [0xb7be7343]
  03fe3b  mov ebp, 0xbb83cfd8
  03fe40  sub al, 0xf7
  03fe42  jle 0x3fe03
  03fe44  jecxz 0x3fe2d
  03fe46  movsd dword ptr es:[edi], dword ptr [esi]
  03fe47  inc edx
  03fe48  push ds
  03fe49  add al, 0xe6
  03fe4b  ret 0x388c
  03fe4e  dec eax
  03fe4f  inc edx
  03fe50  and eax, 0xd442a760
  03fe55  pop ebp
  03fe56  out 0xc2, eax
  03fe58  db 0x8d
  03fe59  test dword ptr [edi + 0x42], 0x43a00000
  03fe60  out dx, al
  03fe61  mov edi, 0xec10bdb7
  03fe66  cmp dword ptr [ebx - 0x408108d8], -0x3f
  03fe6d  ret 0xc325
  03fe70  div eax
  03fe72  mov dh, 0xc3
  03fe74  hlt 
  03fe75  jl 0x3feb8
  03fe77  inc edx
  03fe78  pop es
  03fe79  cmp dword ptr [esi], esp
  03fe7b  ret 
  03fe7c  push esi
  03fe7d  bound esi, qword ptr [edi + 0x41ab3dc3]
  03fe83  inc edx
  03fe84  add byte ptr [eax], al
  03fe86  mov al, byte ptr [0xf131ce43]
  03fe8b  mov ebp, 0xbd6e0993
  03fe90  db 0x62
  03fe91  enter -0x4083, -0x3d
  03fe95  test dword ptr [eax + 0x26e18cc3], esp
  03fe9b  les esp, ptr [eax + 1]
  03fe9e  scasd eax, dword ptr es:[edi]
  03fe9f  inc edx
  03fea0  adc eax, 0x1dc3a0c0
  03fea5  sbb ah, byte ptr [edi]
  03fea7  les ebx, ptr [esi + 0x42af37]
  03fead  add byte ptr [eax - 0x5bfa55bd], ah
  03feb3  mov ebp, 0xbdd952c2
L3feb8:
  03feb8  inc ebx
  03feb9  mov edx, 0x6d89bf7d
  03febe  sbb al, ah
  03fec0  test al, 0xb
  03fec2  mov dh, 0xc3
  03fec4  stosd dword ptr es:[edi], eax
  03fec5  sub eax, 0xa5df42af
  03feca  sbb al, ah
  03fecc  push 0x46
  03fece  mov dh, 0xc3
  03fed0  inc eax
  03fed1  imul ebp, dword ptr [edi - 0x5fffffbe], 0x43
  03fed8  push ss
  03fed9  sbb dl, al
  03fedb  mov ebp, 0x3c63cd7c
  03fee0  insd dword ptr es:[edi], dx
  03fee1  cmpsb byte ptr [esi], byte ptr es:[edi]
  03fee2  jle 0x3fea3
  03fee4  adc eax, 0xe5c3c855
  03fee9  mov ah, 0x2c
  03feeb  inc ebx
  03feec  popal 
  03feed  adc dword ptr [ecx + 0x41], ebp
  03fef0  dec cl
  03fef2  enter 0x3c3, 0x1a
  03fef6  sub eax, 0x6aa62743
  03fefb  inc ecx
  03fefc  add byte ptr [eax], al
  03fefe  mov al, byte ptr [0xa90afd43]
  03ff03  mov esp, 0x3dffd1fa
  03ff08  movsd dword ptr es:[edi], dword ptr [esi]
  03ff09  db 0xf0
L3ff0a:
  03ff0a  jge 0x3fecb
  03ff0c  sbb al, 0xd
  03ff0e  sub eax, 0xfdee18c2
  03ff13  inc ebx
  03ff14  inc edx
  03ff15  and dword ptr [ecx + 0x2d4ca5be], edx
  03ff1b  ret 0x6cd3
  03ff1e  inc byte ptr [ebx - 0x64]
  03ff21  inc esp
  03ff22  and dword ptr [esi + 0x43a00000], edi
  03ff28  outsd dx, dword ptr [esi]
  03ff29  shr byte ptr [edx + 0x7b1d083d], 1
  03ff2f  cmp eax, 0xbf7e9ff2
  03ff34  rcr byte ptr [ebx + 0x249342f0], 0x69
  03ff3b  inc ebx
  03ff3c  jae 0x3ff0a
  03ff3e  int1 
  03ff3f  ror dword ptr [edx - 0x4fbd0e5a], 0xfd
  03ff46  imul eax, dword ptr [ebx - 0x19], 0xc1f107
  03ff4d  add byte ptr [eax - 0x19a1a7bd], ah
  03ff53  cmp eax, 0x3bfb282a
  03ff58  and ebx, dword ptr [esi + 0x7e]
  03ff5b  mov edi, 0x43663a85
  03ff60  xchg ebx, eax
  03ff61  sbb al, 0xa5
  03ff63  inc edx
  03ff64  nop 
  03ff65  mov es, word ptr [edi + 0x6732a9c1]
  03ff6b  inc ebx
  03ff6c  retf 0xa58c
  03ff6f  inc edx
  03ff70  pop edi
  03ff71  stosb byte ptr es:[edi], al
  03ff72  xchg cl, al
  03ff74  add byte ptr [eax], al
  03ff76  mov al, byte ptr [0xa93ac243]
  03ff7b  cmp eax, 0xbd3a7fa3
  03ff80  scasb al, byte ptr es:[edi]
  03ff81  fstp xword ptr [esi - 0x41]
  03ff84  mov edx, 0x834362fe
  03ff89  xor al, 0xba
  03ff8b  ret 0xc845
L3ff8e:
  03ff8e  push ss
  03ff8f  inc edx
  03ff90  test eax, 0x1a4363dc
  03ff95  das 
  03ff96  mov ebx, 0x1728e0c2
  03ff9b  inc edx
  03ff9c  add byte ptr [eax], al
  03ff9e  mov al, byte ptr [0xa9c6a543]
  03ffa3  mov esp, 0xbda9e7b1
  03ffa8  test byte ptr [edi], 0x7f
  03ffab  mov edi, 0xc24c03ae
  03ffb0  and cl, byte ptr [eax + 0x47]
  03ffb3  ret 
  03ffb4  inc eax
  03ffb5  db 0x0f
  03ffb6  jge 0x3fff9
  03ffb8  pop esi
  03ffb9  test dword ptr [edx + eax*8 - 0x30], 0x80c3483f
  03ffc1  insd dword ptr es:[edi], dx
  03ffc2  jle 0x40005
  03ffc4  add byte ptr [eax], al
  03ffc6  mov al, byte ptr [0x334b3a43]
  03ffcb  mov ebp, 0x3c442b39
  03ffd0  jnp 0x3ff8e
  03ffd2  jg 0x3ff93
  03ffd4  pop ss
  03ffd5  insd dword ptr es:[edi], dx
  03ffd6  pop ebx
  03ffd8  dec ebp
  03ffd9  nop 
  03ffda  movsb byte ptr es:[edi], byte ptr [esi]
  03ffdb  inc edx
  03ffdc  mov esi, 0xeae24154
  03ffe2  pop ebx
  03ffe4  sbb eax, 0x5642a4ec
  03ffe9  ja 0x40040
  03ffeb  inc ecx
  03ffec  add byte ptr [eax], al
  03ffee  mov al, byte ptr [0x6b96543]
  03fff3  mov esi, 0x3e9b913e
  03fff8  db 0x65
L3fff9:
  03fff9  db 0x8f
  03fffa  jno 0x3ffbb
  03fffc  in eax, dx
  03fffd  arpl sp, sp
  03ffff  ret 0x7ed9
  040002  inc bx
  040004  cmc 
L40005:
  040005  scasb al, byte ptr es:[edi]
  040006  rol dword ptr [edx - 9], cl
  040009  dec edx
  04000a  in eax, 0xc2
  04000c  push ds
  04000d  push ebx
  04000e  inc ebx
  040010  loopne 0x40069
  040012  aam 0x42
  040014  add byte ptr [eax], al
  040016  mov al, byte ptr [0x8d6fc643]
  04001b  cmp al, 0xb7
  04001d  out 0xde, al
  04001f  cmp al, 0xf7
  040021  fnstsw word ptr [edi - 0x41]
  040024  db 0xc6
  040025  cmp al, 0xc
  040027  ret 
  040028  mov dh, ch
  04002a  iretd 
  04002b  inc ebx
  04002c  test byte ptr [esi + 0x54], bl
  04002f  inc ebx
  040030  pop es
  040031  mov ch, 0xc
  040033  ret 
  040034  test dword ptr [esi - 0x30], esp
  040037  inc ebx
  040038  xchg edi, eax
  040039  bound edx, qword ptr [ebx + eax*2]
  04003d  add byte ptr [eax - 0x318304bd], ah
  040043  mov ebp, 0xbc882e4e
  040048  test al, 0x7e
  04004b  mov edi, 0xc3a20310
  040050  rcr word ptr [ebx + 0x2b468943], 1
  040057  inc ebx
  040058  and cl, byte ptr [edx - 0x3d]
  04005c  push edi
  04005d  cmp bl, byte ptr [ebx + eax*2 + 0x432b51d7]
  040064  add byte ptr [eax], al
  040066  mov al, byte ptr [0xcf535043]
  04006b  cmp ecx, dword ptr [esi]
  04006d  clc 
  04006e  cld 
  04006f  mov ebp, 0xbf7e08cf
  040074  fist dword ptr [esi + 0x5a63c405]
  04007a  ret 0xd2c2
  04007d  push esi
  04007e  mov ecx, 0x5d66340
  040083  les edx, ptr [eax]
  040085  cwde 
  040086  ret 0xcec2
  040089  popfd 
  04008a  mov ecx, 0xa0000040
  04008f  inc ebx
  040090  adc esi, dword ptr [esi + 0x15]
  040093  mov ebp, 0xbd2f8ed5
  040098  sbb byte ptr [eax - 0x6d0b4081], bl
  04009e  ret 
  0400a0  imul byte ptr [ebx]
  0400a2  xchg ebx, eax
  0400a3  ret 
  0400a4  cdq 
  0400a6  add byte ptr [ecx - 0x25], 7
  0400aa  aas 
L400ab:
  0400ab  ret 
  0400ac  sahf 
  0400ad  popfd 
  0400ae  xchg ebx, eax
  0400af  ret 
  0400b0  movsb byte ptr es:[edi], byte ptr [esi]
  0400b1  or dword ptr [ebx - 0x5fffffbf], eax
  0400b7  inc ebx
  0400b8  adc dword ptr [ebx], ebx
  0400ba  pushfd 
  0400bb  cmp al, 0xad
  0400bd  sbb al, 0x9f
  0400bf  mov ebp, 0xbf7f2dfc
  0400c4  hlt 
  0400c5  mov edx, 0x5e054391
  0400ca  add ebx, -0x4d
  0400cd  lcall 0x4392, 0x11c44185
  0400d4  test al, 0xbb
  0400d6  add ebx, 5
  0400d9  sub al, byte ptr [esi - 0x5fffffbf]
  0400df  inc ebx
  0400e0  xor cl, bl
  0400e2  imul edi, dword ptr [0xbdff29ec], -0x2e
  0400e9  xchg ebx, eax
  0400ea  jge 0x400ab
  0400ec  mov ebx, 0x5a42e19c
  0400f1  mov al, byte ptr [0x3842c245]
  0400f6  adc eax, 0xe3021ac1
  0400fb  inc edx
  0400fc  sahf 
  0400fd  jno 0x40147
  0400ff  ret 0x2737
  040102  adc eax, ecx
  040104  add byte ptr [eax], al
  040106  mov al, byte ptr [0x73daf243]
  04010b  cmp al, 0x84
  04010d  mov dl, 0xa6
  04010f  mov ebp, 0xbf7f1f44
  040114  mov al, 0xd3
  040116  push esp
  040117  inc ecx
  040118  movsb byte ptr es:[edi], byte ptr [esi]
  040119  mov cl, 0x32
  04011b  inc edx
  04011c  cmp ecx, dword ptr [ebx]
  04011e  mov ah, 0xc1
  040120  mov esp, 0x4641632a
  040125  out dx, al
  040126  xor byte ptr [edx + 0x16], al
  040129  cmpsb byte ptr [esi], byte ptr es:[edi]
  04012a  mov bl, 0xc1
  04012c  add byte ptr [eax], al
  04012e  mov al, byte ptr [0x285da543]
  040133  ljmp 0x796c:0x9dbe1d92
  04013b  mov edi, 0xc315e5c1
  040140  mov eax, dword ptr [0xc643983e]
  040145  and eax, 0x970c292
  04014a  adc eax, 0x987f46c3
  04014f  inc ebx
  040150  inc ecx
  040151  add al, 0x92
  040153  ret 0
  040156  mov al, byte ptr [0x28510643]
  04015b  dec esp
  04015d  sbb byte ptr [0x796dcebe], 0xbf
  040164  sub dword ptr [0x8fbfc4a4], ebp
  04016a  cmp byte ptr [ebx - 0x37], al
  04016d  cmp byte ptr [edx - 0x3d], 0x9d
  040171  dec ebx
  040172  movsb byte ptr es:[edi], byte ptr [esi]
L40173:
  040173  db 0xc4
  040174  cmc 
  040175  retf 
  040176  cmp byte ptr [ebx + 0x64], al
  040179  mov bl, 0x7a
  04017b  ret 
  04017c  add byte ptr [eax], al
  04017e  mov al, byte ptr [0x4f93bb43]
  040183  mov ebp, 0x3d51b88e
  040188  mov eax, 0x56bf7f55
  04018d  or ch, byte ptr [edx]
  04018f  les ebx, ptr [ecx]
  040191  xor al, 0x2d
  040193  inc edx
  040194  push esi
  040195  mov edx, 0x4a304166
  04019a  sub al, ah
  04019c  xchg ebp, eax
  04019d  pushal 
  04019e  sub eax, 0x67931942
  0401a3  inc ecx
  0401a4  add byte ptr [eax], al
  0401a6  mov al, byte ptr [0x4f47ca43]
  0401ab  mov ebp, 0x3d51bb7a
  0401b0  hlt 
  0401b1  push ebp
  0401b2  jg 0x40173
  0401b4  add edi, 0x50bac379
  0401ba  mov ebx, 0xc1f0d9f8
  0401c0  jg 0x4022e
  0401c2  jp 0x40187
  0401c4  cwde 
  0401c5  mov dl, 0xc7
  0401c7  ret 
  0401c8  arpl di, sp
  0401ca  db 0xf0
  0401cb  rol dword ptr [eax], 0
  0401ce  mov al, byte ptr [0x790f3643]
  0401d3  mov esp, 0xbd70669f
  0401d8  jno 0x40161
  0401da  jg 0x4019b
  0401dc  rol dword ptr [esi + edi*8 - 0x3f], 1
  0401e0  daa 
  0401e1  inc edi
  0401e2  retf 0xfdc3
  0401e5  pop ss
  0401e6  int3 
  0401e7  inc ecx
  0401e8  outsd dx, dword ptr [esi]
  0401e9  sub edi, edi
L401eb:
  0401eb  rcr dword ptr [ebx], 0xc6
  0401ee  retf 0xf0c3
  0401f1  xchg edx, eax
  0401f2  int3 
  0401f3  inc ecx
  0401f4  add byte ptr [eax], al
  0401f6  mov al, byte ptr [0x983ad43]
  0401fb  sub bl, byte ptr ds:[edx]
  0401fe  outsd dx, dword ptr [esi]
  0401ff  mov esi, 0xbf7689bc
  040204  inc bp
  040206  add byte ptr [ebx - 0x7f], 0xba
  04020a  xchg edi, eax
  04020b  ret 
  04020c  out 0x26, eax
  04020e  call 0x82930d55
  040213  inc ebx
  040214  outsd dx, dword ptr [esi]
  040215  sbb eax, 0xafedc398
  04021a  call 0xa0040261
  04021f  inc ebx
  040220  and cl, byte ptr [edi]
  040222  dec edx
  040223  cmp ecx, eax
  040225  mov byte ptr [0x6730bd8b], al
  04022a  jg 0x401eb
  04022c  out dx, al
  04022d  adc ecx, 0x853d7e43
  040233  ret 
  040234  sub bl, byte ptr [ebx - 0x1675bd38]
  04023a  rol dword ptr [ebx + 0x75], 1
  04023d  mov byte ptr [ebp - 0x374f0f3d], al
  040243  inc edx
  040244  add byte ptr [eax], al
  040246  mov al, byte ptr [0x939b6d43]
  04024b  mov ebx, 0xbc69cfb6
  040250  test eax, 0xbebf7ff8
  040255  jb 0x40259
  040257  inc esp
  040258  mov eax, dword ptr [0xf4430042]
  04025d  adc byte ptr [ecx], ah
  04025f  inc edx
  040260  or esi, dword ptr [eax - 0x73d3bbfe]
  040266  add byte ptr [ebx + 0x56], al
  040269  or byte ptr [ecx], ah
  04026b  inc edx
  04026c  add byte ptr [eax], al
  04026e  mov al, byte ptr [0x89496a43]
  040273  cmp eax, 0xbd895a38
  040278  mov ah, 0xd8
  04027a  jle 0x4023b
  04027c  adc byte ptr [edx - 0x57debc9e], 0x42
  040283  ret 
  040284  ret 0x25cd
  040287  inc ecx
  040288  pop ds
  040289  dec edx
  04028a  arpl word ptr [ebx - 0x26], ax
  04028d  pop eax
  04028e  inc ebx
  04028f  ret 
  040290  push ss
  040291  push edx
  040292  daa 
  040293  inc ecx
  040294  add byte ptr [eax], al
  040296  mov al, byte ptr [0xc39cd943]
  04029b  mov esp, 0xbd6904f7
  0402a0  and eax, 0xa0bf7f83
  0402a5  scasb al, byte ptr es:[edi]
  0402a6  inc edi
  0402a7  ret 0x574
  0402aa  mov esi, 0x877ae1c3
  0402af  inc eax
  0402b0  sbb al, 0x22
  0402b2  dec eax
  0402b3  ret 0x8469
  0402b6  mov esi, 0x89601bc3
  0402bb  inc eax
  0402bc  add byte ptr [eax], al
  0402be  mov al, byte ptr [0x43]
  0402c3  add byte ptr [eax], al
  0402c5  add byte ptr [eax], al
  0402c7  add byte ptr [eax], al
  0402c9  add byte ptr [eax], al
  0402cb  add byte ptr [eax], al
  0402cd  add byte ptr [eax], al
  0402cf  add byte ptr [eax], al
  0402d1  add byte ptr [eax], al
  0402d3  add byte ptr [eax], al
  0402d5  add byte ptr [eax], al
  0402d7  add byte ptr [eax], al
  0402d9  add byte ptr [eax], al
  0402db  add byte ptr [eax], al
  0402dd  add byte ptr [eax], al
  0402df  add byte ptr [eax], al
  0402e1  add byte ptr [eax], al
  0402e3  add byte ptr [eax], al
  0402e5  add byte ptr [eax], al
  0402e7  add byte ptr [eax], al
  0402e9  add byte ptr [eax], al
  0402eb  add byte ptr [eax], al
  0402ed  add byte ptr [eax], al
  0402ef  add byte ptr [eax], al
  0402f1  add byte ptr [eax], al
  0402f3  add byte ptr [eax], al
  0402f5  add byte ptr [eax], al
  0402f7  add byte ptr [eax], al
  0402f9  add byte ptr [eax], al
  0402fb  add byte ptr [eax], al
  0402fd  add byte ptr [eax], al
  0402ff  add byte ptr [eax], al
  040301  add byte ptr [eax], al
  040303  add byte ptr [eax], al
  040305  add byte ptr [eax], al
  040307  add byte ptr [eax], al
  040309  add byte ptr [eax], al
  04030b  add byte ptr [eax], al
  04030d  add byte ptr [eax], al
  04030f  add byte ptr [eax], al
  040311  add byte ptr [eax], al
  040313  add byte ptr [eax], al
  040315  add byte ptr [eax], al
  040317  add byte ptr [eax], al
  040319  add byte ptr [eax], al
  04031b  add byte ptr [eax], al
  04031d  add byte ptr [eax], al
  04031f  add byte ptr [eax], al
  040321  add byte ptr [eax], al
  040323  add byte ptr [eax], al
  040325  add byte ptr [eax], al
  040327  add byte ptr [eax], al
  040329  add byte ptr [eax], al
  04032b  add byte ptr [eax], al
  04032d  add byte ptr [eax], al
  04032f  add byte ptr [eax], al
  040331  add byte ptr [eax], al
  040333  add byte ptr [eax], al
  040335  add byte ptr [eax], al
  040337  add byte ptr [eax], al
  040339  add byte ptr [eax], al
  04033b  add byte ptr [eax], al
  04033d  add byte ptr [eax], al
  04033f  add byte ptr [eax], al
  040341  add byte ptr [eax], al
  040343  add byte ptr [eax], al
  040345  add byte ptr [eax], al
  040347  add byte ptr [eax], al
  040349  add byte ptr [eax], al
  04034b  add byte ptr [eax], al
  04034d  add byte ptr [eax], al
  04034f  add byte ptr [eax], al
  040351  add byte ptr [eax], al
  040353  add byte ptr [eax], al
  040355  add byte ptr [eax], al
  040357  add byte ptr [eax], al
  040359  add byte ptr [eax], al
  04035b  add byte ptr [eax], al
  04035d  add byte ptr [eax], al
  04035f  add byte ptr [eax], al
  040361  add byte ptr [eax], al
  040363  add byte ptr [eax], al
  040365  add byte ptr [eax], al
  040367  add byte ptr [eax], al
  040369  add byte ptr [eax], al
  04036b  add byte ptr [eax], al
  04036d  add byte ptr [eax], al
  04036f  add byte ptr [eax], al
  040371  add byte ptr [eax], al
  040373  add byte ptr [eax], al
  040375  add byte ptr [eax], al
  040377  add byte ptr [eax], al
  040379  add byte ptr [eax], al
  04037b  add byte ptr [eax], al
  04037d  add byte ptr [eax], al
  04037f  add byte ptr [eax], al
  040381  add byte ptr [eax], al
  040383  add byte ptr [eax], al
  040385  add byte ptr [eax], al
  040387  add byte ptr [eax], al
  040389  add byte ptr [eax], al
  04038b  add byte ptr [eax], al
  04038d  add byte ptr [eax], al
  04038f  add byte ptr [eax], al
  040391  add byte ptr [eax], al
  040393  add byte ptr [eax], al
  040395  add byte ptr [eax], al
  040397  add byte ptr [eax], al
  040399  add byte ptr [eax], al
  04039b  add byte ptr [eax], al
  04039d  add byte ptr [eax], al
  04039f  add byte ptr [eax], al
  0403a1  add byte ptr [eax], al
  0403a3  add byte ptr [eax], al
  0403a5  add byte ptr [eax], al
  0403a7  add byte ptr [eax], al
  0403a9  add byte ptr [eax], al
  0403ab  add byte ptr [eax], al
  0403ad  add byte ptr [eax], al
  0403af  add byte ptr [eax], al
  0403b1  add byte ptr [eax], al
  0403b3  add byte ptr [eax], al
  0403b5  add byte ptr [eax], al
  0403b7  add byte ptr [eax], al
  0403b9  add byte ptr [eax], al
  0403bb  add byte ptr [eax], al
  0403bd  add byte ptr [eax], al
  0403bf  add byte ptr [eax], al
  0403c1  add byte ptr [eax], al
  0403c3  add byte ptr [eax], al
  0403c5  add byte ptr [eax], al
  0403c7  add byte ptr [eax], al
  0403c9  add byte ptr [eax], al
  0403cb  add byte ptr [eax], al
  0403cd  add byte ptr [eax], al
  0403cf  add byte ptr [eax], al
  0403d1  add byte ptr [eax], al
  0403d3  add byte ptr [eax], al
  0403d5  add byte ptr [eax], al
  0403d7  add byte ptr [eax], al
  0403d9  add byte ptr [eax], al
  0403db  add byte ptr [eax], al
  0403dd  add byte ptr [eax], al
  0403df  add byte ptr [eax], al
  0403e1  add byte ptr [eax], al
  0403e3  add byte ptr [eax], al
  0403e5  add byte ptr [eax], al
  0403e7  add byte ptr [eax], al
  0403e9  add byte ptr [eax], al
  0403eb  add byte ptr [eax], al
  0403ed  add byte ptr [eax], al
  0403ef  add byte ptr [eax], al
  0403f1  add byte ptr [eax], al
  0403f3  add byte ptr [eax], al
  0403f5  add byte ptr [eax], al
  0403f7  add byte ptr [eax], al
  0403f9  add byte ptr [eax], al
  0403fb  add byte ptr [eax], al
  0403fd  add byte ptr [eax], al
  0403ff  add byte ptr [eax], al
  040401  add byte ptr [eax], al
  040403  add byte ptr [eax], al
  040405  add byte ptr [eax], al
  040407  add byte ptr [eax], al
  040409  add byte ptr [eax], al
  04040b  add byte ptr [eax], al
  04040d  add byte ptr [eax], al
  04040f  add byte ptr [eax], al
  040411  add byte ptr [eax], al
  040413  add byte ptr [eax], al
  040415  add byte ptr [eax], al
  040417  add byte ptr [eax], al
  040419  add byte ptr [eax], al
  04041b  add byte ptr [eax], al
  04041d  add byte ptr [eax], al
  04041f  add byte ptr [eax], al
  040421  add byte ptr [eax], al
  040423  add byte ptr [eax], al
  040425  add byte ptr [eax], al
  040427  add byte ptr [eax], al
  040429  add byte ptr [eax], al
  04042b  add byte ptr [eax], al
  04042d  add byte ptr [eax], al
  04042f  add byte ptr [eax], al
  040431  add byte ptr [eax], al
  040433  add byte ptr [eax], al
  040435  add byte ptr [eax], al
  040437  add byte ptr [eax], al
  040439  add byte ptr [eax], al
  04043b  add byte ptr [eax], al
  04043d  add byte ptr [eax], al
  04043f  add byte ptr [eax], al
  040441  add byte ptr [eax], al
  040443  add byte ptr [eax], al
  040445  add byte ptr [eax], al
  040447  add byte ptr [eax], al
  040449  add byte ptr [eax], al
  04044b  add byte ptr [eax], al
  04044d  add byte ptr [eax], al
  04044f  add byte ptr [eax], al
  040451  add byte ptr [eax], al
  040453  add byte ptr [eax], al
  040455  add byte ptr [eax], al
  040457  add byte ptr [eax], al
  040459  add byte ptr [eax], al
  04045b  add byte ptr [eax], al
  04045d  add byte ptr [eax], al
  04045f  add byte ptr [eax], al
  040461  add byte ptr [eax], al
  040463  add byte ptr [eax], al
  040465  add byte ptr [eax], al
  040467  add byte ptr [eax], al
  040469  add byte ptr [eax], al
  04046b  add byte ptr [eax], al
  04046d  add byte ptr [eax], al
  04046f  add byte ptr [eax], al
  040471  add byte ptr [eax], al
  040473  add byte ptr [eax], al
  040475  add byte ptr [eax], al
  040477  add byte ptr [eax], al
  040479  add byte ptr [eax], al
  04047b  add byte ptr [eax], al
  04047d  add byte ptr [eax], al
  04047f  add byte ptr [eax], al
  040481  add byte ptr [eax], al
  040483  add byte ptr [eax], al
  040485  add byte ptr [eax], al
  040487  add byte ptr [eax], al
  040489  add byte ptr [eax], al
  04048b  add byte ptr [eax], al
  04048d  add byte ptr [eax], al
  04048f  add byte ptr [eax], al
  040491  add byte ptr [eax], al
  040493  add byte ptr [eax], al
  040495  add byte ptr [eax], al
  040497  add byte ptr [eax], al
  040499  add byte ptr [eax], al
  04049b  add byte ptr [eax], al
  04049d  add byte ptr [eax], al
  04049f  add byte ptr [eax], al
  0404a1  add byte ptr [eax], al
  0404a3  add byte ptr [eax], al
  0404a5  add byte ptr [eax], al
  0404a7  add byte ptr [eax], al
  0404a9  add byte ptr [eax], al
  0404ab  add byte ptr [eax], al
  0404ad  add byte ptr [eax], al
  0404af  add byte ptr [eax], al
  0404b1  add byte ptr [eax], al
  0404b3  add byte ptr [eax], al
  0404b5  add byte ptr [eax], al
  0404b7  add byte ptr [eax], al
  0404b9  add byte ptr [eax], al
  0404bb  add byte ptr [eax], al
  0404bd  add byte ptr [eax], al
  0404bf  add byte ptr [eax], al
  0404c1  add byte ptr [eax], al
  0404c3  add byte ptr [eax], al
  0404c5  add byte ptr [eax], al
  0404c7  add byte ptr [eax], al
  0404c9  add byte ptr [eax], al
  0404cb  add byte ptr [eax], al
  0404cd  add byte ptr [eax], al
  0404cf  add byte ptr [eax], al
  0404d1  add byte ptr [eax], al
  0404d3  add byte ptr [eax], al
  0404d5  add byte ptr [eax], al
  0404d7  add byte ptr [eax], al
  0404d9  add byte ptr [eax], al
  0404db  add byte ptr [eax], al
  0404dd  add byte ptr [eax], al
  0404df  add byte ptr [eax], al
  0404e1  add byte ptr [eax], al
  0404e3  add byte ptr [eax], al
  0404e5  add byte ptr [eax], al
  0404e7  add byte ptr [eax], al
  0404e9  add byte ptr [eax], al
  0404eb  add byte ptr [eax], al
  0404ed  add byte ptr [eax], al
  0404ef  add byte ptr [eax], al
  0404f1  add byte ptr [eax], al
  0404f3  add byte ptr [eax], al
  0404f5  add byte ptr [eax], al
  0404f7  add byte ptr [eax], al
  0404f9  add byte ptr [eax], al
  0404fb  add byte ptr [eax], al
  0404fd  add byte ptr [eax], al
  0404ff  add byte ptr [eax], al
  040501  add byte ptr [eax], al
  040503  add byte ptr [eax], al
  040505  add byte ptr [eax], al
  040507  add byte ptr [eax], al
  040509  add byte ptr [eax], al
  04050b  add byte ptr [eax], al
  04050d  add byte ptr [eax], al
  04050f  add byte ptr [eax], al
  040511  add byte ptr [eax], al
  040513  add byte ptr [eax], al
  040515  add byte ptr [eax], al
  040517  add byte ptr [eax], al
  040519  add byte ptr [eax], al
  04051b  add byte ptr [eax], al
  04051d  add byte ptr [eax], al
  04051f  add byte ptr [eax], al
  040521  add byte ptr [eax], al
  040523  add byte ptr [eax], al
  040525  add byte ptr [eax], al
  040527  add byte ptr [eax], al
  040529  add byte ptr [eax], al
  04052b  add byte ptr [eax], al
  04052d  add byte ptr [eax], al
  04052f  add byte ptr [eax], al
  040531  add byte ptr [eax], al
  040533  add byte ptr [eax], al
  040535  add byte ptr [eax], al
  040537  add byte ptr [eax], al
  040539  add byte ptr [eax], al
  04053b  add byte ptr [eax], al
  04053d  add byte ptr [eax], al
  04053f  add byte ptr [eax], al
  040541  add byte ptr [eax], al
  040543  add byte ptr [eax], al
  040545  add byte ptr [eax], al
  040547  add byte ptr [eax], al
  040549  add byte ptr [eax], al
  04054b  add byte ptr [eax], al
  04054d  add byte ptr [eax], al
  04054f  add byte ptr [eax], al
  040551  add byte ptr [eax], al
  040553  add byte ptr [eax], al
  040555  add byte ptr [eax], al
  040557  add byte ptr [eax], al
  040559  add byte ptr [eax], al
  04055b  add byte ptr [eax], al
  04055d  add byte ptr [eax], al
  04055f  add byte ptr [eax], al
  040561  add byte ptr [eax], al
  040563  add byte ptr [eax], al
  040565  add byte ptr [eax], al
  040567  add byte ptr [eax], al
  040569  add byte ptr [eax], al
  04056b  add byte ptr [eax], al
  04056d  add byte ptr [eax], al
  04056f  add byte ptr [eax], al
  040571  add byte ptr [eax], al
  040573  add byte ptr [eax], al
  040575  add byte ptr [eax], al
  040577  add byte ptr [eax], al
  040579  add byte ptr [eax], al
  04057b  add byte ptr [eax], al
  04057d  add byte ptr [eax], al
  04057f  add byte ptr [eax], al
  040581  add byte ptr [eax], al
  040583  add byte ptr [eax], al
  040585  add byte ptr [eax], al
  040587  add byte ptr [eax], al
  040589  add byte ptr [eax], al
  04058b  add byte ptr [eax], al
  04058d  add byte ptr [eax], al
  04058f  add byte ptr [eax], al
  040591  add byte ptr [eax], al
  040593  add byte ptr [eax], al
  040595  add byte ptr [eax], al
  040597  add byte ptr [eax], al
  040599  add byte ptr [eax], al
  04059b  add byte ptr [eax], al
  04059d  add byte ptr [eax], al
  04059f  add byte ptr [eax], al
  0405a1  add byte ptr [eax], al
  0405a3  add byte ptr [eax], al
  0405a5  add byte ptr [eax], al
  0405a7  add byte ptr [eax], al
  0405a9  add byte ptr [eax], al
  0405ab  add byte ptr [eax], al
  0405ad  add byte ptr [eax], al
  0405af  add byte ptr [eax], al
  0405b1  add byte ptr [eax], al
  0405b3  add byte ptr [eax], al
  0405b5  add byte ptr [eax], al
  0405b7  add byte ptr [eax], al
  0405b9  add byte ptr [eax], al
  0405bb  add byte ptr [eax], al
  0405bd  add byte ptr [eax], al
  0405bf  add byte ptr [eax], al
  0405c1  add byte ptr [eax], al
  0405c3  add byte ptr [eax], al
  0405c5  add byte ptr [eax], al
  0405c7  add byte ptr [eax], al
  0405c9  add byte ptr [eax], al
  0405cb  add byte ptr [eax], al
  0405cd  add byte ptr [eax], al
  0405cf  add byte ptr [eax], al
  0405d1  add byte ptr [eax], al
  0405d3  add byte ptr [eax], al
  0405d5  add byte ptr [eax], al
  0405d7  add byte ptr [eax], al
  0405d9  add byte ptr [eax], al
  0405db  add byte ptr [eax], al
  0405dd  add byte ptr [eax], al
  0405df  add byte ptr [eax], al
  0405e1  add byte ptr [eax], al
  0405e3  add byte ptr [eax], al
  0405e5  add byte ptr [eax], al
  0405e7  add byte ptr [eax], al
  0405e9  add byte ptr [eax], al
  0405eb  add byte ptr [eax], al
  0405ed  add byte ptr [eax], al
  0405ef  add byte ptr [eax], al
  0405f1  add byte ptr [eax], al
  0405f3  add byte ptr [eax], al
  0405f5  add byte ptr [eax], al
  0405f7  add byte ptr [eax], al
  0405f9  add byte ptr [eax], al
  0405fb  add byte ptr [eax], al
  0405fd  add byte ptr [eax], al
  0405ff  add byte ptr [eax], al
  040601  add byte ptr [eax], al
  040603  add byte ptr [eax], al
  040605  add byte ptr [eax], al
  040607  add byte ptr [eax], al
  040609  add byte ptr [eax], al
  04060b  add byte ptr [eax], al
  04060d  add byte ptr [eax], al
  04060f  add byte ptr [eax], al
  040611  add byte ptr [eax], al
  040613  add byte ptr [eax], al
  040615  add byte ptr [eax], al
  040617  add byte ptr [eax], al
  040619  add byte ptr [eax], al
  04061b  add byte ptr [eax], al
  04061d  add byte ptr [eax], al
  04061f  add byte ptr [eax], al
  040621  add byte ptr [eax], al
  040623  add byte ptr [eax], al
  040625  add byte ptr [eax], al
  040627  add byte ptr [eax], al
  040629  add byte ptr [eax], al
  04062b  add byte ptr [eax], al
  04062d  add byte ptr [eax], al
  04062f  add byte ptr [eax], al
  040631  add byte ptr [eax], al
  040633  add byte ptr [eax], al
  040635  add byte ptr [eax], al
  040637  add byte ptr [eax], al
  040639  add byte ptr [eax], al
  04063b  add byte ptr [eax], al
  04063d  add byte ptr [eax], al
  04063f  add byte ptr [eax], al
  040641  add byte ptr [eax], al
  040643  add byte ptr [eax], al
  040645  add byte ptr [eax], al
  040647  add byte ptr [eax], al
  040649  add byte ptr [eax], al
  04064b  add byte ptr [eax], al
  04064d  add byte ptr [eax], al
  04064f  add byte ptr [eax], al
  040651  add byte ptr [eax], al
  040653  add byte ptr [eax], al
  040655  add byte ptr [eax], al
  040657  add byte ptr [eax], al
  040659  add byte ptr [eax], al
  04065b  add byte ptr [eax], al
  04065d  add byte ptr [eax], al
  04065f  add byte ptr [eax], al
  040661  add byte ptr [eax], al
  040663  add byte ptr [eax], al
  040665  add byte ptr [eax], al
  040667  add byte ptr [eax], al
  040669  add byte ptr [eax], al
  04066b  add byte ptr [eax], al
  04066d  add byte ptr [eax], al
  04066f  add byte ptr [eax], al
  040671  add byte ptr [eax], al
  040673  add byte ptr [eax], al
  040675  add byte ptr [eax], al
  040677  add byte ptr [eax], al
  040679  add byte ptr [eax], al
  04067b  add byte ptr [eax], al
  04067d  add byte ptr [eax], al
  04067f  add byte ptr [eax], al
  040681  add byte ptr [eax], al
  040683  add byte ptr [eax], al
  040685  add byte ptr [eax], al
  040687  add byte ptr [eax], al
  040689  add byte ptr [eax], al
  04068b  add byte ptr [eax], al
  04068d  add byte ptr [eax], al
  04068f  add byte ptr [eax], al
  040691  add byte ptr [eax], al
  040693  add byte ptr [eax], al
  040695  add byte ptr [eax], al
  040697  add byte ptr [eax], al
  040699  add byte ptr [eax], al
  04069b  add byte ptr [eax], al
  04069d  add byte ptr [eax], al
  04069f  add byte ptr [eax], al
  0406a1  add byte ptr [eax], al
  0406a3  add byte ptr [eax], al
  0406a5  add byte ptr [eax], al
  0406a7  add byte ptr [eax], al
  0406a9  add byte ptr [eax], al
  0406ab  add byte ptr [eax], al
  0406ad  add byte ptr [eax], al
  0406af  add byte ptr [eax], al
  0406b1  add byte ptr [eax], al
  0406b3  add byte ptr [eax], al
  0406b5  add byte ptr [eax], al
  0406b7  add byte ptr [eax], al
  0406b9  add byte ptr [eax], al
  0406bb  add byte ptr [eax], al
  0406bd  add byte ptr [eax], al
  0406bf  add byte ptr [eax], al
  0406c1  add byte ptr [edi - 0x78247825], al
  0406c7  fild dword ptr [edi - 0x78247825]
  0406cd  fild dword ptr [edi + 0xdb]
  0406d3  add byte ptr [eax], al
  0406d5  add byte ptr [eax], al
  0406d7  add byte ptr [eax], al
  0406d9  add byte ptr [eax], al
  0406db  add byte ptr [eax], al
  0406dd  add byte ptr [eax], al
  0406df  add byte ptr [eax], al
  0406e1  add byte ptr [eax], al
  0406e3  add byte ptr [eax], al
  0406e5  add byte ptr [eax], al
  0406e7  add byte ptr [eax], al
  0406e9  add byte ptr [eax], al
  0406eb  add byte ptr [eax], al
  0406ed  add byte ptr [eax], al
  0406ef  add byte ptr [eax], al
  0406f1  add byte ptr [eax], al
  0406f3  add byte ptr [eax], al
  0406f5  add byte ptr [eax], al
  0406f7  add byte ptr [eax], al
  0406f9  add byte ptr [eax], al
  0406fb  add byte ptr [eax], al
  0406fd  add byte ptr [eax], al
  0406ff  add byte ptr [eax], al
  040701  add byte ptr [eax], al
  040703  add byte ptr [eax], al
  040705  add byte ptr [eax], al
  040707  add byte ptr [eax], al
  040709  add byte ptr [eax], al
  04070b  add byte ptr [eax], al
  04070d  add byte ptr [eax], al
  04070f  add byte ptr [eax], al
  040711  add byte ptr [eax], al
  040713  add dh, al
  040715  add eax, 0xdd
  04071a  or dword ptr [ebx], eax
  04071c  add eax, 0x18
  040721  shld ebx, eax, 0x1c
  040725  and eax, 0xf
  040728  mov word ptr [0xe4], bx
  04072f  mov word ptr [0xd4], ax
  040735  mov al, 0x21
  040737  int 0x33
  040739  ret 
  04073a  or eax, 0x6c61680a
  04073f  arpl word ptr [ecx + 0x6f], di
  040742  outsb dx, byte ptr [esi]
  040743  and byte ptr [ebx + 0x75], dh
  040746  jo 0x407ad
  040748  jb 0x4076a
  04074a  imul ebp, dword ptr [edi + 0x6c], 0x6d
  04074e  and byte ptr gs:[ebp + 0x6e], ah
  040755  imul ebp, dword ptr [ecx + 0x6e], 0x65
  040759  and byte ptr [eax], ch
  04075b  je 0x407ca
  04075d  sub dword ptr [eax], esp
  04075f  insb byte ptr es:[edi], dx
  040760  outsd dx, dword ptr [esi]
  040761  popal 
  040762  imul ebp, dword ptr fs:[esi + 0x67], 0xa0d2e2e
L4076a:
  04076a  and al, 0x20
  04076c  cli 
  04076d  imul ebp, dword ptr [esi + 0x69], 0x6c616974
  040774  imul edi, dword ptr [edx + 0x69], 0x7420676e
  04077b  popal 
  04077c  bound ebp, qword ptr [ebp + 0x73]
  040780  or eax, 0xfa20240a
  040787  popal 
  040788  insb byte ptr es:[edi], dx
  040789  insb byte ptr es:[edi], dx
  04078a  outsd dx, dword ptr [esi]
  04078b  arpl word ptr [ecx + 0x74], sp
  04078e  imul ebp, dword ptr [esi + 0x67], 0x6d656d20
  040795  outsd dx, dword ptr [esi]
  040796  jb 0x40811
  040798  or eax, 0xfa20240a
  04079f  insb byte ptr es:[edi], dx
  0407a0  outsd dx, dword ptr [esi]
  0407a1  popal 
  0407a2  imul ebp, dword ptr fs:[esi + 0x67], 0x646e6120
  0407aa  and byte ptr [eax + 0x72], dh
L407ad:
  0407ad  jo 0x40811
  0407b0  jb 0x4081b
  0407b2  outsb dx, byte ptr [esi]
  0407b3  and byte ptr [bx + di + 0x6e], ah
  0407b7  imul ebp, dword ptr [ebp + 0x2e], 0x240a0d2e
  0407be  and dl, bh
  0407c0  arpl word ptr [ecx + 0x6c], sp
  0407c3  arpl word ptr [ebp + 0x6c], si
  0407c6  popal 
  0407c7  je 0x40832
  0407c9  outsb dx, byte ptr [esi]
L407ca:
  0407ca  and byte ptr [bp + 0x6c], ah
  0407ce  popal 
  0407cf  jb 0x40836
  0407d1  jae 0x40801
  0407d3  or eax, 0xfa20240a
  0407d9  insb byte ptr es:[edi], dx
  0407da  outsd dx, dword ptr [esi]
  0407db  popal 
  0407dc  imul ebp, dword ptr fs:[esi + 0x67], 0x78657420
  0407e4  je 0x4085b
  0407e6  jb 0x4084d
  0407e8  jae 0x40818
  0407ea  or eax, 0xfa20240a
  0407f0  arpl word ptr [edx + 0x65], si
  0407f3  popal 
  0407f4  je 0x4085f
  0407f6  outsb dx, byte ptr [esi]
  0407f7  and byte ptr [bx + di + 0x6e], ah
  0407fb  and byte ptr fs:[ecx + 0x75], dh
  0407ff  popal 
  040800  outsb dx, byte ptr [esi]
L40801:
  040801  je 0x4086c
  040803  jp 0x4086e
  040805  outsb dx, byte ptr [esi]
  040806  and byte ptr [di + 0x69], ch
  04080a  jo 0x40879
  04080c  popal 
  04080d  jo 0x40882
  04080f  and byte ptr [eax], ch
L40811:
  040811  xor dword ptr [ecx], ebp
  040813  or byte ptr cs:[eax], cl
  040817  or byte ptr [eax], cl
  040819  and al, 0x32
L4081b:
  04081b  sub dword ptr [esi], ebp
  04081d  or byte ptr cs:[eax], cl
  040820  or byte ptr [eax], cl
  040822  and al, 0x33
  040824  sub dword ptr [esi], ebp
  040826  or byte ptr cs:[eax], cl
  040829  or byte ptr [eax], cl
  04082b  and al, 0x34
  04082d  sub dword ptr [esi], ebp
  04082f  or eax, 0xfa20240a
  040835  jno 0x408ac
  040837  popal 
  040838  outsb dx, byte ptr [esi]
  040839  je 0x408a4
  04083b  jp 0x408a6
  04083d  outsb dx, byte ptr [esi]
  04083e  and byte ptr [bp + 0x69], ah
  040842  jb 0x408b7
  040844  je 0x40866
  040846  je 0x408ad
  040848  js 0x408be
  04084a  jne 0x408be
  04084c  jae 0x4086f
  04084f  jae 0x408b9
  040851  popal 
  040852  imul ebp, dword ptr fs:[esi + 0x67], 0x62617420
  04085a  insb byte ptr es:[edi], dx
L4085b:
  04085b  or eax, 0xfa20240a
  040863  jno 0x408da
  040865  popal 
L40866:
  040866  outsb dx, byte ptr [esi]
  040867  je 0x408d2
  040869  jp 0x408d4
  04086b  outsb dx, byte ptr [esi]
L4086c:
  04086c  and byte ptr [bp + di + 0x65], dh
  040870  arpl word ptr [edi + 0x6e], bp
  040873  and byte ptr fs:[ebp + 0x78], dh
  040878  je 0x408ef
  04087a  jb 0x408e1
  04087c  jae 0x4089e
  04087e  jae 0x408e8
  040880  popal 
  040881  imul ebp, dword ptr fs:[esi + 0x67], 0x62617420
  040889  insb byte ptr es:[edi], dx
  04088a  or eax, 0xfa20240a
  040892  jno 0x40909
  040894  popal 
  040895  outsb dx, byte ptr [esi]
  040896  je 0x40901
  040898  jp 0x40903
  04089a  outsb dx, byte ptr [esi]
  04089b  and byte ptr [bx + 0x65], ah
  04089f  outsb dx, byte ptr [esi]
  0408a0  jb 0x40904
  0408a3  insb byte ptr es:[edi], dx
L408a4:
  0408a4  and byte ptr [ebx + 0x68], dh
  0408a7  popal 
  0408a8  imul ebp, dword ptr fs:[esi + 0x67], 0x62617420
  0408b0  insb byte ptr es:[edi], dx
  0408b1  or eax, 0xfa20240a
L408b9:
  0408b9  insb byte ptr es:[edi], dx
  0408ba  outsd dx, dword ptr [esi]
  0408bb  popal 
  0408bc  imul ebp, dword ptr fs:[esi + 0x67], 0x646e6120
  0408c4  and byte ptr [eax + 0x72], dh
  0408c7  jo 0x4092b
  0408ca  jb 0x40935
  0408cc  outsb dx, byte ptr [esi]
  0408cd  and byte ptr [bp + di + 0x63], dh
  0408d1  outsb dx, byte ptr gs:[esi]
  0408d3  or eax, 0x5c7240a
  0408db  push eax
  0408dc  jg 0x408de
L408de:
  0408de  add byte ptr [edi + 0x21], dh
L408e1:
  0408e1  add al, 0
  0408e3  mov dword ptr [0x7f54], 0x41c59
  0408ed  mov dword ptr [0x7f58], 0x41e27
  0408f7  xor edi, edi
  0408f9  mov dword ptr [0x4688], 0
L40903:
  040903  mov dword ptr [0x467c], 0xa
  04090d  fild dword ptr [0x4688]
  040913  fild dword ptr [0x467c]
  040919  fdivp st(1)
  04091b  fmul st(0)
  04091d  fmul st(0)
  04091f  fistp dword ptr [0x467c]
  040925  mov eax, dword ptr [0x467c]
  04092a  cmp eax, 0x3ff
  04092f  jl 0x40936
  040931  mov eax, 0x3ff
L40936:
  040936  neg eax
  040938  add eax, 0x3ff
  04093d  mov dword ptr [edi + 0x3efc4], eax
  040943  mov ebp, 0x1fc
  040948  sub ebp, edi
  04094a  mov dword ptr ds:[ebp + 0x3efc4], eax
  040951  add edi, 4
  040954  inc dword ptr [0x4688]
  04095a  cmp dword ptr [0x4688], 0x40
  040961  jne 0x40903
  040963  mov edi, 0x3ebc4
  040968  fldpi 
  04096a  mov dword ptr [0x467c], 0x10
  040974  fild dword ptr [0x467c]
  04097a  fdivp st(1)
  04097c  fstp qword ptr [0x4a50]
  040982  fldz 
  040984  fstp qword ptr [0x4a58]
  04098a  mov dword ptr [0x467c], 0x1ff
  040994  fild dword ptr [0x467c]
  04099a  fstp dword ptr [0x467c]
  0409a0  mov ecx, 0x10
L409a5:
  0409a5  fld qword ptr [0x4a58]
  0409ab  fcos 
  0409ad  fmul dword ptr [0x467c]
  0409b3  fadd dword ptr [0x467c]
  0409b9  fistp dword ptr [edi]
  0409bb  fld qword ptr [0x4a58]
  0409c1  fadd qword ptr [0x4a50]
  0409c7  fstp qword ptr [0x4a58]
  0409cd  add edi, 4
  0409d0  dec ecx
  0409d1  jne 0x409a5
  0409d3  fldpi 
  0409d5  mov dword ptr [0x467c], 0x70
  0409df  fild dword ptr [0x467c]
  0409e5  fdivp st(1)
  0409e7  fstp qword ptr [0x4a50]
  0409ed  fldz 
  0409ef  fstp qword ptr [0x4a58]
  0409f5  mov dword ptr [0x467c], 0x1ff
  0409ff  fild dword ptr [0x467c]
  040a05  fstp dword ptr [0x467c]
  040a0b  mov ecx, 0x70
L40a10:
  040a10  fld qword ptr [0x4a58]
  040a16  fcos 
  040a18  fchs 
  040a1a  fmul dword ptr [0x467c]
  040a20  fadd dword ptr [0x467c]
  040a26  fistp dword ptr [edi]
  040a28  fld qword ptr [0x4a58]
  040a2e  fadd qword ptr [0x4a50]
  040a34  fstp qword ptr [0x4a58]
  040a3a  add edi, 4
  040a3d  dec ecx
  040a3e  jne 0x40a10
  040a40  call 0x29300
  040a45  call 0x1f4ba
  040a4a  mov edi, 0xa0000
  040a4f  sub edi, dword ptr [0x18]
  040a55  mov dword ptr [0x4668], edi
  040a5b  mov eax, 0xb0000
  040a60  call 0x2ac
  040a65  or eax, 0xffff
  040a6a  inc eax
  040a6b  mov dword ptr [0x3f3d4], eax
  040a70  add eax, 0x20000
  040a75  mov dword ptr [0x3f3d8], eax
  040a7a  add eax, 0x10000
  040a7f  mov dword ptr [0x3f3dc], eax
  040a84  add eax, 0x10000
  040a89  mov dword ptr [0x4450], eax
  040a8e  add eax, 0x40000
  040a93  mov dword ptr [0x3e8b4], eax
  040a98  add eax, 0x10000
  040a9d  mov dword ptr [0x3e574], eax
  040aa2  add eax, 0x10000
  040aa7  mov edi, dword ptr [0x3f3d4]
  040aad  mov ecx, 0x28000
  040ab2  xor eax, eax
  040ab4  rep stosd dword ptr es:[edi], eax
  040ab6  mov edx, 0x3e898
  040abb  call 0x3dcc
  040ac0  mov edx, dword ptr [0x466c]
  040ac6  mov ecx, 0x206c0
  040acb  call 0x3eed
  040ad0  call 0x3e09
  040ad5  mov esi, dword ptr [0x466c]
  040adb  mov edi, dword ptr [0x4450]
  040ae1  mov ebp, 0xa
L40ae6:
  040ae6  push edi
  040ae7  mov edx, 4
L40aec:
  040aec  push edi
  040aed  mov ebx, 0x53
L40af2:
  040af2  mov ecx, 0x28
L40af7:
  040af7  mov al, byte ptr [esi]
  040af9  shl al, 3
  040afc  mov byte ptr [edi], al
  040afe  inc esi
  040aff  inc edi
  040b00  dec ecx
  040b01  jne 0x40af7
  040b03  add edi, 0xd8
  040b09  dec ebx
  040b0a  jne 0x40af2
  040b0c  pop edi
  040b0d  add edi, 0x28
  040b10  dec edx
  040b11  jne 0x40aec
  040b13  pop edi
  040b14  add edi, 0x5300
  040b1a  dec ebp
  040b1b  jne 0x40ae6
  040b1d  mov ecx, 0x80
  040b22  mov edx, 0x80
  040b27  mov ebp, 0x20
  040b2c  mov edi, dword ptr [0x4678]
  040b32  call 0x147a8
  040b37  mov ecx, 0x40
  040b3c  mov edx, 0x40
  040b41  mov ebp, 0x10
  040b46  mov edi, dword ptr [0x4678]
  040b4c  add edi, 0x10000
  040b52  call 0x147a8
  040b57  mov ecx, 0x20
  040b5c  mov edx, 0x20
  040b61  mov ebp, 8
  040b66  mov edi, dword ptr [0x4678]
  040b6c  add edi, 0x18000
  040b72  call 0x147a8
  040b77  mov ecx, 0x10
  040b7c  mov edx, 0x10
  040b81  mov ebp, 4
  040b86  mov edi, dword ptr [0x4678]
  040b8c  add edi, 0x1c000
  040b92  call 0x147a8
  040b97  mov ecx, 8
  040b9c  mov edx, 8
  040ba1  mov ebp, 2
  040ba6  mov edi, dword ptr [0x4678]
  040bac  add edi, 0x1e000
  040bb2  call 0x147a8
  040bb7  mov ecx, 4
  040bbc  mov edx, 4
  040bc1  mov ebp, 1
  040bc6  mov edi, dword ptr [0x4678]
  040bcc  add edi, 0x1f000
  040bd2  call 0x147a8
  040bd7  mov edx, 0x3e8ac
  040bdc  call 0x3dcc
  040be1  jb 0x42177
  040be7  mov bl, 0
  040be9  mov eax, 0xa
  040bee  call 0x3e4a
  040bf3  mov edx, 0x3e8b8
  040bf8  mov ecx, 0x300
  040bfd  call 0x3eed
  040c02  mov edx, dword ptr [0x3e8b4]
  040c08  mov ecx, 0xfa00
  040c0d  call 0x3eed
  040c12  call 0x3e09
  040c17  mov edx, 0x3e568
  040c1c  call 0x3dcc
  040c21  jb 0x42177
  040c27  mov bl, 0
  040c29  mov eax, 0xa
  040c2e  call 0x3e4a
  040c33  mov edx, 0x3e578
  040c38  mov ecx, 0x300
  040c3d  call 0x3eed
  040c42  mov edx, dword ptr [0x3e574]
  040c48  mov ecx, 0xfa00
  040c4d  call 0x3eed
  040c52  call 0x3e09
  040c57  mov edx, 0x3e878
  040c5c  call 0x3dcc
  040c61  jb 0x42177
  040c67  mov bl, 0
  040c69  mov eax, 0xa
  040c6e  call 0x3e4a
  040c73  mov edx, 0x3f3e0
  040c78  mov ecx, 0x300
  040c7d  call 0x3eed
  040c82  mov edx, dword ptr [0x3f3d4]
  040c88  mov ecx, 0x10000
  040c8d  call 0x3eed
  040c92  call 0x3e09
  040c97  mov edi, 0x3f6e0
  040c9c  xor eax, eax
  040c9e  xor ebx, ebx
  040ca0  mov ecx, 0x100
L40ca5:
  040ca5  stosb byte ptr es:[edi], al
  040ca6  stosb byte ptr es:[edi], al
  040ca7  stosb byte ptr es:[edi], al
  040ca8  inc eax
  040ca9  dec ecx
  040caa  jne 0x40ca5
  040cac  mov edi, dword ptr [0x48b0]
  040cb2  mov esi, 0
L40cb7:
  040cb7  mov ebp, 0
L40cbc:
  040cbc  mov ecx, 3
L40cc1:
  040cc1  movzx eax, byte ptr ds:[ebp + 0x3f3e0]
  040cc9  movzx ebx, byte ptr [esi + 0x3f6e0]
  040cd0  shl ebx, 1
  040cd2  imul eax, ebx
  040cd5  sar eax, 4
  040cd8  sar ebx, 2
  040cdb  add eax, ebx
  040cdd  cmp eax, 0
  040ce0  jg 0x40ce4
  040ce2  xor eax, eax
L40ce4:
  040ce4  cmp eax, 0xff
  040ce9  jl 0x40cf0
  040ceb  mov eax, 0xff
L40cf0:
  040cf0  mov byte ptr [edi], al
  040cf2  inc edi
  040cf3  inc ebp
  040cf4  inc esi
  040cf5  loop 0x40cc1
  040cf7  sub esi, 3
  040cfa  cmp ebp, 0x300
  040d00  jne 0x40cbc
  040d02  add esi, 3
  040d05  cmp esi, 0x300
  040d0b  jne 0x40cb7
  040d0d  mov esi, dword ptr [0x48b0]
  040d13  mov edi, dword ptr [0x3f3d8]
  040d19  mov ebp, 0x3f3e0
  040d1e  call 0x1f5a9
  040d23  xor eax, eax
  040d25  mov esi, 0x3e8b8
  040d2a  mov edi, 0x3f3e0
  040d2f  add edi, 3
  040d32  mov ecx, 0x40
L40d37:
  040d37  movsb byte ptr es:[edi], byte ptr [esi]
  040d38  movsb byte ptr es:[edi], byte ptr [esi]
  040d39  movsb byte ptr es:[edi], byte ptr [esi]
  040d3a  add edi, 9
  040d3d  dec ecx
  040d3e  jne 0x40d37
  040d40  mov edi, 0x3f3e0
  040d45  mov edx, 0
  040d4a  mov ecx, 0x40
L40d4f:
  040d4f  mov eax, 0
  040d54  imul eax, ecx
  040d57  mov ebx, 0x3f
  040d5c  imul ebx, edx
  040d5f  add eax, ebx
  040d61  sar eax, 6
  040d64  stosb byte ptr es:[edi], al
  040d65  mov eax, 0
  040d6a  imul eax, ecx
  040d6d  mov ebx, 0x3f
  040d72  imul ebx, edx
  040d75  add eax, ebx
  040d77  sar eax, 6
  040d7a  stosb byte ptr es:[edi], al
  040d7b  mov eax, 0
  040d80  imul eax, ecx
  040d83  mov ebx, 0x3f
  040d88  imul ebx, edx
  040d8b  add eax, ebx
  040d8d  sar eax, 6
  040d90  stosb byte ptr es:[edi], al
  040d91  add edi, 9
  040d94  inc edx
  040d95  dec ecx
  040d96  jne 0x40d4f
  040d98  mov esi, dword ptr [0x48b0]
  040d9e  mov ecx, 0xc000
L40da3:
  040da3  shr byte ptr [esi], 2
  040da6  inc esi
  040da7  dec ecx
  040da8  jne 0x40da3
  040daa  mov eax, dword ptr [0x3f3d8]
  040daf  xor ebx, ebx
  040db1  mov bl, byte ptr [eax]
  040db3  imul ebx, ebx, 3
  040db6  mov al, byte ptr [ebx + 0x3f3e0]
  040dbc  mov byte ptr [0x3f3e0], al
  040dc1  mov al, byte ptr [ebx + 0x3f3e1]
  040dc7  mov byte ptr [0x3f3e1], al
  040dcc  mov al, byte ptr [ebx + 0x3f3e2]
  040dd2  mov byte ptr [0x3f3e2], al
  040dd7  mov esi, dword ptr [0x48b0]
  040ddd  mov edi, dword ptr [0x3f3d8]
  040de3  mov ebp, 0x3f3e0
  040de8  mov ecx, 0x4000
  040ded  call 0x1f4da
  040df2  mov edi, dword ptr [0x3f3d8]
  040df8  add edi, 0x3f00
  040dfe  mov edx, 0x5f
L40e03:
  040e03  mov esi, dword ptr [0x3f3d8]
  040e09  add esi, 0x3e00
  040e0f  mov ecx, 0x40
  040e14  rep movsd dword ptr es:[edi], dword ptr [esi]
  040e16  dec edx
  040e17  jne 0x40e03
  040e19  mov edi, 0x3f6e0
  040e1e  xor eax, eax
  040e20  xor ebx, ebx
  040e22  mov ecx, 0x100
L40e27:
  040e27  mov eax, ebx
  040e29  shr eax, 1
  040e2b  stosb byte ptr es:[edi], al
  040e2c  stosb byte ptr es:[edi], al
  040e2d  mov eax, ebx
  040e2f  stosb byte ptr es:[edi], al
  040e30  inc ebx
  040e31  dec ecx
  040e32  jne 0x40e27
  040e34  mov edi, dword ptr [0x48b0]
  040e3a  mov esi, 0
L40e3f:
  040e3f  mov ebp, 0
L40e44:
  040e44  mov ecx, 3
L40e49:
  040e49  movzx eax, byte ptr ds:[ebp + 0x3f3e0]
  040e51  movzx ebx, byte ptr [esi + 0x3f6e0]
  040e58  shl ebx, 1
  040e5a  add eax, ebx
  040e5c  cmp eax, 0
  040e5f  jg 0x40e63
  040e61  xor eax, eax
L40e63:
  040e63  cmp eax, 0x3f
  040e66  jl 0x40e6d
  040e68  mov eax, 0x3f
L40e6d:
  040e6d  mov byte ptr [edi], al
  040e6f  inc edi
  040e70  inc ebp
  040e71  inc esi
  040e72  loop 0x40e49
  040e74  sub esi, 3
  040e77  cmp ebp, 0x300
  040e7d  jne 0x40e44
  040e7f  add esi, 3
  040e82  cmp esi, 0x300
  040e88  jne 0x40e3f
  040e8a  mov esi, dword ptr [0x48b0]
  040e90  mov edi, dword ptr [0x3f3dc]
  040e96  mov ebp, 0x3f3e0
  040e9b  mov ecx, 0x4000
  040ea0  call 0x1f4da
  040ea5  ret 
  040ea6  mov dword ptr [0x7f50], 0x42177
  040eb0  mov dword ptr [0x7f54], 0x41c59
  040eba  mov dword ptr [0x7f58], 0x41e27
  040ec4  mov dword ptr [0x17210], 0
  040ece  mov dword ptr [0x17208], 0
  040ed8  mov dword ptr [0x16630], 0
  040ee2  mov dword ptr [0x1f920], 0x1fefc
  040eec  mov edx, 0x3e882
  040ef1  call 0x17570
  040ef6  mov dword ptr [0x467c], 1
  040f00  mov dword ptr [0x4680], 4
  040f0a  fild dword ptr [0x467c]
  040f10  fild dword ptr [0x4680]
  040f16  fdivp st(1)
  040f18  fstp dword ptr [0x4660]
  040f1e  mov ebp, 0x7f98
  040f23  call 0x17596
  040f28  mov dword ptr [0x1f920], 0x1fc7b
  040f32  mov edx, 0x3e88d
  040f37  call 0x17570
  040f3c  call 0x17596
  040f41  mov ebp, 0x7f98
  040f46  mov ecx, dword ptr [0x17210]
L40f4c:
  040f4c  mov dword ptr [ebp + 0x18], 0
  040f53  mov dword ptr [ebp + 0x1c], 0
  040f5a  mov dword ptr [ebp + 0x20], 0
  040f61  add ebp, 0x38
  040f64  dec ecx
  040f65  jne 0x40f4c
  040f67  mov dword ptr [0x467c], 0x80
  040f71  fild dword ptr [0x467c]
  040f77  fstp qword ptr [0x4950]
  040f7d  mov dword ptr [0x14798], 1
  040f87  mov ebp, 0xef98
  040f8c  mov dword ptr [ebp], 0x41d51
  040f93  fldz 
  040f95  fst dword ptr [ebp + 4]
  040f98  fstp dword ptr [ebp + 8]
  040f9b  mov dword ptr [0x467c], 0x1c
  040fa5  fild dword ptr [0x467c]
  040fab  fstp dword ptr [ebp + 0xc]
  040fae  mov dword ptr [0x467c], 0xfffffffb
  040fb8  fild dword ptr [0x467c]
  040fbe  fstp dword ptr [ebp + 0x20]
  040fc1  mov dword ptr [0x467c], 0xfffffff6
  040fcb  fild dword ptr [0x467c]
  040fd1  fstp dword ptr [ebp + 0x24]
  040fd4  add ebp, 0x2c
  040fd7  mov eax, 0x9128745
  040fdc  mov ebx, 0x23894175
  040fe1  mov ecx, 0x1838415
  040fe6  mov edx, 1
  040feb  mov edi, 0x178e0
L40ff0:
  040ff0  add eax, 0x40903484
  040ff5  add ebx, 0x2935081
  040ffb  add ecx, 0x9234785
  041001  rol eax, 5
  041004  rol ebx, 7
  041007  ror ecx, 4
  04100a  mov dword ptr [0x467c], eax
  04100f  and dword ptr [0x467c], 0x1f
  041016  sub dword ptr [0x467c], 0x10
  04101d  mov dword ptr [0x4680], 0x64
  041027  fild dword ptr [0x467c]
  04102d  fild dword ptr [0x4680]
  041033  fdivp st(1)
  041035  fstp qword ptr [edi + 8]
  041038  mov esi, eax
  04103a  and esi, 0xff
  041040  imul esi, esi, 0x28
  041043  mov dword ptr [edi + 0x10], esi
  041046  add edi, 0x18
  041049  inc dword ptr [0x14798]
  04104f  mov dword ptr [ebp], 0x41c9b
  041056  fldz 
  041058  fstp dword ptr [ebp + 4]
  04105b  fldz 
  04105d  fstp dword ptr [ebp + 8]
  041060  mov dword ptr [0x467c], 6
  04106a  fild dword ptr [0x467c]
  041070  fstp dword ptr [ebp + 0xc]
  041073  mov dword ptr [0x467c], 0xfffffff9
  04107d  fild dword ptr [0x467c]
  041083  fstp dword ptr [ebp + 0x20]
  041086  add ebp, 0x2c
  041089  dec edx
  04108a  jne 0x40ff0
  041090  mov eax, dword ptr [0x14798]
  041095  add dword ptr [0x16630], eax
  04109b  call 0x16e44
  0410a0  mov esi, 0x3f3e0
  0410a5  mov ebp, 0x3f6e0
  0410aa  mov edi, 0x3f9e0
  0410af  mov ecx, 0x300
L410b4:
  0410b4  movzx eax, byte ptr [esi]
  0410b7  mov ebx, eax
  0410b9  neg eax
  0410bb  add eax, 0x3f
  0410be  cmp eax, 0x3f
  0410c1  jl 0x410c8
  0410c3  mov eax, 0x3f
L410c8:
  0410c8  mov byte ptr [edi], al
  0410ca  imul ebx, ebx, 4
  0410cd  cmp ebx, 0x3f
  0410d0  jl 0x410d7
  0410d2  mov ebx, 0x3f
L410d7:
  0410d7  mov byte ptr [ebp], bl
  0410da  inc esi
  0410db  inc edi
  0410dc  inc ebp
  0410dd  dec ecx
  0410de  jne 0x410b4
  0410e0  mov esi, dword ptr [0x3f3d4]
  0410e6  mov edi, dword ptr [0x4670]
  0410ec  mov ecx, 0x4000
  0410f1  rep movsd dword ptr es:[edi], dword ptr [esi]
  0410f3  mov esi, dword ptr [0x3f3d8]
  0410f9  mov edi, dword ptr [0x48b4]
  0410ff  mov ecx, 0x4000
  041104  rep movsd dword ptr es:[edi], dword ptr [esi]
  041106  mov esi, dword ptr [0x3f3dc]
  04110c  mov edi, dword ptr [0x48bc]
  041112  mov ecx, 0x4000
  041117  rep movsd dword ptr es:[edi], dword ptr [esi]
  041119  mov dword ptr [0x4694], 0
  041123  call 0x3e438
  041128  call 0x3e4b3
  04112d  mov dword ptr [0x469c], 1
  041137  mov dword ptr [0x1479c], 0
  041141  mov dword ptr [0x147a0], 0
  04114b  mov dword ptr [0x147a4], 0
  041155  mov eax, 0x2a22a
  04115a  mov dword ptr [0x4c00], eax
  04115f  mov dword ptr [0x467c], 0x51
  041169  mov dword ptr [0x4680], 0x2710
  041173  fild dword ptr [0x467c]
  041179  fild dword ptr [0x4680]
  04117f  fdivp st(1)
  041181  fst qword ptr [0x178a0]
  041187  fstp qword ptr [0x178d0]
  04118d  mov dword ptr [0x178ac], 0x5c8
  041197  mov dword ptr [0x178dc], 0x5c8
  0411a1  fldz 
  0411a3  fst qword ptr [0x17898]
  0411a9  fstp qword ptr [0x178c8]
  0411af  mov dword ptr [0x178a8], 0
  0411b9  mov dword ptr [0x178d8], 0
  0411c3  mov dword ptr [0x467c], 0x3b
  0411cd  mov dword ptr [0x4680], 0x2710
  0411d7  fild dword ptr [0x467c]
  0411dd  fild dword ptr [0x4680]
  0411e3  fdivp st(1)
  0411e5  fstp qword ptr [0x178b8]
  0411eb  mov dword ptr [0x178c4], 0x780
  0411f5  fldz 
  0411f7  fstp qword ptr [0x178b0]
  0411fd  mov dword ptr [0x178c0], 0
  041207  mov dword ptr [0x3f3c8], 0
  041211  mov edi, dword ptr [0x466c]
  041217  xor eax, eax
  041219  mov ecx, 0x3e80
  04121e  rep stosd dword ptr es:[edi], eax
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
L42177:
  042177  ret 
  042178  xchg ebx, ebx
  04217a  xchg ebx, ebx
  04217c  xchg ebx, ebx
  04217e  xchg ebx, ebx
  042180  add byte ptr [eax], al
  042182  add byte ptr [eax], al
  042184  add byte ptr [eax], al
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
  0421a0  pushfd 
  0421a1  pushal 
  0421a2  wait 
  0421a3  fnsave dword ptr [0x402c2]
  0421a9  cmp byte ptr [0x496da], 3
  0421b0  je 0x421be
  0421b2  mov eax, 4
  0421b7  call 0x25c4
  0421bc  jmp 0x421f5
L421be:
  0421be  inc byte ptr [0x496d9]
  0421c4  cmp byte ptr [0x496d9], 7
  0421cb  jl 0x421f5
  0421cd  mov byte ptr [0x496d9], 0
  0421d4  inc word ptr [0x12ca]
  0421db  cmp word ptr [0x12ca], 0x40
  0421e3  jl 0x421f5
  0421e5  inc word ptr [0x12bf]
  0421ec  mov word ptr [0x12ca], 0
L421f5:
  0421f5  inc dword ptr [0x469c]
  0421fb  inc dword ptr [0x46a4]
  042201  cmp byte ptr [0x41d1], 1
  042208  je 0x425fc
  04220e  mov edi, dword ptr [0x4698]
  042214  cmp byte ptr [0x41b7], 1
  04221b  jne 0x42222
  04221d  mov edi, 0x400
L42222:
  042222  mov ebp, dword ptr [0x4694]
  042228  mov ebp, dword ptr ds:[ebp*4 + 0x3ebc4]
  042230  mov edx, 0x3c8
  042235  xor eax, eax
  042237  out dx, al
  042238  inc edx
  042239  mov esi, 0xfffffd00
  04223e  xchg ebx, ebx
L42240:
  042240  xor eax, eax
  042242  xor ebx, ebx
  042244  xor ecx, ecx
  042246  mov al, byte ptr [esi + 0x3f6e0]
  04224c  mov bl, byte ptr [esi + 0x3f9e0]
  042252  mov cl, byte ptr [esi + 0x3fce0]
  042258  sub eax, ebx
  04225a  imul eax, edi
  04225d  sar eax, 0xa
  042260  add eax, ebx
  042262  sub eax, ecx
  042264  imul eax, ebp
  042267  sar eax, 0xa
  04226a  add eax, ecx
  04226c  out dx, al
  04226d  inc esi
  04226e  jne 0x42240
  042270  add dword ptr [0x4694], 2
  042277  cmp dword ptr [0x4694], 0x7f
  04227e  jl 0x4228a
  042280  mov dword ptr [0x4694], 0x7f
L4228a:
  04228a  mov dword ptr [0x42180], 0x1ff
  042294  fld dword ptr [0x3f3cc]
  04229a  fcos 
  04229c  fimul dword ptr [0x42180]
  0422a2  fiadd dword ptr [0x42180]
  0422a8  fistp dword ptr [0x4698]
  0422ae  neg dword ptr [0x4698]
  0422b4  add dword ptr [0x4698], 0x3ff
  0422be  fld dword ptr [0x3f3cc]
  0422c4  fadd dword ptr [0x3f3d0]
  0422ca  fstp dword ptr [0x3f3cc]
  0422d0  cmp dword ptr [0x3f3c8], 0
  0422d7  jne 0x42327
  0422d9  neg ebp
  0422db  add ebp, 0x3ff
  0422e1  mov dword ptr [0x42184], ebp
  0422e7  fild dword ptr [0x42184]
  0422ed  fmul qword ptr [0x178a0]
  0422f3  mov dword ptr [0x42180], 0x12c
  0422fd  fild dword ptr [0x42180]
  042303  fdivp st(1)
  042305  fadd qword ptr [0x178a0]
  04230b  fld st(0)
  04230d  fadd qword ptr [0x17898]
  042313  fstp qword ptr [0x17898]
  042319  fadd qword ptr [0x178c8]
  04231f  fstp qword ptr [0x178c8]
  042325  jmp 0x42339
L42327:
  042327  fld qword ptr [0x178b0]
  04232d  fadd qword ptr [0x178b8]
  042333  fstp qword ptr [0x178b0]
L42339:
  042339  fld qword ptr [0x4bb0]
  04233f  fadd qword ptr [0x4968]
  042345  fstp qword ptr [0x4bb0]
  04234b  mov dword ptr [0x48d8], 0xffffffff
  042355  cmp byte ptr [0x419b], 1
  04235c  jne 0x42368
  04235e  mov dword ptr [0x48d8], 0
L42368:
  042368  cmp byte ptr [0x419c], 1
  04236f  jne 0x4237b
  042371  mov dword ptr [0x48d8], 1
L4237b:
  04237b  cmp byte ptr [0x419d], 1
  042382  jne 0x4238e
  042384  mov dword ptr [0x48d8], 2
L4238e:
  04238e  cmp byte ptr [0x419e], 1
  042395  jne 0x423a1
  042397  mov dword ptr [0x48d8], 3
L423a1:
  0423a1  cmp byte ptr [0x419f], 1
  0423a8  jne 0x423b4
  0423aa  mov dword ptr [0x48d8], 4
L423b4:
  0423b4  mov dword ptr [0x48dc], 0xffffffff
  0423be  cmp byte ptr [0x41a8], 1
  0423c5  jne 0x423d1
  0423c7  mov dword ptr [0x48dc], 0
L423d1:
  0423d1  cmp byte ptr [0x41a9], 1
  0423d8  jne 0x423e4
  0423da  mov dword ptr [0x48dc], 1
L423e4:
  0423e4  cmp byte ptr [0x41aa], 1
  0423eb  jne 0x423f7
  0423ed  mov dword ptr [0x48dc], 2
L423f7:
  0423f7  cmp byte ptr [0x41ab], 1
  0423fe  jne 0x4240a
  042400  mov dword ptr [0x48dc], 4
L4240a:
  04240a  cmp byte ptr [0x41ac], 1
  042411  jne 0x4241d
  042413  mov dword ptr [0x48dc], 8
L4241d:
  04241d  cmp byte ptr [0x41ad], 1
  042424  jne 0x42430
  042426  mov dword ptr [0x48dc], 0x10
L42430:
  042430  add dword ptr [0x46a8], 0x26c
  04243a  add dword ptr [0x46ac], 0x230
  042444  fld dword ptr [0x7f30]
  04244a  fadd dword ptr [0x7f34]
  042450  fstp dword ptr [0x7f30]
  042456  fld dword ptr [0x7f38]
  04245c  fadd dword ptr [0x7f3c]
  042462  fstp dword ptr [0x7f38]
  042468  cmp byte ptr [0x41c4], 1
  04246f  jne 0x4247b
  042471  mov eax, 0x29d9a
  042476  mov dword ptr [0x4c00], eax
L4247b:
  04247b  cmp byte ptr [0x41c5], 1
  042482  jne 0x4248e
  042484  mov eax, 0x2a0f5
  042489  mov dword ptr [0x4c00], eax
L4248e:
  04248e  cmp byte ptr [0x41c6], 1
  042495  jne 0x424a1
  042497  mov eax, 0x2a30b
  04249c  mov dword ptr [0x4c00], eax
L424a1:
  0424a1  cmp byte ptr [0x41b0], 1
  0424a8  jne 0x424ba
  0424aa  fld1 
  0424ac  fchs 
  0424ae  fadd dword ptr [0x7fbc]
  0424b4  fstp dword ptr [0x7fbc]
L424ba:
  0424ba  cmp byte ptr [0x41be], 1
  0424c1  jne 0x424d1
  0424c3  fld1 
  0424c5  fadd dword ptr [0x7fbc]
  0424cb  fstp dword ptr [0x7fbc]
L424d1:
  0424d1  cmp byte ptr [0x41b1], 1
  0424d8  jne 0x424ea
  0424da  fld1 
  0424dc  fchs 
  0424de  fadd dword ptr [0x7fc0]
  0424e4  fstp dword ptr [0x7fc0]
L424ea:
  0424ea  cmp byte ptr [0x41bf], 1
  0424f1  jne 0x42501
  0424f3  fld1 
  0424f5  fadd dword ptr [0x7fc0]
  0424fb  fstp dword ptr [0x7fc0]
L42501:
  042501  cmp byte ptr [0x41b2], 1
  042508  jne 0x4251a
  04250a  fld1 
  04250c  fchs 
  04250e  fadd dword ptr [0x7fc4]
  042514  fstp dword ptr [0x7fc4]
L4251a:
  04251a  cmp byte ptr [0x41c0], 1
  042521  jne 0x42531
  042523  fld1 
  042525  fadd dword ptr [0x7fc4]
  04252b  fstp dword ptr [0x7fc4]
L42531:
  042531  cmp dword ptr [0x3fcf0], 0
  042538  jne 0x42563
  04253a  cmp dword ptr [0x3fce0], 0
  042541  jne 0x42563
  042543  cmp dword ptr [0x178a8], 0x410
  04254d  jl 0x42563
  04254f  mov dword ptr [0x3fce0], 1
  042559  mov dword ptr [0x3fcf0], 0
L42563:
  042563  cmp dword ptr [0x3fce0], 0
  04256a  je 0x425c1
  04256c  fld dword ptr [0x3fce4]
  042572  fadd dword ptr [0x3fce8]
  042578  fstp dword ptr [0x3fce4]
  04257e  inc dword ptr [0x3fcf0]
  042584  fld1 
  042586  fstp dword ptr [0x42180]
  04258c  mov eax, dword ptr [0x3fce4]
  042591  cmp eax, dword ptr [0x42180]
  042597  jb 0x425c1
  042599  fldz 
  04259b  fstp dword ptr [0x3fce4]
  0425a1  mov dword ptr [0x3fce0], 0
  0425ab  mov eax, dword ptr [0x3fcf4]
  0425b0  mov ebx, dword ptr [0x4c00]
  0425b6  mov dword ptr [0x4c00], eax
  0425bb  mov dword ptr [0x3fcf4], ebx
L425c1:
  0425c1  mov ebp, 0x7f98
  0425c6  add ebp, 0x150
  0425cc  mov edx, dword ptr [0x17210]
  0425d2  sub edx, 6
  0425d5  mov eax, 0xffffff38
  0425da  mov ebx, 0x19c
  0425df  mov ecx, 0xfffffe0a
L425e4:
  0425e4  add dword ptr [ebp + 0x18], eax
  0425e7  add dword ptr [ebp + 0x1c], ebx
  0425ea  add dword ptr [ebp + 0x20], ecx
  0425ed  add eax, 0xa
  0425f0  add ebx, 0x19
  0425f3  add ecx, -0x34
  0425f6  add ebp, 0x38
  0425f9  dec edx
  0425fa  jne 0x425e4
L425fc:
  0425fc  wait 
  0425fd  frstor dword ptr [0x402c2]
  042603  popal 
  042604  popfd 
  042605  ret 
  042606  add byte ptr [eax], al
  042608  add byte ptr [eax], al
  04260a  add byte ptr [eax], al
  04260c  add byte ptr [eax], al
  04260e  add byte ptr [eax], al
  042610  add byte ptr [eax], al
  042612  add byte ptr [eax], al
  042614  add byte ptr [eax], al
  042616  add byte ptr [eax], al
L42618:
  042618  cli 
  042619  mov eax, 0x42720
  04261e  add eax, dword ptr [0x18]
  042624  shl eax, 0xc
  042627  shr ax, 0xc
  04262b  mov edx, 0x19
  042630  add dx, ax
  042633  mov word ptr [0x4272f], dx
  04263a  xchg dword ptr gs:[0x20], eax
  042640  mov dword ptr [0x42610], eax
  042645  xor bl, bl
  042647  call dword ptr [0x24]
  04264d  mov dword ptr [0x42614], edx
  042653  mov edx, 0x426e4
  042658  call dword ptr [0x28]
  04265e  mov al, 0x30
  042660  out 0x43, al
  042662  mov al, 0
  042664  out 0x40, al
  042666  mov al, 0x41
  042668  out 0x40, al
  04266a  sti 
  04266b  ret 
L4266c:
  04266c  cli 
  04266d  mov edx, dword ptr [0x42610]
  042673  mov dword ptr gs:[0x20], edx
  042679  mov edx, dword ptr [0x42614]
  04267f  xor bl, bl
  042681  call dword ptr [0x28]
  042687  mov al, 0x36
  042689  out 0x43, al
  04268b  xor al, al
  04268d  out 0x40, al
  04268f  out 0x40, al
  042691  sti 
  042692  ret 
L42693:
  042693  cli 
  042694  mov al, 0x30
  042696  out 0x43, al
  042698  mov dx, 0x3da
L4269c:
  04269c  in al, dx
  04269d  test al, 8
  04269f  jne 0x4269c
L426a1:
  0426a1  in al, dx
  0426a2  test al, 8
  0426a4  je 0x426a1
  0426a6  xor al, al
  0426a8  out 0x40, al
  0426aa  out 0x40, al
L426ac:
  0426ac  in al, dx
  0426ad  test al, 8
  0426af  jne 0x426ac
L426b1:
  0426b1  in al, dx
  0426b2  test al, 8
  0426b4  je 0x426b1
  0426b6  in al, 0x40
  0426b8  mov ah, al
  0426ba  in al, 0x40
  0426bc  xchg ah, al
  0426be  neg ax
  0426c1  sub ax, 0xc0
  0426c5  mov word ptr [0x42739], ax
  0426cb  mov bx, ax
L426ce:
  0426ce  in al, dx
  0426cf  test al, 8
  0426d1  je 0x426ce
L426d3:
  0426d3  in al, dx
  0426d4  test al, 8
  0426d6  jne 0x426d3
  0426d8  mov al, bl
  0426da  out 0x40, al
  0426dc  mov al, bh
  0426de  out 0x40, al
  0426e0  sti 
  0426e1  ret 
  0426e2  xchg ebx, ebx
  0426e4  push eax
  0426e5  push edx
  0426e6  push ds
  0426e7  mov ds, word ptr cs:[0x1e]
  0426ee  mov dx, 0x3da
  0426f2  in al, dx
  0426f3  and eax, 8
  0426f6  dec eax
  0426f7  neg eax
  0426f9  add word ptr [0x42739], ax
L42700:
  042700  in al, dx
  042701  test al, 8
  042703  je 0x42700
  042705  mov ax, word ptr [0x42739]
  04270b  out 0x40, al
  04270d  mov al, ah
  04270f  out 0x40, al
  042711  call dword ptr [0x42a80]
  042717  pop ds
  042718  pop edx
  042719  mov al, 0x20
  04271b  out 0x20, al
  04271d  pop eax
  04271e  sti 
  04271f  iretd 
  042720  push eax
  042721  push edx
  042722  mov edx, 0x25ec03da
  042727  or byte ptr [eax], al
  042729  dec eax
  04272a  neg eax
  04272c  add dword ptr cs:[esi], eax
  04272f  add byte ptr [eax], al
L42731:
  042731  in al, dx
  042732  test al, 8
  042734  je 0x42731
  042736  jmp 0x42738
L42738:
  042738  mov eax, 0x40e64100
  04273d  mov al, ah
  04273f  out 0x40, al
  042741  pop edx
  042742  mov al, 0x20
  042744  out 0x20, al
  042746  pop eax
  042747  iretd 
  042748  je 0x427c2
  04274a  je 0x4277e
  04274c  xor eax, 0x7863732e
  042751  add byte ptr [eax + 0x61], dh
  042754  insb byte ptr es:[edi], dx
  042755  insb byte ptr es:[edi], dx
  042756  outsd dx, dword ptr [esi]
  042757  popal 
  042758  jb 0x4275c
L4275c:
  04275c  jo 0x427bf
  04275e  insb byte ptr es:[edi], dx
  04275f  insb byte ptr es:[edi], dx
  042760  outsd dx, dword ptr [esi]
  042761  jb 0x42766
L42766:
  042766  jb 0x427c9
  042768  je 0x427cb
  04276a  jbe 0x427d1
  04276c  imul ebp, dword ptr [esi], 0x6a
  04276f  jne 0x427e6
  042771  add byte ptr [ebx + 0x31], dh
  042774  xor eax, 0x7863732e
  042779  add byte ptr [eax], al
  04277b  add byte ptr [edx], dh
L4277e:
  04277e  add byte ptr [eax], al
  042780  add byte ptr [edx], al
  042782  add al, byte ptr [edx]
  042784  cmp edi, dword ptr [ebx]
  042786  cmp ebx, dword ptr [esi]
  042788  sbb al, 0x1c
  04278a  xor eax, 0x3b313939
  04278f  aas 
  042790  xor dword ptr [0x3f352d39], esi
  042796  sub esi, dword ptr [ebx]
  042798  cmp eax, 0x2f3f3d3d
  04279d  xor dword ptr [0x273b2f2b], esi
  0427a3  sub esi, dword ptr [edi]
  0427a5  sbb byte ptr [esi + edx], dl
  0427a8  and eax, 0x33373329
  0427ad  xor eax, 0x2b3b312b
  0427b2  sub eax, 0x31272537
  0427b7  and esp, dword ptr [ebx]
  0427b9  sub eax, 0x212b1e21
  0427be  sbb al, 0x25
  0427c0  push ds
  0427c1  sbb ah, byte ptr [edi]
  0427c3  sbb al, 0x16
  0427c5  and ebx, dword ptr [edx]
  0427c7  adc al, 0x1e
L427c9:
  0427c9  sbb dl, byte ptr [edx]
L427cb:
  0427cb  sbb al, 0x18
  0427cd  adc byte ptr [edx], bl
  0427cf  push ss
  0427d0  adc byte ptr [esi + edx], dl
  0427d3  or al, 0x14
  0427d5  adc al, 8
  0427d7  adc byte ptr [edx + ecx], dl
  0427da  adc byte ptr [edx + ecx], dl
  0427dd  adc dl, byte ptr [edx]
  0427df  or byte ptr [esi], cl
  0427e1  adc byte ptr [esi], al
  0427e3  or al, 0xc
  0427e5  add al, 0xa
  0427e7  sbb al, 0x16
  0427e9  sbb al, 0x1c
  0427eb  adc al, 0x1c
  0427ed  push ds
  0427ee  adc al, 0x18
  0427f0  sbb byte ptr [esi], cl
  0427f2  adc al, 0x18
  0427f4  push cs
  0427f5  push ss
  0427f6  push cs
  0427f7  add al, 0xc
  0427f9  xor eax, 0xa183331
  0427fe  push cs
  0427ff  or al, 2
  042801  push es
  042802  and eax, 0x272f2321
  042807  sub edx, dword ptr [eax]
  042809  add al, 0xa
  04280b  xor dword ptr [0x3735352f], ebp
  042811  das 
  042812  das 
  042813  xor ebp, dword ptr [0x272b2d29]
  042819  sub dword ptr [ecx], ebp
  04281b  and esp, dword ptr [0x25211e27]
  042821  sbb bl, byte ptr [esi]
  042823  and edx, dword ptr [esi]
  042825  sbb ah, byte ptr [0x14211816]
  04282b  sbb byte ptr [esi], bl
  04282d  adc dl, byte ptr [esp + ebx]
  042830  push cs
  042831  adc byte ptr [edx], bl
  042833  or al, 0xe
  042835  push ss
  042836  or byte ptr [edx], cl
  042838  adc al, byte ptr [esi + eax]
  04283b  aas 
  04283c  aas 
  04283d  aas 
  04283e  add byte ptr [eax], al
  042840  aas 
  042841  add byte ptr [eax], al
  042843  aas 
  042844  add byte ptr [eax], al
  042846  aas 
  042847  add byte ptr [eax], al
  042849  aas 
  04284a  add byte ptr [eax], al
  04284c  aas 
  04284d  add byte ptr [eax], al
  04284f  aas 
  042850  add byte ptr [eax], al
  042852  aas 
  042853  add byte ptr [eax], al
  042855  aas 
  042856  add byte ptr [eax], al
  042858  aas 
  042859  add byte ptr [eax], al
  04285b  aas 
  04285c  add byte ptr [eax], al
  04285e  aas 
  04285f  add byte ptr [eax], al
  042861  aas 
  042862  add byte ptr [eax], al
  042864  aas 
  042865  add byte ptr [eax], al
  042867  aas 
  042868  add byte ptr [eax], al
  04286a  aas 
  04286b  add byte ptr [eax], al
  04286d  aas 
  04286e  add byte ptr [eax], al
  042870  aas 
  042871  add byte ptr [eax], al
  042873  aas 
  042874  add byte ptr [eax], al
  042876  aas 
  042877  add byte ptr [eax], al
  042879  aas 
  04287a  add byte ptr [eax], al
  04287c  aas 
  04287d  add byte ptr [eax], al
  04287f  aas 
  042880  add byte ptr [eax], al
  042882  aas 
  042883  add byte ptr [eax], al
  042885  aas 
  042886  add byte ptr [eax], al
  042888  aas 
  042889  add byte ptr [eax], al
  04288b  aas 
  04288c  add byte ptr [eax], al
  04288e  aas 
  04288f  add byte ptr [eax], al
  042891  aas 
  042892  add byte ptr [eax], al
  042894  aas 
  042895  add byte ptr [eax], al
  042897  aas 
  042898  add byte ptr [eax], al
  04289a  aas 
  04289b  add byte ptr [eax], al
  04289d  aas 
  04289e  add byte ptr [eax], al
  0428a0  aas 
  0428a1  add byte ptr [eax], al
  0428a3  aas 
  0428a4  add byte ptr [eax], al
  0428a6  aas 
  0428a7  add byte ptr [eax], al
  0428a9  aas 
  0428aa  add byte ptr [eax], al
  0428ac  aas 
  0428ad  add byte ptr [eax], al
  0428af  aas 
  0428b0  add byte ptr [eax], al
  0428b2  aas 
  0428b3  add byte ptr [eax], al
  0428b5  aas 
  0428b6  add byte ptr [eax], al
  0428b8  aas 
  0428b9  add byte ptr [eax], al
  0428bb  aas 
  0428bc  add byte ptr [eax], al
  0428be  aas 
  0428bf  add byte ptr [eax], al
  0428c1  aas 
  0428c2  add byte ptr [eax], al
  0428c4  aas 
  0428c5  add byte ptr [eax], al
  0428c7  aas 
  0428c8  add byte ptr [eax], al
  0428ca  aas 
  0428cb  add byte ptr [eax], al
  0428cd  aas 
  0428ce  add byte ptr [eax], al
  0428d0  aas 
  0428d1  add byte ptr [eax], al
  0428d3  aas 
  0428d4  add byte ptr [eax], al
  0428d6  aas 
  0428d7  add byte ptr [eax], al
  0428d9  aas 
  0428da  add byte ptr [eax], al
  0428dc  aas 
  0428dd  add byte ptr [eax], al
  0428df  aas 
  0428e0  add byte ptr [eax], al
  0428e2  aas 
  0428e3  add byte ptr [eax], al
  0428e5  aas 
  0428e6  add byte ptr [eax], al
  0428e8  aas 
  0428e9  add byte ptr [eax], al
  0428eb  aas 
  0428ec  add byte ptr [eax], al
  0428ee  aas 
  0428ef  add byte ptr [eax], al
  0428f1  aas 
  0428f2  add byte ptr [eax], al
  0428f4  aas 
  0428f5  add byte ptr [eax], al
  0428f7  aas 
  0428f8  add byte ptr [eax], al
  0428fa  aas 
  0428fb  add byte ptr [eax], al
  0428fd  aas 
  0428fe  add byte ptr [eax], al
  042900  aas 
  042901  add byte ptr [eax], al
  042903  aas 
  042904  add byte ptr [eax], al
  042906  aas 
  042907  add byte ptr [eax], al
  042909  aas 
  04290a  add byte ptr [eax], al
  04290c  aas 
  04290d  add byte ptr [eax], al
  04290f  aas 
  042910  add byte ptr [eax], al
  042912  aas 
  042913  add byte ptr [eax], al
  042915  aas 
  042916  add byte ptr [eax], al
  042918  aas 
  042919  add byte ptr [eax], al
  04291b  aas 
  04291c  add byte ptr [eax], al
  04291e  aas 
  04291f  add byte ptr [eax], al
  042921  aas 
  042922  add byte ptr [eax], al
  042924  aas 
  042925  add byte ptr [eax], al
  042927  aas 
  042928  add byte ptr [eax], al
  04292a  aas 
  04292b  add byte ptr [eax], al
  04292d  aas 
  04292e  add byte ptr [eax], al
  042930  aas 
  042931  add byte ptr [eax], al
  042933  aas 
  042934  add byte ptr [eax], al
  042936  aas 
  042937  add byte ptr [eax], al
  042939  aas 
  04293a  add byte ptr [eax], al
  04293c  aas 
  04293d  add byte ptr [eax], al
  04293f  aas 
  042940  add byte ptr [eax], al
  042942  aas 
  042943  add byte ptr [eax], al
  042945  aas 
  042946  add byte ptr [eax], al
  042948  aas 
  042949  add byte ptr [eax], al
  04294b  aas 
  04294c  add byte ptr [eax], al
  04294e  aas 
  04294f  add byte ptr [eax], al
  042951  aas 
  042952  add byte ptr [eax], al
  042954  aas 
  042955  add byte ptr [eax], al
  042957  aas 
  042958  add byte ptr [eax], al
  04295a  aas 
  04295b  add byte ptr [eax], al
  04295d  aas 
  04295e  add byte ptr [eax], al
  042960  aas 
  042961  add byte ptr [eax], al
  042963  aas 
  042964  add byte ptr [eax], al
  042966  aas 
  042967  add byte ptr [eax], al
  042969  aas 
  04296a  add byte ptr [eax], al
  04296c  aas 
  04296d  add byte ptr [eax], al
  04296f  aas 
  042970  add byte ptr [eax], al
  042972  aas 
  042973  add byte ptr [eax], al
  042975  aas 
  042976  add byte ptr [eax], al
  042978  aas 
  042979  add byte ptr [eax], al
  04297b  aas 
  04297c  add byte ptr [eax], al
  04297e  aas 
  04297f  add byte ptr [eax], al
  042981  aas 
  042982  add byte ptr [eax], al
  042984  aas 
  042985  add byte ptr [eax], al
  042987  aas 
  042988  add byte ptr [eax], al
  04298a  aas 
  04298b  add byte ptr [eax], al
  04298d  aas 
  04298e  add byte ptr [eax], al
  042990  aas 
  042991  add byte ptr [eax], al
  042993  aas 
  042994  add byte ptr [eax], al
  042996  aas 
  042997  add byte ptr [eax], al
  042999  aas 
  04299a  add byte ptr [eax], al
  04299c  aas 
  04299d  add byte ptr [eax], al
  04299f  aas 
  0429a0  add byte ptr [eax], al
  0429a2  aas 
  0429a3  add byte ptr [eax], al
  0429a5  aas 
  0429a6  add byte ptr [eax], al
  0429a8  aas 
  0429a9  add byte ptr [eax], al
  0429ab  aas 
  0429ac  add byte ptr [eax], al
  0429ae  aas 
  0429af  add byte ptr [eax], al
  0429b1  aas 
  0429b2  add byte ptr [eax], al
  0429b4  aas 
  0429b5  add byte ptr [eax], al
  0429b7  aas 
  0429b8  add byte ptr [eax], al
  0429ba  aas 
  0429bb  add byte ptr [eax], al
  0429bd  aas 
  0429be  add byte ptr [eax], al
  0429c0  aas 
  0429c1  add byte ptr [eax], al
  0429c3  aas 
  0429c4  add byte ptr [eax], al
  0429c6  aas 
  0429c7  add byte ptr [eax], al
  0429c9  aas 
  0429ca  add byte ptr [eax], al
  0429cc  aas 
  0429cd  add byte ptr [eax], al
  0429cf  aas 
  0429d0  add byte ptr [eax], al
  0429d2  aas 
  0429d3  add byte ptr [eax], al
  0429d5  aas 
  0429d6  add byte ptr [eax], al
  0429d8  aas 
  0429d9  add byte ptr [eax], al
  0429db  aas 
  0429dc  add byte ptr [eax], al
  0429de  aas 
  0429df  add byte ptr [eax], al
  0429e1  aas 
  0429e2  add byte ptr [eax], al
  0429e4  aas 
  0429e5  add byte ptr [eax], al
  0429e7  aas 
  0429e8  add byte ptr [eax], al
  0429ea  aas 
  0429eb  add byte ptr [eax], al
  0429ed  aas 
  0429ee  add byte ptr [eax], al
  0429f0  aas 
  0429f1  add byte ptr [eax], al
  0429f3  aas 
  0429f4  add byte ptr [eax], al
  0429f6  aas 
  0429f7  add byte ptr [eax], al
  0429f9  aas 
  0429fa  add byte ptr [eax], al
  0429fc  aas 
  0429fd  add byte ptr [eax], al
  0429ff  aas 
  042a00  add byte ptr [eax], al
  042a02  aas 
  042a03  add byte ptr [eax], al
  042a05  aas 
  042a06  add byte ptr [eax], al
  042a08  aas 
  042a09  add byte ptr [eax], al
  042a0b  aas 
  042a0c  add byte ptr [eax], al
  042a0e  aas 
  042a0f  add byte ptr [eax], al
  042a11  aas 
  042a12  add byte ptr [eax], al
  042a14  aas 
  042a15  add byte ptr [eax], al
  042a17  aas 
  042a18  add byte ptr [eax], al
  042a1a  aas 
  042a1b  add byte ptr [eax], al
  042a1d  aas 
  042a1e  add byte ptr [eax], al
  042a20  aas 
  042a21  add byte ptr [eax], al
  042a23  aas 
  042a24  add byte ptr [eax], al
  042a26  aas 
  042a27  add byte ptr [eax], al
  042a29  aas 
  042a2a  add byte ptr [eax], al
  042a2c  aas 
  042a2d  add byte ptr [eax], al
  042a2f  aas 
  042a30  add byte ptr [eax], al
  042a32  aas 
  042a33  add byte ptr [eax], al
  042a35  aas 
  042a36  add byte ptr [eax], al
  042a38  aas 
  042a39  add byte ptr [eax], al
  042a3b  aas 
  042a3c  add byte ptr [eax], al
  042a3e  aas 
  042a3f  add byte ptr [eax], al
  042a41  aas 
  042a42  add byte ptr [eax], al
  042a44  aas 
  042a45  add byte ptr [eax], al
  042a47  aas 
  042a48  add byte ptr [eax], al
  042a4a  aas 
  042a4b  add byte ptr [eax], al
  042a4d  aas 
  042a4e  add byte ptr [eax], al
  042a50  aas 
  042a51  add byte ptr [eax], al
  042a53  aas 
  042a54  add byte ptr [eax], al
  042a56  aas 
  042a57  add byte ptr [eax], al
  042a59  aas 
  042a5a  add byte ptr [eax], al
  042a5c  aas 
  042a5d  add byte ptr [eax], al
  042a5f  aas 
  042a60  add byte ptr [eax], al
  042a62  aas 
  042a63  add byte ptr [eax], al
  042a65  aas 
  042a66  add byte ptr [eax], al
  042a68  aas 
  042a69  add byte ptr [eax], al
  042a6b  aas 
  042a6c  add byte ptr [eax], al
  042a6e  aas 
  042a6f  add byte ptr [eax], al
  042a71  aas 
  042a72  add byte ptr [eax], al
  042a74  aas 
  042a75  add byte ptr [eax], al
  042a77  aas 
  042a78  add byte ptr [eax], al
  042a7a  aas 
  042a7b  add byte ptr [0x10db8729], bl
  042a81  pop edx
  042a82  add al, 0
  042a84  inc byte ptr [ebx]
  042a86  add byte ptr [eax], al
  042a88  hlt 
  042a89  add eax, dword ptr [eax]
  042a8b  add bh, dl
  042a8d  add eax, dword ptr [eax]
  042a8f  add byte ptr [eax + 0x68000003], ch
  042a95  add eax, dword ptr [eax]
  042a97  add byte ptr [ebx], bl
  042a99  add eax, dword ptr [eax]
  042a9b  add bl, al
  042a9d  add al, byte ptr [eax]
  042a9f  add byte ptr [ebx + 2], ah
  042aa2  add byte ptr [eax], al
  042aa4  inc dword ptr [ecx]
  042aa6  add byte ptr [eax], al
  042aa8  wait 
  042aa9  add dword ptr [eax], eax
  042aab  add byte ptr [ebx], bh
  042aad  add dword ptr [eax], eax
  042aaf  add bl, ah
  042ab1  add byte ptr [eax], al
  042ab3  add byte ptr [esi + 0x56000000], dl
  042ab9  add byte ptr [eax], al
  042abb  add byte ptr [edi], ah
  042abd  add byte ptr [eax], al
  042abf  add byte ptr [edx], cl
  042ac1  add byte ptr [eax], al
  042ac3  add byte ptr [eax], al
  042ac5  add byte ptr [eax], al
  042ac7  add byte ptr [eax], al
  042ac9  add byte ptr [eax], al
  042acb  add byte ptr [ecx], al
  042acd  add byte ptr [eax], al
  042acf  add byte ptr [edx], al
  042ad1  add byte ptr [eax], al
  042ad3  add byte ptr [ebx], al
  042ad5  add byte ptr [eax], al
  042ad7  add byte ptr [0x7000000], al
  042add  add byte ptr [eax], al
  042adf  add byte ptr [edx], cl
  042ae1  add byte ptr [eax], al
  042ae3  add byte ptr [0x10000000], cl
  042ae9  add byte ptr [eax], al
  042aeb  add byte ptr [eax + eax], dl
  042aee  add byte ptr [eax], al
  042af0  sbb byte ptr [eax], al
  042af2  add byte ptr [eax], al
  042af4  sbb eax, 0x22000000
  042af9  add byte ptr [eax], al
  042afb  add byte ptr [edi], ah
  042afd  add byte ptr [eax], al
  042aff  add byte ptr [0x33000000], ch
  042b05  add byte ptr [eax], al
  042b07  add byte ptr [ecx], bh
  042b09  add byte ptr [eax], al
  042b0b  add byte ptr [eax], al
  042b0e  add byte ptr [eax], al
  042b10  inc edi
  042b11  add byte ptr [eax], al
  042b13  add byte ptr [esi], cl
  042b16  add byte ptr [eax], al
  042b18  push esi
  042b19  add byte ptr [eax], al
  042b1b  add byte ptr [esi], bl
  042b1e  add byte ptr [eax], al
  042b20  add byte ptr [bx + si], al
  042b23  add byte ptr [edi], ch
  042b26  add byte ptr [eax], al
  042b28  jns 0x42b2a
L42b2a:
  042b2a  add byte ptr [eax], al
  042b2c  add byte ptr [eax], 0
  042b2f  add byte ptr [eax + eax + 0x960000], cl
  042b36  add byte ptr [eax], al
  042b38  mov al, byte ptr [0xaa000000]
  042b3d  add byte ptr [eax], al
  042b3f  add byte ptr [ebp - 0x40000000], dh
  042b45  add byte ptr [eax], al
  042b47  add ah, cl
  042b49  add byte ptr [eax], al
  042b4b  add bh, dl
  042b4d  add byte ptr [eax], al
  042b4f  add bl, ah
  042b51  add byte ptr [eax], al
  042b53  add bh, ch
  042b55  add byte ptr [eax], al
  042b57  add bl, bh
  042b59  add byte ptr [eax], al
  042b5b  add byte ptr [eax], cl
  042b5d  add dword ptr [eax], eax
  042b5f  add byte ptr [ecx + eax], dl
  042b62  add byte ptr [eax], al
  042b64  and dword ptr [ecx], eax
  042b66  add byte ptr [eax], al
  042b68  add dword ptr cs:[eax], eax
  042b6b  add byte ptr [ebx], bh
  042b6d  add dword ptr [eax], eax
  042b6f  add byte ptr [ecx + 1], cl
  042b72  add byte ptr [eax], al
  042b74  push esi
  042b75  add dword ptr [eax], eax
  042b77  add byte ptr [ecx + eax], ah
  042b7b  add byte ptr [edx + 1], dh
  042b7e  add byte ptr [eax], al
  042b80  jg 0x42b83
  042b82  add byte ptr [eax], al
  042b84  lea eax, [ecx]
  042b86  add byte ptr [eax], al
  042b88  wait 
  042b89  add dword ptr [eax], eax
  042b8b  add byte ptr [ecx - 0x47ffffff], ch
  042b91  add dword ptr [eax], eax
  042b93  add dh, al
  042b95  add dword ptr [eax], eax
  042b97  add ah, dl
  042b99  add dword ptr [eax], eax
  042b9b  add dl, ah
  042b9d  add dword ptr [eax], eax
  042b9f  add cl, dh
  042ba1  add dword ptr [eax], eax
  042ba3  add bh, bh
  042ba5  add dword ptr [eax], eax
  042ba7  add byte ptr [0x1c000002], cl
  042bad  add al, byte ptr [eax]
  042baf  add byte ptr [edx], ch
  042bb1  add al, byte ptr [eax]
  042bb3  add byte ptr [eax], bh
  042bb5  add al, byte ptr [eax]
  042bb7  add byte ptr [esi + 2], al
  042bba  add byte ptr [eax], al
  042bbc  push ebp
  042bbd  add al, byte ptr [eax]
  042bbf  add byte ptr [ebx + 2], ah
  042bc2  add byte ptr [eax], al
  042bc4  jno 0x42bc8
  042bc6  add byte ptr [eax], al
L42bc8:
  042bc8  jg 0x42bcc
  042bca  add byte ptr [eax], al
L42bcc:
  042bcc  mov word ptr [edx], es
  042bce  add byte ptr [eax], al
  042bd0  lcall 2, 0xa8000002
  042bd7  add byte ptr [ebp - 0x3cfffffe], dh
  042bdd  add al, byte ptr [eax]
  042bdf  add al, dl
  042be1  add al, byte ptr [eax]
  042be3  add ch, bl
  042be5  add al, byte ptr [eax]
  042be7  add dl, ch
  042be9  add al, byte ptr [eax]
  042beb  add dh, dh
  042bed  add al, byte ptr [eax]
  042bef  add byte ptr [ebx], al
  042bf1  add eax, dword ptr [eax]
  042bf3  add byte ptr [edi], cl
  042bf5  add eax, dword ptr [eax]
  042bf7  add byte ptr [ebx], bl
  042bf9  add eax, dword ptr [eax]
  042bfb  add byte ptr [edi], ah
  042bfd  add eax, dword ptr [eax]
  042bff  add byte ptr [edx], dh
  042c01  add eax, dword ptr [eax]
  042c03  add byte ptr [esi], bh
  042c05  add eax, dword ptr [eax]
  042c07  add byte ptr [ecx + 3], cl
  042c0a  add byte ptr [eax], al
  042c0c  push esp
  042c0d  add eax, dword ptr [eax]
  042c0f  add byte ptr [esi + 3], bl
  042c12  add byte ptr [eax], al
  042c14  push 0x72000003
  042c19  add eax, dword ptr [eax]
  042c1b  add byte ptr [ebx + eax], bh
  042c1f  add byte ptr [ebp - 0x70fffffd], al
  042c25  add eax, dword ptr [eax]
  042c27  add byte ptr [edi - 0x5ffffffd], dl
  042c2d  add eax, dword ptr [eax]
  042c2f  add byte ptr [eax - 0x4ffffffd], ch
  042c35  add eax, dword ptr [eax]
  042c37  add byte ptr [edi - 0x41fffffd], dh
  042c3d  add eax, dword ptr [eax]
  042c3f  add ch, al
  042c41  add eax, dword ptr [eax]
  042c43  add bl, cl
  042c45  add eax, dword ptr [eax]
  042c47  add cl, dl
  042c49  add eax, dword ptr [eax]
  042c4b  add bh, dl
  042c4d  add eax, dword ptr [eax]
  042c4f  add ah, bl
  042c51  add eax, dword ptr [eax]
  042c53  add cl, ah
  042c55  add eax, dword ptr [eax]
  042c57  add dh, ah
  042c59  add eax, dword ptr [eax]
  042c5b  add dl, ch
  042c5d  add eax, dword ptr [eax]
  042c5f  add dh, ch
  042c61  add eax, dword ptr [eax]
  042c63  add cl, dh
  042c65  add eax, dword ptr [eax]
  042c67  add ah, dh
  042c69  add eax, dword ptr [eax]
  042c6b  add bh, dh
  042c6d  add eax, dword ptr [eax]
  042c6f  add cl, bh
  042c71  add eax, dword ptr [eax]
  042c73  add bl, bh
  042c75  add eax, dword ptr [eax]
  042c77  add ah, bh
  042c79  add eax, dword ptr [eax]
  042c7b  add ch, bh
  042c7d  add eax, dword ptr [eax]
  042c7f  add dh, bh
  042c81  add eax, dword ptr [eax]
  042c83  add byte ptr [eax], al
  042c85  add byte ptr [eax], al
  042c87  add byte ptr [eax], al
  042c89  add byte ptr [eax], al
  042c8b  add byte ptr [eax], al
  042c8d  add byte ptr [eax], al
  042c8f  add byte ptr [eax], al
  042c91  add byte ptr [eax], al
  042c93  add byte ptr [eax], al
  042c95  add byte ptr [eax], al
  042c97  add byte ptr [eax], al
  042c99  add byte ptr [eax], al
  042c9b  add byte ptr [eax], al
  042c9d  add byte ptr [eax], al
  042c9f  add byte ptr [eax], al
  042ca1  add byte ptr [eax], al
  042ca3  add byte ptr [eax], al
  042ca5  add byte ptr [eax], al
  042ca7  add byte ptr [eax], al
  042ca9  add byte ptr [eax], al
  042cab  add byte ptr [eax], al
  042cad  add byte ptr [eax], al
  042caf  add byte ptr [eax], al
  042cb1  add byte ptr [eax], al
  042cb3  add byte ptr [eax], al
  042cb5  add byte ptr [eax], al
  042cb7  add byte ptr [eax], al
  042cb9  add byte ptr [eax], al
  042cbb  add byte ptr [eax], al
  042cbd  add byte ptr [eax], al
  042cbf  add byte ptr [eax], al
  042cc1  add byte ptr [eax], al
  042cc3  add byte ptr [eax], al
  042cc5  add byte ptr [eax], al
  042cc7  add byte ptr [eax], al
  042cc9  add byte ptr [eax], al
  042ccb  add byte ptr [eax], al
  042ccd  add byte ptr [eax], al
  042ccf  add byte ptr [eax], al
  042cd1  add byte ptr [eax], al
  042cd3  add byte ptr [eax], al
  042cd5  add byte ptr [eax], al
  042cd7  add byte ptr [eax], al
  042cd9  add byte ptr [eax], al
  042cdb  add byte ptr [eax], al
  042cdd  add byte ptr [eax], al
  042cdf  add byte ptr [eax], al
  042ce1  add byte ptr [eax], al
  042ce3  add byte ptr [eax], al
  042ce5  add byte ptr [eax], al
  042ce7  add byte ptr [eax], al
  042ce9  add byte ptr [eax], al
  042ceb  add byte ptr [eax], al
  042ced  add byte ptr [eax], al
  042cef  add byte ptr [eax], al
  042cf1  add byte ptr [eax], al
  042cf3  add byte ptr [eax], al
  042cf5  add byte ptr [eax], al
  042cf7  add byte ptr [eax], al
  042cf9  add byte ptr [eax], al
  042cfb  add byte ptr [eax], al
  042cfd  add byte ptr [eax], al
  042cff  add byte ptr [eax], al
  042d01  add byte ptr [eax], al
  042d03  add byte ptr [eax], al
  042d05  add byte ptr [eax], al
  042d07  add byte ptr [eax], al
  042d09  add byte ptr [eax], al
  042d0b  add byte ptr [eax], al
  042d0d  add byte ptr [eax], al
  042d0f  add byte ptr [eax], al
  042d11  add byte ptr [eax], al
  042d13  add byte ptr [eax], al
  042d15  add byte ptr [eax], al
  042d17  add byte ptr [eax], al
  042d19  add byte ptr [eax], al
  042d1b  add byte ptr [eax], al
  042d1d  add byte ptr [eax], al
  042d1f  add byte ptr [eax], al
  042d21  add byte ptr [eax], al
  042d23  add byte ptr [eax], al
  042d25  add byte ptr [eax], al
  042d27  add byte ptr [eax], al
  042d29  add byte ptr [eax], al
  042d2b  add byte ptr [eax], al
  042d2d  add byte ptr [eax], al
  042d2f  add byte ptr [eax], al
  042d31  add byte ptr [eax], al
  042d33  add byte ptr [eax], al
  042d35  add byte ptr [eax], al
  042d37  add byte ptr [eax], al
  042d39  add byte ptr [eax], al
  042d3b  add byte ptr [eax], al
  042d3d  add byte ptr [eax], al
  042d3f  add byte ptr [eax], al
  042d41  add byte ptr [eax], al
  042d43  add byte ptr [eax], al
  042d45  add byte ptr [eax], al
  042d47  add byte ptr [eax], al
  042d49  add byte ptr [eax], al
  042d4b  add byte ptr [eax], al
  042d4d  add byte ptr [eax], al
  042d4f  add byte ptr [eax], al
  042d51  add byte ptr [eax], al
  042d53  add byte ptr [eax], al
  042d55  add byte ptr [eax], al
  042d57  add byte ptr [eax], al
  042d59  add byte ptr [eax], al
  042d5b  add byte ptr [eax], al
  042d5d  add byte ptr [eax], al
  042d5f  add byte ptr [eax], al
  042d61  add byte ptr [eax], al
  042d63  add byte ptr [eax], al
  042d65  add byte ptr [eax], al
  042d67  add byte ptr [eax], al
  042d69  add byte ptr [eax], al
  042d6b  add byte ptr [eax], al
  042d6d  add byte ptr [eax], al
  042d6f  add byte ptr [eax], al
  042d71  add byte ptr [eax], al
  042d73  add byte ptr [eax], al
  042d75  add byte ptr [eax], al
  042d77  add byte ptr [eax], al
  042d79  add byte ptr [eax], al
  042d7b  add byte ptr [eax], al
  042d7d  add byte ptr [eax], al
  042d7f  add byte ptr [eax], al
  042d81  add byte ptr [eax], al
  042d83  add byte ptr [eax], al
  042d85  add byte ptr [eax], al
  042d87  add byte ptr [eax], al
  042d89  add byte ptr [eax], al
  042d8b  add byte ptr [eax], al
  042d8d  add byte ptr [eax], al
  042d8f  add byte ptr [eax], al
  042d91  add byte ptr [eax], al
  042d93  add byte ptr [eax], al
  042d95  add byte ptr [eax], al
  042d97  add byte ptr [eax], al
  042d99  add byte ptr [eax], al
  042d9b  add byte ptr [eax], al
  042d9d  add byte ptr [eax], al
  042d9f  add byte ptr [eax], al
  042da1  add byte ptr [eax], al
  042da3  add byte ptr [eax], al
  042da5  add byte ptr [eax], al
  042da7  add byte ptr [eax], al
  042da9  add byte ptr [eax], al
  042dab  add byte ptr [eax], al
  042dad  add byte ptr [eax], al
  042daf  add byte ptr [eax], al
  042db1  add byte ptr [eax], al
  042db3  add byte ptr [eax], al
  042db5  add byte ptr [eax], al
  042db7  add byte ptr [eax], al
  042db9  add byte ptr [eax], al
  042dbb  add byte ptr [eax], al
  042dbd  add byte ptr [eax], al
  042dbf  add byte ptr [eax], al
  042dc1  add byte ptr [eax], al
  042dc3  add byte ptr [eax], al
  042dc5  add byte ptr [eax], al
  042dc7  add byte ptr [eax], al
  042dc9  add byte ptr [eax], al
  042dcb  add byte ptr [eax], al
  042dcd  add byte ptr [eax], al
  042dcf  add byte ptr [eax], al
  042dd1  add byte ptr [eax], al
  042dd3  add byte ptr [eax], al
  042dd5  add byte ptr [eax], al
  042dd7  add byte ptr [eax], al
  042dd9  add byte ptr [eax], al
  042ddb  add byte ptr [eax], al
  042ddd  add byte ptr [eax], al
  042ddf  add byte ptr [eax], al
  042de1  add byte ptr [eax], al
  042de3  add byte ptr [eax], al
  042de5  add byte ptr [eax], al
  042de7  add byte ptr [eax], al
  042de9  add byte ptr [eax], al
  042deb  add byte ptr [eax], al
  042ded  add byte ptr [eax], al
  042def  add byte ptr [eax], al
  042df1  add byte ptr [eax], al
  042df3  add byte ptr [eax], al
  042df5  add byte ptr [eax], al
  042df7  add byte ptr [eax], al
  042df9  add byte ptr [eax], al
  042dfb  add byte ptr [eax], al
  042dfd  add byte ptr [eax], al
  042dff  add byte ptr [eax], al
  042e01  add byte ptr [eax], al
  042e03  add byte ptr [eax], al
  042e05  add byte ptr [eax], al
  042e07  add byte ptr [eax], al
  042e09  add byte ptr [eax], al
  042e0b  add byte ptr [eax], al
  042e0d  add byte ptr [eax], al
  042e0f  add byte ptr [eax], al
  042e11  add byte ptr [eax], al
  042e13  add byte ptr [eax], al
  042e15  add byte ptr [eax], al
  042e17  add byte ptr [eax], al
  042e19  add byte ptr [eax], al
  042e1b  add byte ptr [eax], al
  042e1d  add byte ptr [eax], al
  042e1f  add byte ptr [eax], al
  042e21  add byte ptr [eax], al
  042e23  add byte ptr [eax], al
  042e25  add byte ptr [eax], al
  042e27  add byte ptr [eax], al
  042e29  add byte ptr [eax], al
  042e2b  add byte ptr [eax], al
  042e2d  add byte ptr [eax], al
  042e2f  add byte ptr [eax], al
  042e31  add byte ptr [eax], al
  042e33  add byte ptr [eax], al
  042e35  add byte ptr [eax], al
  042e37  add byte ptr [eax], al
  042e39  add byte ptr [eax], al
  042e3b  add byte ptr [eax], al
  042e3d  add byte ptr [eax], al
  042e3f  add byte ptr [eax], al
  042e41  add byte ptr [eax], al
  042e43  add byte ptr [eax], al
  042e45  add byte ptr [eax], al
  042e47  add byte ptr [eax], al
  042e49  add byte ptr [eax], al
  042e4b  add byte ptr [eax], al
  042e4d  add byte ptr [eax], al
  042e4f  add byte ptr [eax], al
  042e51  add byte ptr [eax], al
  042e53  add byte ptr [eax], al
  042e55  add byte ptr [eax], al
  042e57  add byte ptr [eax], al
  042e59  add byte ptr [eax], al
  042e5b  add byte ptr [eax], al
  042e5d  add byte ptr [eax], al
  042e5f  add byte ptr [eax], al
  042e61  add byte ptr [eax], al
  042e63  add byte ptr [eax], al
  042e65  add byte ptr [eax], al
  042e67  add byte ptr [eax], al
  042e69  add byte ptr [eax], al
  042e6b  add byte ptr [eax], al
  042e6d  add byte ptr [eax], al
  042e6f  add byte ptr [eax], al
  042e71  add byte ptr [eax], al
  042e73  add byte ptr [eax], al
  042e75  add byte ptr [eax], al
  042e77  add byte ptr [eax], al
  042e79  add byte ptr [eax], al
  042e7b  add byte ptr [eax], al
  042e7d  add byte ptr [eax], al
  042e7f  add byte ptr [eax], al
  042e81  add byte ptr [eax], al
  042e83  add bh, bh
  042e85  add eax, dword ptr [eax]
  042e87  add bh, bh
  042e89  add eax, dword ptr [eax]
  042e8b  add bh, bh
  042e8d  add eax, dword ptr [eax]
  042e8f  add bh, bh
  042e91  add eax, dword ptr [eax]
  042e93  add bh, bh
  042e95  add eax, dword ptr [eax]
  042e97  add bh, bh
  042e99  add eax, dword ptr [eax]
  042e9b  add bh, bh
  042e9d  add eax, dword ptr [eax]
  042e9f  add bh, bh
  042ea1  add eax, dword ptr [eax]
  042ea3  add bh, bh
  042ea5  add eax, dword ptr [eax]
  042ea7  add dh, bh
  042ea9  add eax, dword ptr [eax]
  042eab  add dh, bh
  042ead  add eax, dword ptr [eax]
  042eaf  add dh, bh
  042eb1  add eax, dword ptr [eax]
  042eb3  add ch, bh
  042eb5  add eax, dword ptr [eax]
  042eb7  add ah, bh
  042eb9  add eax, dword ptr [eax]
  042ebb  add bl, bh
  042ebd  add eax, dword ptr [eax]
  042ebf  add dl, bh
  042ec1  add eax, dword ptr [eax]
  042ec3  add al, bh
  042ec5  add eax, dword ptr [eax]
  042ec7  add bh, dh
  042ec9  add eax, dword ptr [eax]
  042ecb  add ch, dh
  042ecd  add eax, dword ptr [eax]
  042ecf  add dl, dh
  042ed1  add eax, dword ptr [eax]
  042ed3  add bh, ch
  042ed5  add eax, dword ptr [eax]
  042ed7  add ah, ch
  042ed9  add eax, dword ptr [eax]
  042edb  add al, ch
  042edd  add eax, dword ptr [eax]
  042edf  add bl, ah
  042ee1  add eax, dword ptr [eax]
  042ee3  add dh, bl
  042ee5  add eax, dword ptr [eax]
  042ee7  add al, bl
  042ee9  add eax, dword ptr [eax]
  042eeb  add cl, dl
  042eed  add eax, dword ptr [eax]
  042eef  add dl, cl
  042ef1  add eax, dword ptr [eax]
  042ef3  add dl, al
  042ef5  add eax, dword ptr [eax]
  042ef7  add byte ptr [eax - 0x51fffffd], bh
  042efd  add eax, dword ptr [eax]
  042eff  add byte ptr [ebx - 0x69fffffd], ah
  042f05  add eax, dword ptr [eax]
  042f07  add byte ptr [eax + 0x79000003], cl
  042f0d  add eax, dword ptr [eax]
  042f0f  add byte ptr [ecx + 3], ch
  042f12  add byte ptr [eax], al
  042f14  push edi
  042f15  add eax, dword ptr [eax]
  042f17  add byte ptr [ebx + eax], al
  042f1b  add byte ptr [esi], ch
  042f1d  add eax, dword ptr [eax]
  042f1f  add byte ptr [eax], bl
  042f21  add eax, dword ptr [eax]
  042f23  add bh, bh
  042f25  add al, byte ptr [eax]
  042f27  add ah, ah
  042f29  add al, byte ptr [eax]
  042f2b  add al, cl
  042f2d  add al, byte ptr [eax]
  042f2f  add byte ptr [ecx - 0x77fffffe], ch
  042f35  add al, byte ptr [eax]
  042f37  add byte ptr [ebp + 2], ah
  042f3a  add byte ptr [eax], al
  042f3c  aas 
  042f3d  add al, byte ptr [eax]
  042f3f  add byte ptr [edi], dl
  042f41  add al, byte ptr [eax]
  042f43  add ah, ch
  042f45  add dword ptr [eax], eax
  042f47  add byte ptr [edi - 0x71ffffff], bh
  042f4d  add dword ptr [eax], eax
  042f4f  add byte ptr [edx + 1], bl
  042f52  add byte ptr [eax], al
  042f54  and al, 1
  042f56  add byte ptr [eax], al
  042f58  ljmp 0:0xad000000
  042f5f  add byte ptr [eax + eax], ch
  042f63  add byte ptr [eax], ch
  042f65  add byte ptr [eax], al
  042f67  add byte ptr [eax], al
  042f69  add byte ptr [eax], al
  042f6b  add byte ptr [eax], al
  042f6d  add byte ptr [eax], al
  042f6f  add byte ptr [eax], al
  042f71  add byte ptr [eax], al
  042f73  add byte ptr [eax], al
  042f75  add byte ptr [eax], al
  042f77  add byte ptr [eax], al
  042f79  add byte ptr [eax], al
  042f7b  add byte ptr [eax], al
  042f7d  add byte ptr [eax], al
  042f7f  add byte ptr [eax], al
  042f81  add byte ptr [eax], al
  042f83  add byte ptr [eax], al
  042f85  add byte ptr [eax], al
  042f87  add byte ptr [eax], al
  042f89  add byte ptr [eax], al
  042f8b  add byte ptr [eax], al
  042f8d  add byte ptr [eax], al
  042f8f  add byte ptr [eax], al
  042f91  add byte ptr [eax], al
  042f93  add byte ptr [eax], al
  042f95  add byte ptr [eax], al
  042f97  add byte ptr [eax], al
  042f99  add byte ptr [eax], al
  042f9b  add byte ptr [eax], al
  042f9d  add byte ptr [eax], al
  042f9f  add byte ptr [eax], ch
  042fa1  add byte ptr [eax], al
  042fa3  add byte ptr [eax + eax], ch
  042fa7  add byte ptr [ebp - 0x16000000], ch
  042fad  add byte ptr [eax], al
  042faf  add byte ptr [ecx + eax], ah
  042fb2  add byte ptr [eax], al
  042fb4  pop edx
  042fb5  add dword ptr [eax], eax
  042fb7  add byte ptr [esi - 0x40ffffff], cl
  042fbd  add dword ptr [eax], eax
  042fbf  add ah, ch
  042fc1  add dword ptr [eax], eax
  042fc3  add byte ptr [edi], dl
  042fc5  add al, byte ptr [eax]
  042fc7  add byte ptr [edi], bh
  042fc9  add al, byte ptr [eax]
  042fcb  add byte ptr [ebp + 2], ah
  042fce  add byte ptr [eax], al
  042fd0  mov byte ptr [edx], al
  042fd2  add byte ptr [eax], al
  042fd4  test eax, 0xc8000002
  042fd9  add al, byte ptr [eax]
  042fdb  add ah, ah
  042fdd  add al, byte ptr [eax]
  042fdf  add bh, bh
  042fe1  add al, byte ptr [eax]
  042fe3  add byte ptr [eax], bl
  042fe5  add eax, dword ptr [eax]
  042fe7  add byte ptr [esi], ch
  042fe9  add eax, dword ptr [eax]
  042feb  add byte ptr [ebx + eax], al
  042fef  add byte ptr [edi + 3], dl
  042ff2  add byte ptr [eax], al
  042ff4  imul eax, dword ptr [ebx], 0x3790000
  042ffa  add byte ptr [eax], al
  042ffc  mov byte ptr [ebx], al
  042ffe  add byte ptr [eax], al
  043000  xchg esi, eax
  043001  add eax, dword ptr [eax]
  043003  add byte ptr [ebx - 0x51fffffd], ah
  043009  add eax, dword ptr [eax]
  04300b  add byte ptr [eax - 0x3dfffffd], bh
  043011  add eax, dword ptr [eax]
  043013  add dl, cl
  043015  add eax, dword ptr [eax]
  043017  add cl, dl
  043019  add eax, dword ptr [eax]
  04301b  add al, bl
  04301d  add eax, dword ptr [eax]
  04301f  add dh, bl
  043021  add eax, dword ptr [eax]
  043023  add bl, ah
  043025  add eax, dword ptr [eax]
  043027  add al, ch
  043029  add eax, dword ptr [eax]
  04302b  add ah, ch
  04302d  add eax, dword ptr [eax]
  04302f  add bh, ch
  043031  add eax, dword ptr [eax]
  043033  add dl, dh
  043035  add eax, dword ptr [eax]
  043037  add ch, dh
  043039  add eax, dword ptr [eax]
  04303b  add bh, dh
  04303d  add eax, dword ptr [eax]
  04303f  add al, bh
  043041  add eax, dword ptr [eax]
  043043  add dl, bh
  043045  add eax, dword ptr [eax]
  043047  add bl, bh
  043049  add eax, dword ptr [eax]
  04304b  add ah, bh
  04304d  add eax, dword ptr [eax]
  04304f  add ch, bh
  043051  add eax, dword ptr [eax]
  043053  add dh, bh
  043055  add eax, dword ptr [eax]
  043057  add dh, bh
  043059  add eax, dword ptr [eax]
  04305b  add dh, bh
  04305d  add eax, dword ptr [eax]
  04305f  add bh, bh
  043061  add eax, dword ptr [eax]
  043063  add bh, bh
  043065  add eax, dword ptr [eax]
  043067  add bh, bh
  043069  add eax, dword ptr [eax]
  04306b  add bh, bh
  04306d  add eax, dword ptr [eax]
  04306f  add bh, bh
  043071  add eax, dword ptr [eax]
  043073  add bh, bh
  043075  add eax, dword ptr [eax]
  043077  add bh, bh
  043079  add eax, dword ptr [eax]
  04307b  add bh, bh
  04307d  add eax, dword ptr [eax]
  04307f  add bh, bh
  043081  add eax, dword ptr [eax]
  043083  add byte ptr [eax], al
  043085  add byte ptr [eax], al
  043087  add byte ptr [eax], al
  043089  add byte ptr [eax], al
  04308b  add byte ptr [eax], al
  04308d  add byte ptr [eax], al
  04308f  add byte ptr [eax], al
  043091  add byte ptr [eax], al
  043093  add byte ptr [eax], al
  043095  add byte ptr [eax], al
  043097  add byte ptr [eax], al
  043099  add byte ptr [eax], al
  04309b  add byte ptr [eax], al
  04309d  add byte ptr [eax], al
  04309f  add byte ptr [eax], al
  0430a1  add byte ptr [eax], al
  0430a3  add byte ptr [eax], al
  0430a5  add byte ptr [eax], al
  0430a7  add byte ptr [eax], al
  0430a9  add byte ptr [eax], al
  0430ab  add byte ptr [eax], al
  0430ad  add byte ptr [eax], al
  0430af  add byte ptr [eax], al
  0430b1  add byte ptr [eax], al
  0430b3  add byte ptr [eax], al
  0430b5  add byte ptr [eax], al
  0430b7  add byte ptr [eax], al
  0430b9  add byte ptr [eax], al
  0430bb  add byte ptr [eax], al
  0430bd  add byte ptr [eax], al
  0430bf  add byte ptr [eax], al
  0430c1  add byte ptr [eax], al
  0430c3  add byte ptr [eax], al
  0430c5  add byte ptr [eax], al
  0430c7  add byte ptr [eax], al
  0430c9  add byte ptr [eax], al
  0430cb  add byte ptr [eax], al
  0430cd  add byte ptr [eax], al
  0430cf  add byte ptr [eax], al
  0430d1  add byte ptr [eax], al
  0430d3  add byte ptr [eax], al
  0430d5  add byte ptr [eax], al
  0430d7  add byte ptr [eax], al
  0430d9  add byte ptr [eax], al
  0430db  add byte ptr [eax], al
  0430dd  add byte ptr [eax], al
  0430df  add byte ptr [eax], al
  0430e1  add byte ptr [eax], al
  0430e3  add byte ptr [eax], al
  0430e5  add byte ptr [eax], al
  0430e7  add byte ptr [eax], al
  0430e9  add byte ptr [eax], al
  0430eb  add byte ptr [eax], al
  0430ed  add byte ptr [eax], al
  0430ef  add byte ptr [eax], al
  0430f1  add byte ptr [eax], al
  0430f3  add byte ptr [eax], al
  0430f5  add byte ptr [eax], al
  0430f7  add byte ptr [eax], al
  0430f9  add byte ptr [eax], al
  0430fb  add byte ptr [eax], al
  0430fd  add byte ptr [eax], al
  0430ff  add byte ptr [eax], al
  043101  add byte ptr [eax], al
  043103  add byte ptr [eax], al
  043105  add byte ptr [eax], al
  043107  add byte ptr [eax], al
  043109  add byte ptr [eax], al
  04310b  add byte ptr [eax], al
  04310d  add byte ptr [eax], al
  04310f  add byte ptr [eax], al
  043111  add byte ptr [eax], al
  043113  add byte ptr [eax], al
  043115  add byte ptr [eax], al
  043117  add byte ptr [eax], al
  043119  add byte ptr [eax], al
  04311b  add byte ptr [eax], al
  04311d  add byte ptr [eax], al
  04311f  add byte ptr [eax], al
  043121  add byte ptr [eax], al
  043123  add byte ptr [eax], al
  043125  add byte ptr [eax], al
  043127  add byte ptr [eax], al
  043129  add byte ptr [eax], al
  04312b  add byte ptr [eax], al
  04312d  add byte ptr [eax], al
  04312f  add byte ptr [eax], al
  043131  add byte ptr [eax], al
  043133  add byte ptr [eax], al
  043135  add byte ptr [eax], al
  043137  add byte ptr [eax], al
  043139  add byte ptr [eax], al
  04313b  add byte ptr [eax], al
  04313d  add byte ptr [eax], al
  04313f  add byte ptr [eax], al
  043141  add byte ptr [eax], al
  043143  add byte ptr [eax], al
  043145  add byte ptr [eax], al
  043147  add byte ptr [eax], al
  043149  add byte ptr [eax], al
  04314b  add byte ptr [eax], al
  04314d  add byte ptr [eax], al
  04314f  add byte ptr [eax], al
  043151  add byte ptr [eax], al
  043153  add byte ptr [eax], al
  043155  add byte ptr [eax], al
  043157  add byte ptr [eax], al
  043159  add byte ptr [eax], al
  04315b  add byte ptr [eax], al
  04315d  add byte ptr [eax], al
  04315f  add byte ptr [eax], al
  043161  add byte ptr [eax], al
  043163  add byte ptr [eax], al
  043165  add byte ptr [eax], al
  043167  add byte ptr [eax], al
  043169  add byte ptr [eax], al
  04316b  add byte ptr [eax], al
  04316d  add byte ptr [eax], al
  04316f  add byte ptr [eax], al
  043171  add byte ptr [eax], al
  043173  add byte ptr [eax], al
  043175  add byte ptr [eax], al
  043177  add byte ptr [eax], al
  043179  add byte ptr [eax], al
  04317b  add byte ptr [eax], al
  04317d  add byte ptr [eax], al
  04317f  add byte ptr [eax], al
  043181  add byte ptr [eax], al
  043183  add byte ptr [eax], al
  043185  add byte ptr [eax], al
  043187  add byte ptr [eax], al
  043189  add byte ptr [eax], al
  04318b  add byte ptr [eax], al
  04318d  add byte ptr [eax], al
  04318f  add byte ptr [eax], al
  043191  add byte ptr [eax], al
  043193  add byte ptr [eax], al
  043195  add byte ptr [eax], al
  043197  add byte ptr [eax], al
  043199  add byte ptr [eax], al
  04319b  add byte ptr [eax], al
  04319d  add byte ptr [eax], al
  04319f  add byte ptr [eax], al
  0431a1  add byte ptr [eax], al
  0431a3  add byte ptr [eax], al
  0431a5  add byte ptr [eax], al
  0431a7  add byte ptr [eax], al
  0431a9  add byte ptr [eax], al
  0431ab  add byte ptr [eax], al
  0431ad  add byte ptr [eax], al
  0431af  add byte ptr [eax], al
  0431b1  add byte ptr [eax], al
  0431b3  add byte ptr [eax], al
  0431b5  add byte ptr [eax], al
  0431b7  add byte ptr [eax], al
  0431b9  add byte ptr [eax], al
  0431bb  add byte ptr [eax], al
  0431bd  add byte ptr [eax], al
  0431bf  add byte ptr [eax], al
  0431c1  add byte ptr [eax], al
  0431c3  add byte ptr [eax], al
  0431c5  add byte ptr [eax], al
  0431c7  add byte ptr [eax], al
  0431c9  add byte ptr [eax], al
  0431cb  add byte ptr [eax], al
  0431cd  add byte ptr [eax], al
  0431cf  add byte ptr [eax], al
  0431d1  add byte ptr [eax], al
  0431d3  add byte ptr [eax], al
  0431d5  add byte ptr [eax], al
  0431d7  add byte ptr [eax], al
  0431d9  add byte ptr [eax], al
  0431db  add byte ptr [eax], al
  0431dd  add byte ptr [eax], al
  0431df  add byte ptr [eax], al
  0431e1  add byte ptr [eax], al
  0431e3  add byte ptr [eax], al
  0431e5  add byte ptr [eax], al
  0431e7  add byte ptr [eax], al
  0431e9  add byte ptr [eax], al
  0431eb  add byte ptr [eax], al
  0431ed  add byte ptr [eax], al
  0431ef  add byte ptr [eax], al
  0431f1  add byte ptr [eax], al
  0431f3  add byte ptr [eax], al
  0431f5  add byte ptr [eax], al
  0431f7  add byte ptr [eax], al
  0431f9  add byte ptr [eax], al
  0431fb  add byte ptr [eax], al
  0431fd  add byte ptr [eax], al
  0431ff  add byte ptr [eax], al
  043201  add byte ptr [eax], al
  043203  add byte ptr [eax], al
  043205  add byte ptr [eax], al
  043207  add byte ptr [eax], al
  043209  add byte ptr [eax], al
  04320b  add byte ptr [eax], al
  04320d  add byte ptr [eax], al
  04320f  add byte ptr [eax], al
  043211  add byte ptr [eax], al
  043213  add byte ptr [eax], al
  043215  add byte ptr [eax], al
  043217  add byte ptr [eax], al
  043219  add byte ptr [eax], al
  04321b  add byte ptr [eax], al
  04321d  add byte ptr [eax], al
  04321f  add byte ptr [eax], al
  043221  add byte ptr [eax], al
  043223  add byte ptr [eax], al
  043225  add byte ptr [eax], al
  043227  add byte ptr [eax], al
  043229  add byte ptr [eax], al
  04322b  add byte ptr [eax], al
  04322d  add byte ptr [eax], al
  04322f  add byte ptr [eax], al
  043231  add byte ptr [eax], al
  043233  add byte ptr [eax], al
  043235  add byte ptr [eax], al
  043237  add byte ptr [eax], al
  043239  add byte ptr [eax], al
  04323b  add byte ptr [eax], al
  04323d  add byte ptr [eax], al
  04323f  add byte ptr [eax], al
  043241  add byte ptr [eax], al
  043243  add byte ptr [eax], al
  043245  add byte ptr [eax], al
  043247  add byte ptr [eax], al
  043249  add byte ptr [eax], al
  04324b  add byte ptr [eax], al
  04324d  add byte ptr [eax], al
  04324f  add byte ptr [eax], al
  043251  add byte ptr [eax], al
  043253  add byte ptr [eax], al
  043255  add byte ptr [eax], al
  043257  add byte ptr [eax], al
  043259  add byte ptr [eax], al
  04325b  add byte ptr [eax], al
  04325d  add byte ptr [eax], al
  04325f  add byte ptr [eax], al
  043261  add byte ptr [eax], al
  043263  add byte ptr [eax], al
  043265  add byte ptr [eax], al
  043267  add byte ptr [eax], al
  043269  add byte ptr [eax], al
  04326b  add byte ptr [eax], al
  04326d  add byte ptr [eax], al
  04326f  add byte ptr [eax], al
  043271  add byte ptr [eax], al
  043273  add byte ptr [eax], al
  043275  add byte ptr [eax], al
  043277  add byte ptr [eax], al
  043279  add byte ptr [eax], al
  04327b  add byte ptr [eax], al
  04327d  add byte ptr [eax], al
  04327f  add byte ptr [eax], al
  043281  add byte ptr [eax], al
  043283  add byte ptr [eax], al
  043285  add byte ptr [eax], al
  043287  add byte ptr [eax], al
  043289  add byte ptr [eax], al
  04328b  add byte ptr [eax], al
  04328d  add byte ptr [edi], ch
  043290  add byte ptr [eax], al
  043292  jo 0x43294
L43294:
  043294  add byte ptr [eax], al
  043296  jno 0x43298
L43298:
  043298  add byte ptr [eax], al
  04329a  add byte ptr [eax], al
  04329c  sar dword ptr [ebx + 0x3d], cl
  0432a3  add dword ptr [edx], eax
  0432a5  add al, 1
  0432a7  add al, 3
  0432a9  add al, byte ptr [eax + 0x2020202]
  0432b0  push es
  0432b1  or byte ptr [edx], al
  0432b3  pop es
  0432b4  or al, 4
  0432b6  push es
  0432b7  or dword ptr [ebx], edi
  0432b9  cmp edi, dword ptr [ebx]
  0432bb  add cl, byte ptr [eax]
  0432bd  push es
  0432be  add cl, byte ptr [eax]
  0432c0  or dword ptr [edx], eax
  0432c2  or byte ptr [0x31c1c1e], cl
  0432c8  push cs
  0432c9  or al, 4
  0432cb  or byte ptr [edx], cl
  0432cd  add eax, 0x39350d09
  0432d2  cmp dword ptr [0x8080d0c], eax
  0432d8  or cl, byte ptr [eax]
  0432da  or cl, byte ptr [0xd3f3b31]
  0432e0  or eax, 0x100a030d
  0432e5  add eax, 0x3531100a
  0432ea  cmp dword ptr [esi], eax
  0432ec  or eax, 0x150e0611
  0432f1  add eax, 0x352d180f
  0432f6  aas 
  0432f7  or dword ptr [0x140e0911], ecx
  0432fd  or al, 0xe
  0432ff  adc ch, byte ptr [ebx]
  043301  xor edi, dword ptr [0xc180e09]
  043307  push cs
  043308  sbb byte ptr [0x3d3d0e11], al
  04330e  aas 
  04330f  push es
  043310  adc byte ptr [0x6111506], dl
  043316  adc eax, 0x35312f15
  04331b  push es
  04331c  adc bl, byte ptr [0x6191406]
  043322  adc eax, 0x3b2f2b1d
  043327  pop es
  043328  sbb al, 0x19
  04332a  or byte ptr [eax], dl
  04332c  adc cl, byte ptr [ecx]
  04332e  adc dword ptr [0xc372b27], edx
  043334  adc byte ptr [ebx], dl
  043336  or al, 0x11
  043338  adc eax, 0x1816140c
  04333d  adc al, 0x16
  04333f  or dword ptr [edx], edx
  043341  sbb al, 9
  043343  adc eax, 0x1d150919
  043348  and eax, 0x120d3329
  04334d  sbb eax, 0xd19150d
  043352  adc eax, 0x3533371d
  043357  or dword ptr [ecx], ebx
  043359  sbb dword ptr [ecx], ecx
  04335b  sbb dword ptr [0x2b1a1d09], ebx
  043361  xor dword ptr [ebx], edi
  043363  or eax, 0x190d1a18
  043368  sbb eax, 0x2b1d1c0d
  04336d  sub eax, 0x17121037
  043372  adc eax, 0x12101515
  043377  sbb dword ptr [0x16113127], esp
  04337d  sbb eax, 0x101d1614
  043382  sbb byte ptr [esi], bl
  043384  and esp, dword ptr [ebx]
  043386  sub eax, 0x1a1e1814
  04338b  sbb bl, byte ptr [edx]
  04338d  push ds
  04338e  push ds
  04338f  push ds
  043390  and dword ptr [esi], ebx
  043392  sub eax, dword ptr [edi]
  043394  sbb byte ptr [edx], ah
  043396  or dl, byte ptr [edx]
  043398  and byte ptr [ecx], cl
  04339a  push ss
  04339b  and dword ptr [ecx], esp
  04339d  sbb al, 0x25
  04339f  push cs
  0433a0  adc esp, dword ptr [eax]
  0433a2  or eax, 0x160d2115
  0433a7  and al, 0x1e
  0433a9  sbb ah, byte ptr [edi]
  0433ab  or bl, byte ptr [ecx]
  0433ad  and dword ptr [ecx], ecx
  0433af  sbb dword ptr [0x1c211d0a], esp
  0433b5  push ss
  0433b6  and ecx, dword ptr [0x190d2119]
  0433bc  and eax, 0x1a211d0d
  0433c1  adc al, 0x1e
  0433c3  or bl, byte ptr [edx]
  0433c5  sub dword ptr [edx], ecx
  0433c7  sbb ebp, dword ptr [edx + ecx]
  0433ca  sbb al, 0x29
  0433cc  sbb dl, byte ptr [edx]
  0433ce  sbb al, 0xe
  0433d0  sbb dword ptr [ecx], ebp
  0433d2  push cs
  0433d3  sbb ch, byte ptr [0x18291d0d]
  0433d9  adc byte ptr [edx], bl
  0433db  or ebx, dword ptr [esi]
  0433dd  xor dword ptr [eax], edx
  0433df  push ss
  0433e0  and dword ptr [eax], edx
  0433e2  push ss
  0433e3  and eax, 0x11141016
  0433e8  sbb dword ptr [0x11211d11], esp
  0433ee  sbb eax, 0x140c1625
  0433f3  adc eax, 0x1c15241a
  0433f8  and dl, byte ptr [0x814251c]
  0433fe  adc byte ptr [edx], dl
  043400  sbb ch, byte ptr [ecx + edx]
  043403  sbb eax, 0x2d1d1129
  043408  adc al, 0xa
  04340a  adc byte ptr [edx + ebx], dl
  04340d  sub al, 0x15
  04340f  push ds
  043410  sub dword ptr [ebx + 0x120a142d], edx
  043417  sbb byte ptr [ebx], bl
  043419  and al, 0x18
  04341b  sbb al, 0x23
  04341d  sbb byte ptr [0xe081226], bl
  043423  sbb byte ptr [esi], bl
  043425  sub dword ptr [ecx], ebx
  043427  push ds
  043428  sub eax, 0x10291e1c
  04342d  push es
  04342e  or al, 0x18
  043430  push ds
  043431  xor ecx, dword ptr [edx]
  043433  and dword ptr [esi], ebx
  043435  or ah, byte ptr [ecx]
  043437  and dword ptr [esp + eax], ecx
  04343a  or cl, byte ptr [ebx]
  04343c  and eax, 0x21210d25
  043441  or eax, 0x161c2521
  043446  sbb al, 0xd
  043448  and ch, byte ptr [ebx]
  04344a  push cs
  04344b  sub ch, byte ptr [ebx]
  04344d  push cs
  04344e  and esi, dword ptr [edx]
  043450  sbb al, 0x14
  043452  sbb al, 0xf
  043454  sub dword ptr [edx], esi
  043456  rdtsc 
  043458  xor dword ptr [ecx], edx
  04345a  and byte ptr [ecx], ah
  04345c  push ds
  04345d  adc al, 0x18
  04345f  adc dword ptr [0x14232114], esp
  043466  and dword ptr [esi], esp
  043468  sbb byte ptr [esi], cl
  04346a  adc al, 0x11
  04346c  and dword ptr [ecx], ebp
  04346e  adc dword ptr [ecx], esp
  043470  sub eax, 0x18292511
  043475  push cs
  043476  push ss
  043477  adc eax, 0x21152921
  04347c  sub eax, 0xe292515
  043481  add al, 0xc
  043483  adc ebp, dword ptr [edx]
  043485  sub al, 0x19
  043487  and byte ptr [esi], ah
  043489  sbb dword ptr [eax], esp
  04348b  sub dh, byte ptr [0x25183331]
  043491  sub bl, byte ptr [ecx]
  043493  and al, 0x2e
  043495  sbb al, 0x21
  043497  sub bl, byte ptr [eax]
  043499  or cl, byte ptr [esi]
  04349b  sbb al, 0x24
  04349d  sub bl, byte ptr [0x29192e24]
  0434a3  sub eax, 0x1206020c
  0434a8  and dh, byte ptr [ecx + edx]
  0434ab  and eax, 0x35251131
  0434b0  and eax, 0x21152321
  0434b5  xor eax, 0x15312515
  0434ba  and eax, 0x2b272f35
  0434bf  adc al, 0x2a
  0434c1  xor edx, dword ptr [0x22183b2b]
  0434c7  xor dword ptr [eax], edx
  0434c9  add al, 0xa
  0434cb  sbb dword ptr [0x35261931], esp
  0434d1  sbb al, 0x22
  0434d3  xor byte ptr [ecx], dh
  0434d5  sub eax, 0x31251d2f
  0434da  sbb eax, 0x251a3426
  0434df  cmp esi, dword ptr [0x2b1b3735]
  0434e5  cmp al, 0x15
  0434e7  xor dword ptr [edx + 0x2f2f3d32], esi
  0434ee  xor ebx, dword ptr [edx]
  0434f0  xor dword ptr [esp + ebx], esi
  0434f3  xor edi, dword ptr [0x2d3e3b1c]
  0434f9  sub dword ptr [0x20262626], ebp
  0434ff  and ebp, dword ptr [esi]
  043501  and byte ptr [0x29272b2f], ah
  043507  and byte ptr cs:[0x35262031], ah
  043510  sub dword ptr [ebx], esp
  043512  and eax, 0x20352724
  043517  daa 
  043518  cmp esp, dword ptr [edx]
  04351a  sub dword ptr [0x28211e27], esi
  043520  sub eax, 0x3e33233c
  043525  and al, 0x3c
  043527  and eax, 0x3d2b1e1a
  04352d  aas 
  04352e  xor dword ptr [ecx], esi
  043530  xor dword ptr [0x16233535], esi
  043536  sbb dh, byte ptr [ebx]
  043538  aas 
  04353a  cmp al, 0x3e
  04353c  adc byte ptr ds:[edx], bl
  04353f  sub esp, dword ptr [0xa041816]
  043545  adc al, 0x21
  043547  sub dword ptr [edi], esi
  043549  push ds
  04354a  daa 
  04354b  xor eax, 0xc181421
  043550  adc al, 0x23
  043552  sbb ah, byte ptr [ecx]
  043554  sub eax, 0x1e2b1e18
  043559  adc dl, byte ptr [esp + ecx]
  04355c  adc bl, byte ptr [esi]
  04355e  and eax, 0x251e392b
  043563  xor ebx, dword ptr [esi + ecx]
  043566  adc byte ptr [esi], cl
  043568  adc al, 0x23
  04356a  adc bl, byte ptr [edx]
  04356c  sub eax, 0x1a2b1810
  043571  or al, 0xe
  043573  and dword ptr [edi], esp
  043575  xor eax, 0x16211612
  04357a  push ds
  04357b  xor edx, dword ptr [esi]
  04357d  or byte ptr [edx], cl
  04357f  and dword ptr [edi], esp
  043581  aaa 
  043582  adc bl, byte ptr [eax]
  043584  sub edx, dword ptr [eax]
  043586  push ss
  043587  daa 
  043588  adc al, byte ptr [esi + eax]
  04358b  add al, 6
  04358d  or al, 0x29
  04358f  sub eax, 0x3b2b273b
  043594  aas 
  043595  aas 
  043596  aas 
  043597  add byte ptr [eax], al
  043599  add al, byte ptr [eax]
  04359b  add byte ptr [eax + eax], al
  04359e  add byte ptr [eax], al
  0435a0  add byte ptr [eax], al
  0435a2  add byte ptr [eax], al
  0435a4  add byte ptr [ecx], al
  0435a6  add dword ptr [ecx], eax
  0435a8  add al, byte ptr [ecx]
  0435aa  add dword ptr [ebx], eax
  0435ac  add al, byte ptr [edx]
  0435ae  add al, 2
  0435b0  add al, byte ptr [0x3060303]
  0435b6  add eax, dword ptr [edi]
  0435b8  add al, 4
  0435ba  or byte ptr [esp + eax], al
  0435bd  or dword ptr [0x5050a05], eax
  0435c3  or eax, dword ptr [esi]
  0435c5  push es
  0435c6  or al, 6
  0435c8  push es
  0435c9  or eax, 0x70e0707
  0435ce  pop es
  0435cf  invd 
  0435d1  or byte ptr [eax], dl
  0435d3  or byte ptr [eax], cl
  0435d5  adc dword ptr [ecx], ecx
  0435d7  or dword ptr [edx], edx
  0435d9  or dword ptr [ecx], ecx
  0435db  adc ecx, dword ptr [edx]
  0435dd  or dl, byte ptr [edx + ecx]
  0435e0  or dl, byte ptr [0xb160b0b]
  0435e6  or edx, dword ptr [edi]
  0435e8  or al, 0xc
  0435ea  sbb byte ptr [esp + ecx], cl
  0435ed  sbb dword ptr [0xd0d1a0d], ecx
  0435f3  sbb ecx, dword ptr [esi]
  0435f5  push cs
  0435f6  sbb al, 0xe
  0435f8  push cs
  0435f9  sbb eax, 0xf1e0f0f
  0435fe  nop dword ptr [eax]
  043601  adc byte ptr [eax], ah
  043603  adc byte ptr [eax], dl
  043605  and dword ptr [ecx], edx
  043607  adc dword ptr [edx], esp
  043609  adc dword ptr [ecx], edx
  04360b  and edx, dword ptr [edx]
  04360d  adc ah, byte ptr [edx + edx]
  043610  adc ah, byte ptr [0x13261313]
  043616  adc esp, dword ptr [edi]
  043618  adc al, 0x14
  04361a  sub byte ptr [esp + edx], dl
  04361d  sub dword ptr [0x15152a15], edx
  043623  sub edx, dword ptr [esi]
  043625  push ss
  043626  sub al, 0x16
  043628  push ss
  043629  sub eax, 0x172e1717
  04362e  pop ss
  04362f  das 
  043630  sbb byte ptr [eax], bl
  043632  xor byte ptr [eax], bl
  043634  sbb byte ptr [ecx], dh
  043636  sbb dword ptr [ecx], ebx
  043638  xor bl, byte ptr [ecx]
  04363a  sbb dword ptr [ebx], esi
  04363c  sbb bl, byte ptr [edx]
  04363e  xor al, 0x1a
  043640  sbb dh, byte ptr [0x1b361b1b]
  043646  sbb esi, dword ptr [edi]
  043648  sbb al, 0x1c
  04364a  cmp byte ptr [esp + ebx], bl
  04364d  cmp dword ptr [0x1d1d3a1d], ebx
  043653  cmp ebx, dword ptr [esi]
  043655  push ds
  043656  cmp al, 0x1e
  043658  push ds
  043659  cmp eax, 0x1f3e1f1f
  04365e  pop ds
  04365f  aas 
  043660  and byte ptr [eax], ah
  043662  inc eax
  043663  and byte ptr [eax], ah
  043665  inc ecx
  043666  and dword ptr [ecx], esp
  043668  inc edx
  043669  and dword ptr [ecx], esp
  04366b  inc ebx
  04366c  and ah, byte ptr [edx]
  04366e  inc esp
  04366f  and ah, byte ptr [edx]
  043671  inc ebp
  043672  and esp, dword ptr [ebx]
  043674  inc esi
  043675  and esp, dword ptr [ebx]
  043677  inc edi
  043678  and al, 0x24
  04367a  dec eax
  04367b  and al, 0x24
  04367d  dec ecx
  04367e  and eax, 0x25254a25
  043683  dec ebx
  043684  dec esp
  043687  dec ebp
  04368a  daa 
  04368b  daa 
  04368c  dec esi
  04368d  daa 
  04368e  daa 
  04368f  dec edi
  043690  sub byte ptr [eax], ch
  043692  push eax
  043693  sub byte ptr [eax], ch
  043695  push ecx
  043696  sub dword ptr [ecx], ebp
  043698  push edx
  043699  sub dword ptr [ecx], ebp
  04369b  push ebx
  04369c  sub ch, byte ptr [edx]
  04369e  push esp
  04369f  sub ch, byte ptr [edx]
  0436a1  push ebp
  0436a2  sub ebp, dword ptr [ebx]
  0436a4  push esi
  0436a5  sub ebp, dword ptr [ebx]
  0436a7  push edi
  0436a8  sub al, 0x2c
  0436aa  pop eax
  0436ab  sub al, 0x2c
  0436ad  pop ecx
  0436ae  sub eax, 0x2d2d5a2d
  0436b3  pop ebx
  0436b4  pop esp
  0436b7  pop ebp
  0436ba  das 
  0436bb  das 
  0436bc  pop esi
  0436bd  das 
  0436be  das 
  0436bf  pop edi
  0436c0  xor byte ptr [eax], dh
  0436c2  pushal 
  0436c3  xor byte ptr [eax], dh
  0436c5  popal 
  0436c6  xor dword ptr [ecx], esi
  0436c8  bound esi, qword ptr [ecx]
  0436ca  xor dword ptr [ebx + 0x32], esp
  0436cd  xor ah, byte ptr [edx + esi + 0x32]
  0436d1  xor esi, dword ptr gs:[ebx]
  0436d4  xor si, word ptr [ebx]
  0436d7  xor al, 0x34
  0436da  push 0x35693434
  0436df  xor eax, 0x6b35356a
  0436e4  insb byte ptr es:[edi], dx
  0436e7  insd dword ptr es:[edi], dx
  0436ea  aaa 
  0436eb  aaa 
  0436ec  outsb dx, byte ptr [esi]
  0436ed  aaa 
  0436ee  aaa 
  0436ef  outsd dx, dword ptr [esi]
  0436f0  cmp byte ptr [eax], bh
  0436f2  jo 0x4372c
  0436f4  cmp byte ptr [ecx + 0x39], dh
  0436f7  cmp dword ptr [edx + 0x39], esi
  0436fa  cmp dword ptr [ebx + 0x3a], esi
  0436fd  cmp dh, byte ptr [edx + edi + 0x3a]
  043701  jne 0x4373e
  043703  cmp esi, dword ptr [esi + 0x3b]
  043706  cmp esi, dword ptr [edi + 0x3c]
  043709  cmp al, 0x78
  04370b  cmp al, 0x3c
  04370d  jns 0x4374c
  04370f  cmp eax, 0x7b3d3d7a
  043714  jl 0x43756
  043718  jge 0x4375a
  04371b  aas 
  04371c  jle 0x4375d
  04371e  aas 
  04371f  jg 0x43761
  043721  inc eax
  043722  add byte ptr [eax + 0x40], 0x81
  043726  inc ecx
  043727  inc ecx
  043728  add byte ptr [ecx + 0x41], 0x83
L4372c:
  04372c  inc edx
  04372d  inc edx
  04372e  test byte ptr [edx + 0x42], al
  043731  test dword ptr [ebx + 0x43], eax
  043734  xchg byte ptr [ebx + 0x43], al
  043737  xchg dword ptr [esp + eax*2 - 0x78], eax
  04373b  inc esp
  04373c  inc esp
  04373d  mov dword ptr [ebp + 0x45], eax
  043740  mov al, byte ptr [ebp + 0x45]
  043743  mov eax, dword ptr [esi + 0x46]
  043746  mov word ptr [esi + 0x46], es
  043749  lea eax, [edi + 0x47]
L4374c:
  04374c  mov es, word ptr [edi + 0x47]
  04374f  db 0x8f
  043750  dec eax
  043751  dec eax
  043752  nop 
  043753  dec eax
  043754  dec eax
  043755  xchg ecx, eax
L43756:
  043756  dec ecx
  043757  dec ecx
  043758  xchg edx, eax
  043759  dec ecx
L4375a:
  04375a  dec ecx
  04375b  xchg ebx, eax
  04375c  dec edx
L4375d:
  04375d  dec edx
  04375e  xchg esp, eax
  04375f  dec edx
  043760  dec edx
L43761:
  043761  xchg ebp, eax
  043762  dec ebx
  043763  dec ebx
  043764  xchg esi, eax
  043765  dec ebx
  043766  dec ebx
  043767  xchg edi, eax
  043768  dec esp
  043769  dec esp
  04376a  cwde 
  04376b  dec esp
  04376c  dec esp
  04376d  cdq 
  04376e  dec ebp
  04376f  dec ebp
  043770  lcall 0x9c4e, 0x4e9b4d4d
  043777  dec esi
  043778  dec esi
  043779  popfd 
  04377a  dec edi
  04377b  dec edi
  04377c  sahf 
  04377d  dec edi
  04377e  dec edi
  04377f  lahf 
  043780  push eax
  043781  push eax
  043782  mov al, byte ptr [0x51a15050]
  043787  push ecx
  043788  mov byte ptr [0x52a35151], al
  04378d  push edx
  04378e  movsb byte ptr es:[edi], byte ptr [esi]
  04378f  push edx
  043790  push edx
  043791  movsd dword ptr es:[edi], dword ptr [esi]
  043792  push ebx
  043793  push ebx
  043794  cmpsb byte ptr [esi], byte ptr es:[edi]
  043795  push ebx
  043796  push ebx
  043797  cmpsd dword ptr [esi], dword ptr es:[edi]
  043798  push esp
  043799  push esp
  04379a  test al, 0x54
  04379c  push esp
  04379d  test eax, 0x55aa5555
  0437a2  push ebp
  0437a3  stosd dword ptr es:[edi], eax
  0437a4  push esi
  0437a5  push esi
  0437a6  lodsb al, byte ptr [esi]
  0437a7  push esi
  0437a8  push esi
  0437a9  lodsd eax, dword ptr [esi]
  0437aa  push edi
  0437ab  push edi
  0437ac  scasb al, byte ptr es:[edi]
  0437ad  push edi
  0437ae  push edi
  0437af  scasd eax, dword ptr es:[edi]
  0437b0  pop eax
  0437b1  pop eax
  0437b2  mov al, 0x58
  0437b4  pop eax
  0437b5  mov cl, 0x59
  0437b7  pop ecx
  0437b8  mov dl, 0x59
  0437ba  pop ecx
  0437bb  mov bl, 0x5a
  0437bd  pop edx
  0437be  mov ah, 0x5a
  0437c0  pop edx
  0437c1  mov ch, 0x5b
  0437c3  pop ebx
  0437c4  mov dh, 0x5b
  0437c6  pop ebx
  0437c7  mov bh, 0x5c
  0437c9  pop esp
  0437ca  mov eax, 0x5db95c5c
  0437cf  pop ebp
  0437d0  mov edx, 0x5ebb5d5d
  0437d5  pop esi
  0437d6  mov esp, 0x5fbd5e5e
  0437db  pop edi
  0437dc  mov esi, 0x60bf5f5f
  0437e1  pushal 
  0437e2  shl byte ptr [eax + 0x60], 0xc1
  0437e6  popal 
  0437e7  popal 
  0437e8  ret 0x6161
  0437eb  ret 
  0437ec  bound esp, qword ptr [edx - 0x3c]
  0437ef  bound esp, qword ptr [edx - 0x3b]
  0437f2  arpl word ptr [ebx - 0x3a], sp
  0437f5  arpl word ptr [ebx - 0x39], sp
  0437f8  enter 0x6464, -0x37
  0437fe  retf 0x6565
  043803  retf 
  043804  int3 
  043807  int 0x67
  04380b  into 
  04380d  iretd 
  043810  push 0x6868d068
  043815  shr dword ptr [ecx + 0x69], 1
  043818  shr byte ptr [ecx + 0x69], cl
  04381b  shr dword ptr [edx + 0x6a], cl
  04381e  aam 0x6a
  043820  push -0x2b
  043822  imul ebp, dword ptr [ebx - 0x2a], 0x6b
  043826  imul edx, edi, 0x6c
  043829  insb byte ptr es:[edi], dx
  04382a  fsubr dword ptr [esp + ebp*2 - 0x27]
  04382e  insd dword ptr es:[edi], dx
L4382f:
  04382f  insd dword ptr es:[edi], dx
  043830  fisubr dword ptr [ebp + 0x6d]
  043833  fld xword ptr [esi + 0x6e]
  043836  fsubr qword ptr [esi + 0x6e]
  043839  db 0xdd
  04383a  outsd dx, dword ptr [esi]
  04383b  outsd dx, dword ptr [esi]
  04383c  fisubr word ptr [edi + 0x6f]
L4383f:
  04383f  fbstp tbyte ptr [eax + 0x70]
  043842  loopne 0x438b4
  043844  jo 0x43827
  043846  jno 0x438b9
  043848  loop 0x438bb
  04384a  jno 0x4382f
  04384c  jb 0x438c0
  04384e  in al, 0x72
  043850  jb 0x43837
  043852  jae 0x438c7
  043854  out 0x73, al
  043856  jae 0x4383f
  043858  je 0x438ce
  04385a  call 0x75edacd3
  04385f  jne 0x4384b
  043861  jne 0x438d8
  043863  jmp 0x438db
  043865  jbe 0x43853
  043867  jbe 0x438df
  043869  in eax, dx
  04386a  ja 0x438e3
  04386c  out dx, al
  04386d  ja 0x438e6
  04386f  out dx, eax
  043870  js 0x438ea
  043872  db 0xf0
  043873  js 0x438ed
  043875  int1 
  043876  jns 0x438f1
  043878  bnd jns 0x438f4
  04387b  jp 0x438f8
  04387e  hlt 
  04387f  jp 0x438fb
  043881  cmc 
  043882  jnp 0x438ff
  043884  idiv byte ptr [ebx + 0x7b]
  043887  idiv dword ptr [esp + edi*2 - 8]
  04388b  jl 0x43909
  04388d  stc 
  04388e  jge 0x4390d
  043890  cli 
  043891  jge 0x43910
  043893  sti 
  043894  jle 0x43914
  043896  cld 
  043897  jle 0x43917
  043899  std 
  04389a  jg 0x4391b
  04389c  db 0xfe
  04389d  jg 0x4391e
  04389f  inc dword ptr [eax]
  0438a1  add byte ptr [eax], al
  0438a3  add byte ptr [eax], al
  0438a5  add byte ptr [eax], al
  0438a7  add byte ptr [eax], al
  0438a9  add byte ptr [eax], al
  0438ab  add byte ptr [eax], al
  0438ad  add byte ptr [eax], al
  0438af  add byte ptr [eax], al
  0438b1  add byte ptr [eax], al
  0438b3  add byte ptr [eax], al
  0438b5  add byte ptr [eax], al
  0438b7  add byte ptr [eax], al
L438b9:
  0438b9  add byte ptr [eax], al
L438bb:
  0438bb  add byte ptr [eax], al
  0438bd  add byte ptr [eax], al
  0438bf  add byte ptr [eax], al
  0438c1  add byte ptr [eax], al
  0438c3  add byte ptr [eax], al
  0438c5  add byte ptr [eax], al
L438c7:
  0438c7  add byte ptr [eax], al
  0438c9  add byte ptr [eax], al
  0438cb  add byte ptr [eax], al
  0438cd  add byte ptr [eax], al
  0438cf  add byte ptr [eax], al
  0438d1  add byte ptr [eax], al
  0438d3  add byte ptr [eax], al
  0438d5  add byte ptr [eax], al
  0438d7  add byte ptr [eax], al
  0438d9  add byte ptr [eax], al
L438db:
  0438db  add byte ptr [eax], al
  0438dd  add byte ptr [eax], al
L438df:
  0438df  add byte ptr [eax], al
  0438e1  add byte ptr [eax], al
L438e3:
  0438e3  add byte ptr [eax], al
  0438e5  add byte ptr [eax], al
  0438e7  add byte ptr [eax], al
  0438e9  add byte ptr [eax], al
  0438eb  add byte ptr [eax], al
L438ed:
  0438ed  add byte ptr [eax], al
  0438ef  add byte ptr [eax], al
L438f1:
  0438f1  add byte ptr [eax], al
  0438f3  add byte ptr [eax], al
  0438f5  add byte ptr [eax], al
  0438f7  add byte ptr [eax], al
  0438f9  add byte ptr [eax], al
L438fb:
  0438fb  add byte ptr [eax], al
  0438fd  add byte ptr [eax], al
L438ff:
  0438ff  add byte ptr [eax], al
  043901  add byte ptr [eax], al
  043903  add byte ptr [eax], al
  043905  add byte ptr [eax], al
  043907  add byte ptr [eax], al
L43909:
  043909  add byte ptr [eax], al
  04390b  add byte ptr [eax], al
L4390d:
  04390d  add byte ptr [eax], al
  04390f  add byte ptr [eax], al
  043911  add byte ptr [eax], al
  043913  add byte ptr [eax], al
  043915  add byte ptr [eax], al
L43917:
  043917  add byte ptr [eax], al
  043919  add byte ptr [eax], al
L4391b:
  04391b  add byte ptr [eax], al
  04391d  add byte ptr [eax], al
  04391f  add byte ptr [eax], al
  043921  add byte ptr [eax], al
  043923  add byte ptr [eax], al
  043925  add byte ptr [eax], al
  043927  add byte ptr [eax], al
  043929  add byte ptr [eax], al
  04392b  add byte ptr [eax], al
  04392d  add byte ptr [eax], al
  04392f  add byte ptr [eax], al
  043931  add byte ptr [eax], al
  043933  add byte ptr [eax], al
  043935  add byte ptr [eax], al
  043937  add byte ptr [eax], al
  043939  add byte ptr [eax], al
  04393b  add byte ptr [eax], al
  04393d  add byte ptr [eax], al
  04393f  add byte ptr [eax], al
  043941  add byte ptr [eax], al
  043943  add byte ptr [eax], al
  043945  add byte ptr [eax], al
  043947  add byte ptr [eax], al
  043949  add byte ptr [eax], al
  04394b  add byte ptr [eax], al
  04394d  add byte ptr [eax], al
  04394f  add byte ptr [eax], al
  043951  add byte ptr [eax], al
  043953  add byte ptr [eax], al
  043955  add byte ptr [eax], al
  043957  add byte ptr [eax], al
  043959  add byte ptr [eax], al
  04395b  add byte ptr [eax], al
  04395d  add byte ptr [eax], al
  04395f  add byte ptr [eax], al
  043961  add byte ptr [eax], al
  043963  add byte ptr [eax], al
  043965  add byte ptr [eax], al
  043967  add byte ptr [eax], al
  043969  add byte ptr [eax], al
  04396b  add byte ptr [eax], al
  04396d  add byte ptr [eax], al
  04396f  add byte ptr [eax], al
  043971  add byte ptr [eax], al
  043973  add byte ptr [eax], al
  043975  add byte ptr [eax], al
  043977  add byte ptr [eax], al
  043979  add byte ptr [eax], al
  04397b  add byte ptr [eax], al
  04397d  add byte ptr [eax], al
  04397f  add byte ptr [eax], al
  043981  add byte ptr [eax], al
  043983  add byte ptr [eax], al
  043985  add byte ptr [eax], al
  043987  add byte ptr [eax], al
  043989  add byte ptr [eax], al
  04398b  add byte ptr [eax], al
  04398d  add byte ptr [eax], al
  04398f  add byte ptr [eax], al
  043991  add byte ptr [eax], al
  043993  add byte ptr [eax], al
  043995  add byte ptr [eax], al
  043997  add byte ptr [eax], al
  043999  add byte ptr [eax], al
  04399b  add byte ptr [eax], al
  04399d  add byte ptr [eax], al
  04399f  add byte ptr [eax], al
  0439a1  add byte ptr [eax], al
  0439a3  add byte ptr [eax], al
  0439a5  add byte ptr [eax], al
  0439a7  add byte ptr [eax], al
  0439a9  add byte ptr [eax], al
  0439ab  add byte ptr [eax], al
  0439ad  add byte ptr [eax], al
  0439af  add byte ptr [eax], al
  0439b1  add byte ptr [eax], al
  0439b3  add byte ptr [eax], al
  0439b5  add byte ptr [eax], al
  0439b7  add byte ptr [eax], al
  0439b9  add byte ptr [eax], al
  0439bb  add byte ptr [eax], al
  0439bd  add byte ptr [eax], al
  0439bf  add byte ptr [eax], al
  0439c1  add byte ptr [eax], al
  0439c3  add byte ptr [eax], al
  0439c5  add byte ptr [eax], al
  0439c7  add byte ptr [eax], al
  0439c9  add byte ptr [eax], al
  0439cb  add byte ptr [eax], al
  0439cd  add byte ptr [eax], al
  0439cf  add byte ptr [eax], al
  0439d1  add byte ptr [eax], al
  0439d3  add byte ptr [eax], al
  0439d5  add byte ptr [eax], al
  0439d7  add byte ptr [eax], al
  0439d9  add byte ptr [eax], al
  0439db  add byte ptr [eax], al
  0439dd  add byte ptr [eax], al
  0439df  add byte ptr [eax], al
  0439e1  add byte ptr [eax], al
  0439e3  add byte ptr [eax], al
  0439e5  add byte ptr [eax], al
  0439e7  add byte ptr [eax], al
  0439e9  add byte ptr [eax], al
  0439eb  add byte ptr [eax], al
  0439ed  add byte ptr [eax], al
  0439ef  add byte ptr [eax], al
  0439f1  add byte ptr [eax], al
  0439f3  add byte ptr [eax], al
  0439f5  add byte ptr [eax], al
  0439f7  add byte ptr [eax], al
  0439f9  add byte ptr [eax], al
  0439fb  add byte ptr [eax], al
  0439fd  add byte ptr [eax], al
  0439ff  add byte ptr [eax], al
  043a01  add byte ptr [eax], al
  043a03  add byte ptr [eax], al
  043a05  add byte ptr [eax], al
  043a07  add byte ptr [eax], al
  043a09  add byte ptr [eax], al
  043a0b  add byte ptr [eax], al
  043a0d  add byte ptr [eax], al
  043a0f  add byte ptr [eax], al
  043a11  add byte ptr [eax], al
  043a13  add byte ptr [eax], al
  043a15  add byte ptr [eax], al
  043a17  add byte ptr [eax], al
  043a19  add byte ptr [eax], al
  043a1b  add byte ptr [eax], al
  043a1d  add byte ptr [eax], al
  043a1f  add byte ptr [eax], al
  043a21  add byte ptr [eax], al
  043a23  add byte ptr [eax], al
  043a25  add byte ptr [eax], al
  043a27  add byte ptr [eax], al
  043a29  add byte ptr [eax], al
  043a2b  add byte ptr [eax], al
  043a2d  add byte ptr [eax], al
  043a2f  add byte ptr [eax], al
  043a31  add byte ptr [eax], al
  043a33  add byte ptr [eax], al
  043a35  add byte ptr [eax], al
  043a37  add byte ptr [eax], al
  043a39  add byte ptr [eax], al
  043a3b  add byte ptr [eax], al
  043a3d  add byte ptr [eax], al
  043a3f  add byte ptr [eax], al
  043a41  add byte ptr [eax], al
  043a43  add byte ptr [eax], al
  043a45  add byte ptr [eax], al
  043a47  add byte ptr [eax], al
  043a49  add byte ptr [eax], al
  043a4b  add byte ptr [eax], al
  043a4d  add byte ptr [eax], al
  043a4f  add byte ptr [eax], al
  043a51  add byte ptr [eax], al
  043a53  add byte ptr [eax], al
  043a55  add byte ptr [eax], al
  043a57  add byte ptr [eax], al
  043a59  add byte ptr [eax], al
  043a5b  add byte ptr [eax], al
  043a5d  add byte ptr [eax], al
  043a5f  add byte ptr [eax], al
  043a61  add byte ptr [eax], al
  043a63  add byte ptr [eax], al
  043a65  add byte ptr [eax], al
  043a67  add byte ptr [eax], al
  043a69  add byte ptr [eax], al
  043a6b  add byte ptr [eax], al
  043a6d  add byte ptr [eax], al
  043a6f  add byte ptr [eax], al
  043a71  add byte ptr [eax], al
  043a73  add byte ptr [eax], al
  043a75  add byte ptr [eax], al
  043a77  add byte ptr [eax], al
  043a79  add byte ptr [eax], al
  043a7b  add byte ptr [eax], al
  043a7d  add byte ptr [eax], al
  043a7f  add byte ptr [eax], al
  043a81  add byte ptr [eax], al
  043a83  add byte ptr [eax], al
  043a85  add byte ptr [eax], al
  043a87  add byte ptr [eax], al
  043a89  add byte ptr [eax], al
  043a8b  add byte ptr [eax], al
  043a8d  add byte ptr [eax], al
  043a8f  add byte ptr [eax], al
  043a91  add byte ptr [eax], al
  043a93  add byte ptr [eax], al
  043a95  add byte ptr [eax], al
  043a97  add byte ptr [eax], al
  043a99  add byte ptr [eax], al
  043a9b  add byte ptr [eax], al
  043a9d  add byte ptr [eax], al
  043a9f  add byte ptr [eax], al
  043aa1  add byte ptr [eax], al
  043aa3  add byte ptr [eax], al
  043aa5  add byte ptr [eax], al
  043aa7  add byte ptr [eax], al
  043aa9  add byte ptr [eax], al
  043aab  add byte ptr [eax], al
  043aad  add byte ptr [eax], al
  043aaf  add byte ptr [eax], al
  043ab1  add byte ptr [eax], al
  043ab3  add byte ptr [eax], al
  043ab5  add byte ptr [eax], al
  043ab7  add byte ptr [eax], al
  043ab9  add byte ptr [eax], al
  043abb  add byte ptr [eax], al
  043abd  add byte ptr [eax], al
  043abf  add byte ptr [eax], al
  043ac1  add byte ptr [eax], al
  043ac3  add byte ptr [eax], al
  043ac5  add byte ptr [eax], al
  043ac7  add byte ptr [eax], al
  043ac9  add byte ptr [eax], al
  043acb  add byte ptr [eax], al
  043acd  add byte ptr [eax], al
  043acf  add byte ptr [eax], al
  043ad1  add byte ptr [eax], al
  043ad3  add byte ptr [eax], al
  043ad5  add byte ptr [eax], al
  043ad7  add byte ptr [eax], al
  043ad9  add byte ptr [eax], al
  043adb  add byte ptr [eax], al
  043add  add byte ptr [eax], al
  043adf  add byte ptr [eax], al
  043ae1  add byte ptr [eax], al
  043ae3  add byte ptr [eax], al
  043ae5  add byte ptr [eax], al
  043ae7  add byte ptr [eax], al
  043ae9  add byte ptr [eax], al
  043aeb  add byte ptr [eax], al
  043aed  add byte ptr [eax], al
  043aef  add byte ptr [eax], al
  043af1  add byte ptr [eax], al
  043af3  add byte ptr [eax], al
  043af5  add byte ptr [eax], al
  043af7  add byte ptr [eax], al
  043af9  add byte ptr [eax], al
  043afb  add byte ptr [eax], al
  043afd  add byte ptr [eax], al
  043aff  add byte ptr [eax], al
  043b01  add byte ptr [eax], al
  043b03  add byte ptr [eax], al
  043b05  add byte ptr [eax], al
  043b07  add byte ptr [eax], al
  043b09  add byte ptr [eax], al
  043b0b  add byte ptr [eax], al
  043b0d  add byte ptr [eax], al
  043b0f  add byte ptr [eax], al
  043b11  add byte ptr [eax], al
  043b13  add byte ptr [eax], al
  043b15  add byte ptr [eax], al
  043b17  add byte ptr [eax], al
  043b19  add byte ptr [eax], al
  043b1b  add byte ptr [eax], al
  043b1d  add byte ptr [eax], al
  043b1f  add byte ptr [eax], al
  043b21  add byte ptr [eax], al
  043b23  add byte ptr [eax], al
  043b25  add byte ptr [eax], al
  043b27  add byte ptr [eax], al
  043b29  add byte ptr [eax], al
  043b2b  add byte ptr [eax], al
  043b2d  add byte ptr [eax], al
  043b2f  add byte ptr [eax], al
  043b31  add byte ptr [eax], al
  043b33  add byte ptr [eax], al
  043b35  add byte ptr [eax], al
  043b37  add byte ptr [eax], al
  043b39  add byte ptr [eax], al
  043b3b  add byte ptr [eax], al
  043b3d  add byte ptr [eax], al
  043b3f  add byte ptr [eax], al
  043b41  add byte ptr [eax], al
  043b43  add byte ptr [eax], al
  043b45  add byte ptr [eax], al
  043b47  add byte ptr [eax], al
  043b49  add byte ptr [eax], al
  043b4b  add byte ptr [eax], al
  043b4d  add byte ptr [eax], al
  043b4f  add byte ptr [eax], al
  043b51  add byte ptr [eax], al
  043b53  add byte ptr [eax], al
  043b55  add byte ptr [eax], al
  043b57  add byte ptr [eax], al
  043b59  add byte ptr [eax], al
  043b5b  add byte ptr [eax], al
  043b5d  add byte ptr [eax], al
  043b5f  add byte ptr [eax], al
  043b61  add byte ptr [eax], al
  043b63  add byte ptr [eax], al
  043b65  add byte ptr [eax], al
  043b67  add byte ptr [eax], al
  043b69  add byte ptr [eax], al
  043b6b  add byte ptr [eax], al
  043b6d  add byte ptr [eax], al
  043b6f  add byte ptr [eax], al
  043b71  add byte ptr [eax], al
  043b73  add byte ptr [eax], al
  043b75  add byte ptr [eax], al
  043b77  add byte ptr [eax], al
  043b79  add byte ptr [eax], al
  043b7b  add byte ptr [eax], al
  043b7d  add byte ptr [eax], al
  043b7f  add byte ptr [eax], al
  043b81  add byte ptr [eax], al
  043b83  add byte ptr [eax], al
  043b85  add byte ptr [eax], al
  043b87  add byte ptr [eax], al
L43b89:
  043b89  add byte ptr [eax], al
  043b8b  add byte ptr [eax], al
  043b8d  add byte ptr [eax], al
  043b8f  add byte ptr [eax], al
  043b91  add byte ptr [eax], al
  043b93  add byte ptr [eax], al
  043b95  add byte ptr [eax], al
  043b97  add byte ptr [eax], al
  043b99  add byte ptr [eax], al
  043b9b  add byte ptr [eax], al
  043b9d  add byte ptr [eax], al
  043b9f  add byte ptr [eax], al
  043ba1  add byte ptr [eax], al
  043ba3  add byte ptr [eax], al
  043ba5  add byte ptr [eax], al
  043ba7  add byte ptr [ecx + ebp*4], ah
  043baa  jns 0x43be6
  043bac  mov al, 0xf
  043bae  mov eax, dword ptr [0x35]
  043bb3  add byte ptr [ebx], cl
  043bb5  mov dword ptr [0xb45a0002], eax
  043bba  mov eax, dword ptr [0x244964be]
  043bbf  cmp ah, byte ptr ds:[esi + 0x6f]
  043bc3  aas 
  043bc4  loopne 0x43b89
  043bc6  xchg ecx, eax
  043bc7  ret 
L43bc8:
  043bc8  loopne 0x43bc8
  043bca  ret 
  043bcc  sub dl, byte ptr [edi + 0x25ee427a]
  043bd2  xchg edx, eax
  043bd3  ret 
  043bd4  retf 0x679e
  043bd7  ret 
  043bd8  cli 
  043bd9  sti 
  043bda  jns 0x43c1e
  043bdc  add byte ptr [eax], al
  043bde  inc ebx
  043be0  cmpsd dword ptr [esi], dword ptr es:[edi]
  043be1  ja 0x43c0f
  043be3  mov esi, 0x3f70e8d0
  043be8  retf 0x9631
  043beb  mov esi, 0xc2bfb149
  043bf0  mov ch, 0x8c
  043bf2  jmp 0x43c35
  043bf4  not byte ptr [ebx - 0x62]
  043bf7  mov edi, 0xc2c17ea0
  043bfc  nop 
  043bfd  push 0x2b641e9
  043c02  retf 0xbf
  043c05  add byte ptr [eax + 0x24873342], ah
  043c0b  mov esi, 0x3f4b841a
  043c10  inc ebp
  043c11  rcl byte ptr [0xff5402bf], 0xc2
  043c18  rcl byte ptr [esi], 0x79
  043c1b  sal dword ptr [esi], 0x77
L43c1e:
  043c1e  aas 
  043c1f  ret 0x4bbc
  043c22  add bl, al
  043c24  xchg esp, eax
  043c25  fld dword ptr [eax + 0x41b27cc1]
  043c2b  ret 0
  043c2e  mov eax, 0x58cd5842
  043c33  mov al, byte ptr ds:[0xb53f75bc]
  043c39  sbb eax, 0x21d5be3c
  043c3e  cli 
  043c3f  ret 0xdfa4
  043c42  xchg byte ptr [edx - 0x79], al
  043c45  stc 
  043c46  cmpsd dword ptr [esi], dword ptr es:[edi]
  043c47  ret 0x5d81
  043c4a  sti 
  043c4b  ret 0xd822
  043c4e  xchg byte ptr [edx - 0x6f], al
  043c51  mov word ptr [ecx - 0x47ffff3e], gs
  043c57  inc edx
  043c58  lodsd eax, dword ptr [esi]
  043c59  loopne 0x43be9
  043c5b  mov esi, 0x3f7137f4
  043c60  xchg byte ptr [edx + 0x2df2be3d], dl
  043c66  pop ss
  043c67  ret 
  043c68  adc edx, dword ptr [esi]
  043c6a  bound eax, qword ptr [edx + 0x39]
  043c6d  popal 
  043c6e  pop eax
  043c6f  ret 0xfc55
  043c72  pop ss
  043c73  ret 
  043c74  imul edi, dword ptr [edi + 0x54da4260], 0x5a
  043c7b  ret 0
  043c7e  mov eax, 0xb4f41842
  043c83  mov esp, 0x3f1638e1
  043c88  xchg esi, eax
  043c89  dec edi
  043c8b  mov edi, 0xc2fede68
  043c90  dec ebp
  043c91  sbb byte ptr [eax + 0x393043c2], ch
  043c97  ret 0x2bca
L43c9a:
  043c9a  add bl, al
  043c9c  jno 0x43cd3
  043c9e  test eax, 0x3ab91cc2
  043ca3  ret 0
  043ca6  mov eax, 0x3b000742
  043cab  mov esi, 0x3f503ca0
  043cb0  loope 0x43d12
  043cb2  or eax, 0x283b65bf
  043cb7  ret 
  043cb8  sub eax, 0xc26746
  043cbd  mov al, cl
  043cbf  rcl byte ptr [ebx], 0xfe
  043cc2  sub bl, al
  043cc4  imul ebp, dword ptr [edx], 0xc7d6c269
  043cca  iretd 
  043ccb  rol byte ptr [eax], 0
  043cce  mov eax, 0x44e38842
L43cd3:
  043cd3  mov ebp, 0x3f788b3c
  043cd8  mov bl, 0x59
  043cda  jo 0x43c9a
  043cdc  adc byte ptr [ecx], dl
  043cde  fadd st(2), st(0)
  043ce0  stosd dword ptr es:[edi], eax
  043ce1  push -0x54
  043ce3  rcl dword ptr [ebp + 0x4ac2c91e], 0x39
  043cea  ffree st(2)
  043cec  sub ch, byte ptr gs:[esi - 0x354f173f]
  043cf3  ret 0
  043cf6  mov eax, 0xaf10a842
  043cfb  mov esi, 0x3f36b9a8
  043d00  xchg dword ptr [edx + 0x1c], edi
  043d03  mov edi, 0xc21fcf11
  043d08  ja 0x43cb4
  043d0a  faddp st(2)
  043d0c  popfd 
  043d0d  dec edx
  043d0e  xchg esp, eax
  043d0f  ret 0xec3
L43d12:
  043d12  and edx, eax
  043d14  rcl dword ptr [eax], 0xe0
  043d17  ret 0x9395
  043d1a  xchg ebp, eax
  043d1b  ret 0
  043d1e  mov eax, 0xf85642
  043d23  mov esi, 0x3f625d98
  043d28  salc 
  043d29  inc edx
  043d2a  out 0xbe, al
  043d2c  xchg ebp, eax
  043d2d  dec esp
  043d2e  movnti dword ptr [esi - 0x13], ecx
  043d32  mov dl, al
  043d34  out dx, eax
  043d35  dec ebx
  043d36  sahf 
  043d37  shl ecx, 0x10
  043d3a  adc bl, al
  043d3c  add byte ptr [ebp + 0x77c4c289], ch
  043d42  mov byte ptr [0xb80000c1], al
  043d47  inc edx
  043d48  mov esi, 0x903d21be
  043d4d  mov dh, byte ptr [ecx + 0x3f]
  043d50  jno 0x43dbe
  043d52  test al, 0xbe
  043d54  jecxz 0x43da4
  043d56  leave 
  043d57  ret 0x3db1
  043d5a  mov es, ecx
  043d5c  mov ss, word ptr [ebx]
  043d5e  sbb ebx, eax
  043d60  xlatb 
  043d61  inc eax
  043d62  retf 0xa2c2
  043d65  imul edx, dword ptr [eax + 0x19ea1ec1], -0x3d
  043d6c  add byte ptr [eax], al
  043d6e  mov eax, 0xdf99d142
  043d73  mov esi, 0x3f5f9d47
  043d78  and dword ptr [ebp + 0x5c], ecx
  043d7b  mov esi, 0xc2666e58
  043d80  db 0xf0
  043d81  out dx, eax
  043d82  rol dl, cl
  043d84  clc 
  043d85  out dx, al
  043d86  fld st(2)
  043d88  aad 0x97
  043d8a  push 0xd3d444c2
  043d8f  ret 0x5c3d
  043d92  fcmovnb st(0), st(2)
  043d94  add byte ptr [eax], al
  043d96  mov eax, 0x9fb2442
  043d9b  mov edi, 0x3f4758a3
  043da0  jmp ptr [edx - 0x5c]
  043da3  mov esi, 0xc30c97d9
  043da8  or byte ptr [ecx - 0x59203d15], dl
  043dae  pop ds
  043daf  inc ecx
  043db0  fimul word ptr [ecx + 0xd]
  043db3  ret 
  043db4  int 0xd1
  043db6  in al, dx
L43db7:
  043db7  ret 0x4ee
  043dba  sbb al, byte ptr [ecx]
  043dbd  add byte ptr [eax - 0x70b3c6be], bh
  043dc3  mov esi, 0x3f737085
  043dc8  jmp 0x61c244d5
  043dcd  jmp 0x43da9
  043dcf  ret 0xf297
  043dd2  sahf 
  043dd3  ret 0x78b4
  043dd6  jl 0x43d9a
  043dd8  js 0x43db7
  043ddb  ret 0x8eb3
  043dde  lahf 
  043ddf  ret 0xaeed
  043de2  jle 0x43da6
  043de4  add byte ptr [eax], al
  043de6  mov eax, 0x46180d42
  043deb  mov esi, 0x3f7a6cee
  043df0  fdiv st(4), st(0)
  043df2  cdq 
  043df3  mov ebp, 0xc30616a1
  043df8  sbb al, 0x81
  043dfa  pop ebx
  043dfb  shr dword ptr [ebx + 0xc], 0xbc
  043dff  ret 0xda70
  043e02  push es
  043e03  ret 
  043e04  lahf 
  043e05  lodsd eax, dword ptr [esi]
  043e06  pop esi
  043e07  sal dword ptr [0xc2bd46], 0
  043e0e  mov eax, 0xc200b142
  043e13  mov esi, 0x3f43b71b
  043e18  pop es
  043e19  add byte ptr [0x477c3cbf], 0xc2
  043e20  and dh, cl
  043e22  add al, 0xc3
  043e24  jbe 0x43e6e
  043e26  mov bl, 0xc2
  043e28  inc esi
  043e29  dec edx
  043e2a  dec ecx
  043e2b  ret 0x9627
  043e2e  add eax, 0xb48473c3
  043e33  ret 0
  043e36  mov eax, 0x32d90942
  043e3b  mov edi, 0x3f30eea7
  043e40  scasd eax, dword ptr es:[edi]
  043e41  cmp byte ptr [0xbd7af1be], 0xc2
  043e48  hlt 
  043e49  scasd eax, dword ptr es:[edi]
  043e4a  sbb bl, al
  043e4c  add byte ptr [edi + 0x6d], ah
  043e4f  ret 0x9d93
  043e52  mov esi, 0x196153c2
  043e57  ret 
  043e58  pop edx
  043e59  outsd dx, dword ptr cs:[esi]
  043e5b  ret 0
  043e5e  mov eax, 0x83a21042
  043e63  mov esi, 0x3f4f43e2
  043e68  inc edi
  043e69  adc eax, dword ptr [edi]
  043e6b  mov edi, 0xc2737432
  043e70  ror dword ptr [edi + 0x19ec313], 1
  043e76  fld st(2)
  043e78  jecxz 0x43eef
  043e7a  jne 0x43e3e
  043e7c  call 0xf0c752a4
  043e81  dec edx
  043e82  fcmovb st(0), st(2)
  043e84  add byte ptr [eax], al
  043e86  mov eax, 0xebb5a542
  043e8b  mov esi, 0x3f4ed99c
  043e90  jae 0x43ed1
  043e92  mov esp, 0xde29d8be
  043e97  ret 0x288
  043e9a  and eax, ebx
  043e9c  out dx, al
  043e9d  or eax, 0x8b2ac1ce
  043ea2  ffreep st(2)
  043ea4  sahf 
  043ea5  cwde 
  043ea6  and eax, ebx
  043ea8  add byte ptr [ebx - 0x2f], dh
  043eab  rol dword ptr [eax], 0
  043eae  mov eax, 0xb4775c42
  043eb3  mov esi, 0x3f67faee
  043eb8  adc al, 0x4e
  043eba  outsd dx, dword ptr [esi]
  043ebb  mov esi, 0xc2bb4299
  043ec0  push eax
  043ec1  scasd eax, dword ptr es:[edi]
  043ec2  in eax, 0xc2
  043ec4  dec edx
  043ec5  hlt 
L43ec6:
  043ec6  mov edx, 0xc2bc6cdb
  043ecc  sub byte ptr [eax + 0x5c3fc2e6], al
  043ed2  leave 
  043ed3  ret 0
  043ed6  mov eax, 0x93a44d42
  043edb  mov esi, 0x3f71ca4c
  043ee0  movsd dword ptr es:[edi], dword ptr [esi]
  043ee1  xor dword ptr [ecx], esp
  043ee3  mov esi, 0xc2ea6c34
  043ee8  sub ecx, ebp
  043eea  pop eax
  043eeb  ret 0x3a4a
  043eee  out 0xc2, eax
  043ef0  add byte ptr [eax + 0x258cc2eb], ch
  043ef6  pop edx
  043ef7  ret 0xacf4
  043efa  call 0xb8043fc1
  043eff  inc edx
  043f00  cmp dword ptr [edx - 0x7f], 0x63f0c2ba
  043f07  aas 
  043f08  or ecx, dword ptr [edi]
  043f0a  jmp 0xa3d39dcd
  043f0f  ret 0xd342
  043f12  aad 0xc2
  043f14  jno 0x43ec6
  043f16  test edx, 0xc2a4ac4a
  043f1c  mov bl, 0xa5
  043f1e  salc 
  043f1f  ret 0x4b9a
  043f22  stc 
  043f23  ret 0
  043f26  mov eax, 0x27f28942
  043f2b  mov edi, 0x3f3f045e
  043f30  shr byte ptr [eax], cl
  043f32  call 0x5ab87f4
  043f37  ret 
  043f38  loop 0x43ef9
  043f3a  add al, 0xc3
  043f3c  push 0xb5c261be
  043f41  inc ecx
  043f42  push es
  043f43  ret 
  043f44  mov ah, 0x5b
  043f46  add eax, 0x63ce2cc3
  043f4b  ret 0
  043f4e  mov eax, 0xf5717442
  043f53  mov esi, 0x3f6097ba
  043f58  sub byte ptr [edi - 0x47], dl
  043f5b  cmp al, 0x94
  043f5d  sub al, 0x33
  043f5f  ret 
  043f60  std 
  043f61  db 0xc6
  043f62  bnd ret 0x44fd
  043f66  lcall 0x38c3, 0x33eceac2
  043f6d  xchg edx, eax
  043f6e  repz ret 0x52ee
  043f72  wait 
  043f73  ret 0
  043f76  mov eax, 0xe7c4442
  043f7b  mov ebp, 0x3f5c2c8a
  043f80  retf 
  043f81  dec esi
  043f82  add bh, byte ptr [edi - 0x3d3cbbf9]
  043f88  lodsd eax, dword ptr [esi]
  043f89  and al, 0xc1
  043f8b  ret 0xd72
  043f8e  out 0xc2, eax
  043f90  or eax, 0x20c2c44f
  043f95  or eax, edx
  043f97  ret 0x8093
  043f9a  call 0xb8044061
  043f9f  inc edx
  043fa0  sbb edi, dword ptr [eax - 0x71]
  043fa3  mov esi, 0x3f60abc6
  043fa8  push ss
  043fa9  and edi, eax
  043fab  mov esi, 0xc285aec8
  043fb0  int 0x26
  043fb2  scasd eax, dword ptr es:[edi]
  043fb3  ret 0x7547
  043fb6  or eax, 0x8682a9c3
  043fbb  ret 0x1a85
  043fbe  mov al, 0xc2
  043fc0  out dx, al
  043fc1  cmp ecx, dword ptr [esi]
  043fc3  ret 
  043fc4  add byte ptr [eax], al
  043fc6  mov eax, 0x35dac842
  043fcb  mov edi, 0x3f26d9ed
  043fd0  fild dword ptr [0x6ade3e88]
  043fd6  sti 
  043fd7  ret 0xc31
  043fda  mov ah, 0xc2
  043fdc  mov ah, 0xd5
  043fde  lahf 
  043fdf  ret 0xba9c
  043fe2  cld 
  043fe3  ret 0xffc8
  043fe6  mov ah, 0xc2
  043fe8  fadd dword ptr [ecx]
  043fea  mov eax, dword ptr [0xb80000c2]
  043fef  inc edx
  043ff0  sub edx, dword ptr fs:[edi + edi*4]
  043ff4  sbb cl, byte ptr [edx - 0x2f12c0d6]
  043ffa  db 0xf0
  043ffb  mov esi, 0xc2a5fc12
  044000  add ebp, dword ptr [edi + 0xc]
  044003  ret 
  044004  and dword ptr [edi], esp
  044006  mov al, byte ptr [0xa6e3bec2]
  04400b  ret 0x2d03
  04400e  or eax, 0xa12441c3
  044013  ret 0
  044016  mov eax, 0x34661442
  04401b  mov ebp, 0x3f7f30a4
  044020  pop ds
  044021  test byte ptr [edi + 0x5c845a3d], al
  044027  rol dword ptr [ebp - 0x46], 0x3a
  04402b  ret 0x4c9b
  04402e  jmp 0x59012874
  044033  sar dword ptr [edx + esi*8 + 0x3a], 0xc2
  044038  add byte ptr [edi], dl
  04403a  int1 
  04403b  inc ecx
  04403c  add byte ptr [eax], al
  04403e  xor al, byte ptr [ebx + 1]
  044041  push 0x34
  044043  mov ebp, 0x3f7f30a2
  044048  cld 
  044049  add dword ptr [edi + 0x13766e3d], 0x42
  044050  sti 
  044051  lea edx, [ebp - 0x3e]
  044054  les esi, ptr [eax + ebp*2 + 0x42]
  044058  cmp eax, 0xbf421078
  04405d  adc byte ptr [ebp - 0x3e], 0x80
  044061  int 0x65
  044063  inc edx
  044064  add byte ptr [eax], al
  044066  xor al, byte ptr [ebx + 0x77]
  044069  test dword ptr [esi - 0x42], ecx
  04406c  sti 
  04406e  jns 0x440af
  044070  mov edx, 0x1ebd9b95
  044075  out dx, al
  044076  sub edx, eax
  044078  db 0xc6
  044079  adc eax, 0x62d8bfd1
  04407e  fadd st(0), st(0)
  044080  push edx
  044081  shr dword ptr [edx + eax*8], 1
  044084  mov al, byte ptr [0x6cbfeac3]
  044089  xchg esp, eax
  04408a  int1 
  04408b  rol byte ptr [eax], 0
  04408e  xor al, byte ptr [ebx - 0x11]
  044091  lahf 
  044092  inc ecx
  044093  cmp eax, 0x3f7b27d1
  044098  mov esp, 0xc3be4044
  04409d  in al, 0xaf
  04409f  inc edx
  0440a0  mov esi, dword ptr [edi + 0x1ba1c06f]
  0440a6  add eax, edx
  0440a8  sal byte ptr fs:[eax + 0x7bc36942], 1
L440af:
  0440af  rcl byte ptr [esp + edx*4], 6
  0440b3  ret 0
  0440b6  xor al, byte ptr [ebx - 0x11]
  0440b9  cmpsd dword ptr [esi], dword ptr es:[edi]
  0440ba  enter 0x19a0, 0x3f
  0440c0  fcom dword ptr [ecx]
  0440c2  dec eax
  0440c3  mov edi, 0x41d9d14c
  0440c8  jg 0x4413b
  0440ca  insb byte ptr es:[edi], dx
  0440cb  ret 0xcb48
  0440ce  push esp
  0440cf  inc edx
  0440d0  db 0xf2
L440d1:
  0440d1  db 0xc4
  0440d2  fiadd dword ptr [ecx - 0x6c]
  0440d5  movsb byte ptr es:[edi], byte ptr [esi]
  0440d6  outsd dx, dword ptr [esi]
  0440d7  ret 0x70eb
  0440da  push edx
  0440db  inc edx
  0440dc  add byte ptr [eax], al
  0440de  xor al, byte ptr [ebx - 0x56]
  0440e1  scasd eax, dword ptr es:[edi]
  0440e2  nop 
  0440e3  sub byte ptr ds:[edi], dl
  0440e6  insb byte ptr es:[edi], dx
  0440e7  mov edi, 0x3e871c8e
  0440ec  push eax
  0440ed  xchg edi, eax
  0440ee  imul eax, edx, 0xc2695daf
  0440f4  db 0xf0
  0440f5  pop ebx
  0440f6  ret 0x6e8b
  0440fa  ret 0xd842
  0440fe  ret 0x5aef
  044102  popal 
  044103  ret 0
  044106  xor al, byte ptr [ebx + 0xd]
  044109  mov dl, 0x6e
  04410b  sub bl, byte ptr ds:[esi + 0x77]
  04410f  aas 
  044110  xchg edx, eax
  044111  push es
  044112  loopne 0x440d1
  044114  push cs
  044115  pop ss
  044116  inc ecx
  044117  ret 0x4a2
  04411a  nop 
  04411b  inc edx
  04411c  pop ebp
  04411d  pop ss
  04411e  sub dl, al
  044120  xchg ecx, eax
  044121  das 
  044122  inc ebx
  044123  ret 0x1402
  044126  nop 
  044127  inc edx
  044128  add eax, 0xc22b7f
  04412d  add byte ptr [edx], dh
  04412f  inc ebx
  044130  retf 
  044131  outsb dx, byte ptr [esi]
  044132  add dword ptr [edi + 0x3f4bb852], edi
  044138  dec esp
  044139  test eax, 0x3dabeaa
  04413e  xchg esp, eax
  04413f  inc edx
  044140  aam 0xf5
  044142  jno 0x44185
  044144  jge 0x4418a
  044147  inc edx
  044148  aad 0x4b
  04414a  xchg edx, eax
  04414b  inc edx
  04414c  mov al, 0xfb
  04414e  imul eax, dword ptr [ecx - 9], 0x4243f1
  044155  add byte ptr [edx], dh
  044157  inc ebx
  044158  sub ebp, esp
  04415a  out 0x3d, eax
  04415c  db 0xc7
  04415d  mov edx, 0xc40e3f7b
  044162  adc dword ptr [esi + 0x42722ea6], edi
  044168  push ebp
  044169  push ecx
  04416a  jge 0x441ae
  04416c  clc 
  04416d  mov al, byte ptr [0xb8c2]
  044171  aam 0x71
  044173  inc edx
  044174  push edi
  044175  leave 
  044176  jl 0x441ba
  044178  jo 0x441db
  04417a  mov byte ptr [0x320000c2], al
  04417f  inc ebx
  044180  je 0x44193
  044182  jo 0x441c1
  044184  xchg esp, eax
L44185:
  044185  insb byte ptr es:[edi], dx
  044187  aas 
  044188  dec ebx
  044189  db 0x62
L4418a:
  04418a  ret 
  04418b  mov esi, 0x4296eefd
  044190  sbb dword ptr [edi], edx
  044192  scasd eax, dword ptr es:[edi]
L44193:
  044193  inc edx
  044194  into 
  044195  int3 
  044196  wait 
  044197  inc edx
  044198  jge 0x44161
  04419a  xchg ebp, eax
  04419b  inc edx
  04419c  outsd dx, dword ptr [esi]
  04419d  xchg dword ptr [esi - 0x65bbdbbe], ebp
  0441a3  inc edx
  0441a4  add byte ptr [eax], al
  0441a6  xor al, byte ptr [ebx - 0x5e]
  0441a9  inc ebp
  0441aa  dec ebx
  0441ab  mov edi, 0x3e806f91
  0441b0  mov edi, dword ptr [edi - 0x318e40f3]
  0441b6  movsd dword ptr es:[edi], dword ptr [esi]
  0441b7  ret 0x48d8
L441ba:
  0441ba  mov ch, 0xc2
  0441bc  xchg ebx, eax
  0441bd  xchg edi, eax
  0441be  sahf 
  0441bf  ret 0x8db4
  0441c2  movsd dword ptr es:[edi], dword ptr [esi]
  0441c3  ret 0x5dc7
  0441c6  mov bl, 0xc2
  0441c8  db 0xf0
  0441c9  adc eax, 0xc29e
  0441ce  xor al, byte ptr [ebx - 0x3a]
  0441d1  inc ebp
  0441d2  dec ebx
  0441d3  mov edi, 0x3e806dfb
  0441d8  mov dl, 0xbf
  0441da  or eax, 0x7db97bbf
  0441df  ret 0x3e9c
  0441e2  inc edx
  0441e4  outsd dx, dword ptr [esi]
  0441e5  xor eax, 0x3801c221
  0441ea  jge 0x441ae
  0441ec  rcl byte ptr [eax + ebp*2], 0x42
  0441f0  xor ah, byte ptr cs:[eax]
  0441f3  ret 0
  0441f6  xor al, byte ptr [ebx - 0x78]
  0441f9  salc 
  0441fa  jl 0x441bb
  0441fc  retf 
  0441fd  add eax, 0xd63a3e15
  044202  insd dword ptr es:[edi], dx
  044203  mov ebp, 0xc140d125
  044208  bound eax, qword ptr [esp - 0x6f670cbf]
  04420f  inc edx
  044210  cmp eax, 0xaac13ecb
  044215  xor byte ptr [ecx + eax*2 + 0x42911a93], ch
  04421c  add byte ptr [eax], al
  04421e  xor al, byte ptr [ebx + 5]
  044221  leave 
  044222  xchg esp, eax
  044223  cmp eax, 0xbe2227d2
  044228  mov dl, 0x15
  04422a  jl 0x4426b
  04422c  int3 
  04422d  cmc 
  04422e  add byte ptr [edx - 0x3a], 0xb0
  044232  rol dword ptr [ecx - 0x32], 1
  044235  pop ebp
  044236  add eax, dword ptr [edx - 0x15]
  044239  xor al, byte ptr [ebx - 0x2674e9be]
  04423f  inc ecx
  044240  outsb dx, byte ptr [esi]
  044241  test byte ptr [ebx], 0x42
  044244  add byte ptr [eax], al
  044246  xor al, byte ptr [ebx + 0x48]
  044249  add dword ptr [eax + 0x11], ebx
  04424f  add byte ptr [eax], al
  044251  add byte ptr [eax], al
  044253  add byte ptr [eax], al
  044255  add byte ptr [eax], al
  044257  add byte ptr [eax], al
  044259  add byte ptr [eax], al
  04425b  add byte ptr [eax], al
  04425d  add byte ptr [eax], al
  04425f  add byte ptr [eax], al
  044261  add byte ptr [eax], al
  044263  add byte ptr [eax], al
  044265  add byte ptr [eax], al
  044267  add byte ptr [eax], al
  044269  add byte ptr [eax], al
L4426b:
  04426b  add byte ptr [eax], al
  04426d  add byte ptr [eax], al
  04426f  add byte ptr [eax], al
  044271  add byte ptr [eax], al
  044273  add byte ptr [eax], al
  044275  add byte ptr [eax], al
  044277  add byte ptr [eax], al
  044279  add byte ptr [eax], al
  04427b  add byte ptr [eax], al
  04427d  add byte ptr [eax], al
  04427f  add byte ptr [eax], al
  044281  add byte ptr [eax], al
  044283  add byte ptr [eax], al
  044285  add byte ptr [eax], al
  044287  add byte ptr [eax], al
  044289  add byte ptr [eax], al
  04428b  add byte ptr [eax], al
  04428d  add byte ptr [eax], al
  04428f  add byte ptr [eax], al
  044291  add byte ptr [eax], al
  044293  add byte ptr [eax], al
  044295  add byte ptr [eax], al
  044297  add byte ptr [eax], al
  044299  add byte ptr [eax], al
  04429b  add byte ptr [eax], al
  04429d  add byte ptr [eax], al
  04429f  add byte ptr [eax], al
  0442a1  add byte ptr [eax], al
  0442a3  add byte ptr [eax], al
  0442a5  add byte ptr [eax], al
  0442a7  add byte ptr [eax], al
  0442a9  add byte ptr [eax], al
  0442ab  add byte ptr [eax], al
  0442ad  add byte ptr [eax], al
  0442af  add byte ptr [eax], al
  0442b1  add byte ptr [eax], al
  0442b3  add byte ptr [eax], al
  0442b5  add byte ptr [eax], al
  0442b7  add byte ptr [eax], al
  0442b9  add byte ptr [eax], al
  0442bb  add byte ptr [eax], al
  0442bd  add byte ptr [eax], al
  0442bf  add byte ptr [eax], al
  0442c1  add byte ptr [eax], al
  0442c3  add byte ptr [eax], al
  0442c5  add byte ptr [eax], al
  0442c7  add byte ptr [eax], al
  0442c9  add byte ptr [eax], al
  0442cb  add byte ptr [eax], al
  0442cd  add byte ptr [eax], al
  0442cf  add byte ptr [eax], al
  0442d1  add byte ptr [eax], al
  0442d3  add byte ptr [eax], al
  0442d5  add byte ptr [eax], al
  0442d7  add byte ptr [eax], al
  0442d9  add byte ptr [eax], al
  0442db  add byte ptr [eax], al
  0442dd  add byte ptr [eax], al
  0442df  add byte ptr [eax], al
  0442e1  add byte ptr [eax], al
  0442e3  add byte ptr [eax], al
  0442e5  add byte ptr [eax], al
  0442e7  add byte ptr [eax], al
  0442e9  add byte ptr [eax], al
  0442eb  add byte ptr [eax], al
  0442ed  add byte ptr [eax], al
  0442ef  add byte ptr [eax], al
  0442f1  add byte ptr [eax], al
  0442f3  add byte ptr [eax], al
  0442f5  add byte ptr [eax], al
  0442f7  add byte ptr [eax], al
  0442f9  add byte ptr [eax], al
  0442fb  add byte ptr [eax], al
  0442fd  add byte ptr [eax], al
  0442ff  add byte ptr [eax], al
  044301  add byte ptr [eax], al
  044303  add byte ptr [eax], al
  044305  add byte ptr [eax], al
  044307  add byte ptr [eax], al
  044309  add byte ptr [eax], al
  04430b  add byte ptr [eax], al
  04430d  add byte ptr [eax], al
  04430f  add byte ptr [eax], al
  044311  add byte ptr [eax], al
  044313  add byte ptr [eax], al
  044315  add byte ptr [eax], al
  044317  add byte ptr [eax], al
  044319  add byte ptr [eax], al
  04431b  add byte ptr [eax], al
  04431d  add byte ptr [eax], al
  04431f  add byte ptr [eax], al
  044321  add byte ptr [eax], al
  044323  add byte ptr [eax], al
  044325  add byte ptr [eax], al
  044327  add byte ptr [eax], al
  044329  add byte ptr [eax], al
  04432b  add byte ptr [eax], al
  04432d  add byte ptr [eax], al
  04432f  add byte ptr [eax], al
  044331  add byte ptr [eax], al
  044333  add byte ptr [eax], al
  044335  add byte ptr [eax], al
  044337  add byte ptr [eax], al
  044339  add byte ptr [eax], al
  04433b  add byte ptr [eax], al
  04433d  add byte ptr [eax], al
  04433f  add byte ptr [eax], al
  044341  add byte ptr [eax], al
  044343  add byte ptr [eax], al
  044345  add byte ptr [eax], al
  044347  add byte ptr [eax], al
  044349  add byte ptr [eax], al
  04434b  add byte ptr [eax], al
  04434d  add byte ptr [eax], al
  04434f  add byte ptr [eax], al
  044351  add byte ptr [eax], al
  044353  add byte ptr [eax], al
  044355  add byte ptr [eax], al
  044357  add byte ptr [eax], al
  044359  add byte ptr [eax], al
  04435b  add byte ptr [eax], al
  04435d  add byte ptr [eax], al
  04435f  add byte ptr [eax], al
  044361  add byte ptr [eax], al
  044363  add byte ptr [eax], al
  044365  add byte ptr [eax], al
  044367  add byte ptr [eax], al
  044369  add byte ptr [eax], al
  04436b  add byte ptr [eax], al
  04436d  add byte ptr [eax], al
  04436f  add byte ptr [eax], al
  044371  add byte ptr [eax], al
  044373  add byte ptr [eax], al
  044375  add byte ptr [eax], al
  044377  add byte ptr [eax], al
  044379  add byte ptr [eax], al
  04437b  add byte ptr [eax], al
  04437d  add byte ptr [eax], al
  04437f  add byte ptr [eax], al
  044381  add byte ptr [eax], al
  044383  add byte ptr [eax], al
  044385  add byte ptr [eax], al
  044387  add byte ptr [eax], al
  044389  add byte ptr [eax], al
  04438b  add byte ptr [eax], al
  04438d  add byte ptr [eax], al
  04438f  add byte ptr [eax], al
  044391  add byte ptr [eax], al
  044393  add byte ptr [eax], al
  044395  add byte ptr [eax], al
  044397  add byte ptr [eax], al
  044399  add byte ptr [eax], al
  04439b  add byte ptr [eax], al
  04439d  add byte ptr [eax], al
  04439f  add byte ptr [eax], al
  0443a1  add byte ptr [eax], al
  0443a3  add byte ptr [eax], al
  0443a5  add byte ptr [eax], al
  0443a7  add byte ptr [eax], al
  0443a9  add byte ptr [eax], al
  0443ab  add byte ptr [eax], al
  0443ad  add byte ptr [eax], al
  0443af  add byte ptr [eax], al
  0443b1  add byte ptr [eax], al
  0443b3  add byte ptr [eax], al
  0443b5  add byte ptr [eax], al
  0443b7  add byte ptr [eax], al
  0443b9  add byte ptr [eax], al
  0443bb  add byte ptr [eax], al
  0443bd  add byte ptr [eax], al
  0443bf  add byte ptr [eax], al
  0443c1  add byte ptr [eax], al
  0443c3  add byte ptr [eax], al
  0443c5  add byte ptr [eax], al
  0443c7  add byte ptr [eax], al
  0443c9  add byte ptr [eax], al
  0443cb  add byte ptr [eax], al
  0443cd  add byte ptr [eax], al
  0443cf  add byte ptr [eax], al
  0443d1  add byte ptr [eax], al
  0443d3  add byte ptr [eax], al
  0443d5  add byte ptr [eax], al
  0443d7  add byte ptr [eax], al
  0443d9  add byte ptr [eax], al
  0443db  add byte ptr [eax], al
  0443dd  add byte ptr [eax], al
  0443df  add byte ptr [eax], al
  0443e1  add byte ptr [eax], al
  0443e3  add byte ptr [eax], al
  0443e5  add byte ptr [eax], al
  0443e7  add byte ptr [eax], al
  0443e9  add byte ptr [eax], al
  0443eb  add byte ptr [eax], al
  0443ed  add byte ptr [eax], al
  0443ef  add byte ptr [eax], al
  0443f1  add byte ptr [eax], al
  0443f3  add byte ptr [eax], al
  0443f5  add byte ptr [eax], al
  0443f7  add byte ptr [eax], al
  0443f9  add byte ptr [eax], al
  0443fb  add byte ptr [eax], al
  0443fd  add byte ptr [eax], al
  0443ff  add byte ptr [eax], al
  044401  add byte ptr [eax], al
  044403  add byte ptr [eax], al
  044405  add byte ptr [eax], al
  044407  add byte ptr [eax], al
  044409  add byte ptr [eax], al
  04440b  add byte ptr [eax], al
  04440d  add byte ptr [eax], al
  04440f  add byte ptr [eax], al
  044411  add byte ptr [eax], al
  044413  add byte ptr [eax], al
  044415  add byte ptr [eax], al
  044417  add byte ptr [eax], al
  044419  add byte ptr [eax], al
  04441b  add byte ptr [eax], al
  04441d  add byte ptr [eax], al
  04441f  add byte ptr [eax], al
  044421  add byte ptr [eax], al
  044423  add byte ptr [eax], al
  044425  add byte ptr [eax], al
  044427  add byte ptr [eax], al
  044429  add byte ptr [eax], al
  04442b  add byte ptr [eax], al
  04442d  add byte ptr [eax], al
  04442f  add byte ptr [eax], al
  044431  add byte ptr [eax], al
  044433  add byte ptr [eax], al
  044435  add byte ptr [eax], al
  044437  add byte ptr [eax], al
  044439  add byte ptr [eax], al
  04443b  add byte ptr [eax], al
  04443d  add byte ptr [eax], al
  04443f  add byte ptr [eax], al
  044441  add byte ptr [eax], al
  044443  add byte ptr [eax], al
  044445  add byte ptr [eax], al
  044447  add byte ptr [eax], al
  044449  add byte ptr [eax], al
  04444b  add byte ptr [eax], al
  04444d  add byte ptr [eax], al
  04444f  add byte ptr [eax], al
  044451  add byte ptr [eax], al
  044453  add byte ptr [eax], al
  044455  add byte ptr [eax], al
  044457  add byte ptr [eax], al
  044459  add byte ptr [eax], al
  04445b  add byte ptr [eax], al
  04445d  add byte ptr [eax], al
  04445f  add byte ptr [eax], al
  044461  add byte ptr [eax], al
  044463  add byte ptr [eax], al
  044465  add byte ptr [eax], al
  044467  add byte ptr [eax], al
  044469  add byte ptr [eax], al
  04446b  add byte ptr [eax], al
  04446d  add byte ptr [eax], al
  04446f  add byte ptr [eax], al
  044471  add byte ptr [eax], al
  044473  add byte ptr [eax], al
  044475  add byte ptr [eax], al
  044477  add byte ptr [eax], al
  044479  add byte ptr [eax], al
  04447b  add byte ptr [eax], al
  04447d  add byte ptr [eax], al
  04447f  add byte ptr [eax], al
  044481  add byte ptr [eax], al
  044483  add byte ptr [eax], al
  044485  add byte ptr [eax], al
  044487  add byte ptr [eax], al
  044489  add byte ptr [eax], al
  04448b  add byte ptr [eax], al
  04448d  add byte ptr [eax], al
  04448f  add byte ptr [eax], al
  044491  add byte ptr [eax], al
  044493  add byte ptr [eax], al
  044495  add byte ptr [eax], al
  044497  add byte ptr [eax], al
  044499  add byte ptr [eax], al
  04449b  add byte ptr [eax], al
  04449d  add byte ptr [eax], al
  04449f  add byte ptr [eax], al
  0444a1  add byte ptr [eax], al
  0444a3  add byte ptr [eax], al
  0444a5  add byte ptr [eax], al
  0444a7  add byte ptr [eax], al
  0444a9  add byte ptr [eax], al
  0444ab  add byte ptr [eax], al
  0444ad  add byte ptr [eax], al
  0444af  add byte ptr [eax], al
  0444b1  add byte ptr [eax], al
  0444b3  add byte ptr [eax], al
  0444b5  add byte ptr [eax], al
  0444b7  add byte ptr [eax], al
  0444b9  add byte ptr [eax], al
  0444bb  add byte ptr [eax], al
  0444bd  add byte ptr [eax], al
  0444bf  add byte ptr [eax], al
  0444c1  add byte ptr [eax], al
  0444c3  add byte ptr [eax], al
  0444c5  add byte ptr [eax], al
  0444c7  add byte ptr [eax], al
  0444c9  add byte ptr [eax], al
  0444cb  add byte ptr [eax], al
  0444cd  add byte ptr [eax], al
  0444cf  add byte ptr [eax], al
  0444d1  add byte ptr [eax], al
  0444d3  add byte ptr [eax], al
  0444d5  add byte ptr [eax], al
  0444d7  add byte ptr [eax], al
  0444d9  add byte ptr [eax], al
  0444db  add byte ptr [eax], al
  0444dd  add byte ptr [eax], al
  0444df  add byte ptr [eax], al
  0444e1  add byte ptr [eax], al
  0444e3  add byte ptr [eax], al
  0444e5  add byte ptr [eax], al
  0444e7  add byte ptr [eax], al
  0444e9  add byte ptr [eax], al
  0444eb  add byte ptr [eax], al
  0444ed  add byte ptr [eax], al
  0444ef  add byte ptr [eax], al
  0444f1  add byte ptr [eax], al
  0444f3  add byte ptr [eax], al
  0444f5  add byte ptr [eax], al
  0444f7  add byte ptr [eax], al
  0444f9  add byte ptr [eax], al
  0444fb  add byte ptr [eax], al
  0444fd  add byte ptr [eax], al
  0444ff  add byte ptr [eax], al
  044501  add byte ptr [eax], al
  044503  add byte ptr [eax], al
  044505  add byte ptr [eax], al
  044507  add byte ptr [eax], al
  044509  add byte ptr [eax], al
  04450b  add byte ptr [eax], al
  04450d  add byte ptr [eax], al
  04450f  add byte ptr [eax], al
  044511  add byte ptr [eax], al
  044513  add byte ptr [eax], al
  044515  add byte ptr [eax], al
  044517  add byte ptr [eax], al
  044519  add byte ptr [eax], al
  04451b  add byte ptr [eax], al
  04451d  add byte ptr [eax], al
  04451f  add byte ptr [eax], al
  044521  add byte ptr [eax], al
  044523  add byte ptr [eax], al
  044525  add byte ptr [eax], al
  044527  add byte ptr [eax], al
  044529  add byte ptr [eax], al
  04452b  add byte ptr [eax], al
  04452d  add byte ptr [eax], al
  04452f  add byte ptr [eax], al
  044531  add byte ptr [eax], al
  044533  add byte ptr [eax], al
  044535  add byte ptr [eax], al
  044537  add byte ptr [eax], al
  044539  add byte ptr [eax], al
  04453b  add byte ptr [eax], al
  04453d  add byte ptr [eax], al
  04453f  add byte ptr [eax], al
  044541  add byte ptr [eax], al
  044543  add byte ptr [eax], al
  044545  add byte ptr [eax], al
  044547  add byte ptr [eax], al
  044549  add byte ptr [eax], al
  04454b  add byte ptr [eax], al
  04454d  add byte ptr [eax], al
  04454f  add byte ptr [eax], al
  044551  add byte ptr [eax], al
  044553  add byte ptr [eax], al
  044555  add byte ptr [eax], al
  044557  add byte ptr [eax], al
  044559  add byte ptr [eax], al
  04455b  add byte ptr [eax], al
  04455d  add byte ptr [eax], al
  04455f  add byte ptr [eax], al
  044561  add byte ptr [eax], al
  044563  add byte ptr [eax], al
  044565  add byte ptr [eax], al
  044567  add byte ptr [eax], al
  044569  add byte ptr [eax], al
  04456b  add byte ptr [eax], al
  04456d  add byte ptr [eax], al
  04456f  add byte ptr [eax], al
  044571  add byte ptr [eax], al
  044573  add byte ptr [eax], al
  044575  add byte ptr [eax], al
  044577  add byte ptr [eax], al
  044579  add byte ptr [eax], al
  04457b  add byte ptr [eax], al
  04457d  add byte ptr [eax], al
  04457f  add byte ptr [eax], al
  044581  add byte ptr [eax], al
  044583  add byte ptr [eax], al
  044585  add byte ptr [eax], al
  044587  add byte ptr [eax], al
  044589  add byte ptr [eax], al
  04458b  add byte ptr [eax], al
  04458d  add byte ptr [eax], al
  04458f  add byte ptr [eax], al
  044591  add byte ptr [eax], al
  044593  add byte ptr [eax], al
  044595  add byte ptr [eax], al
  044597  add byte ptr [eax], al
  044599  add byte ptr [eax], al
  04459b  add byte ptr [eax], al
  04459d  add byte ptr [eax], al
  04459f  add byte ptr [eax], al
  0445a1  add byte ptr [eax], al
  0445a3  add byte ptr [eax], al
  0445a5  add byte ptr [eax], al
  0445a7  add byte ptr [eax], al
  0445a9  add byte ptr [eax], al
  0445ab  add byte ptr [eax], al
  0445ad  add byte ptr [eax], al
  0445af  add byte ptr [eax], al
  0445b1  add byte ptr [eax], al
  0445b3  add byte ptr [eax], al
  0445b5  add byte ptr [eax], al
  0445b7  add byte ptr [eax], al
  0445b9  add byte ptr [eax], al
  0445bb  add byte ptr [eax], al
  0445bd  add byte ptr [eax], al
  0445bf  add byte ptr [eax], al
  0445c1  add byte ptr [eax], al
  0445c3  add byte ptr [eax], al
  0445c5  add byte ptr [eax], al
  0445c7  add byte ptr [eax], al
  0445c9  add byte ptr [eax], al
  0445cb  add byte ptr [eax], al
  0445cd  add byte ptr [eax], al
  0445cf  add byte ptr [eax], al
  0445d1  add byte ptr [eax], al
  0445d3  add byte ptr [eax], al
  0445d5  add byte ptr [eax], al
  0445d7  add byte ptr [eax], al
  0445d9  add byte ptr [eax], al
  0445db  add byte ptr [eax], al
  0445dd  add byte ptr [eax], al
  0445df  add byte ptr [eax], al
  0445e1  add byte ptr [eax], al
  0445e3  add byte ptr [eax], al
  0445e5  add byte ptr [eax], al
  0445e7  add byte ptr [eax], al
  0445e9  add byte ptr [eax], al
  0445eb  add byte ptr [eax], al
  0445ed  add byte ptr [eax], al
  0445ef  add byte ptr [eax], al
  0445f1  add byte ptr [eax], al
  0445f3  add byte ptr [eax], al
  0445f5  add byte ptr [eax], al
  0445f7  add byte ptr [eax], al
  0445f9  add byte ptr [eax], al
  0445fb  add byte ptr [eax], al
  0445fd  add byte ptr [eax], al
  0445ff  add byte ptr [eax], al
  044601  add byte ptr [eax], al
  044603  add byte ptr [eax], al
  044605  add byte ptr [eax], al
  044607  add byte ptr [eax], al
  044609  add byte ptr [eax], al
  04460b  add byte ptr [eax], al
  04460d  add byte ptr [eax], al
  04460f  add byte ptr [eax], al
  044611  add byte ptr [eax], al
  044613  add byte ptr [eax], al
  044615  add byte ptr [eax], al
  044617  add byte ptr [eax], al
  044619  add byte ptr [eax], al
  04461b  add byte ptr [eax], al
  04461d  add byte ptr [eax], al
  04461f  add byte ptr [eax], al
  044621  add byte ptr [eax], al
  044623  add byte ptr [eax], al
  044625  add byte ptr [eax], al
  044627  add byte ptr [eax], al
  044629  add byte ptr [eax], al
  04462b  add byte ptr [eax], al
  04462d  add byte ptr [eax], al
  04462f  add byte ptr [eax], al
  044631  add byte ptr [eax], al
  044633  add byte ptr [eax], al
  044635  add byte ptr [eax], al
  044637  add byte ptr [eax], al
  044639  add byte ptr [eax], al
  04463b  add byte ptr [eax], al
  04463d  add byte ptr [eax], al
  04463f  add byte ptr [eax], al
  044641  add byte ptr [eax], al
  044643  add byte ptr [eax], al
  044645  add byte ptr [eax], al
  044647  add byte ptr [eax], al
  044649  add byte ptr [eax], al
  04464b  add byte ptr [eax], al
  04464d  add dh, al
  04464f  add eax, 0xdd
  044654  or dword ptr [ebx], eax
  044656  add eax, 0x18
  04465b  shld ebx, eax, 0x1c
  04465f  and eax, 0xf
  044662  mov word ptr [0xe4], bx
  044669  mov word ptr [0xd4], ax
  04466f  mov al, 0x21
  044671  int 0x33
  044673  ret 
  044674  or eax, 0x6c61680a
  044679  arpl word ptr [ecx + 0x6f], di
  04467c  outsb dx, byte ptr [esi]
  04467d  and byte ptr [ebx + 0x75], dh
  044680  jo 0x446e7
  044682  jb 0x446a4
  044684  imul ebp, dword ptr [edi + 0x6c], 0x6d
  044688  and byte ptr gs:[ebp + 0x6e], ah
  04468f  imul ebp, dword ptr [ecx + 0x6e], 0x65
  044693  and byte ptr [eax], ch
  044695  je 0x44704
  044697  sub dword ptr [eax], esp
  044699  insb byte ptr es:[edi], dx
  04469a  outsd dx, dword ptr [esi]
  04469b  popal 
  04469c  imul ebp, dword ptr fs:[esi + 0x67], 0xa0d2e2e
L446a4:
  0446a4  and al, 0x20
  0446a6  cli 
  0446a7  imul ebp, dword ptr [esi + 0x69], 0x6c616974
  0446ae  imul edi, dword ptr [edx + 0x69], 0x7420676e
  0446b5  popal 
  0446b6  bound ebp, qword ptr [ebp + 0x73]
  0446ba  or eax, 0xfa20240a
  0446c1  popal 
  0446c2  insb byte ptr es:[edi], dx
  0446c3  insb byte ptr es:[edi], dx
  0446c4  outsd dx, dword ptr [esi]
  0446c5  arpl word ptr [ecx + 0x74], sp
  0446c8  imul ebp, dword ptr [esi + 0x67], 0x6d656d20
  0446cf  outsd dx, dword ptr [esi]
  0446d0  jb 0x4474b
  0446d2  or eax, 0xfa20240a
  0446d9  insb byte ptr es:[edi], dx
  0446da  outsd dx, dword ptr [esi]
  0446db  popal 
  0446dc  imul ebp, dword ptr fs:[esi + 0x67], 0x646e6120
  0446e4  and byte ptr [eax + 0x72], dh
L446e7:
  0446e7  jo 0x4474b
  0446ea  jb 0x44755
  0446ec  outsb dx, byte ptr [esi]
  0446ed  and byte ptr [bx + di + 0x6e], ah
  0446f1  imul ebp, dword ptr [ebp + 0x2e], 0x240a0d2e
  0446f8  and dl, bh
  0446fa  arpl word ptr [ecx + 0x6c], sp
  0446fd  arpl word ptr [ebp + 0x6c], si
  044700  popal 
  044701  je 0x4476c
  044703  outsb dx, byte ptr [esi]
L44704:
  044704  and byte ptr [bp + 0x6c], ah
  044708  popal 
  044709  jb 0x44770
  04470b  jae 0x4473b
  04470d  or eax, 0xfa20240a
  044713  insb byte ptr es:[edi], dx
  044714  outsd dx, dword ptr [esi]
  044715  popal 
  044716  imul ebp, dword ptr fs:[esi + 0x67], 0x78657420
  04471e  je 0x44795
  044720  jb 0x44787
  044722  jae 0x44752
  044724  or eax, 0xfa20240a
  04472a  arpl word ptr [edx + 0x65], si
  04472d  popal 
  04472e  je 0x44799
  044730  outsb dx, byte ptr [esi]
  044731  and byte ptr [bx + di + 0x6e], ah
  044735  and byte ptr fs:[ecx + 0x75], dh
  044739  popal 
  04473a  outsb dx, byte ptr [esi]
L4473b:
  04473b  je 0x447a6
  04473d  jp 0x447a8
  04473f  outsb dx, byte ptr [esi]
  044740  and byte ptr [di + 0x69], ch
  044744  jo 0x447b3
  044746  popal 
  044747  jo 0x447bc
  044749  and byte ptr [eax], ch
L4474b:
  04474b  xor dword ptr [ecx], ebp
  04474d  or byte ptr cs:[eax], cl
  044751  or byte ptr [eax], cl
  044753  and al, 0x32
L44755:
  044755  sub dword ptr [esi], ebp
  044757  or byte ptr cs:[eax], cl
  04475a  or byte ptr [eax], cl
  04475c  and al, 0x33
  04475e  sub dword ptr [esi], ebp
  044760  or byte ptr cs:[eax], cl
  044763  or byte ptr [eax], cl
  044765  and al, 0x34
  044767  sub dword ptr [esi], ebp
  044769  or eax, 0xfa20240a
  04476f  jno 0x447e6
  044771  popal 
  044772  outsb dx, byte ptr [esi]
  044773  je 0x447de
  044775  jp 0x447e0
  044777  outsb dx, byte ptr [esi]
  044778  and byte ptr [bp + 0x69], ah
  04477c  jb 0x447f1
  04477e  je 0x447a0
  044780  je 0x447e7
  044782  js 0x447f8
  044784  jne 0x447f8
  044786  jae 0x447a9
  044789  jae 0x447f3
  04478b  popal 
  04478c  imul ebp, dword ptr fs:[esi + 0x67], 0x62617420
  044794  insb byte ptr es:[edi], dx
L44795:
  044795  or eax, 0xfa20240a
  04479d  jno 0x44814
  04479f  popal 
L447a0:
  0447a0  outsb dx, byte ptr [esi]
  0447a1  je 0x4480c
  0447a3  jp 0x4480e
  0447a5  outsb dx, byte ptr [esi]
L447a6:
  0447a6  and byte ptr [bp + di + 0x65], dh
  0447aa  arpl word ptr [edi + 0x6e], bp
  0447ad  and byte ptr fs:[ebp + 0x78], dh
  0447b2  je 0x44829
  0447b4  jb 0x4481b
  0447b6  jae 0x447d8
  0447b8  jae 0x44822
  0447ba  popal 
  0447bb  imul ebp, dword ptr fs:[esi + 0x67], 0x62617420
  0447c3  insb byte ptr es:[edi], dx
  0447c4  or eax, 0xfa20240a
  0447cc  jno 0x44843
  0447ce  popal 
  0447cf  outsb dx, byte ptr [esi]
  0447d0  je 0x4483b
  0447d2  jp 0x4483d
  0447d4  outsb dx, byte ptr [esi]
  0447d5  and byte ptr [bx + 0x65], ah
  0447d9  outsb dx, byte ptr [esi]
  0447da  jb 0x4483e
  0447dd  insb byte ptr es:[edi], dx
L447de:
  0447de  and byte ptr [ebx + 0x68], dh
  0447e1  popal 
  0447e2  imul ebp, dword ptr fs:[esi + 0x67], 0x62617420
  0447ea  insb byte ptr es:[edi], dx
  0447eb  or eax, 0xfa20240a
L447f3:
  0447f3  insb byte ptr es:[edi], dx
  0447f4  outsd dx, dword ptr [esi]
  0447f5  popal 
  0447f6  imul ebp, dword ptr fs:[esi + 0x67], 0x646e6120
  0447fe  and byte ptr [eax + 0x72], dh
  044801  jo 0x44865
  044804  jb 0x4486f
  044806  outsb dx, byte ptr [esi]
  044807  and byte ptr [bp + di + 0x63], dh
  04480b  outsb dx, byte ptr gs:[esi]
  04480d  or eax, 0x5c7240a
  044815  push eax
  044816  jg 0x44818
L44818:
  044818  add cl, ch
  04481a  pop ecx
L4481b:
  04481b  add al, 0
  04481d  mov dword ptr [0x7f54], 0x4556a
  044827  mov dword ptr [0x7f58], 0x45738
  044831  xor edi, edi
  044833  mov dword ptr [0x4688], 0
L4483d:
  04483d  mov dword ptr [0x467c], 0xa
  044847  fild dword ptr [0x4688]
  04484d  fild dword ptr [0x467c]
  044853  fdivp st(1)
  044855  fmul st(0)
  044857  fmul st(0)
  044859  fistp dword ptr [0x467c]
  04485f  mov eax, dword ptr [0x467c]
  044864  cmp eax, 0x3ff
  044869  jl 0x44870
  04486b  mov eax, 0x3ff
L44870:
  044870  neg eax
  044872  add eax, 0x3ff
  044877  mov dword ptr [edi + 0x42e84], eax
  04487d  mov ebp, 0x1fc
  044882  sub ebp, edi
  044884  mov dword ptr ds:[ebp + 0x42e84], eax
  04488b  add edi, 4
  04488e  inc dword ptr [0x4688]
  044894  cmp dword ptr [0x4688], 0x40
  04489b  jne 0x4483d
  04489d  mov edi, 0x42a84
  0448a2  fldpi 
  0448a4  mov dword ptr [0x467c], 0x10
  0448ae  fild dword ptr [0x467c]
  0448b4  fdivp st(1)
  0448b6  fstp qword ptr [0x4a50]
  0448bc  fldz 
  0448be  fstp qword ptr [0x4a58]
  0448c4  mov dword ptr [0x467c], 0x1ff
  0448ce  fild dword ptr [0x467c]
  0448d4  fstp dword ptr [0x467c]
  0448da  mov ecx, 0x10
L448df:
  0448df  fld qword ptr [0x4a58]
  0448e5  fcos 
  0448e7  fmul dword ptr [0x467c]
  0448ed  fadd dword ptr [0x467c]
  0448f3  fistp dword ptr [edi]
  0448f5  fld qword ptr [0x4a58]
  0448fb  fadd qword ptr [0x4a50]
  044901  fstp qword ptr [0x4a58]
  044907  add edi, 4
  04490a  dec ecx
  04490b  jne 0x448df
  04490d  fldpi 
  04490f  mov dword ptr [0x467c], 0x70
  044919  fild dword ptr [0x467c]
  04491f  fdivp st(1)
  044921  fstp qword ptr [0x4a50]
  044927  fldz 
  044929  fstp qword ptr [0x4a58]
  04492f  mov dword ptr [0x467c], 0x1ff
  044939  fild dword ptr [0x467c]
  04493f  fstp dword ptr [0x467c]
  044945  mov ecx, 0x70
L4494a:
  04494a  fld qword ptr [0x4a58]
  044950  fcos 
  044952  fchs 
  044954  fmul dword ptr [0x467c]
  04495a  fadd dword ptr [0x467c]
  044960  fistp dword ptr [edi]
  044962  fld qword ptr [0x4a58]
  044968  fadd qword ptr [0x4a50]
  04496e  fstp qword ptr [0x4a58]
  044974  add edi, 4
  044977  dec ecx
  044978  jne 0x4494a
  04497a  call 0x29300
  04497f  call 0x1f4ba
  044984  mov edi, 0xa0000
  044989  sub edi, dword ptr [0x18]
  04498f  mov dword ptr [0x4668], edi
  044995  mov eax, 0x50000
  04499a  call 0x2ac
  04499f  or eax, 0xffff
  0449a4  inc eax
  0449a5  mov dword ptr [0x4328c], eax
  0449aa  add eax, 0x10000
  0449af  mov dword ptr [0x43290], eax
  0449b4  add eax, 0x10000
  0449b9  mov dword ptr [0x43294], eax
  0449be  add eax, 0x10000
  0449c3  mov dword ptr [0x4277a], eax
  0449c8  add eax, 0x10000
  0449cd  mov edi, dword ptr [0x4328c]
  0449d3  mov ecx, 0x10000
  0449d8  xor eax, eax
  0449da  rep stosd dword ptr es:[edi], eax
  0449dc  mov ecx, 0x80
  0449e1  mov edx, 0x80
  0449e6  mov ebp, 0x20
  0449eb  mov edi, dword ptr [0x4678]
  0449f1  call 0x147a8
  0449f6  mov ecx, 0x40
  0449fb  mov edx, 0x40
  044a00  mov ebp, 0x10
  044a05  mov edi, dword ptr [0x4678]
  044a0b  add edi, 0x10000
  044a11  call 0x147a8
  044a16  mov ecx, 0x20
  044a1b  mov edx, 0x20
  044a20  mov ebp, 8
  044a25  mov edi, dword ptr [0x4678]
  044a2b  add edi, 0x18000
  044a31  call 0x147a8
  044a36  mov ecx, 0x10
  044a3b  mov edx, 0x10
  044a40  mov ebp, 4
  044a45  mov edi, dword ptr [0x4678]
  044a4b  add edi, 0x1c000
  044a51  call 0x147a8
  044a56  mov ecx, 8
  044a5b  mov edx, 8
  044a60  mov ebp, 2
  044a65  mov edi, dword ptr [0x4678]
  044a6b  add edi, 0x1e000
  044a71  call 0x147a8
  044a76  mov ecx, 4
  044a7b  mov edx, 4
  044a80  mov ebp, 1
  044a85  mov edi, dword ptr [0x4678]
  044a8b  add edi, 0x1f000
  044a91  call 0x147a8
  044a96  mov edx, 0x42772
  044a9b  call 0x3dcc
  044aa0  jb 0x459e9
  044aa6  mov bl, 0
  044aa8  mov eax, 0xa
  044aad  call 0x3e4a
  044ab2  mov edx, 0x4277e
  044ab7  mov ecx, 0x300
  044abc  call 0x3eed
  044ac1  mov edx, dword ptr [0x4277a]
  044ac7  mov ecx, 0xfa00
  044acc  call 0x3eed
  044ad1  call 0x3e09
  044ad6  mov edx, 0x42748
  044adb  call 0x3dcc
  044ae0  jb 0x459e9
  044ae6  mov bl, 0
  044ae8  mov eax, 0xa
  044aed  call 0x3e4a
  044af2  mov edx, 0x432a0
  044af7  mov ecx, 0x300
  044afc  call 0x3eed
  044b01  mov edx, dword ptr [0x4328c]
  044b07  mov ecx, 0x10000
  044b0c  call 0x3eed
  044b11  call 0x3e09
  044b16  mov edi, 0x435a0
  044b1b  xor eax, eax
  044b1d  xor ebx, ebx
  044b1f  mov ecx, 0x100
L44b24:
  044b24  stosb byte ptr es:[edi], al
  044b25  stosb byte ptr es:[edi], al
  044b26  stosb byte ptr es:[edi], al
  044b27  inc eax
  044b28  dec ecx
  044b29  jne 0x44b24
  044b2b  mov edi, dword ptr [0x48b0]
  044b31  mov esi, 0
L44b36:
  044b36  mov ebp, 0
L44b3b:
  044b3b  mov ecx, 3
L44b40:
  044b40  movzx eax, byte ptr ds:[ebp + 0x432a0]
  044b48  movzx ebx, byte ptr [esi + 0x435a0]
  044b4f  shl ebx, 1
  044b51  imul eax, ebx
  044b54  sar eax, 4
  044b57  sar ebx, 2
  044b5a  add eax, ebx
  044b5c  cmp eax, 0
  044b5f  jg 0x44b63
  044b61  xor eax, eax
L44b63:
  044b63  cmp eax, 0xff
  044b68  jl 0x44b6f
  044b6a  mov eax, 0xff
L44b6f:
  044b6f  mov byte ptr [edi], al
  044b71  inc edi
  044b72  inc ebp
  044b73  inc esi
  044b74  loop 0x44b40
  044b76  sub esi, 3
  044b79  cmp ebp, 0x300
  044b7f  jne 0x44b3b
  044b81  add esi, 3
  044b84  cmp esi, 0x300
  044b8a  jne 0x44b36
  044b8c  mov esi, dword ptr [0x48b0]
  044b92  mov edi, dword ptr [0x43290]
  044b98  mov ebp, 0x432a0
  044b9d  call 0x1f5a9
  044ba2  xor eax, eax
  044ba4  mov esi, 0x4277e
  044ba9  mov edi, 0x432a0
  044bae  mov ecx, 0x40
L44bb3:
  044bb3  movsb byte ptr es:[edi], byte ptr [esi]
  044bb4  movsb byte ptr es:[edi], byte ptr [esi]
  044bb5  movsb byte ptr es:[edi], byte ptr [esi]
  044bb6  add edi, 9
  044bb9  dec ecx
  044bba  jne 0x44bb3
  044bbc  mov esi, dword ptr [0x48b0]
  044bc2  mov ecx, 0xc000
L44bc7:
  044bc7  shr byte ptr [esi], 2
  044bca  inc esi
  044bcb  dec ecx
  044bcc  jne 0x44bc7
  044bce  mov eax, dword ptr [0x43290]
  044bd3  xor ebx, ebx
  044bd5  mov bl, byte ptr [eax]
  044bd7  imul ebx, ebx, 3
  044bda  mov al, byte ptr [ebx + 0x432a0]
  044be0  mov byte ptr [0x432a0], al
  044be5  mov al, byte ptr [ebx + 0x432a1]
  044beb  mov byte ptr [0x432a1], al
  044bf0  mov al, byte ptr [ebx + 0x432a2]
  044bf6  mov byte ptr [0x432a2], al
  044bfb  mov esi, dword ptr [0x48b0]
  044c01  mov edi, dword ptr [0x43290]
  044c07  mov ebp, 0x432a0
  044c0c  mov ecx, 0x4000
  044c11  call 0x1f4da
  044c16  mov edi, dword ptr [0x43290]
  044c1c  add edi, 0x3f00
  044c22  mov edx, 0x5f
L44c27:
  044c27  mov esi, dword ptr [0x43290]
  044c2d  add esi, 0x3e00
  044c33  mov ecx, 0x40
  044c38  rep movsd dword ptr es:[edi], dword ptr [esi]
  044c3a  dec edx
  044c3b  jne 0x44c27
  044c3d  mov edi, 0x435a0
  044c42  xor eax, eax
  044c44  xor ebx, ebx
  044c46  mov ecx, 0x100
L44c4b:
  044c4b  mov eax, ebx
  044c4d  shr eax, 1
  044c4f  stosb byte ptr es:[edi], al
  044c50  stosb byte ptr es:[edi], al
  044c51  mov eax, ebx
  044c53  stosb byte ptr es:[edi], al
  044c54  inc ebx
  044c55  dec ecx
  044c56  jne 0x44c4b
  044c58  mov edi, dword ptr [0x48b0]
  044c5e  mov esi, 0
L44c63:
  044c63  mov ebp, 0
L44c68:
  044c68  mov ecx, 3
L44c6d:
  044c6d  movzx eax, byte ptr ds:[ebp + 0x432a0]
  044c75  movzx ebx, byte ptr [esi + 0x435a0]
  044c7c  shl ebx, 1
  044c7e  add eax, ebx
  044c80  cmp eax, 0
  044c83  jg 0x44c87
  044c85  xor eax, eax
L44c87:
  044c87  cmp eax, 0x3f
  044c8a  jl 0x44c91
  044c8c  mov eax, 0x3f
L44c91:
  044c91  mov byte ptr [edi], al
  044c93  inc edi
  044c94  inc ebp
  044c95  inc esi
  044c96  loop 0x44c6d
  044c98  sub esi, 3
  044c9b  cmp ebp, 0x300
  044ca1  jne 0x44c68
  044ca3  add esi, 3
  044ca6  cmp esi, 0x300
  044cac  jne 0x44c63
  044cae  mov esi, dword ptr [0x48b0]
  044cb4  mov edi, dword ptr [0x43294]
  044cba  mov ebp, 0x432a0
  044cbf  mov ecx, 0x4000
  044cc4  call 0x1f4da
  044cc9  ret 
  044cca  mov dword ptr [0x7f50], 0x459e9
  044cd4  mov dword ptr [0x7f54], 0x4556a
  044cde  mov dword ptr [0x7f58], 0x45738
  044ce8  mov dword ptr [0x17210], 0
  044cf2  mov dword ptr [0x17208], 0
  044cfc  mov dword ptr [0x16630], 0
  044d06  mov dword ptr [0x1f920], 0x1fefc
  044d10  mov edx, 0x42752
  044d15  call 0x17570
  044d1a  mov dword ptr [0x467c], 1
  044d24  mov dword ptr [0x4680], 1
  044d2e  fild dword ptr [0x467c]
  044d34  fild dword ptr [0x4680]
  044d3a  fdivp st(1)
  044d3c  fstp dword ptr [0x4660]
  044d42  mov dword ptr [0x17024], 0
  044d4c  mov ebp, 0x7f98
  044d51  call 0x17596
  044d56  mov dword ptr [0x467c], 1
  044d60  fild dword ptr [0x467c]
  044d66  fstp dword ptr [0x4660]
  044d6c  mov edx, 0x4275c
  044d71  call 0x17570
  044d76  call 0x17596
  044d7b  mov ebp, 0x7f98
  044d80  mov ecx, dword ptr [0x17210]
L44d86:
  044d86  mov dword ptr [ebp + 0x18], 0
  044d8d  mov dword ptr [ebp + 0x1c], 0
  044d94  mov dword ptr [ebp + 0x20], 0
  044d9b  add ebp, 0x38
  044d9e  dec ecx
  044d9f  jne 0x44d86
  044da1  mov dword ptr [0x467c], 0x80
  044dab  fild dword ptr [0x467c]
  044db1  fstp qword ptr [0x4950]
  044db7  mov dword ptr [0x14798], 0
  044dc1  mov ebp, 0xef98
  044dc6  mov eax, 0x9128745
  044dcb  mov ebx, 0x23894175
  044dd0  mov ecx, 0x1838415
  044dd5  mov edx, 1
  044dda  mov edi, 0x178e0
L44ddf:
  044ddf  add eax, 0x40903484
  044de4  add ebx, 0x2935081
  044dea  add ecx, 0x9234785
  044df0  rol eax, 5
  044df3  rol ebx, 7
  044df6  ror ecx, 4
  044df9  mov dword ptr [0x467c], eax
  044dfe  and dword ptr [0x467c], 0x1f
  044e05  sub dword ptr [0x467c], 0x10
  044e0c  mov dword ptr [0x4680], 0x64
  044e16  fild dword ptr [0x467c]
  044e1c  fild dword ptr [0x4680]
  044e22  fdivp st(1)
  044e24  fstp qword ptr [edi + 8]
  044e27  mov esi, eax
  044e29  and esi, 0xff
  044e2f  imul esi, esi, 0x28
  044e32  mov dword ptr [edi + 0x10], esi
  044e35  add edi, 0x18
  044e38  inc dword ptr [0x14798]
  044e3e  mov dword ptr [ebp], 0x455ac
  044e45  fldz 
  044e47  fstp dword ptr [ebp + 4]
  044e4a  fldz 
  044e4c  fstp dword ptr [ebp + 8]
  044e4f  mov dword ptr [0x467c], 6
  044e59  fild dword ptr [0x467c]
  044e5f  fstp dword ptr [ebp + 0xc]
  044e62  mov dword ptr [0x467c], 0xfffffff9
  044e6c  fild dword ptr [0x467c]
  044e72  fstp dword ptr [ebp + 0x20]
  044e75  add ebp, 0x2c
  044e78  dec edx
  044e79  jne 0x44ddf
  044e7f  mov eax, dword ptr [0x14798]
  044e84  add dword ptr [0x16630], eax
  044e8a  call 0x16e44
  044e8f  mov esi, 0x432a0
  044e94  mov ebp, 0x435a0
  044e99  mov edi, 0x438a0
  044e9e  mov ecx, 0x300
L44ea3:
  044ea3  movzx eax, byte ptr [esi]
  044ea6  mov ebx, eax
  044ea8  neg eax
  044eaa  add eax, 0x3f
  044ead  cmp eax, 0x3f
  044eb0  jl 0x44eb7
  044eb2  mov eax, 0x3f
L44eb7:
  044eb7  mov byte ptr [edi], al
  044eb9  imul ebx, ebx, 4
  044ebc  cmp ebx, 0x3f
  044ebf  jl 0x44ec6
  044ec1  mov ebx, 0x3f
L44ec6:
  044ec6  mov byte ptr [ebp], bl
  044ec9  inc esi
  044eca  inc edi
  044ecb  inc ebp
  044ecc  dec ecx
  044ecd  jne 0x44ea3
  044ecf  mov esi, dword ptr [0x4328c]
  044ed5  mov edi, dword ptr [0x4670]
  044edb  mov ecx, 0x4000
  044ee0  rep movsd dword ptr es:[edi], dword ptr [esi]
  044ee2  mov esi, dword ptr [0x43290]
  044ee8  mov edi, dword ptr [0x48b4]
  044eee  mov ecx, 0x4000
  044ef3  rep movsd dword ptr es:[edi], dword ptr [esi]
  044ef5  mov esi, dword ptr [0x43294]
  044efb  mov edi, dword ptr [0x48bc]
  044f01  mov ecx, 0x4000
  044f06  rep movsd dword ptr es:[edi], dword ptr [esi]
  044f08  xor eax, eax
  044f0a  mov edi, 0x438a0
  044f0f  mov ecx, 0xc0
  044f14  rep stosd dword ptr es:[edi], eax
  044f16  mov dword ptr [0x4694], 0x3ff
  044f20  call 0x42618
  044f25  call 0x42693
  044f2a  mov dword ptr [0x469c], 1
  044f34  mov dword ptr [0x1479c], 0
  044f3e  mov dword ptr [0x147a0], 0
  044f48  mov dword ptr [0x147a4], 0
  044f52  mov eax, 0x29f62
  044f57  mov dword ptr [0x4c00], eax
  044f5c  mov dword ptr [0x467c], 0x56
  044f66  mov dword ptr [0x4680], 0x2710
  044f70  fild dword ptr [0x467c]
  044f76  fild dword ptr [0x4680]
  044f7c  fdivp st(1)
  044f7e  fst qword ptr [0x178a0]
  044f84  fstp qword ptr [0x178d0]
  044f8a  mov dword ptr [0x178ac], 0x460
  044f94  mov dword ptr [0x178dc], 0x460
  044f9e  fldz 
  044fa0  fst qword ptr [0x17898]
  044fa6  fstp qword ptr [0x178c8]
  044fac  mov dword ptr [0x178a8], 0
  044fb6  mov dword ptr [0x178d8], 0
  044fc0  mov dword ptr [0x467c], 0x46
  044fca  mov dword ptr [0x4680], 0x2710
  044fd4  fild dword ptr [0x467c]
  044fda  fild dword ptr [0x4680]
  044fe0  fdivp st(1)
  044fe2  fstp qword ptr [0x17888]
  044fe8  mov dword ptr [0x17894], 0x230
  044ff2  fldz 
  044ff4  fstp qword ptr [0x17880]
  044ffa  mov dword ptr [0x17890], 0
  045004  mov word ptr [0x7f9e], 1
L4500d:
  04500d  mov dword ptr [0x469c], 0
L45017:
  045017  cmp dword ptr [0x469c], 1
  04501e  jl 0x45017
  045020  mov esi, dword ptr [0x466c]
  045026  mov edi, dword ptr [0x4668]
  04502c  xor ebp, ebp
  04502e  mov ecx, 0x1f40
  045033  nop 
L45034:
  045034  mov eax, dword ptr [esi]
  045036  mov ebx, dword ptr [esi + 4]
  045039  mov dword ptr [esi], ebp
  04503b  mov dword ptr [esi + 4], ebp
  04503e  mov dword ptr [edi], eax
  045040  mov dword ptr [edi + 4], ebx
  045043  add esi, 8
  045046  add edi, 8
  045049  dec ecx
  04504a  jne 0x45034
  04504c  fild dword ptr [0x46a8]
  045052  fdiv qword ptr [0x4a68]
  045058  fsin 
  04505a  fild dword ptr [0x46ac]
  045060  fdiv qword ptr [0x4a68]
  045066  fcos 
  045068  fmulp st(1)
  04506a  fsin 
  04506c  fmul dword ptr [0x43298]
  045072  fstp dword ptr [0x7fbc]
  045078  fild dword ptr [0x46ac]
  04507e  fdiv qword ptr [0x4a68]
  045084  fsin 
  045086  fmul dword ptr [0x43298]
  04508c  fstp dword ptr [0x7fc0]
  045092  fild dword ptr [0x46a8]
  045098  fdiv qword ptr [0x4a68]
  04509e  fcos 
  0450a0  fsin 
  0450a2  fmul dword ptr [0x43298]
  0450a8  fstp dword ptr [0x7fc4]
  0450ae  mov ebx, 0x17898
  0450b3  mov edi, 0x43bb8
  0450b8  call 0x1f2c0
  0450bd  fld qword ptr [0x17830]
  0450c3  fstp qword ptr [0x4af0]
  0450c9  fld qword ptr [0x17838]
  0450cf  fstp qword ptr [0x4af8]
  0450d5  fld qword ptr [0x17840]
  0450db  fstp qword ptr [0x4b00]
  0450e1  fld qword ptr [0x17848]
  0450e7  fstp qword ptr [0x4a20]
  0450ed  fld qword ptr [0x17850]
  0450f3  fstp qword ptr [0x4a28]
  0450f9  fld qword ptr [0x17858]
  0450ff  fstp qword ptr [0x4a30]
  045105  fld qword ptr [0x17860]
  04510b  fstp qword ptr [0x49f0]
  045111  fld qword ptr [0x17868]
  045117  fstp qword ptr [0x49f8]
  04511d  fld qword ptr [0x17870]
  045123  fstp qword ptr [0x4a00]
  045129  fld qword ptr [0x17878]
  04512f  fstp qword ptr [0x4938]
  045135  mov ebx, 0x178c8
  04513a  mov edi, 0x43bb8
  04513f  call 0x1f2c0
  045144  fld qword ptr [0x17860]
  04514a  fstp qword ptr [0x49c0]
  045150  fld qword ptr [0x17868]
  045156  fstp qword ptr [0x49c8]
  04515c  fld qword ptr [0x17870]
  045162  fstp qword ptr [0x49d0]
  045168  fld qword ptr [0x4938]
  04516e  fmul qword ptr [0x4960]
  045174  fstp qword ptr [0x4a78]
  04517a  call 0x15d91
  04517f  call 0x150d4
  045184  mov eax, dword ptr [0x1584c]
  045189  mov dword ptr [0x15854], eax
  04518e  mov eax, dword ptr [0x15850]
  045193  mov dword ptr [0x15858], eax
  045198  mov dword ptr [0x1663c], 0
  0451a2  mov eax, dword ptr [0x16634]
  0451a7  mov dword ptr [0x16640], eax
  0451ac  mov ecx, dword ptr [0x17210]
  0451b2  mov ebp, 0x7f98
L451b7:
  0451b7  push ecx
  0451b8  cmp dword ptr [ebp + 4], 0
  0451bc  jne 0x45371
  0451c2  fld dword ptr [ebp + 0x34]
  0451c5  fstp dword ptr [0x17214]
  0451cb  fild dword ptr [ebp + 0x18]
  0451ce  fdiv qword ptr [0x4a68]
  0451d4  fstp qword ptr [0x4a38]
  0451da  fild dword ptr [ebp + 0x1c]
  0451dd  fdiv qword ptr [0x4a68]
  0451e3  fstp qword ptr [0x4a40]
  0451e9  fild dword ptr [ebp + 0x20]
  0451ec  fdiv qword ptr [0x4a68]
  0451f2  fstp qword ptr [0x4a48]
  0451f8  fld dword ptr [ebp + 0x24]
  0451fb  fstp qword ptr [0x49a8]
  045201  fld dword ptr [ebp + 0x28]
  045204  fstp qword ptr [0x49b0]
  04520a  fld dword ptr [ebp + 0x2c]
  04520d  fstp qword ptr [0x49b8]
  045213  mov ebx, 0x15b60
  045218  call 0x15f1b
  04521d  mov eax, 0x15b60
  045222  mov ebx, 0x15be0
  045227  mov ecx, 0x15ae0
  04522c  call 0x160b5
  045231  cmp dword ptr [ebp], 0x4f627521
  045238  je 0x452b1
  04523a  mov esi, dword ptr [ebp + 0x10]
  04523d  mov ecx, dword ptr [ebp + 8]
L45240:
  045240  mov dword ptr [esi + 4], 0
  045247  add esi, 0x40
  04524a  dec ecx
  04524b  jne 0x45240
  04524d  call 0x16244
  045252  mov esi, ebp
  045254  mov edi, 0x7f60
  045259  mov ecx, 0xe
  04525e  rep movsd dword ptr es:[edi], dword ptr [esi]
  045260  mov dword ptr [0x7f68], 0
  04526a  mov dword ptr [0x7f6c], 0
  045274  mov ebx, dword ptr [0x15854]
  04527a  mov dword ptr [0x7f74], ebx
  045280  mov ebx, dword ptr [0x15858]
  045286  mov dword ptr [0x7f70], ebx
  04528c  call 0x15a18
  045291  call 0x162fd
  045296  call 0x17028
  04529b  push ebp
  04529c  mov ebp, 0x7f60
  0452a1  call 0x162fd
  0452a6  call 0x17028
  0452ab  pop ebp
  0452ac  jmp 0x45371
L452b1:
  0452b1  cmp byte ptr [0x41b6], 1
  0452b8  je 0x45371
  0452be  mov esi, dword ptr [ebp + 0x14]
  0452c1  mov eax, 0x1fa33
  0452c6  sub eax, dword ptr [esi + 4]
  0452c9  mov dword ptr [0x4664], eax
  0452ce  mov eax, dword ptr [esi + 4]
  0452d1  cmp eax, 0x1fc7b
  0452d6  jne 0x452e2
  0452d8  mov dword ptr [0x4664], 1
L452e2:
  0452e2  call 0x14b00
  0452e7  call 0x1725c
  0452ec  call 0x16100
  0452f1  call 0x16244
  0452f6  call 0x163a4
  0452fb  mov esi, ebp
  0452fd  mov edi, 0x7f60
  045302  mov ecx, 0xe
  045307  rep movsd dword ptr es:[edi], dword ptr [esi]
  045309  mov dword ptr [0x7f68], 0
  045313  mov dword ptr [0x7f6c], 0
  04531d  mov ebx, dword ptr [0x15854]
  045323  mov dword ptr [0x7f74], ebx
  045329  mov ebx, dword ptr [0x15858]
  04532f  mov dword ptr [0x7f70], ebx
  045335  call 0x1592e
  04533a  call 0x162fd
  04533f  call 0x16ea7
  045344  cmp dword ptr [0x4664], 1
  04534b  je 0x45352
  04534d  call 0x1653f
L45352:
  045352  push ebp
  045353  mov ebp, 0x7f60
  045358  call 0x162fd
  04535d  call 0x16ea7
  045362  cmp dword ptr [0x4664], 1
  045369  je 0x45370
  04536b  call 0x1653f
L45370:
  045370  pop ebp
L45371:
  045371  pop ecx
  045372  add ebp, 0x38
  045375  dec ecx
  045376  jne 0x451b7
  04537c  mov dword ptr [0x467c], 0x28
  045386  fild dword ptr [0x467c]
  04538c  fld dword ptr [0xefb8]
  045392  fmul qword ptr [0x4988]
  045398  fmul qword ptr [0x4938]
  04539e  fdivp st(1)
  0453a0  fstp dword ptr [0x4658]
  0453a6  mov dword ptr [0x467c], 0xff
  0453b0  fild dword ptr [0x467c]
  0453b6  fld dword ptr [0xefe4]
  0453bc  fmul qword ptr [0x4988]
  0453c2  fmul qword ptr [0x4938]
  0453c8  fdivp st(1)
  0453ca  fstp dword ptr [0x465c]
  0453d0  mov ecx, dword ptr [0x14798]
  0453d6  cmp ecx, 0
  0453d9  je 0x4552d
  0453df  mov ebp, 0xef98
  0453e4  mov edi, dword ptr [0x16640]
  0453ea  mov ebx, 0x178e0
L453ef:
  0453ef  fld dword ptr [ebp + 4]
  0453f2  fmul qword ptr [0x15be0]
  0453f8  fld dword ptr [ebp + 4]
  0453fb  fmul qword ptr [0x15be8]
  045401  fld dword ptr [ebp + 4]
  045404  fmul qword ptr [0x15bf0]
  04540a  fld dword ptr [ebp + 8]
  04540d  fmul qword ptr [0x15c00]
  045413  fld dword ptr [ebp + 8]
  045416  fmul qword ptr [0x15c08]
  04541c  fld dword ptr [ebp + 8]
  04541f  fmul qword ptr [0x15c10]
  045425  fxch st(2)
  045427  faddp st(5)
  045429  faddp st(3)
  04542b  faddp st(1)
  04542d  fld dword ptr [ebp + 0xc]
  045430  fmul qword ptr [0x15c20]
  045436  fld dword ptr [ebp + 0xc]
  045439  fmul qword ptr [0x15c28]
  04543f  fld dword ptr [ebp + 0xc]
  045442  fmul qword ptr [0x15c30]
  045448  fxch st(2)
  04544a  faddp st(5)
  04544c  faddp st(3)
  04544e  faddp st(1)
  045450  fxch st(2)
  045452  fadd qword ptr [0x15c40]
  045458  fxch st(1)
  04545a  fadd qword ptr [0x15c48]
  045460  fxch st(2)
  045462  fadd qword ptr [0x15c50]
  045468  fst dword ptr [ebp + 0x1c]
  04546b  fstp dword ptr [0x4684]
  045471  fstp dword ptr [0x467c]
  045477  fstp dword ptr [0x4680]
  04547d  test dword ptr [0x4684], 0x80000000
  045487  je 0x4551d
  04548d  fld1 
  04548f  fld dword ptr [0x4684]
  045495  fdivp st(1)
  045497  fld dword ptr [0x467c]
  04549d  fld dword ptr [0x4680]
  0454a3  fmul qword ptr [0x4a78]
  0454a9  fmul st(2)
  0454ab  fxch st(1)
  0454ad  fmul qword ptr [0x4938]
  0454b3  fmul st(2)
  0454b5  fxch st(1)
  0454b7  fadd qword ptr [0x4930]
  0454bd  fstp dword ptr [ebp + 0x18]
  0454c0  fadd qword ptr [0x4928]
  0454c6  fstp dword ptr [ebp + 0x14]
  0454c9  fstp dword ptr [ebp + 0x10]
  0454cc  mov eax, dword ptr [0x4658]
  0454d1  cmp dword ptr [ebp], 0x455ac
  0454d8  jne 0x454df
  0454da  mov eax, dword ptr [0x465c]
L454df:
  0454df  mov dword ptr [ebp + 0x28], eax
  0454e2  fld dword ptr [0x4684]
  0454e8  fsub dword ptr [0x150d0]
  0454ee  fmul dword ptr [0x150c0]
  0454f4  fmul qword ptr [0x4990]
  0454fa  fchs 
  0454fc  fistp dword ptr [0x4680]
  045502  mov eax, 0xffff
  045507  sub eax, dword ptr [0x4680]
  04550d  mov dword ptr [edi], eax
  04550f  add edi, 4
  045512  mov dword ptr [edi], ebp
  045514  add edi, 4
  045517  inc dword ptr [0x1663c]
L4551d:
  04551d  add ebp, 0x2c
  045520  dec ecx
  045521  jne 0x453ef
  045527  mov dword ptr [0x16640], edi
L4552d:
  04552d  wait 
  04552e  fnstcw word ptr [0x4424c]
  045534  push word ptr [0x4424c]
  04553b  or word ptr [0x4424c], 0xc00
  045544  fldcw word ptr [0x4424c]
  04554a  cmp dword ptr [0x1663c], 0
  045551  je 0x45928
  045557  call 0x170f7
  04555c  mov esi, dword ptr [0x16634]
  045562  add esi, 4
L45565:
  045565  mov ecx, dword ptr [esi]
  045567  push esi
  045568  jmp dword ptr [ecx]
  04556a  mov esi, dword ptr [ecx + 8]
  04556d  mov edi, dword ptr [ecx + 0xc]
  045570  fld dword ptr [esi + 0x14]
  045573  fld dword ptr [esi + 0x18]
  045576  fxch st(1)
  045578  fstp dword ptr [0x2936c]
  04557e  fstp dword ptr [0x29370]
  045584  fld dword ptr [edi + 0x14]
  045587  fld dword ptr [edi + 0x18]
  04558a  fxch st(1)
  04558c  fstp dword ptr [0x2937c]
  045592  fstp dword ptr [0x29380]
  045598  mov esi, 0x2936c
  04559d  mov edi, 0x2937c
  0455a2  call 0x293a4
  0455a7  jmp 0x45918
  0455ac  fld dword ptr [ecx + 0x28]
  0455af  fmul dword ptr [ecx + 0x1c]
  0455b2  fmul dword ptr [0x29690]
  0455b8  fistp dword ptr [0x4688]
  0455be  mov eax, dword ptr [0x4688]
  0455c3  shr eax, 8
  0455c6  cmp eax, 0x3f
  0455c9  jl 0x455d0
  0455cb  mov eax, 0x3f
L455d0:
  0455d0  cmp dword ptr [0x48dc], -1
  0455d7  je 0x455de
  0455d9  mov eax, dword ptr [0x48dc]
L455de:
  0455de  mov ebx, dword ptr [eax*4 + 0x4558]
  0455e5  mov dword ptr [0x296a4], ebx
  0455eb  fld dword ptr [ecx + 0x28]
  0455ee  fmul dword ptr [ecx + 0x1c]
  0455f1  fmul dword ptr [eax*4 + 0x4458]
  0455f8  fst dword ptr [0x296c0]
  0455fe  fmul dword ptr [0x29690]
  045604  fistp dword ptr [0x296c8]
  04560a  fld dword ptr [ecx + 0x20]
  04560d  fmul qword ptr [0x4938]
  045613  fmul dword ptr [ecx + 0x10]
  045616  fstp dword ptr [0x2969c]
  04561c  fld dword ptr [ecx + 0x14]
  04561f  fsub dword ptr [0x2969c]
  045625  fstp dword ptr [0x296a8]
  04562b  fld dword ptr [ecx + 0x18]
  04562e  fsub dword ptr [0x2969c]
  045634  fstp dword ptr [0x296ac]
  04563a  fld dword ptr [ecx + 0x14]
  04563d  fadd dword ptr [0x2969c]
  045643  fstp dword ptr [0x296b0]
  045649  fld dword ptr [ecx + 0x18]
  04564c  fadd dword ptr [0x2969c]
  045652  fstp dword ptr [0x296b4]
  045658  call 0x298b7
  04565d  jmp 0x45918
  045662  fld qword ptr [0x49f0]
  045668  fsub dword ptr [ecx + 4]
  04566b  fld qword ptr [0x49f8]
  045671  fsub dword ptr [ecx + 8]
  045674  fpatan 
  045676  fldpi 
  045678  fmul qword ptr [0x4988]
  04567e  fdivp st(1)
  045680  fmul qword ptr [0x4a68]
  045686  fistp dword ptr [0x4688]
  04568c  mov eax, dword ptr [0x4688]
  045691  and eax, 0xffff
  045696  mov ebx, 0x690
  04569b  cdq 
  04569c  idiv ebx
  04569e  mov esi, eax
  0456a0  and esi, 3
  0456a3  imul esi, esi, 0x28
  0456a6  shr eax, 2
  0456a9  imul eax, eax, 0x5300
  0456af  add eax, esi
  0456b1  mov dword ptr [0x296a4], eax
  0456b6  fld dword ptr [ecx + 0x28]
  0456b9  fmul dword ptr [ecx + 0x1c]
  0456bc  fst dword ptr [0x296c0]
  0456c2  fmul dword ptr [0x29690]
  0456c8  fistp dword ptr [0x296c8]
  0456ce  fld dword ptr [ecx + 0x20]
  0456d1  fmul qword ptr [0x4938]
  0456d7  fmul dword ptr [ecx + 0x10]
  0456da  fstp dword ptr [0x2969c]
  0456e0  fld dword ptr [ecx + 0x24]
  0456e3  fmul qword ptr [0x4938]
  0456e9  fmul dword ptr [ecx + 0x10]
  0456ec  fstp dword ptr [0x296a0]
  0456f2  fld dword ptr [ecx + 0x14]
  0456f5  fsub dword ptr [0x2969c]
  0456fb  fstp dword ptr [0x296a8]
  045701  fld dword ptr [ecx + 0x18]
  045704  fsub dword ptr [0x296a0]
  04570a  fstp dword ptr [0x296ac]
  045710  fld dword ptr [ecx + 0x14]
  045713  fadd dword ptr [0x2969c]
  045719  fstp dword ptr [0x296b0]
  04571f  fld dword ptr [ecx + 0x18]
  045722  fadd dword ptr [0x296a0]
  045728  fstp dword ptr [0x296b4]
  04572e  call 0x296d8
  045733  jmp 0x45918
  045738  mov esi, dword ptr [ecx + 0xc]
  04573b  mov edi, dword ptr [ecx + 0x10]
  04573e  mov ebp, dword ptr [ecx + 0x14]
  045741  xor eax, eax
  045743  mov edx, eax
  045745  shl edx, 0x10
  045748  mov eax, dword ptr [eax*4 + 0x48e4]
  04574f  mov dword ptr [0x48f8], eax
  045754  fild dword ptr [ecx + 0x2c]
  045757  fld dword ptr [esi + 0x1c]
  04575a  fmul qword ptr [0x4940]
  045760  faddp st(1)
  045762  fistp dword ptr [0x4690]
  045768  mov eax, dword ptr [0x4690]
  04576d  shl eax, 2
  045770  cmp eax, 0
  045773  jg 0x45777
  045775  xor eax, eax
L45777:
  045777  cmp eax, 0xff
  04577c  jl 0x45783
  04577e  mov eax, 0xff
L45783:
  045783  mov byte ptr [0x1fa31], al
  045788  mov eax, dword ptr [ecx + 0x28]
  04578b  shl eax, 0x10
  04578e  mov ebx, eax
  045790  add eax, dword ptr [0x4670]
  045796  add eax, edx
  045798  mov dword ptr [0x1f924], eax
  04579d  add ebx, dword ptr [0x48b4]
  0457a3  mov dword ptr [0x1f928], ebx
  0457a9  mov eax, dword ptr [ecx + 4]
  0457ac  cmp eax, 0x1fa32
  0457b1  je 0x457e3
  0457b3  cmp eax, 0x1fc7b
  0457b8  je 0x457e3
  0457ba  fld dword ptr [esi + 0x38]
  0457bd  fadd dword ptr [edi + 0x38]
  0457c0  fadd dword ptr [ebp + 0x38]
  0457c3  fstp dword ptr [0x48d0]
  0457c9  mov ebx, dword ptr [0x490c]
  0457cf  cmp dword ptr [0x48d0], ebx
  0457d5  jne 0x457e3
  0457d7  mov byte ptr [0x1fa31], 0
  0457de  mov eax, 0x1fa32
L457e3:
  0457e3  mov dword ptr [0x1f920], eax
  0457e8  mov eax, dword ptr [esi]
  0457ea  add eax, dword ptr [edi]
  0457ec  add eax, dword ptr [ebp]
  0457ef  jne 0x457fc
  0457f1  call dword ptr [0x1f920]
  0457f7  jmp 0x45918
L457fc:
  0457fc  push dword ptr [0x15858]
  045802  mov dword ptr [0x14cb0], esi
  045808  mov dword ptr [0x14cb4], edi
  04580e  mov dword ptr [0x14cb8], ebp
  045814  mov dword ptr [0x14cbc], esi
  04581a  mov esi, 0x14cb0
  04581f  mov edi, 0x14d00
  045824  mov dword ptr [0x14d50], 0
  04582e  call 0x14d54
  045833  call 0x14d54
  045838  call 0x14d54
  04583d  cmp dword ptr [0x14d50], 3
  045844  jl 0x45912
  04584a  mov eax, dword ptr [0x14d00]
  04584f  mov dword ptr [edi], eax
  045851  mov esi, 0x14d00
  045856  mov edi, 0x14cb0
  04585b  mov ebp, dword ptr [0x14d50]
  045861  mov dword ptr [0x14d50], 0
L4586b:
  04586b  call 0x14e3a
  045870  dec ebp
  045871  jne 0x4586b
  045873  cmp dword ptr [0x14d50], 3
  04587a  jl 0x45912
  045880  mov eax, dword ptr [0x14cb0]
  045885  mov dword ptr [edi], eax
  045887  mov esi, 0x14cb0
  04588c  mov edi, 0x14d00
  045891  mov ebp, dword ptr [0x14d50]
  045897  mov dword ptr [0x14d50], 0
L458a1:
  0458a1  call 0x14f28
  0458a6  dec ebp
  0458a7  jne 0x458a1
  0458a9  cmp dword ptr [0x14d50], 3
  0458b0  jl 0x45912
  0458b2  mov eax, dword ptr [0x14d00]
  0458b7  mov dword ptr [edi], eax
  0458b9  mov esi, 0x14d00
  0458be  mov edi, 0x14cb0
  0458c3  mov ebp, dword ptr [0x14d50]
  0458c9  mov dword ptr [0x14d50], 0
L458d3:
  0458d3  call 0x14fed
  0458d8  dec ebp
  0458d9  jne 0x458d3
  0458db  cmp dword ptr [0x14d50], 3
  0458e2  jl 0x45912
  0458e4  sub dword ptr [0x14d50], 2
  0458eb  xor eax, eax
L458ed:
  0458ed  mov esi, dword ptr [0x14cb0]
  0458f3  mov edi, dword ptr [eax + 0x14cb4]
  0458f9  mov ebp, dword ptr [eax + 0x14cb8]
  0458ff  push eax
  045900  call dword ptr [0x1f920]
  045906  pop eax
  045907  add eax, 4
  04590a  dec dword ptr [0x14d50]
  045910  jne 0x458ed
L45912:
  045912  pop dword ptr [0x15858]
L45918:
  045918  pop esi
  045919  add esi, 8
  04591c  dec dword ptr [0x1663c]
  045922  jne 0x45565
L45928:
  045928  pop word ptr [0x4424c]
  04592f  fldcw word ptr [0x4424c]
  045935  xor edx, edx
  045937  cmp word ptr [0x12bf], 0x1f
  04593f  jl 0x45955
  045941  movzx eax, word ptr [0x12ca]
  045948  and eax, 3
  04594b  cmp eax, 2
  04594e  jl 0x45955
  045950  mov edx, 0x94
L45955:
  045955  mov esi, dword ptr [0x4277a]
  04595b  add esi, edx
  04595d  mov edi, dword ptr [0x466c]
  045963  mov edx, 0xc8
L45968:
  045968  mov ecx, 0x76
L4596d:
  04596d  mov al, byte ptr [esi]
  04596f  or al, al
  045971  je 0x45978
  045973  shl al, 2
  045976  mov byte ptr [edi], al
L45978:
  045978  inc esi
  045979  inc edi
  04597a  dec ecx
  04597b  jne 0x4596d
  04597d  add esi, 0xca
  045983  add edi, 0xca
  045989  dec edx
  04598a  jne 0x45968
  04598c  cmp byte ptr [0x41cb], 1
  045993  jne 0x459a7
  045995  fld qword ptr [0x4958]
  04599b  fadd qword ptr [0x4950]
  0459a1  fstp qword ptr [0x4950]
L459a7:
  0459a7  cmp byte ptr [0x41cc], 1
  0459ae  jne 0x459c4
  0459b0  fld qword ptr [0x4958]
  0459b6  fchs 
  0459b8  fadd qword ptr [0x4950]
  0459be  fstp qword ptr [0x4950]
L459c4:
  0459c4  in al, 0x60
  0459c6  cmp al, 1
  0459c8  jne 0x459d6
  0459ca  mov dword ptr [0x4aeb0], 1
  0459d4  jmp 0x459e4
L459d6:
  0459d6  cmp word ptr [0x12bf], 0x23
  0459de  jl 0x4500d
L459e4:
  0459e4  call 0x4266c
L459e9:
  0459e9  ret 
  0459ea  xchg ebx, ebx
  0459ec  xchg ebx, ebx
  0459ee  xchg ebx, ebx
  0459f0  add byte ptr [eax], al
  0459f2  add byte ptr [eax], al
  0459f4  add byte ptr [eax], al
  0459f6  add byte ptr [eax], al
  0459f8  add byte ptr [eax], al
  0459fa  add byte ptr [eax], al
  0459fc  add byte ptr [eax], al
  0459fe  add byte ptr [eax], al
  045a00  add byte ptr [eax], al
  045a02  add byte ptr [eax], al
  045a04  xchg ebx, ebx
  045a06  xchg ebx, ebx
  045a08  xchg ebx, ebx
  045a0a  xchg ebx, ebx
  045a0c  xchg ebx, ebx
  045a0e  xchg ebx, ebx
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
L45f1c:
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
L45f43:
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
  045ffd  imul esp, dword ptr [ecx + 0x6b], 0x2e
  046001  popal 
  046002  popal 
  046003  popal 
  046004  add byte ptr [edi - 0x2b1f6f25], al
  04600a  mov byte ptr [0x8dd73000], al
  04600f  add byte ptr [esi + 0x61], dh
  046012  jb 0x4607e
  046014  outsd dx, dword ptr [esi]
  046015  xor byte ptr [edx], dh
  046017  jae 0x4607d
  04601a  js 0x4601c
L4601c:
  04601c  jo 0x4607f
  04601e  insb byte ptr es:[edi], dx
  04601f  insb byte ptr es:[edi], dx
  046020  outsd dx, dword ptr [esi]
  046021  popal 
  046022  imul esi, dword ptr [edx], 0x2e
  046025  jb 0x46028
L46028:
  046028  popal 
  046029  jne 0x4609d
  04602b  imul ebp, dword ptr [esi], 0x72007265
  046031  popal 
  046032  je 0x46095
  046034  jbe 0x4609b
  046036  imul ebp, dword ptr [esi], 0x6a
  046039  jne 0x460b0
  04603b  add byte ptr [eax], al
  04603d  add byte ptr [eax], al
  04603f  add byte ptr [eax + 0x65], dh
  046042  je 0x460a9
  046044  jo 0x460a8
  046047  imul eax, dword ptr [eax], 0
  04604a  add byte ptr [edi], dh
  04604d  add byte ptr [eax], al
  04604f  add byte ptr [eax], al
  046051  add byte ptr [eax], al
  046053  add byte ptr [eax], al
  046055  xchg ebx, ebx
  046057  xchg ebx, ebx
  046059  xchg ebx, ebx
  04605b  xchg ebx, ebx
  04605d  xchg ebx, ebx
  04605f  nop 
  046060  adc byte ptr [eax + 0x3fe0004], 0
  046067  add ah, dh
  046069  add eax, dword ptr [eax]
  04606b  add bh, dl
  04606d  add eax, dword ptr [eax]
  04606f  add byte ptr [eax + 0x68000003], ch
  046075  add eax, dword ptr [eax]
  046077  add byte ptr [ebx], bl
  046079  add eax, dword ptr [eax]
  04607b  add bl, al
L4607d:
  04607d  add al, byte ptr [eax]
L4607f:
  04607f  add byte ptr [ebx + 2], ah
  046082  add byte ptr [eax], al
  046084  inc dword ptr [ecx]
  046086  add byte ptr [eax], al
  046088  wait 
  046089  add dword ptr [eax], eax
  04608b  add byte ptr [ebx], bh
  04608d  add dword ptr [eax], eax
  04608f  add bl, ah
  046091  add byte ptr [eax], al
  046093  add byte ptr [esi + 0x56000000], dl
  046099  add byte ptr [eax], al
L4609b:
  04609b  add byte ptr [edi], ah
L4609d:
  04609d  add byte ptr [eax], al
  04609f  add byte ptr [edx], cl
  0460a1  add byte ptr [eax], al
  0460a3  add byte ptr [eax], al
  0460a5  add byte ptr [eax], al
  0460a7  add byte ptr [eax], al
L460a9:
  0460a9  add byte ptr [eax], al
  0460ab  add byte ptr [ecx], al
  0460ad  add byte ptr [eax], al
  0460af  add byte ptr [edx], al
  0460b1  add byte ptr [eax], al
  0460b3  add byte ptr [ebx], al
  0460b5  add byte ptr [eax], al
  0460b7  add byte ptr [0x7000000], al
  0460bd  add byte ptr [eax], al
  0460bf  add byte ptr [edx], cl
  0460c1  add byte ptr [eax], al
  0460c3  add byte ptr [0x10000000], cl
  0460c9  add byte ptr [eax], al
  0460cb  add byte ptr [eax + eax], dl
  0460ce  add byte ptr [eax], al
  0460d0  sbb byte ptr [eax], al
  0460d2  add byte ptr [eax], al
  0460d4  sbb eax, 0x22000000
  0460d9  add byte ptr [eax], al
  0460db  add byte ptr [edi], ah
  0460dd  add byte ptr [eax], al
  0460df  add byte ptr [0x33000000], ch
  0460e5  add byte ptr [eax], al
  0460e7  add byte ptr [ecx], bh
  0460e9  add byte ptr [eax], al
  0460eb  add byte ptr [eax], al
  0460ee  add byte ptr [eax], al
  0460f0  inc edi
  0460f1  add byte ptr [eax], al
  0460f3  add byte ptr [esi], cl
  0460f6  add byte ptr [eax], al
  0460f8  push esi
  0460f9  add byte ptr [eax], al
  0460fb  add byte ptr [esi], bl
  0460fe  add byte ptr [eax], al
  046100  add byte ptr [bx + si], al
  046103  add byte ptr [edi], ch
  046106  add byte ptr [eax], al
  046108  jns 0x4610a
L4610a:
  04610a  add byte ptr [eax], al
  04610c  add byte ptr [eax], 0
  04610f  add byte ptr [eax + eax + 0x960000], cl
  046116  add byte ptr [eax], al
  046118  mov al, byte ptr [0xaa000000]
  04611d  add byte ptr [eax], al
  04611f  add byte ptr [ebp - 0x40000000], dh
  046125  add byte ptr [eax], al
  046127  add ah, cl
  046129  add byte ptr [eax], al
  04612b  add bh, dl
  04612d  add byte ptr [eax], al
  04612f  add bl, ah
  046131  add byte ptr [eax], al
  046133  add bh, ch
  046135  add byte ptr [eax], al
  046137  add bl, bh
  046139  add byte ptr [eax], al
  04613b  add byte ptr [eax], cl
  04613d  add dword ptr [eax], eax
  04613f  add byte ptr [ecx + eax], dl
  046142  add byte ptr [eax], al
  046144  and dword ptr [ecx], eax
  046146  add byte ptr [eax], al
  046148  add dword ptr cs:[eax], eax
  04614b  add byte ptr [ebx], bh
  04614d  add dword ptr [eax], eax
  04614f  add byte ptr [ecx + 1], cl
  046152  add byte ptr [eax], al
  046154  push esi
  046155  add dword ptr [eax], eax
  046157  add byte ptr [ecx + eax], ah
  04615b  add byte ptr [edx + 1], dh
  04615e  add byte ptr [eax], al
  046160  jg 0x46163
  046162  add byte ptr [eax], al
  046164  lea eax, [ecx]
  046166  add byte ptr [eax], al
  046168  wait 
  046169  add dword ptr [eax], eax
  04616b  add byte ptr [ecx - 0x47ffffff], ch
  046171  add dword ptr [eax], eax
  046173  add dh, al
  046175  add dword ptr [eax], eax
  046177  add ah, dl
  046179  add dword ptr [eax], eax
  04617b  add dl, ah
  04617d  add dword ptr [eax], eax
  04617f  add cl, dh
  046181  add dword ptr [eax], eax
  046183  add bh, bh
  046185  add dword ptr [eax], eax
  046187  add byte ptr [0x1c000002], cl
  04618d  add al, byte ptr [eax]
  04618f  add byte ptr [edx], ch
  046191  add al, byte ptr [eax]
  046193  add byte ptr [eax], bh
  046195  add al, byte ptr [eax]
  046197  add byte ptr [esi + 2], al
  04619a  add byte ptr [eax], al
  04619c  push ebp
  04619d  add al, byte ptr [eax]
  04619f  add byte ptr [ebx + 2], ah
  0461a2  add byte ptr [eax], al
  0461a4  jno 0x461a8
  0461a6  add byte ptr [eax], al
L461a8:
  0461a8  jg 0x461ac
  0461aa  add byte ptr [eax], al
L461ac:
  0461ac  mov word ptr [edx], es
  0461ae  add byte ptr [eax], al
  0461b0  lcall 2, 0xa8000002
  0461b7  add byte ptr [ebp - 0x3cfffffe], dh
  0461bd  add al, byte ptr [eax]
  0461bf  add al, dl
  0461c1  add al, byte ptr [eax]
  0461c3  add ch, bl
  0461c5  add al, byte ptr [eax]
  0461c7  add dl, ch
  0461c9  add al, byte ptr [eax]
  0461cb  add dh, dh
  0461cd  add al, byte ptr [eax]
  0461cf  add byte ptr [ebx], al
  0461d1  add eax, dword ptr [eax]
  0461d3  add byte ptr [edi], cl
  0461d5  add eax, dword ptr [eax]
  0461d7  add byte ptr [ebx], bl
  0461d9  add eax, dword ptr [eax]
  0461db  add byte ptr [edi], ah
  0461dd  add eax, dword ptr [eax]
  0461df  add byte ptr [edx], dh
  0461e1  add eax, dword ptr [eax]
  0461e3  add byte ptr [esi], bh
  0461e5  add eax, dword ptr [eax]
  0461e7  add byte ptr [ecx + 3], cl
  0461ea  add byte ptr [eax], al
  0461ec  push esp
  0461ed  add eax, dword ptr [eax]
  0461ef  add byte ptr [esi + 3], bl
  0461f2  add byte ptr [eax], al
  0461f4  push 0x72000003
  0461f9  add eax, dword ptr [eax]
  0461fb  add byte ptr [ebx + eax], bh
  0461ff  add byte ptr [ebp - 0x70fffffd], al
  046205  add eax, dword ptr [eax]
  046207  add byte ptr [edi - 0x5ffffffd], dl
  04620d  add eax, dword ptr [eax]
  04620f  add byte ptr [eax - 0x4ffffffd], ch
  046215  add eax, dword ptr [eax]
  046217  add byte ptr [edi - 0x41fffffd], dh
  04621d  add eax, dword ptr [eax]
  04621f  add ch, al
  046221  add eax, dword ptr [eax]
  046223  add bl, cl
  046225  add eax, dword ptr [eax]
  046227  add cl, dl
  046229  add eax, dword ptr [eax]
  04622b  add bh, dl
  04622d  add eax, dword ptr [eax]
  04622f  add ah, bl
  046231  add eax, dword ptr [eax]
  046233  add cl, ah
  046235  add eax, dword ptr [eax]
  046237  add dh, ah
  046239  add eax, dword ptr [eax]
  04623b  add dl, ch
  04623d  add eax, dword ptr [eax]
  04623f  add dh, ch
  046241  add eax, dword ptr [eax]
  046243  add cl, dh
  046245  add eax, dword ptr [eax]
  046247  add ah, dh
  046249  add eax, dword ptr [eax]
  04624b  add bh, dh
  04624d  add eax, dword ptr [eax]
  04624f  add cl, bh
  046251  add eax, dword ptr [eax]
  046253  add bl, bh
  046255  add eax, dword ptr [eax]
  046257  add ah, bh
  046259  add eax, dword ptr [eax]
  04625b  add ch, bh
  04625d  add eax, dword ptr [eax]
  04625f  add dh, bh
  046261  add eax, dword ptr [eax]
  046263  add byte ptr [eax], al
  046265  add byte ptr [eax], al
  046267  add byte ptr [eax], al
  046269  add byte ptr [eax], al
  04626b  add byte ptr [eax], al
  04626d  add byte ptr [eax], al
  04626f  add byte ptr [eax], al
  046271  add byte ptr [eax], al
  046273  add byte ptr [eax], al
  046275  add byte ptr [eax], al
  046277  add byte ptr [eax], al
  046279  add byte ptr [eax], al
  04627b  add byte ptr [eax], al
  04627d  add byte ptr [eax], al
  04627f  add byte ptr [eax], al
  046281  add byte ptr [eax], al
  046283  add byte ptr [eax], al
  046285  add byte ptr [eax], al
  046287  add byte ptr [eax], al
  046289  add byte ptr [eax], al
  04628b  add byte ptr [eax], al
  04628d  add byte ptr [eax], al
  04628f  add byte ptr [eax], al
  046291  add byte ptr [eax], al
  046293  add byte ptr [eax], al
  046295  add byte ptr [eax], al
  046297  add byte ptr [eax], al
  046299  add byte ptr [eax], al
  04629b  add byte ptr [eax], al
  04629d  add byte ptr [eax], al
  04629f  add byte ptr [eax], al
  0462a1  add byte ptr [eax], al
  0462a3  add byte ptr [eax], al
  0462a5  add byte ptr [eax], al
  0462a7  add byte ptr [eax], al
  0462a9  add byte ptr [eax], al
  0462ab  add byte ptr [eax], al
  0462ad  add byte ptr [eax], al
  0462af  add byte ptr [eax], al
  0462b1  add byte ptr [eax], al
  0462b3  add byte ptr [eax], al
  0462b5  add byte ptr [eax], al
  0462b7  add byte ptr [eax], al
  0462b9  add byte ptr [eax], al
  0462bb  add byte ptr [eax], al
  0462bd  add byte ptr [eax], al
  0462bf  add byte ptr [eax], al
  0462c1  add byte ptr [eax], al
  0462c3  add byte ptr [eax], al
  0462c5  add byte ptr [eax], al
  0462c7  add byte ptr [eax], al
  0462c9  add byte ptr [eax], al
  0462cb  add byte ptr [eax], al
  0462cd  add byte ptr [eax], al
  0462cf  add byte ptr [eax], al
  0462d1  add byte ptr [eax], al
  0462d3  add byte ptr [eax], al
  0462d5  add byte ptr [eax], al
  0462d7  add byte ptr [eax], al
  0462d9  add byte ptr [eax], al
  0462db  add byte ptr [eax], al
  0462dd  add byte ptr [eax], al
  0462df  add byte ptr [eax], al
  0462e1  add byte ptr [eax], al
  0462e3  add byte ptr [eax], al
  0462e5  add byte ptr [eax], al
  0462e7  add byte ptr [eax], al
  0462e9  add byte ptr [eax], al
  0462eb  add byte ptr [eax], al
  0462ed  add byte ptr [eax], al
  0462ef  add byte ptr [eax], al
  0462f1  add byte ptr [eax], al
  0462f3  add byte ptr [eax], al
  0462f5  add byte ptr [eax], al
  0462f7  add byte ptr [eax], al
  0462f9  add byte ptr [eax], al
  0462fb  add byte ptr [eax], al
  0462fd  add byte ptr [eax], al
  0462ff  add byte ptr [eax], al
  046301  add byte ptr [eax], al
  046303  add byte ptr [eax], al
  046305  add byte ptr [eax], al
  046307  add byte ptr [eax], al
  046309  add byte ptr [eax], al
  04630b  add byte ptr [eax], al
  04630d  add byte ptr [eax], al
  04630f  add byte ptr [eax], al
  046311  add byte ptr [eax], al
  046313  add byte ptr [eax], al
  046315  add byte ptr [eax], al
  046317  add byte ptr [eax], al
  046319  add byte ptr [eax], al
  04631b  add byte ptr [eax], al
  04631d  add byte ptr [eax], al
  04631f  add byte ptr [eax], al
  046321  add byte ptr [eax], al
  046323  add byte ptr [eax], al
  046325  add byte ptr [eax], al
  046327  add byte ptr [eax], al
  046329  add byte ptr [eax], al
  04632b  add byte ptr [eax], al
  04632d  add byte ptr [eax], al
  04632f  add byte ptr [eax], al
  046331  add byte ptr [eax], al
  046333  add byte ptr [eax], al
  046335  add byte ptr [eax], al
  046337  add byte ptr [eax], al
  046339  add byte ptr [eax], al
  04633b  add byte ptr [eax], al
  04633d  add byte ptr [eax], al
  04633f  add byte ptr [eax], al
  046341  add byte ptr [eax], al
  046343  add byte ptr [eax], al
  046345  add byte ptr [eax], al
  046347  add byte ptr [eax], al
  046349  add byte ptr [eax], al
  04634b  add byte ptr [eax], al
  04634d  add byte ptr [eax], al
  04634f  add byte ptr [eax], al
  046351  add byte ptr [eax], al
  046353  add byte ptr [eax], al
  046355  add byte ptr [eax], al
  046357  add byte ptr [eax], al
  046359  add byte ptr [eax], al
  04635b  add byte ptr [eax], al
  04635d  add byte ptr [eax], al
  04635f  add byte ptr [eax], al
  046361  add byte ptr [eax], al
  046363  add byte ptr [eax], al
  046365  add byte ptr [eax], al
  046367  add byte ptr [eax], al
  046369  add byte ptr [eax], al
  04636b  add byte ptr [eax], al
  04636d  add byte ptr [eax], al
  04636f  add byte ptr [eax], al
  046371  add byte ptr [eax], al
  046373  add byte ptr [eax], al
  046375  add byte ptr [eax], al
  046377  add byte ptr [eax], al
  046379  add byte ptr [eax], al
  04637b  add byte ptr [eax], al
  04637d  add byte ptr [eax], al
  04637f  add byte ptr [eax], al
  046381  add byte ptr [eax], al
  046383  add byte ptr [eax], al
  046385  add byte ptr [eax], al
  046387  add byte ptr [eax], al
  046389  add byte ptr [eax], al
  04638b  add byte ptr [eax], al
  04638d  add byte ptr [eax], al
  04638f  add byte ptr [eax], al
  046391  add byte ptr [eax], al
  046393  add byte ptr [eax], al
  046395  add byte ptr [eax], al
  046397  add byte ptr [eax], al
  046399  add byte ptr [eax], al
  04639b  add byte ptr [eax], al
  04639d  add byte ptr [eax], al
  04639f  add byte ptr [eax], al
  0463a1  add byte ptr [eax], al
  0463a3  add byte ptr [eax], al
  0463a5  add byte ptr [eax], al
  0463a7  add byte ptr [eax], al
  0463a9  add byte ptr [eax], al
  0463ab  add byte ptr [eax], al
  0463ad  add byte ptr [eax], al
  0463af  add byte ptr [eax], al
  0463b1  add byte ptr [eax], al
  0463b3  add byte ptr [eax], al
  0463b5  add byte ptr [eax], al
  0463b7  add byte ptr [eax], al
  0463b9  add byte ptr [eax], al
  0463bb  add byte ptr [eax], al
  0463bd  add byte ptr [eax], al
  0463bf  add byte ptr [eax], al
  0463c1  add byte ptr [eax], al
  0463c3  add byte ptr [eax], al
  0463c5  add byte ptr [eax], al
  0463c7  add byte ptr [eax], al
  0463c9  add byte ptr [eax], al
  0463cb  add byte ptr [eax], al
  0463cd  add byte ptr [eax], al
  0463cf  add byte ptr [eax], al
  0463d1  add byte ptr [eax], al
  0463d3  add byte ptr [eax], al
  0463d5  add byte ptr [eax], al
  0463d7  add byte ptr [eax], al
  0463d9  add byte ptr [eax], al
  0463db  add byte ptr [eax], al
  0463dd  add byte ptr [eax], al
  0463df  add byte ptr [eax], al
  0463e1  add byte ptr [eax], al
  0463e3  add byte ptr [eax], al
  0463e5  add byte ptr [eax], al
  0463e7  add byte ptr [eax], al
  0463e9  add byte ptr [eax], al
  0463eb  add byte ptr [eax], al
  0463ed  add byte ptr [eax], al
  0463ef  add byte ptr [eax], al
  0463f1  add byte ptr [eax], al
  0463f3  add byte ptr [eax], al
  0463f5  add byte ptr [eax], al
  0463f7  add byte ptr [eax], al
  0463f9  add byte ptr [eax], al
  0463fb  add byte ptr [eax], al
  0463fd  add byte ptr [eax], al
  0463ff  add byte ptr [eax], al
  046401  add byte ptr [eax], al
  046403  add byte ptr [eax], al
  046405  add byte ptr [eax], al
  046407  add byte ptr [eax], al
  046409  add byte ptr [eax], al
  04640b  add byte ptr [eax], al
  04640d  add byte ptr [eax], al
  04640f  add byte ptr [eax], al
  046411  add byte ptr [eax], al
  046413  add byte ptr [eax], al
  046415  add byte ptr [eax], al
  046417  add byte ptr [eax], al
  046419  add byte ptr [eax], al
  04641b  add byte ptr [eax], al
  04641d  add byte ptr [eax], al
  04641f  add byte ptr [eax], al
  046421  add byte ptr [eax], al
  046423  add byte ptr [eax], al
  046425  add byte ptr [eax], al
  046427  add byte ptr [eax], al
  046429  add byte ptr [eax], al
  04642b  add byte ptr [eax], al
  04642d  add byte ptr [eax], al
  04642f  add byte ptr [eax], al
  046431  add byte ptr [eax], al
  046433  add byte ptr [eax], al
  046435  add byte ptr [eax], al
  046437  add byte ptr [eax], al
  046439  add byte ptr [eax], al
  04643b  add byte ptr [eax], al
  04643d  add byte ptr [eax], al
  04643f  add byte ptr [eax], al
  046441  add byte ptr [eax], al
  046443  add byte ptr [eax], al
  046445  add byte ptr [eax], al
  046447  add byte ptr [eax], al
  046449  add byte ptr [eax], al
  04644b  add byte ptr [eax], al
  04644d  add byte ptr [eax], al
  04644f  add byte ptr [eax], al
  046451  add byte ptr [eax], al
  046453  add byte ptr [eax], al
  046455  add byte ptr [eax], al
  046457  add byte ptr [eax], al
  046459  add byte ptr [eax], al
  04645b  add byte ptr [eax], al
  04645d  add byte ptr [eax], al
  04645f  add byte ptr [eax], al
  046461  add byte ptr [eax], al
  046463  add bh, bh
  046465  add eax, dword ptr [eax]
  046467  add bh, bh
  046469  add eax, dword ptr [eax]
  04646b  add bh, bh
  04646d  add eax, dword ptr [eax]
  04646f  add bh, bh
  046471  add eax, dword ptr [eax]
  046473  add bh, bh
  046475  add eax, dword ptr [eax]
  046477  add bh, bh
  046479  add eax, dword ptr [eax]
  04647b  add bh, bh
  04647d  add eax, dword ptr [eax]
  04647f  add bh, bh
  046481  add eax, dword ptr [eax]
  046483  add bh, bh
  046485  add eax, dword ptr [eax]
  046487  add dh, bh
  046489  add eax, dword ptr [eax]
  04648b  add dh, bh
  04648d  add eax, dword ptr [eax]
  04648f  add dh, bh
  046491  add eax, dword ptr [eax]
  046493  add ch, bh
  046495  add eax, dword ptr [eax]
  046497  add ah, bh
  046499  add eax, dword ptr [eax]
  04649b  add bl, bh
  04649d  add eax, dword ptr [eax]
  04649f  add dl, bh
  0464a1  add eax, dword ptr [eax]
  0464a3  add al, bh
  0464a5  add eax, dword ptr [eax]
  0464a7  add bh, dh
  0464a9  add eax, dword ptr [eax]
  0464ab  add ch, dh
  0464ad  add eax, dword ptr [eax]
  0464af  add dl, dh
  0464b1  add eax, dword ptr [eax]
  0464b3  add bh, ch
  0464b5  add eax, dword ptr [eax]
  0464b7  add ah, ch
  0464b9  add eax, dword ptr [eax]
  0464bb  add al, ch
  0464bd  add eax, dword ptr [eax]
  0464bf  add bl, ah
  0464c1  add eax, dword ptr [eax]
  0464c3  add dh, bl
  0464c5  add eax, dword ptr [eax]
  0464c7  add al, bl
  0464c9  add eax, dword ptr [eax]
  0464cb  add cl, dl
  0464cd  add eax, dword ptr [eax]
  0464cf  add dl, cl
  0464d1  add eax, dword ptr [eax]
  0464d3  add dl, al
  0464d5  add eax, dword ptr [eax]
  0464d7  add byte ptr [eax - 0x51fffffd], bh
  0464dd  add eax, dword ptr [eax]
  0464df  add byte ptr [ebx - 0x69fffffd], ah
  0464e5  add eax, dword ptr [eax]
  0464e7  add byte ptr [eax + 0x79000003], cl
  0464ed  add eax, dword ptr [eax]
  0464ef  add byte ptr [ecx + 3], ch
  0464f2  add byte ptr [eax], al
  0464f4  push edi
  0464f5  add eax, dword ptr [eax]
  0464f7  add byte ptr [ebx + eax], al
  0464fb  add byte ptr [esi], ch
  0464fd  add eax, dword ptr [eax]
  0464ff  add byte ptr [eax], bl
  046501  add eax, dword ptr [eax]
  046503  add bh, bh
  046505  add al, byte ptr [eax]
  046507  add ah, ah
  046509  add al, byte ptr [eax]
  04650b  add al, cl
  04650d  add al, byte ptr [eax]
  04650f  add byte ptr [ecx - 0x77fffffe], ch
  046515  add al, byte ptr [eax]
  046517  add byte ptr [ebp + 2], ah
  04651a  add byte ptr [eax], al
  04651c  aas 
  04651d  add al, byte ptr [eax]
  04651f  add byte ptr [edi], dl
  046521  add al, byte ptr [eax]
  046523  add ah, ch
  046525  add dword ptr [eax], eax
  046527  add byte ptr [edi - 0x71ffffff], bh
  04652d  add dword ptr [eax], eax
  04652f  add byte ptr [edx + 1], bl
  046532  add byte ptr [eax], al
  046534  and al, 1
  046536  add byte ptr [eax], al
  046538  ljmp 0:0xad000000
  04653f  add byte ptr [eax + eax], ch
  046543  add byte ptr [eax], ch
  046545  add byte ptr [eax], al
  046547  add byte ptr [eax], al
  046549  add byte ptr [eax], al
  04654b  add byte ptr [eax], al
  04654d  add byte ptr [eax], al
  04654f  add byte ptr [eax], al
  046551  add byte ptr [eax], al
  046553  add byte ptr [eax], al
  046555  add byte ptr [eax], al
  046557  add byte ptr [eax], al
  046559  add byte ptr [eax], al
  04655b  add byte ptr [eax], al
  04655d  add byte ptr [eax], al
  04655f  add byte ptr [eax], al
  046561  add byte ptr [eax], al
  046563  add byte ptr [eax], al
  046565  add byte ptr [eax], al
  046567  add byte ptr [eax], al
  046569  add byte ptr [eax], al
  04656b  add byte ptr [eax], al
  04656d  add byte ptr [eax], al
  04656f  add byte ptr [eax], al
  046571  add byte ptr [eax], al
  046573  add byte ptr [eax], al
  046575  add byte ptr [eax], al
  046577  add byte ptr [eax], al
  046579  add byte ptr [eax], al
  04657b  add byte ptr [eax], al
  04657d  add byte ptr [eax], al
  04657f  add byte ptr [eax], ch
  046581  add byte ptr [eax], al
  046583  add byte ptr [eax + eax], ch
  046587  add byte ptr [ebp - 0x16000000], ch
  04658d  add byte ptr [eax], al
  04658f  add byte ptr [ecx + eax], ah
  046592  add byte ptr [eax], al
  046594  pop edx
  046595  add dword ptr [eax], eax
  046597  add byte ptr [esi - 0x40ffffff], cl
  04659d  add dword ptr [eax], eax
  04659f  add ah, ch
  0465a1  add dword ptr [eax], eax
  0465a3  add byte ptr [edi], dl
  0465a5  add al, byte ptr [eax]
  0465a7  add byte ptr [edi], bh
  0465a9  add al, byte ptr [eax]
  0465ab  add byte ptr [ebp + 2], ah
  0465ae  add byte ptr [eax], al
  0465b0  mov byte ptr [edx], al
  0465b2  add byte ptr [eax], al
  0465b4  test eax, 0xc8000002
  0465b9  add al, byte ptr [eax]
  0465bb  add ah, ah
  0465bd  add al, byte ptr [eax]
  0465bf  add bh, bh
  0465c1  add al, byte ptr [eax]
  0465c3  add byte ptr [eax], bl
  0465c5  add eax, dword ptr [eax]
  0465c7  add byte ptr [esi], ch
  0465c9  add eax, dword ptr [eax]
  0465cb  add byte ptr [ebx + eax], al
  0465cf  add byte ptr [edi + 3], dl
  0465d2  add byte ptr [eax], al
  0465d4  imul eax, dword ptr [ebx], 0x3790000
  0465da  add byte ptr [eax], al
  0465dc  mov byte ptr [ebx], al
  0465de  add byte ptr [eax], al
  0465e0  xchg esi, eax
  0465e1  add eax, dword ptr [eax]
  0465e3  add byte ptr [ebx - 0x51fffffd], ah
  0465e9  add eax, dword ptr [eax]
  0465eb  add byte ptr [eax - 0x3dfffffd], bh
  0465f1  add eax, dword ptr [eax]
  0465f3  add dl, cl
  0465f5  add eax, dword ptr [eax]
  0465f7  add cl, dl
  0465f9  add eax, dword ptr [eax]
  0465fb  add al, bl
  0465fd  add eax, dword ptr [eax]
  0465ff  add dh, bl
  046601  add eax, dword ptr [eax]
  046603  add bl, ah
  046605  add eax, dword ptr [eax]
  046607  add al, ch
  046609  add eax, dword ptr [eax]
  04660b  add ah, ch
  04660d  add eax, dword ptr [eax]
  04660f  add bh, ch
  046611  add eax, dword ptr [eax]
  046613  add dl, dh
  046615  add eax, dword ptr [eax]
  046617  add ch, dh
  046619  add eax, dword ptr [eax]
  04661b  add bh, dh
  04661d  add eax, dword ptr [eax]
  04661f  add al, bh
  046621  add eax, dword ptr [eax]
  046623  add dl, bh
  046625  add eax, dword ptr [eax]
  046627  add bl, bh
  046629  add eax, dword ptr [eax]
  04662b  add ah, bh
  04662d  add eax, dword ptr [eax]
  04662f  add ch, bh
  046631  add eax, dword ptr [eax]
  046633  add dh, bh
  046635  add eax, dword ptr [eax]
  046637  add dh, bh
  046639  add eax, dword ptr [eax]
  04663b  add dh, bh
  04663d  add eax, dword ptr [eax]
  04663f  add bh, bh
  046641  add eax, dword ptr [eax]
  046643  add bh, bh
  046645  add eax, dword ptr [eax]
  046647  add bh, bh
  046649  add eax, dword ptr [eax]
  04664b  add bh, bh
  04664d  add eax, dword ptr [eax]
  04664f  add bh, bh
  046651  add eax, dword ptr [eax]
  046653  add bh, bh
  046655  add eax, dword ptr [eax]
  046657  add bh, bh
  046659  add eax, dword ptr [eax]
  04665b  add bh, bh
  04665d  add eax, dword ptr [eax]
  04665f  add bh, bh
  046661  add eax, dword ptr [eax]
  046663  add byte ptr [eax], al
  046665  add byte ptr [eax], al
  046667  add byte ptr [eax], al
  046669  add byte ptr [eax], al
  04666b  add byte ptr [eax], al
  04666d  add byte ptr [eax], al
  04666f  add byte ptr [eax], al
  046671  add byte ptr [eax], al
  046673  add byte ptr [eax], al
  046675  add byte ptr [eax], al
  046677  add byte ptr [eax], al
  046679  add byte ptr [eax], al
  04667b  add byte ptr [eax], al
  04667d  add byte ptr [eax], al
  04667f  add byte ptr [eax], al
  046681  add byte ptr [eax], al
  046683  add byte ptr [eax], al
  046685  add byte ptr [eax], al
  046687  add byte ptr [eax], al
  046689  add byte ptr [eax], al
  04668b  add byte ptr [eax], al
  04668d  add byte ptr [eax], al
  04668f  add byte ptr [eax], al
  046691  add byte ptr [eax], al
  046693  add byte ptr [eax], al
  046695  add byte ptr [eax], al
  046697  add byte ptr [eax], al
  046699  add byte ptr [eax], al
  04669b  add byte ptr [eax], al
  04669d  add byte ptr [eax], al
  04669f  add byte ptr [eax], al
  0466a1  add byte ptr [eax], al
  0466a3  add byte ptr [eax], al
  0466a5  add byte ptr [eax], al
  0466a7  add byte ptr [eax], al
  0466a9  add byte ptr [eax], al
  0466ab  add byte ptr [eax], al
  0466ad  add byte ptr [eax], al
  0466af  add byte ptr [eax], al
  0466b1  add byte ptr [eax], al
  0466b3  add byte ptr [eax], al
  0466b5  add byte ptr [eax], al
  0466b7  add byte ptr [eax], al
  0466b9  add byte ptr [eax], al
  0466bb  add byte ptr [eax], al
  0466bd  add byte ptr [eax], al
  0466bf  add byte ptr [eax], al
  0466c1  add byte ptr [eax], al
  0466c3  add byte ptr [eax], al
  0466c5  add byte ptr [eax], al
  0466c7  add byte ptr [eax], al
  0466c9  add byte ptr [eax], al
  0466cb  add byte ptr [eax], al
  0466cd  add byte ptr [eax], al
  0466cf  add byte ptr [eax], al
  0466d1  add byte ptr [eax], al
  0466d3  add byte ptr [eax], al
  0466d5  add byte ptr [eax], al
  0466d7  add byte ptr [eax], al
  0466d9  add byte ptr [eax], al
  0466db  add byte ptr [eax], al
  0466dd  add byte ptr [eax], al
  0466df  add byte ptr [eax], al
  0466e1  add byte ptr [eax], al
  0466e3  add byte ptr [eax], al
  0466e5  add byte ptr [eax], al
  0466e7  add byte ptr [eax], al
  0466e9  add byte ptr [eax], al
  0466eb  add byte ptr [eax], al
  0466ed  add byte ptr [eax], al
  0466ef  add byte ptr [eax], al
  0466f1  add byte ptr [eax], al
  0466f3  add byte ptr [eax], al
  0466f5  add byte ptr [eax], al
  0466f7  add byte ptr [eax], al
  0466f9  add byte ptr [eax], al
  0466fb  add byte ptr [eax], al
  0466fd  add byte ptr [eax], al
  0466ff  add byte ptr [eax], al
  046701  add byte ptr [eax], al
  046703  add byte ptr [eax], al
  046705  add byte ptr [eax], al
  046707  add byte ptr [eax], al
  046709  add byte ptr [eax], al
  04670b  add byte ptr [eax], al
  04670d  add byte ptr [eax], al
  04670f  add byte ptr [eax], al
  046711  add byte ptr [eax], al
  046713  add byte ptr [eax], al
  046715  add byte ptr [eax], al
  046717  add byte ptr [eax], al
  046719  add byte ptr [eax], al
  04671b  add byte ptr [eax], al
  04671d  add byte ptr [eax], al
  04671f  add byte ptr [eax], al
  046721  add byte ptr [eax], al
  046723  add byte ptr [eax], al
  046725  add byte ptr [eax], al
  046727  add byte ptr [eax], al
  046729  add byte ptr [eax], al
  04672b  add byte ptr [eax], al
  04672d  add byte ptr [eax], al
  04672f  add byte ptr [eax], al
  046731  add byte ptr [eax], al
  046733  add byte ptr [eax], al
  046735  add byte ptr [eax], al
  046737  add byte ptr [eax], al
  046739  add byte ptr [eax], al
  04673b  add byte ptr [eax], al
  04673d  add byte ptr [eax], al
  04673f  add byte ptr [eax], al
  046741  add byte ptr [eax], al
  046743  add byte ptr [eax], al
  046745  add byte ptr [eax], al
  046747  add byte ptr [eax], al
  046749  add byte ptr [eax], al
  04674b  add byte ptr [eax], al
  04674d  add byte ptr [eax], al
  04674f  add byte ptr [eax], al
  046751  add byte ptr [eax], al
  046753  add byte ptr [eax], al
  046755  add byte ptr [eax], al
  046757  add byte ptr [eax], al
  046759  add byte ptr [eax], al
  04675b  add byte ptr [eax], al
  04675d  add byte ptr [eax], al
  04675f  add byte ptr [eax], al
  046761  add byte ptr [eax], al
  046763  add byte ptr [eax], al
  046765  add byte ptr [eax], al
  046767  add byte ptr [eax], al
  046769  add byte ptr [eax], al
  04676b  add byte ptr [eax], al
  04676d  add byte ptr [eax], al
  04676f  add byte ptr [eax], al
  046771  add byte ptr [eax], al
  046773  add byte ptr [eax], al
  046775  add byte ptr [eax], al
  046777  add byte ptr [eax], al
  046779  add byte ptr [eax], al
  04677b  add byte ptr [eax], al
  04677d  add byte ptr [eax], al
  04677f  add byte ptr [eax], al
  046781  add byte ptr [eax], al
  046783  add byte ptr [eax], al
  046785  add byte ptr [eax], al
  046787  add byte ptr [eax], al
  046789  add byte ptr [eax], al
  04678b  add byte ptr [eax], al
  04678d  add byte ptr [eax], al
  04678f  add byte ptr [eax], al
  046791  add byte ptr [eax], al
  046793  add byte ptr [eax], al
  046795  add byte ptr [eax], al
  046797  add byte ptr [eax], al
  046799  add byte ptr [eax], al
  04679b  add byte ptr [eax], al
  04679d  add byte ptr [eax], al
  04679f  add byte ptr [eax], al
  0467a1  add byte ptr [eax], al
  0467a3  add byte ptr [eax], al
  0467a5  add byte ptr [eax], al
  0467a7  add byte ptr [eax], al
  0467a9  add byte ptr [eax], al
  0467ab  add byte ptr [eax], al
  0467ad  add byte ptr [eax], al
  0467af  add byte ptr [eax], al
  0467b1  add byte ptr [eax], al
  0467b3  add byte ptr [eax], al
  0467b5  add byte ptr [eax], al
  0467b7  add byte ptr [eax], al
  0467b9  add byte ptr [eax], al
  0467bb  add byte ptr [eax], al
  0467bd  add byte ptr [eax], al
  0467bf  add byte ptr [eax], al
  0467c1  add byte ptr [eax], al
  0467c3  add byte ptr [eax], al
  0467c5  add byte ptr [eax], al
  0467c7  add byte ptr [eax], al
  0467c9  add byte ptr [eax], al
  0467cb  add byte ptr [eax], al
  0467cd  add byte ptr [eax], al
  0467cf  add byte ptr [eax], al
  0467d1  add byte ptr [eax], al
  0467d3  add byte ptr [eax], al
  0467d5  add byte ptr [eax], al
  0467d7  add byte ptr [eax], al
  0467d9  add byte ptr [eax], al
  0467db  add byte ptr [eax], al
  0467dd  add byte ptr [eax], al
  0467df  add byte ptr [eax], al
  0467e1  add byte ptr [eax], al
  0467e3  add byte ptr [eax], al
  0467e5  add byte ptr [eax], al
  0467e7  add byte ptr [eax], al
  0467e9  add byte ptr [eax], al
  0467eb  add byte ptr [eax], al
  0467ed  add byte ptr [eax], al
  0467ef  add byte ptr [eax], al
  0467f1  add byte ptr [eax], al
  0467f3  add byte ptr [eax], al
  0467f5  add byte ptr [eax], al
  0467f7  add byte ptr [eax], al
  0467f9  add byte ptr [eax], al
  0467fb  add byte ptr [eax], al
  0467fd  add byte ptr [eax], al
  0467ff  add byte ptr [eax], al
  046801  add byte ptr [eax], al
  046803  add byte ptr [eax], al
  046805  add byte ptr [eax], al
  046807  add byte ptr [eax], al
  046809  add byte ptr [eax], al
  04680b  add byte ptr [eax], al
  04680d  add byte ptr [eax], al
  04680f  add byte ptr [eax], al
  046811  add byte ptr [eax], al
  046813  add byte ptr [eax], al
  046815  add byte ptr [eax], al
  046817  add byte ptr [eax], al
  046819  add byte ptr [eax], al
  04681b  add byte ptr [eax], al
  04681d  add byte ptr [eax], al
  04681f  add byte ptr [eax], al
  046821  add byte ptr [eax], al
  046823  add byte ptr [eax], al
  046825  add byte ptr [eax], al
  046827  add byte ptr [eax], al
  046829  add byte ptr [eax], al
  04682b  add byte ptr [eax], al
  04682d  add byte ptr [eax], al
  04682f  add byte ptr [eax], al
  046831  add byte ptr [eax], al
  046833  add byte ptr [eax], al
  046835  add byte ptr [eax], al
  046837  add byte ptr [eax], al
  046839  add byte ptr [eax], al
  04683b  add byte ptr [eax], al
  04683d  add byte ptr [eax], al
  04683f  add byte ptr [eax], al
  046841  add byte ptr [eax], al
  046843  add byte ptr [eax], al
  046845  add byte ptr [eax], al
  046847  add byte ptr [eax], al
  046849  add byte ptr [eax], al
  04684b  add byte ptr [eax], al
  04684d  add byte ptr [eax], al
  04684f  add byte ptr [eax], al
  046851  add byte ptr [eax], al
  046853  add byte ptr [eax], al
  046855  add byte ptr [eax], al
  046857  add byte ptr [eax], al
  046859  add byte ptr [eax], al
  04685b  add byte ptr [eax], al
  04685d  add byte ptr [eax], al
  04685f  add byte ptr [eax], al
  046861  add byte ptr [eax], al
  046863  add byte ptr [eax], al
  046865  add byte ptr [eax], al
  046867  add byte ptr [eax], al
  046869  add byte ptr [eax], al
  04686b  add byte ptr [eax], al
  04686d  add byte ptr [eax + eax], dh
  046871  add byte ptr [ebp], dh
  046874  add byte ptr [eax], al
  046876  jbe 0x46878
L46878:
  046878  add byte ptr [eax], al
  04687a  add byte ptr [eax], al
  04687c  sar dword ptr [ebx + 0x400003d], cl
  046883  add byte ptr [eax], al
  046885  add al, 0
  046887  add byte ptr [esi], al
  046889  add dword ptr [edx], eax
  04688b  add al, 0
  04688d  add byte ptr [0x2060102], al
  046893  add al, byte ptr [edx + eax]
  046896  add al, byte ptr [esi]
  046898  add dword ptr [ecx], eax
  04689a  push es
  04689b  add al, 3
  04689d  pop es
  04689e  add al, 4
  0468a0  push es
  0468a1  add byte ptr [ecx], al
  0468a3  or byte ptr [edx], al
  0468a5  add al, byte ptr [edi]
  0468a7  add dword ptr [ebx], eax
  0468a9  or al, byte ptr [edx]
  0468ab  add dword ptr [eax], ecx
  0468ad  add al, byte ptr [edx]
  0468af  or byte ptr [ebx], al
  0468b1  add ecx, dword ptr [eax]
  0468b3  add dword ptr [ebx + ecx], eax
  0468b6  add al, byte ptr [eax + ecx]
  0468b9  add al, byte ptr [edx + ecx]
  0468bc  add al, 4
  0468be  or dword ptr [edx], eax
  0468c0  add al, 0xc
  0468c2  add eax, dword ptr [esi]
  0468c4  or al, 3
  0468c6  push es
  0468c7  push cs
  0468c8  add eax, 0x3040a05
  0468cd  or al, byte ptr [esp + eax]
  0468d0  or byte ptr [esp + eax], al
  0468d3  or al, byte ptr [esi]
  0468d5  push es
  0468d6  or eax, dword ptr [esi + eax]
  0468d9  or al, byte ptr [esi]
  0468db  add al, 9
  0468dd  push es
  0468de  add al, 0xa
  0468e0  pop es
  0468e1  pop es
  0468e2  or al, 6
  0468e4  push es
  0468e5  or al, byte ptr [esp + eax]
  0468e8  or al, 4
  0468ea  add eax, 0xd08080e
  0468ef  add al, 6
  0468f1  push cs
  0468f2  push es
  0468f3  add al, 0xc
  0468f5  push es
  0468f6  push es
  0468f7  or al, 9
  0468f9  or dword ptr [esi], ecx
  0468fb  pop es
  0468fc  or byte ptr [ebx], cl
  0468fe  add al, 8
  046900  or al, 4
  046902  or byte ptr [esi], cl
  046904  or cl, byte ptr [edx]
  046906  push cs
  046907  push es
  046908  or byte ptr [esi + eax], cl
  04690b  or byte ptr [esi], cl
  04690d  push es
  04690e  or cl, byte ptr [esi]
  046910  or ecx, dword ptr [ebx]
  046912  invd 
  046914  add eax, 0xc06080d
  046919  or byte ptr [esi], al
  04691b  push cs
  04691c  or al, 0xc
  04691e  adc byte ptr [eax], cl
  046920  or byte ptr [ebx], cl
  046922  or byte ptr [eax], cl
  046924  or al, 8
  046926  or byte ptr [esi], cl
  046928  or eax, 0xa08110d
  04692d  push cs
  04692e  or cl, byte ptr [eax]
  046930  or al, 0xa
  046932  or byte ptr [esi], cl
  046934  push cs
  046935  push cs
  046936  adc cl, byte ptr [edx]
  046938  or cl, byte ptr [esi]
  04693a  or dword ptr [edi + ecx], ecx
  04693d  or al, 0xb
  04693f  push cs
  046940  db 0x0f
  046941  movlps qword ptr [ebx], xmm0
  046944  pop es
  046945  adc byte ptr [edi + eax], al
  046948  adc byte ptr [esi], al
  04694a  pop es
  04694b  adc byte ptr [eax], dl
  04694d  adc byte ptr [esp + eax], dl
  046950  or byte ptr [edx], dl
  046952  add eax, 0xa05100a
  046957  adc dl, byte ptr [ecx]
  046959  adc dword ptr [0x6120806], edx
  04695f  or dl, byte ptr [eax]
  046961  push es
  046962  or dl, byte ptr [edx]
  046964  adc dl, byte ptr [edx]
  046966  push ss
  046967  push es
  046968  or al, 0x10
  04696a  push es
  04696b  or al, 0x12
  04696d  pop es
  04696e  push cs
  04696f  adc edx, dword ptr [ebx]
  046971  adc edx, dword ptr [edi]
  046973  or byte ptr [edi], al
  046975  adc byte ptr [edx], cl
  046977  pop es
  046978  adc byte ptr [eax], cl
  04697a  or byte ptr [eax], dl
  04697c  adc al, 0x14
  04697e  sbb byte ptr [eax], cl
  046980  or dl, byte ptr [eax]
  046982  or byte ptr [edx], cl
  046984  adc cl, byte ptr [edx]
  046986  or byte ptr [eax], dl
  046988  adc eax, 0xa0a1815
  04698d  adc byte ptr [edx], cl
  04698f  or dl, byte ptr [edx]
  046991  or dword ptr [edx], ecx
  046993  adc al, 0x16
  046995  push ss
  046996  sbb dword ptr [eax], ecx
  046998  or al, 0x12
  04699a  or byte ptr [esi], cl
  04699c  adc cl, byte ptr [edx]
  04699e  or al, 0x10
  0469a0  pop ss
  0469a1  pop ss
  0469a2  sbb cl, byte ptr [edx]
  0469a4  push cs
  0469a5  adc dword ptr [edx], ecx
  0469a7  push cs
  0469a8  adc cl, byte ptr [ecx]
  0469aa  or eax, 0x1b181815
  0469af  or al, 8
  0469b1  adc cl, byte ptr [edx + ecx]
  0469b4  adc byte ptr [edx + ecx], cl
  0469b7  adc bl, byte ptr [ecx]
  0469b9  sbb dword ptr [esi + ecx], ebx
  0469bc  or dl, byte ptr [edx]
  0469be  or eax, 0xc0c140a
  0469c3  adc byte ptr [edx], bl
  0469c5  sbb bl, byte ptr [0xc110e0c]
  0469cb  push cs
  0469cc  adc cl, byte ptr [esi]
  0469ce  or eax, 0x1e1b1b10
  0469d3  push cs
  0469d4  push cs
  0469d5  adc byte ptr [esi], cl
  0469d7  push cs
  0469d8  adc cl, byte ptr [0x1c1c150d]
  0469de  pop ds
  0469df  or dword ptr [0x1c0e0a19], ecx
  0469e5  or eax, 0x1d1d180e
  0469ea  and byte ptr [ebx], cl
  0469ec  adc byte ptr [ebx], dl
  0469ee  or dl, byte ptr [eax]
  0469f0  adc eax, 0x1e13100e
  0469f5  push ds
  0469f6  and dword ptr [eax + edx], ecx
  0469f9  push ss
  0469fa  or al, 0x12
  0469fc  adc eax, 0x1f16120c
  046a01  pop ds
  046a02  and cl, byte ptr [esi]
  046a04  adc byte ptr [esi], dl
  046a06  push cs
  046a07  adc dl, byte ptr [0x2016120e]
  046a0d  and byte ptr [edx], ah
  046a0f  or dl, byte ptr [ecx]
  046a11  sbb dword ptr [edx], ecx
  046a13  adc dword ptr [edx + ecx], ebx
  046a16  adc al, 0x19
  046a18  and dword ptr [ecx], esp
  046a1a  and ecx, dword ptr [0x110c1911]
  046a20  sbb eax, 0x2219140d
  046a25  and ah, byte ptr [ecx + 0xa101d18]
  046a2c  adc eax, 0x23120e10
  046a31  and esp, dword ptr [0x12190e11]
  046a37  db 0x0f
  046a38  sbb al, 0x14
  046a3a  push cs
  046a3b  sbb dword ptr [esp], esp
  046a3e  adc byte ptr es:[eax], dl
  046a41  adc dl, byte ptr [eax]
  046a43  adc byte ptr [eax + edx], dl
  046a46  adc byte ptr [esi], dl
  046a48  and eax, 0x12102725
  046a4d  push ss
  046a4e  adc dl, byte ptr [eax]
  046a50  adc al, 0x12
  046a52  adc byte ptr [esi], dl
  046a54  sub byte ptr es:[edx], dl
  046a58  adc dl, byte ptr [esi]
  046a5a  adc dl, byte ptr [esi + edx]
  046a5d  adc al, 0x13
  046a5f  push ss
  046a60  daa 
  046a61  daa 
  046a62  sub dword ptr [ecx], edx
  046a64  adc dword ptr [ecx], ebx
  046a66  adc dword ptr [ecx], edx
  046a68  sbb eax, 0x28191411
  046a6d  sub byte ptr [edx], ch
  046a6f  adc al, 0x11
  046a71  sbb dword ptr [0x15151d12], edx
  046a77  sbb dword ptr [ecx], ebp
  046a79  sub dword ptr [ebx], ebp
  046a7b  adc bl, byte ptr [eax]
  046a7d  sbb dl, byte ptr [ecx]
  046a7f  sbb dword ptr [0x2a1a1816], ebx
  046a85  sub ch, byte ptr [ebx]
  046a87  adc eax, 0x12181f1c
  046a8c  sbb eax, 0x2b1a1618
  046a91  sub ebp, dword ptr [esp + ebx]
  046a94  push ss
  046a95  pop ds
  046a96  sbb byte ptr [eax], bl
  046a98  sbb bl, byte ptr [ecx]
  046a9a  sbb dword ptr [0x1c2d2c2c], ebx
  046aa0  sbb bl, byte ptr [esi]
  046aa2  sbb al, 0x1c
  046aa4  pop ds
  046aa5  or eax, 0x2d2d2012
  046aaa  push cs
  046aac  adc al, 0x21
  046aae  unpckhps xmm4, xmmword ptr [ecx + 0x2e2e201a]
  046ab6  das 
  046ab7  adc edx, dword ptr [ebx]
  046ab9  and byte ptr [ecx], dl
  046abb  adc eax, 0x24151020
  046ac0  das 
  046ac1  das 
  046ac2  xor byte ptr [0x15162114], dl
  046ac8  and al, 0x11
  046aca  sbb dword ptr [ecx], esp
  046acc  xor byte ptr [eax], dh
  046ace  xor dword ptr [edx], edx
  046ad0  sbb eax, 0x20191521
  046ad5  pop ss
  046ad6  sbb esp, dword ptr [ecx + esi]
  046ad9  xor dword ptr [edx], esi
  046adb  sbb dl, byte ptr [ecx]
  046add  and byte ptr [ecx], bl
  046adf  adc eax, 0x22131c21
  046ae4  xor dh, byte ptr [edx]
  046ae6  xor ebx, dword ptr [esi + edx]
  046ae9  and al, 0x19
  046aeb  sbb dword ptr [eax], esp
  046aed  sbb byte ptr [ebx], bl
  046aef  and al, 0x33
  046af1  xor esi, dword ptr [esp + ebx]
  046af4  sbb dword ptr [ecx], esp
  046af6  sbb eax, 0x1c1d2418
  046afb  and dword ptr [esp + esi], esi
  046afe  xor eax, 0x17232013
  046b03  and byte ptr [edx], ah
  046b05  sbb dword ptr [eax], esp
  046b07  and dh, byte ptr [0x201d3535]
  046b0d  and ah, byte ptr [eax]
  046b0f  sbb esp, dword ptr [ebx]
  046b11  and byte ptr [ebx], bl
  046b13  and al, 0x36
  046b15  and byte ptr ss:[0x23202024], bl
  046b1d  and dword ptr [eax], esp
  046b1f  and al, 0x37
  046b21  aaa 
  046b22  aaa 
  046b23  adc byte ptr [esi], cl
  046b25  adc dh, byte ptr [0x232b3b2d]
  046b2b  xor dword ptr [eax], edi
  046b2d  cmp byte ptr [eax], bh
  046b2f  and eax, 0x29312b1c
  046b34  aaa 
  046b35  and dword ptr [eax], ebx
  046b37  daa 
  046b38  cmp dword ptr [ecx], edi
  046b3a  cmp dword ptr [esi], edx
  046b3c  adc bl, byte ptr [eax]
  046b3e  xor eax, 0x27313b2b
  046b43  aaa 
  046b44  cmp bh, byte ptr [edx]
  046b46  cmp bh, byte ptr [0x1c213f39]
  046b4c  and edi, dword ptr [ebx]
  046b4e  xor dword ptr [edi], edi
  046b50  cmp edi, dword ptr [ebx]
  046b52  cmp esi, dword ptr [edi]
  046b54  and eax, 0x3f2d3b3d
  046b59  cmp eax, 0x3c3c3f33
  046b5e  cmp al, 0x3b
  046b60  cmp dword ptr [ebx], edi
  046b62  xor eax, 0x2b2d3533
  046b67  sub eax, 0x1c3d3d3d
  046b6c  sbb bl, byte ptr [edx + ebx]
  046b6f  sbb byte ptr [edx], bl
  046b71  xor eax, 0x3e3e3531
  046b76  adc byte ptr ds:[esi], cl
  046b79  adc byte ptr [edi], bh
  046b7b  xor eax, 0x3f
  046b80  add byte ptr [eax], al
  046b82  add byte ptr [ecx], al
  046b84  add dword ptr [ecx], eax
  046b86  add al, byte ptr [edx]
  046b88  add al, byte ptr [ebx]
  046b8a  add eax, dword ptr [ebx]
  046b8c  add al, 4
  046b8e  add al, 5
  046b90  add eax, 0x6060605
  046b95  pop es
  046b96  pop es
  046b97  pop es
  046b98  or byte ptr [eax], cl
  046b9a  or byte ptr [ecx], cl
  046b9c  or dword ptr [ecx], ecx
  046b9e  or cl, byte ptr [edx]
  046ba0  or cl, byte ptr [ebx]
  046ba2  or ecx, dword ptr [ebx]
  046ba4  or al, 0xc
  046ba6  or al, 0xd
  046ba8  or eax, 0xe0e0e0d
  046bad  db 0x0f
  046bae  db 0x0f
  046baf  movups xmm2, xmmword ptr [eax]
  046bb2  adc byte ptr [ecx], dl
  046bb4  adc dword ptr [ecx], edx
  046bb6  adc dl, byte ptr [edx]
  046bb8  adc dl, byte ptr [ebx]
  046bba  adc edx, dword ptr [ebx]
  046bbc  adc al, 0x14
  046bbe  adc al, 0x15
  046bc0  adc eax, 0x16161615
  046bc5  pop ss
  046bc6  pop ss
  046bc7  pop ss
  046bc8  sbb byte ptr [eax], bl
  046bca  sbb byte ptr [ecx], bl
  046bcc  sbb dword ptr [ecx], ebx
  046bce  sbb bl, byte ptr [edx]
  046bd0  sbb bl, byte ptr [ebx]
  046bd2  sbb ebx, dword ptr [ebx]
  046bd4  sbb al, 0x1c
  046bd6  sbb al, 0x1d
  046bd8  sbb eax, 0x1e1e1e1d
  046bdd  pop ds
  046bde  pop ds
  046bdf  pop ds
  046be0  and byte ptr [eax], ah
  046be2  and byte ptr [ecx], ah
  046be4  and dword ptr [ecx], esp
  046be6  and ah, byte ptr [edx]
  046be8  and ah, byte ptr [ebx]
  046bea  and esp, dword ptr [ebx]
  046bec  and al, 0x24
  046bee  and al, 0x25
  046bf0  and eax, 0x26262625
  046bf5  daa 
  046bf6  daa 
  046bf7  daa 
  046bf8  sub byte ptr [eax], ch
  046bfa  sub byte ptr [ecx], ch
  046bfc  sub dword ptr [ecx], ebp
  046bfe  sub ch, byte ptr [edx]
  046c00  sub ch, byte ptr [ebx]
  046c02  sub ebp, dword ptr [ebx]
  046c04  sub al, 0x2c
  046c06  sub al, 0x2d
  046c08  sub eax, 0x2e2e2e2d
  046c0d  das 
  046c0e  das 
  046c0f  das 
  046c10  xor byte ptr [eax], dh
  046c12  xor byte ptr [ecx], dh
  046c14  xor dword ptr [ecx], esi
  046c16  xor dh, byte ptr [edx]
  046c18  xor dh, byte ptr [ebx]
  046c1a  xor esi, dword ptr [ebx]
  046c1c  xor al, 0x34
  046c1e  xor al, 0x35
  046c20  xor eax, 0x36363635
  046c25  aaa 
  046c26  aaa 
  046c27  aaa 
  046c28  cmp byte ptr [eax], bh
  046c2a  cmp byte ptr [ecx], bh
  046c2c  cmp dword ptr [ecx], edi
  046c2e  cmp bh, byte ptr [edx]
  046c30  cmp bh, byte ptr [ebx]
  046c32  cmp edi, dword ptr [ebx]
  046c34  cmp al, 0x3c
  046c36  cmp al, 0x3d
  046c38  cmp eax, 0x3e3e3e3d
  046c3d  aas 
  046c3e  aas 
  046c3f  aas 
  046c40  inc eax
  046c41  inc eax
  046c42  inc eax
  046c43  inc ecx
  046c44  inc ecx
  046c45  inc ecx
  046c46  inc edx
  046c47  inc edx
  046c48  inc edx
  046c49  inc ebx
  046c4a  inc ebx
  046c4b  inc ebx
  046c4c  inc esp
  046c4d  inc esp
  046c4e  inc esp
  046c4f  inc ebp
  046c50  inc ebp
  046c51  inc ebp
  046c52  inc esi
  046c53  inc esi
  046c54  inc esi
  046c55  inc edi
  046c56  inc edi
  046c57  inc edi
  046c58  dec eax
  046c59  dec eax
  046c5a  dec eax
  046c5b  dec ecx
  046c5c  dec ecx
  046c5d  dec ecx
  046c5e  dec edx
  046c5f  dec edx
  046c60  dec edx
  046c61  dec ebx
  046c62  dec ebx
  046c63  dec ebx
  046c64  dec esp
  046c65  dec esp
  046c66  dec esp
  046c67  dec ebp
  046c68  dec ebp
  046c69  dec ebp
  046c6a  dec esi
  046c6b  dec esi
  046c6c  dec esi
  046c6d  dec edi
  046c6e  dec edi
  046c6f  dec edi
  046c70  push eax
  046c71  push eax
  046c72  push eax
  046c73  push ecx
  046c74  push ecx
  046c75  push ecx
  046c76  push edx
  046c77  push edx
  046c78  push edx
  046c79  push ebx
  046c7a  push ebx
  046c7b  push ebx
  046c7c  push esp
  046c7d  push esp
  046c7e  push esp
  046c7f  push ebp
  046c80  push ebp
  046c81  push ebp
  046c82  push esi
  046c83  push esi
  046c84  push esi
  046c85  push edi
  046c86  push edi
  046c87  push edi
  046c88  pop eax
  046c89  pop eax
  046c8a  pop eax
  046c8b  pop ecx
  046c8c  pop ecx
  046c8d  pop ecx
  046c8e  pop edx
  046c8f  pop edx
  046c90  pop edx
  046c91  pop ebx
  046c92  pop ebx
  046c93  pop ebx
  046c94  pop esp
  046c95  pop esp
  046c96  pop esp
  046c97  pop ebp
  046c98  pop ebp
  046c99  pop ebp
  046c9a  pop esi
  046c9b  pop esi
  046c9c  pop esi
  046c9d  pop edi
  046c9e  pop edi
  046c9f  pop edi
  046ca0  pushal 
  046ca1  pushal 
  046ca2  pushal 
  046ca3  popal 
  046ca4  popal 
  046ca5  popal 
  046ca6  bound esp, qword ptr [edx + 0x62]
  046ca9  arpl word ptr [ebx + 0x63], sp
  046cac  push 0x6868
  046cbb  imul ebp, dword ptr [ecx + 0x69], 0x6b6a6a6a
  046cc2  imul ebp, dword ptr [ebx + 0x6c], 0x6c
  046cc6  insb byte ptr es:[edi], dx
  046cc7  insd dword ptr es:[edi], dx
  046cc8  insd dword ptr es:[edi], dx
  046cc9  insd dword ptr es:[edi], dx
  046cca  outsb dx, byte ptr [esi]
  046ccb  outsb dx, byte ptr [esi]
  046ccc  outsb dx, byte ptr [esi]
  046ccd  outsd dx, dword ptr [esi]
  046cce  outsd dx, dword ptr [esi]
  046ccf  outsd dx, dword ptr [esi]
  046cd0  jo 0x46d42
  046cd2  jo 0x46d45
  046cd4  jno 0x46d47
  046cd6  jb 0x46d4a
  046cd8  jb 0x46d4d
  046cda  jae 0x46d4f
  046cdc  je 0x46d52
  046cde  je 0x46d55
  046ce0  jne 0x46d57
  046ce2  jbe 0x46d5a
  046ce4  jbe 0x46d5d
  046ce6  ja 0x46d5f
  046ce8  js 0x46d62
  046cea  js 0x46d65
  046cec  jns 0x46d67
  046cee  jp 0x46d6a
  046cf0  jp 0x46d6d
  046cf2  jnp 0x46d6f
  046cf4  jl 0x46d72
  046cf6  jl 0x46d75
  046cf8  jge 0x46d77
  046cfa  jle 0x46d7a
  046cfc  jle 0x46d7d
  046cfe  jg 0x46d7f
  046d00  add byte ptr [eax - 0x7e7e7e80], 0x82
  046d07  add byte ptr [edx - 0x7b7c7c7d], 0x84
  046d0e  test byte ptr [ebp - 0x79797a7b], al
  046d14  xchg byte ptr [edi - 0x77777879], al
  046d1a  mov byte ptr [ecx - 0x75757677], cl
  046d20  mov cl, byte ptr [ebx - 0x73737475]
  046d26  mov word ptr [ebp - 0x71717273], cs
  046d2c  mov cs, word ptr [edi - 0x6f6f7071]
  046d32  nop 
  046d33  xchg ecx, eax
  046d34  xchg ecx, eax
  046d35  xchg ecx, eax
  046d36  xchg edx, eax
  046d37  xchg edx, eax
  046d38  xchg edx, eax
  046d39  xchg ebx, eax
  046d3a  xchg ebx, eax
  046d3b  xchg ebx, eax
  046d3c  xchg esp, eax
  046d3d  xchg esp, eax
  046d3e  xchg esp, eax
  046d3f  xchg ebp, eax
  046d40  xchg ebp, eax
  046d41  xchg ebp, eax
L46d42:
  046d42  xchg esi, eax
  046d43  xchg esi, eax
  046d44  xchg esi, eax
L46d45:
  046d45  xchg edi, eax
  046d46  xchg edi, eax
L46d47:
  046d47  xchg edi, eax
  046d48  cwde 
  046d49  cwde 
L46d4a:
  046d4a  cwde 
  046d4b  cdq 
  046d4c  cdq 
L46d4d:
  046d4d  cdq 
  046d4e  lcall 0x9c9b, 0x9b9b9a9a
L46d55:
  046d55  pushfd 
  046d56  pushfd 
L46d57:
  046d57  popfd 
  046d58  popfd 
  046d59  popfd 
L46d5a:
  046d5a  sahf 
  046d5b  sahf 
  046d5c  sahf 
L46d5d:
  046d5d  lahf 
  046d5e  lahf 
L46d5f:
  046d5f  lahf 
  046d60  mov al, byte ptr [0xa1a1a0a0]
L46d65:
  046d65  mov eax, dword ptr [0xa3a2a2a2]
L46d6a:
  046d6a  mov dword ptr [0xa4a4a4a3], eax
L46d6f:
  046d6f  movsd dword ptr es:[edi], dword ptr [esi]
  046d70  movsd dword ptr es:[edi], dword ptr [esi]
  046d71  movsd dword ptr es:[edi], dword ptr [esi]
L46d72:
  046d72  cmpsb byte ptr [esi], byte ptr es:[edi]
  046d73  cmpsb byte ptr [esi], byte ptr es:[edi]
  046d74  cmpsb byte ptr [esi], byte ptr es:[edi]
L46d75:
  046d75  cmpsd dword ptr [esi], dword ptr es:[edi]
  046d76  cmpsd dword ptr [esi], dword ptr es:[edi]
L46d77:
  046d77  cmpsd dword ptr [esi], dword ptr es:[edi]
  046d78  test al, 0xa8
L46d7a:
  046d7a  test al, 0xa9
  046d7c  test eax, 0xaaaaaaa9
  046d81  stosd dword ptr es:[edi], eax
  046d82  stosd dword ptr es:[edi], eax
  046d83  stosd dword ptr es:[edi], eax
  046d84  lodsb al, byte ptr [esi]
  046d85  lodsb al, byte ptr [esi]
  046d86  lodsb al, byte ptr [esi]
  046d87  lodsd eax, dword ptr [esi]
  046d88  lodsd eax, dword ptr [esi]
  046d89  lodsd eax, dword ptr [esi]
  046d8a  scasb al, byte ptr es:[edi]
  046d8b  scasb al, byte ptr es:[edi]
  046d8c  scasb al, byte ptr es:[edi]
  046d8d  scasd eax, dword ptr es:[edi]
  046d8e  scasd eax, dword ptr es:[edi]
  046d8f  scasd eax, dword ptr es:[edi]
  046d90  mov al, 0xb0
  046d92  mov al, 0xb1
  046d94  mov cl, 0xb1
  046d96  mov dl, 0xb2
  046d98  mov dl, 0xb3
  046d9a  mov bl, 0xb3
  046d9c  mov ah, 0xb4
  046d9e  mov ah, 0xb5
  046da0  mov ch, 0xb5
  046da2  mov dh, 0xb6
  046da4  mov dh, 0xb7
  046da6  mov bh, 0xb7
  046da8  mov eax, 0xb9b9b8b8
  046dad  mov ecx, 0xbbbababa
  046db2  mov ebx, 0xbcbcbcbb
  046db7  mov ebp, 0xbebebdbd
  046dbc  mov esi, 0xc0bfbfbf
  046dc1  rol al, 0xc1
  046dc4  rol ecx, 0xc2
  046dc7  ret 0xc3c2
  046dca  ret 
  046dcb  ret 
  046dcc  db 0xc4
  046dcd  db 0xc4
  046dce  db 0xc4
  046dcf  db 0xc5
  046dd0  vshufpd ymm0, ymm7, ymm6, 0xc6
  046dd5  mov edi, 0xc8c8c8c7
  046ddb  leave 
  046ddc  leave 
  046ddd  leave 
  046dde  retf 0xcaca
  046de1  retf 
  046de2  retf 
  046de3  retf 
  046de4  int3 
  046de5  int3 
  046de6  int3 
  046de7  int 0xcd
  046de9  int 0xce
  046deb  into 
  046dec  into 
  046ded  iretd 
  046dee  iretd 
  046def  iretd 
  046df0  rcl al, 1
  046df2  rcl cl, 1
  046df4  rcl ecx, 1
  046df6  rcl dl, cl
  046df8  rcl bl, cl
  046dfa  rcl ebx, cl
  046dfc  aam 0xd4
  046dfe  aam 0xd5
  046e00  aad 0xd5
  046e02  salc 
L46e03:
  046e03  salc 
  046e04  salc 
  046e05  xlatb 
L46e06:
  046e06  xlatb 
  046e07  xlatb 
  046e08  fcomp st(0)
  046e0a  fcomp st(1)
  046e0c  fstpnce st(1), st(0)
L46e0e:
  046e0e  fcmovu st(0), st(2)
  046e10  fcmovu st(0), st(3)
  046e12  fcmovnu st(0), st(3)
  046e14  db 0xdc
  046e15  db 0xdc
  046e16  db 0xdc
  046e17  fstp st(5)
  046e19  fstp st(6)
  046e1b  db 0xde
  046e1c  db 0xde
  046e1d  db 0xdf
  046e1e  db 0xdf
  046e1f  fnstsw ax
  046e21  loopne 0x46e03
  046e23  loope 0x46e06
  046e25  loope 0x46e09
  046e27  loop 0x46e0b
  046e29  jecxz 0x46e0e
  046e2b  jecxz 0x46e11
  046e2d  in al, 0xe4
  046e2f  in eax, 0xe5
  046e31  in eax, 0xe6
  046e33  out 0xe6, al
  046e35  out 0xe7, eax
  046e37  out 0xe8, eax
  046e39  call 0xe9ee5826
  046e3e  ljmp 0xeceb:0xebebeaea
  046e45  in al, dx
  046e46  in al, dx
  046e47  in eax, dx
  046e48  in eax, dx
  046e49  in eax, dx
  046e4a  out dx, al
  046e4b  out dx, al
  046e4c  out dx, al
  046e4d  out dx, eax
  046e4e  out dx, eax
  046e4f  out dx, eax
  046e50  db 0xf0
  046e51  db 0xf0
  046e52  db 0xf0
  046e53  int1 
  046e54  int1 
  046e55  int1 
  046e56  hlt 
  046e5d  hlt 
  046e5e  hlt 
  046e5f  cmc 
  046e60  cmc 
  046e61  cmc 
  046e62  div dh
  046e64  div bh
  046e66  div edi
  046e68  clc 
  046e69  clc 
  046e6a  clc 
  046e6b  stc 
  046e6c  stc 
  046e6d  stc 
  046e6e  cli 
  046e6f  cli 
  046e70  cli 
  046e71  sti 
  046e72  sti 
  046e73  sti 
  046e74  cld 
  046e75  cld 
  046e76  cld 
  046e77  std 
  046e78  std 
  046e79  std 
  046e7a  db 0xfe
  046e7b  db 0xfe
  046e7c  db 0xfe
  046e7d  db 0xff
  046e7e  db 0xff
  046e7f  inc dword ptr [eax]
  046e81  add byte ptr [eax], al
  046e83  add byte ptr [eax], al
  046e85  add byte ptr [eax], al
  046e87  add byte ptr [eax], al
  046e89  add byte ptr [eax], al
  046e8b  add byte ptr [eax], al
  046e8d  add byte ptr [eax], al
  046e8f  add byte ptr [eax], al
  046e91  add byte ptr [eax], al
  046e93  add byte ptr [eax], al
  046e95  add byte ptr [eax], al
  046e97  add byte ptr [eax], al
  046e99  add byte ptr [eax], al
  046e9b  add byte ptr [eax], al
  046e9d  add byte ptr [eax], al
  046e9f  add byte ptr [eax], al
  046ea1  add byte ptr [eax], al
  046ea3  add byte ptr [eax], al
  046ea5  add byte ptr [eax], al
  046ea7  add byte ptr [eax], al
  046ea9  add byte ptr [eax], al
  046eab  add byte ptr [eax], al
  046ead  add byte ptr [eax], al
  046eaf  add byte ptr [eax], al
  046eb1  add byte ptr [eax], al
  046eb3  add byte ptr [eax], al
  046eb5  add byte ptr [eax], al
  046eb7  add byte ptr [eax], al
  046eb9  add byte ptr [eax], al
  046ebb  add byte ptr [eax], al
  046ebd  add byte ptr [eax], al
  046ebf  add byte ptr [eax], al
  046ec1  add byte ptr [eax], al
  046ec3  add byte ptr [eax], al
  046ec5  add byte ptr [eax], al
  046ec7  add byte ptr [eax], al
  046ec9  add byte ptr [eax], al
  046ecb  add byte ptr [eax], al
  046ecd  add byte ptr [eax], al
  046ecf  add byte ptr [eax], al
  046ed1  add byte ptr [eax], al
  046ed3  add byte ptr [eax], al
  046ed5  add byte ptr [eax], al
  046ed7  add byte ptr [eax], al
  046ed9  add byte ptr [eax], al
  046edb  add byte ptr [eax], al
  046edd  add byte ptr [eax], al
  046edf  add byte ptr [eax], al
  046ee1  add byte ptr [eax], al
  046ee3  add byte ptr [eax], al
  046ee5  add byte ptr [eax], al
  046ee7  add byte ptr [eax], al
  046ee9  add byte ptr [eax], al
  046eeb  add byte ptr [eax], al
  046eed  add byte ptr [eax], al
  046eef  add byte ptr [eax], al
  046ef1  add byte ptr [eax], al
  046ef3  add byte ptr [eax], al
  046ef5  add byte ptr [eax], al
  046ef7  add byte ptr [eax], al
  046ef9  add byte ptr [eax], al
  046efb  add byte ptr [eax], al
  046efd  add byte ptr [eax], al
  046eff  add byte ptr [eax], al
  046f01  add byte ptr [eax], al
  046f03  add byte ptr [eax], al
  046f05  add byte ptr [eax], al
  046f07  add byte ptr [eax], al
  046f09  add byte ptr [eax], al
  046f0b  add byte ptr [eax], al
  046f0d  add byte ptr [eax], al
  046f0f  add byte ptr [eax], al
  046f11  add byte ptr [eax], al
  046f13  add byte ptr [eax], al
  046f15  add byte ptr [eax], al
  046f17  add byte ptr [eax], al
  046f19  add byte ptr [eax], al
  046f1b  add byte ptr [eax], al
  046f1d  add byte ptr [eax], al
  046f1f  add byte ptr [eax], al
  046f21  add byte ptr [eax], al
  046f23  add byte ptr [eax], al
  046f25  add byte ptr [eax], al
  046f27  add byte ptr [eax], al
  046f29  add byte ptr [eax], al
  046f2b  add byte ptr [eax], al
  046f2d  add byte ptr [eax], al
  046f2f  add byte ptr [eax], al
  046f31  add byte ptr [eax], al
  046f33  add byte ptr [eax], al
  046f35  add byte ptr [eax], al
  046f37  add byte ptr [eax], al
  046f39  add byte ptr [eax], al
  046f3b  add byte ptr [eax], al
  046f3d  add byte ptr [eax], al
  046f3f  add byte ptr [eax], al
  046f41  add byte ptr [eax], al
  046f43  add byte ptr [eax], al
  046f45  add byte ptr [eax], al
  046f47  add byte ptr [eax], al
  046f49  add byte ptr [eax], al
  046f4b  add byte ptr [eax], al
  046f4d  add byte ptr [eax], al
  046f4f  add byte ptr [eax], al
  046f51  add byte ptr [eax], al
  046f53  add byte ptr [eax], al
  046f55  add byte ptr [eax], al
  046f57  add byte ptr [eax], al
  046f59  add byte ptr [eax], al
  046f5b  add byte ptr [eax], al
  046f5d  add byte ptr [eax], al
  046f5f  add byte ptr [eax], al
  046f61  add byte ptr [eax], al
  046f63  add byte ptr [eax], al
  046f65  add byte ptr [eax], al
  046f67  add byte ptr [eax], al
  046f69  add byte ptr [eax], al
  046f6b  add byte ptr [eax], al
  046f6d  add byte ptr [eax], al
  046f6f  add byte ptr [eax], al
  046f71  add byte ptr [eax], al
  046f73  add byte ptr [eax], al
  046f75  add byte ptr [eax], al
  046f77  add byte ptr [eax], al
  046f79  add byte ptr [eax], al
  046f7b  add byte ptr [eax], al
  046f7d  add byte ptr [eax], al
  046f7f  add byte ptr [eax], al
  046f81  add byte ptr [eax], al
  046f83  add byte ptr [eax], al
  046f85  add byte ptr [eax], al
  046f87  add byte ptr [eax], al
  046f89  add byte ptr [eax], al
  046f8b  add byte ptr [eax], al
  046f8d  add byte ptr [eax], al
  046f8f  add byte ptr [eax], al
  046f91  add byte ptr [eax], al
  046f93  add byte ptr [eax], al
  046f95  add byte ptr [eax], al
  046f97  add byte ptr [eax], al
  046f99  add byte ptr [eax], al
  046f9b  add byte ptr [eax], al
  046f9d  add byte ptr [eax], al
  046f9f  add byte ptr [eax], al
  046fa1  add byte ptr [eax], al
  046fa3  add byte ptr [eax], al
  046fa5  add byte ptr [eax], al
  046fa7  add byte ptr [eax], al
  046fa9  add byte ptr [eax], al
  046fab  add byte ptr [eax], al
  046fad  add byte ptr [eax], al
  046faf  add byte ptr [eax], al
  046fb1  add byte ptr [eax], al
  046fb3  add byte ptr [eax], al
  046fb5  add byte ptr [eax], al
  046fb7  add byte ptr [eax], al
  046fb9  add byte ptr [eax], al
  046fbb  add byte ptr [eax], al
  046fbd  add byte ptr [eax], al
  046fbf  add byte ptr [eax], al
  046fc1  add byte ptr [eax], al
  046fc3  add byte ptr [eax], al
  046fc5  add byte ptr [eax], al
  046fc7  add byte ptr [eax], al
  046fc9  add byte ptr [eax], al
  046fcb  add byte ptr [eax], al
  046fcd  add byte ptr [eax], al
  046fcf  add byte ptr [eax], al
  046fd1  add byte ptr [eax], al
  046fd3  add byte ptr [eax], al
  046fd5  add byte ptr [eax], al
  046fd7  add byte ptr [eax], al
  046fd9  add byte ptr [eax], al
  046fdb  add byte ptr [eax], al
  046fdd  add byte ptr [eax], al
  046fdf  add byte ptr [eax], al
  046fe1  add byte ptr [eax], al
  046fe3  add byte ptr [eax], al
  046fe5  add byte ptr [eax], al
  046fe7  add byte ptr [eax], al
  046fe9  add byte ptr [eax], al
  046feb  add byte ptr [eax], al
  046fed  add byte ptr [eax], al
  046fef  add byte ptr [eax], al
  046ff1  add byte ptr [eax], al
  046ff3  add byte ptr [eax], al
  046ff5  add byte ptr [eax], al
  046ff7  add byte ptr [eax], al
  046ff9  add byte ptr [eax], al
  046ffb  add byte ptr [eax], al
  046ffd  add byte ptr [eax], al
  046fff  add byte ptr [eax], al
  047001  add byte ptr [eax], al
  047003  add byte ptr [eax], al
  047005  add byte ptr [eax], al
  047007  add byte ptr [eax], al
  047009  add byte ptr [eax], al
  04700b  add byte ptr [eax], al
  04700d  add byte ptr [eax], al
  04700f  add byte ptr [eax], al
  047011  add byte ptr [eax], al
  047013  add byte ptr [eax], al
  047015  add byte ptr [eax], al
  047017  add byte ptr [eax], al
  047019  add byte ptr [eax], al
  04701b  add byte ptr [eax], al
  04701d  add byte ptr [eax], al
  04701f  add byte ptr [eax], al
  047021  add byte ptr [eax], al
  047023  add byte ptr [eax], al
  047025  add byte ptr [eax], al
  047027  add byte ptr [eax], al
  047029  add byte ptr [eax], al
  04702b  add byte ptr [eax], al
  04702d  add byte ptr [eax], al
  04702f  add byte ptr [eax], al
  047031  add byte ptr [eax], al
  047033  add byte ptr [eax], al
  047035  add byte ptr [eax], al
  047037  add byte ptr [eax], al
  047039  add byte ptr [eax], al
  04703b  add byte ptr [eax], al
  04703d  add byte ptr [eax], al
  04703f  add byte ptr [eax], al
  047041  add byte ptr [eax], al
  047043  add byte ptr [eax], al
  047045  add byte ptr [eax], al
  047047  add byte ptr [eax], al
  047049  add byte ptr [eax], al
  04704b  add byte ptr [eax], al
  04704d  add byte ptr [eax], al
  04704f  add byte ptr [eax], al
  047051  add byte ptr [eax], al
  047053  add byte ptr [eax], al
  047055  add byte ptr [eax], al
  047057  add byte ptr [eax], al
  047059  add byte ptr [eax], al
  04705b  add byte ptr [eax], al
  04705d  add byte ptr [eax], al
  04705f  add byte ptr [eax], al
  047061  add byte ptr [eax], al
  047063  add byte ptr [eax], al
  047065  add byte ptr [eax], al
  047067  add byte ptr [eax], al
  047069  add byte ptr [eax], al
  04706b  add byte ptr [eax], al
  04706d  add byte ptr [eax], al
  04706f  add byte ptr [eax], al
  047071  add byte ptr [eax], al
  047073  add byte ptr [eax], al
  047075  add byte ptr [eax], al
  047077  add byte ptr [eax], al
  047079  add byte ptr [eax], al
  04707b  add byte ptr [eax], al
  04707d  add byte ptr [eax], al
  04707f  add byte ptr [eax], al
  047081  add byte ptr [eax], al
  047083  add byte ptr [eax], al
  047085  add byte ptr [eax], al
  047087  add byte ptr [eax], al
  047089  add byte ptr [eax], al
  04708b  add byte ptr [eax], al
  04708d  add byte ptr [eax], al
  04708f  add byte ptr [eax], al
  047091  add byte ptr [eax], al
  047093  add byte ptr [eax], al
  047095  add byte ptr [eax], al
  047097  add byte ptr [eax], al
  047099  add byte ptr [eax], al
  04709b  add byte ptr [eax], al
  04709d  add byte ptr [eax], al
  04709f  add byte ptr [eax], al
  0470a1  add byte ptr [eax], al
  0470a3  add byte ptr [eax], al
  0470a5  add byte ptr [eax], al
  0470a7  add byte ptr [eax], al
  0470a9  add byte ptr [eax], al
  0470ab  add byte ptr [eax], al
  0470ad  add byte ptr [eax], al
  0470af  add byte ptr [eax], al
  0470b1  add byte ptr [eax], al
  0470b3  add byte ptr [eax], al
  0470b5  add byte ptr [eax], al
  0470b7  add byte ptr [eax], al
  0470b9  add byte ptr [eax], al
  0470bb  add byte ptr [eax], al
  0470bd  add byte ptr [eax], al
  0470bf  add byte ptr [eax], al
  0470c1  add byte ptr [eax], al
  0470c3  add byte ptr [eax], al
  0470c5  add byte ptr [eax], al
  0470c7  add byte ptr [eax], al
  0470c9  add byte ptr [eax], al
  0470cb  add byte ptr [eax], al
  0470cd  add byte ptr [eax], al
  0470cf  add byte ptr [eax], al
  0470d1  add byte ptr [eax], al
  0470d3  add byte ptr [eax], al
  0470d5  add byte ptr [eax], al
  0470d7  add byte ptr [eax], al
  0470d9  add byte ptr [eax], al
  0470db  add byte ptr [eax], al
  0470dd  add byte ptr [eax], al
  0470df  add byte ptr [eax], al
  0470e1  add byte ptr [eax], al
  0470e3  add byte ptr [eax], al
  0470e5  add byte ptr [eax], al
  0470e7  add byte ptr [eax], al
  0470e9  add byte ptr [eax], al
  0470eb  add byte ptr [eax], al
  0470ed  add byte ptr [eax], al
  0470ef  add byte ptr [eax], al
  0470f1  add byte ptr [eax], al
  0470f3  add byte ptr [eax], al
  0470f5  add byte ptr [eax], al
  0470f7  add byte ptr [eax], al
  0470f9  add byte ptr [eax], al
  0470fb  add byte ptr [eax], al
  0470fd  add byte ptr [eax], al
  0470ff  add byte ptr [eax], al
  047101  add byte ptr [eax], al
  047103  add byte ptr [eax], al
  047105  add byte ptr [eax], al
  047107  add byte ptr [eax], al
  047109  add byte ptr [eax], al
  04710b  add byte ptr [eax], al
  04710d  add byte ptr [eax], al
  04710f  add byte ptr [eax], al
  047111  add byte ptr [eax], al
  047113  add byte ptr [eax], al
  047115  add byte ptr [eax], al
  047117  add byte ptr [eax], al
  047119  add byte ptr [eax], al
  04711b  add byte ptr [eax], al
  04711d  add byte ptr [eax], al
  04711f  add byte ptr [eax], al
  047121  add byte ptr [eax], al
  047123  add byte ptr [eax], al
  047125  add byte ptr [eax], al
  047127  add byte ptr [eax], al
  047129  add byte ptr [eax], al
  04712b  add byte ptr [eax], al
  04712d  add byte ptr [eax], al
  04712f  add byte ptr [eax], al
  047131  add byte ptr [eax], al
  047133  add byte ptr [eax], al
  047135  add byte ptr [eax], al
  047137  add byte ptr [eax], al
  047139  add byte ptr [eax], al
  04713b  add byte ptr [eax], al
  04713d  add byte ptr [eax], al
  04713f  add byte ptr [eax], al
  047141  add byte ptr [eax], al
  047143  add byte ptr [eax], al
  047145  add byte ptr [eax], al
  047147  add byte ptr [eax], al
  047149  add byte ptr [eax], al
  04714b  add byte ptr [eax], al
  04714d  add byte ptr [eax], al
  04714f  add byte ptr [eax], al
  047151  add byte ptr [eax], al
  047153  add byte ptr [eax], al
  047155  add byte ptr [eax], al
  047157  add byte ptr [eax], al
  047159  add byte ptr [eax], al
  04715b  add byte ptr [eax], al
  04715d  add byte ptr [eax], al
  04715f  add byte ptr [eax], al
  047161  add byte ptr [eax], al
L47163:
  047163  add byte ptr [eax], al
  047165  add byte ptr [eax], al
  047167  add byte ptr [eax], al
  047169  add byte ptr [eax], al
  04716b  add byte ptr [eax], al
  04716d  add byte ptr [eax], al
  04716f  add byte ptr [eax], al
  047171  add byte ptr [eax], al
  047173  add byte ptr [eax], al
  047175  add byte ptr [eax], al
  047177  add byte ptr [eax], al
  047179  add byte ptr [eax], al
  04717b  add byte ptr [eax], al
  04717d  add byte ptr [eax], al
  04717f  add byte ptr [eax], al
  047181  add byte ptr [eax], al
  047183  add byte ptr [eax], al
  047185  add byte ptr [eax], al
  047187  add byte ptr [ecx + ebp*4], ah
  04718a  jns 0x471c6
  04718c  mov al, 0xf
  04718e  mov eax, dword ptr [0x35]
  047193  add byte ptr [ebx], cl
  047195  mov dword ptr [0xc7c50002], eax
  04719a  fidivr dword ptr [ebp - 0x41cecbc6]
  0471a0  jbe 0x47148
  0471a2  jp 0x47163
  0471a4  cli 
  0471a6  test dword ptr [ecx + 0x35], eax
  0471a9  or al, 0x42
  0471ac  add bh, dh
  0471ae  cmpsb byte ptr [esi], byte ptr es:[edi]
  0471af  sal byte ptr [eax], 0x69
  0471b2  mov dword ptr [ecx - 0x3e], eax
  0471b5  mov ebx, 0x780c420f
  0471ba  lodsd eax, dword ptr [esi]
  0471bb  rol byte ptr [eax], 0
  0471be  and al, byte ptr [ebx + 0x32]
  0471c1  xchg ebp, eax
  0471c2  insd dword ptr es:[edi], dx
  0471c3  mov ebp, 0x3b0a6913
  0471c8  test byte ptr [ecx - 0x5a3b4081], dl
  0471ce  mov esp, 0x1e1ec7c0
  0471d3  inc edx
  0471d4  les esp, ptr [esp + ecx*8]
  0471d7  mov esi, 0xc0c26050
  0471dc  daa 
  0471dd  push cs
  0471de  and al, byte ptr [edx - 0x5d]
  0471e1  rol ch, 0xbe
  0471e4  add byte ptr [eax], al
  0471e6  and al, byte ptr [ebx - 0x21]
  0471e9  aaa 
  0471ea  sbb al, 0x3c
  0471ec  popfd 
  0471ed  mov bl, 0x2f
  0471ef  mov esi, 0xbf7c310d
  0471f4  or al, 8
  0471f6  mov cl, 1
  0471f9  db 0x8f
  0471fa  out dx, eax
  0471fb  inc ecx
  0471fc  movsb byte ptr es:[edi], byte ptr [esi]
  0471fd  cld 
  0471fe  dec ebx
  0471ff  sar ah, 0x5e
  047202  retf 
  047203  shl dword ptr [esi], 0x6b
  047206  cmc 
  047207  inc ecx
  047208  enter 0x5490, -0x40
  04720c  add byte ptr [eax], al
  04720e  and al, byte ptr [ebx - 0x27]
  047211  push ebp
  047212  test byte ptr [ebp + 0x3d3b5ef7], bh
  047218  dec ebx
  047219  xor bh, byte ptr [edi - 0x41]
  04721c  inc eax
  04721d  and eax, 0xae7cc211
  047222  pop es
  047223  inc ecx
  047224  shr word ptr [eax + 0x1514263e], 0xc2
  04722c  and al, 0x5c
  04722e  or al, byte ptr [ecx + 0x7c]
  047231  push edx
  047232  int 0x3e
  047234  add byte ptr [eax], al
  047236  and al, byte ptr [ebx + 0x26]
  047239  push edi
  04723a  test byte ptr [ebp + 0x3d3b5ea7], bh
  047240  dec eax
  047241  xor bh, byte ptr [edi - 0x41]
  047244  daa 
  047246  salc 
  047247  rcr dword ptr [ecx], 0x1d
  04724a  mov ebx, 0x71dd40c0
  04724f  mov edi, 0xc1dd9367
  047254  mov edx, 0x22c0c6ff
  047259  salc 
  04725a  mov di, 0
  04725e  and al, byte ptr [ebx + 0x18]
  047261  mov ah, 0xf3
  047263  mov esi, 0xbe011bf6
  047268  mov al, dl
  04726a  pop esi
  04726b  mov edi, 0xc158c8d8
  047270  out dx, eax
  047271  push ebx
  047272  xchg esi, eax
  047273  shl dword ptr [edx + 0x783e8158], 0x4a
  04727a  arpl cx, ax
  04727c  fild qword ptr [edi]
  04727e  wait 
  04727f  shr eax, 0x20
  047282  xor edi, dword ptr [edi]
  047284  add byte ptr [eax], al
  047286  and al, byte ptr [ebx - 0x32]
  047289  db 0xc7
L4728a:
  04728a  mov ebp, 0xbe585fea
  047290  ja 0x47281
  047292  jns 0x47253
  047294  jp 0x4728a
  047296  stosb byte ptr es:[edi], al
  047297  ror byte ptr [ebx + 0xc19554], 0x43
  04729e  dec ecx
  04729f  ror byte ptr [ebx - 0x53f4dc4], 0xec
  0472a6  pushfd 
  0472a7  sal dword ptr [esi + 0x6a], 0x3b
  0472ab  rol byte ptr [eax], 0
  0472ae  in al, dx
  0472af  inc edx
  0472b0  fld st(7)
  0472b2  mov ebp, 0xbe585ff0
  0472b8  jbe 0x472a9
  0472ba  jns 0x4727b
  0472bc  push ss
  0472bd  mov cl, 0x35
  0472bf  inc eax
  0472c0  mov word ptr [eax + ecx - 0x2f6a753f], fs
  0472c7  mov edi, 0x4047e926
  0472cc  pop edx
  0472cd  lodsd eax, dword ptr [esi]
  0472ce  pop ss
  0472cf  rcl dword ptr [eax + 0xbfb84a], 0
  0472d6  in al, dx
  0472d7  inc edx
  0472d8  imul eax, dword ptr [ecx + ecx*4 + 0x3e], 0x41
  0472dd  pop esi
  0472de  adc byte ptr [esi], bh
  0472e0  adc bh, cl
  0472e2  jae 0x472a3
  0472e4  sub eax, 0x62419f8c
  0472e9  popfd 
  0472ea  ror word ptr [edi - 0x13f8ea8], 0x79
  0472f2  movsd dword ptr es:[edi], dword ptr [esi]
  0472f3  inc ecx
  0472f4  int3 
  0472f5  xor eax, 0x45b4c171
  0472fa  push -0x40
  0472fc  add byte ptr [eax], al
  0472fe  in al, dx
  0472ff  inc edx
  047300  inc ebp
  047301  or eax, 0x62933e04
  047306  outsd dx, dword ptr [esi]
  047307  mov esi, 0xbf76b51d
  04730c  add edi, edx
  04730e  fld qword ptr [ecx + 0xf]
  047311  sti 
  047312  test al, 0xc0
  047314  inc esi
  047315  stosb byte ptr es:[edi], al
  047316  xor eax, 0xe57d84be
  04731b  inc ecx
  04731c  jo 0x47363
  04731e  mov al, 0xc0
  047320  sub ch, 0xbe
  047323  cmp eax, dword ptr [eax]
  047325  add ah, ch
  047327  inc edx
  047328  add byte ptr [0x627d3e04], cl
  04732e  outsd dx, dword ptr [esi]
L4732f:
  04732f  mov esi, 0xbf76b520
  047334  call 0xffa8b52e
  04733a  xchg esp, eax
  04733b  inc eax
  04733c  jmp 0x4732b
  04733e  or al, 0xc0
  047340  mov esp, 0x5941fcd6
  047345  cmp al, 0x95
  047347  inc eax
  047348  in al, 0x8d
  04734a  add al, 0xc0
  04734c  add byte ptr [eax], al
  04734e  in al, dx
  04734f  inc edx
  047350  xchg esp, esp
  047352  bound edi, qword ptr [esi]
  047354  out dx, eax
  047355  add dword ptr [esi + edi], ebx
  047358  cmp byte ptr [edx - 0x7878408a], dl
  04735e  mov ecx, 0x48dd141
L47363:
  047363  inc edx
  047364  js 0x4732f
  047366  and edi, dword ptr [edi + 0x41bf0fb8]
  04736c  sar dword ptr [0xb6904207], 1
  047372  mov edi, 0xec0000be
  047377  inc edx
  047378  scasb al, byte ptr es:[edi]
  047379  xchg edi, eax
  04737a  cmp byte ptr [esi], bh
  04737c  and esp, dword ptr [0xf57b3f03]
  047382  push esi
  047383  mov edi, 0x41528cff
  047388  xor eax, 0xe3420e96
  04738d  mov ebx, 0x664b4050
  047392  push ebp
  047393  inc ecx
  047394  test eax, esp
  047396  adc dword ptr [edx + 0x64], eax
  047399  dec esp
  04739a  jae 0x473dc
  04739c  add byte ptr [eax], al
  04739e  in al, dx
  04739f  inc edx
  0473a0  adc al, 0xc5
  0473a2  stosb byte ptr es:[edi], al
  0473a3  rcr dword ptr ds:[ebx + edi], 0xbe
  0473a8  lcall 0x36ac, 0x4ebf6cc3
  0473af  inc eax
  0473b0  cmp al, 0xb9
  0473b2  iretd 
  0473b3  inc ecx
  0473b4  push ebp
  0473b5  mov edx, 0xc59cc083
  0473ba  inc esi
L473bb:
  0473bb  inc eax
  0473bc  loop 0x4742a
  0473be  xlatb 
  0473bf  inc ecx
  0473c0  pop esi
  0473c1  jmp 0x5344c
  0473c6  in al, dx
  0473c7  inc edx
  0473c8  inc ebx
  0473c9  sbb eax, 0x68a1be1d
  0473ce  jb 0x4740d
  0473d0  ret 0x7c83
  0473d3  mov edi, 0xc18f664f
  0473d8  stosd dword ptr es:[edi], eax
  0473d9  rcr dword ptr [ebx + 0x41], 1
L473dc:
  0473dc  loopne 0x4745a
  0473de  db 0x8f
  0473df  mov edi, 0xc195b510
  0473e4  cmp dword ptr [ebp + 0x41], edx
  0473e8  or al, 0x73
  0473ea  jbe 0x473ab
  0473ec  add byte ptr [eax], al
  0473ee  in al, dx
  0473ef  inc edx
  0473f0  mov eax, 0x9ebe4e11
  0473f5  cmp al, bl
  0473f7  cmp eax, 0xbf799290
  0473fc  int3 
  0473fd  db 0x8f
  0473fe  out 0xc1, eax
  047400  pop esp
  047401  dec ebx
  047402  scasd eax, dword ptr es:[edi]
  047403  inc ecx
  047404  xchg edi, eax
  047405  inc edx
  047406  stosb byte ptr es:[edi], al
  047407  mov edi, 0xc1edc862
  04740c  clc 
L4740d:
  04740d  add dh, byte ptr [ecx + eax*2 - 0x4071aaa5]
  047414  add byte ptr [eax], al
  047416  in al, dx
  047417  inc edx
  047418  popal 
  047419  adc dword ptr [esi - 0x42], ecx
  04741c  in eax, dx
  04741d  cmp al, bl
  04741f  cmp eax, 0xbf799293
  047424  sbb al, 0x37
  047426  add dl, al
L47428:
  047428  js 0x473bb
L4742a:
  04742a  xchg edx, eax
  04742b  mov esi, 0xc036fa7a
  047430  or eax, 0xe8c2041f
  047435  test eax, 0xb0b0bec4
  04743a  sub al, al
  04743c  add byte ptr [eax], al
  04743e  in al, dx
  04743f  inc edx
  047440  xchg ebx, eax
  047441  cwde 
  047442  and bh, byte ptr [ebx]
  047444  jge 0x47428
  047446  sbb byte ptr [0xbf7fd221], bh
  04744c  and eax, 0xbbc19f73
  047451  xor esp, dword ptr [edx + 0x17cc5dc1]
  047457  rcl byte ptr [esi + 0x38c1a722], 0xfb
  04745e  lahf 
  04745f  rcl dword ptr [eax + 0xc01749], 0
  047466  in al, dx
  047467  inc edx
  047468  outsb dx, byte ptr [esi]
  047469  and ebp, dword ptr [0x33d6b73e]
  04746f  mov esi, 0xbf7846b6
  047474  push eax
  047475  out dx, eax
  047476  pop ecx
  047477  stosb byte ptr es:[edi], al
  047479  sbb eax, ebp
  04747b  rcr dword ptr [ecx - 0x46], 0x20
  04747f  ror byte ptr [eax - 0x7b40c20f], 0x61
  047486  out 0xc1, al
  047488  inc edx
  047489  fild qword ptr [0xec0000c0]
  04748f  inc edx
  047490  leave 
  047491  scasb al, byte ptr es:[edi]
  047492  into 
  047495  sbb ebx, dword ptr [edx - 0x42]
  047498  adc eax, 0x8abf7381
  04749d  stosb byte ptr es:[edi], al
  04749e  inc ecx
  0474a0  popfd 
  0474a1  db 0xfe
  0474a2  aad 0xc1
  0474a4  stosb byte ptr es:[edi], al
  0474a5  inc edi
  0474a6  movsb byte ptr es:[edi], byte ptr [esi]
  0474a7  mov edi, 0x416af5c8
  0474ac  out dx, al
  0474ad  mov bl, ch
  0474af  shr dword ptr [ebx + 0xbf830c], 0
  0474b6  in al, dx
  0474b7  inc edx
  0474b8  sub al, byte ptr [eax]
  0474ba  or bh, byte ptr [esi - 0x4124349d]
  0474c0  push -0x61
  0474c2  mov edi, 0x41c6c22d
  0474c8  cli 
  0474c9  inc esi
  0474ca  js 0x4748d
  0474cc  db 0x8d
  0474cd  in al, dx
  0474ce  dec esi
  0474cf  rol byte ptr [ecx + 0x7941cd1b], 0xd4
  0474d6  add cl, 0x45
  0474d9  mov word ptr [eax + eax*8], es
  0474dd  add ah, ch
  0474df  inc edx
  0474e0  cmc 
  0474e1  pushfd 
  0474e2  pop ds
  0474e3  mov al, 0xa1
  0474e6  aas 
  0474e7  cmp eax, 0xbf7c9652
  0474ec  sbb dword ptr [ecx + 0x13], eax
  0474f1  xchg byte ptr [eax + eax*8 - 0x3f36e5e2], dl
  0474f8  mov dh, ah
  0474fa  sub byte ptr [ecx + 0x14], al
  0474fd  db 0xc7
  0474fe  sahf 
  0474ff  ror bh, 0xd8
  047502  db 0xc4
  047503  rol byte ptr [eax], 0
  047506  in al, dx
  047507  inc edx
  047508  push esp
  047509  cmp eax, 0x433f3db9
  04750e  aas 
  04750f  cmp ch, byte ptr ds:[ebp + 0x7a]
  047513  mov edi, 0x40e944fa
  047518  js 0x4757d
  04751a  pop edi
  04751b  inc ecx
  04751c  mul edx
  04751e  sub byte ptr [edi + 0x41015c8a], bh
  047524  int1 
  047525  mov al, byte ptr [0xa9144168]
  04752a  mov esi, 0x42ec0000
  047530  jle 0x474b4
  047532  add bh, byte ptr [0x3da67c14]
  047538  mov eax, 0xdcbf7f05
  04753d  movsb byte ptr es:[edi], byte ptr [esi]
  04753e  iretd 
  04753f  inc eax
  047540  mov eax, dword ptr [0x1d41fdd8]
  047545  pop edx
  047546  pop esp
  047547  ror byte ptr [eax + 0x1a], 0xdf
  04754b  inc eax
  04754c  sub dword ptr [eax + 2], 0x42
  047550  adc al, dl
  047552  push esi
  047553  rol byte ptr [eax], 0
  047556  in al, dx
  047557  inc edx
  047558  mov ebx, 0xca3d0282
  04755d  jnp 0x47505
  04755f  cmp eax, 0xbf7f05b7
  047564  into 
  047565  or dword ptr [edx - 0x40], edi
  047568  db 0xd9
  047569  dec esi
  04756a  adc byte ptr [edx + 0xc], al
  04756d  out dx, eax
  04756e  pop edx
  04756f  rcl byte ptr [eax + 0x55], 0x82
  047573  sal byte ptr [esi + 0x7942143d], 0x23
  04757a  push esi
  04757b  rol byte ptr [eax], 0
  04757e  in al, dx
  04757f  inc edx
  047580  repne outsd dx, dword ptr [esi]
  047582  mov al, 0xbe
  047584  rcl byte ptr [edx + 0x59]
  047587  mov ebp, 0xbf6fef74
  04758c  retf 
  04758d  inc ebp
  04758e  mov cl, 0x8e
  047591  not ch
  047593  inc ecx
  047594  and byte ptr [ecx + 0x18], dl
  047597  mov edi, 0xc1cb1c18
  04759c  pop esp
  04759d  sub al, 0xdc
  04759f  inc ecx
  0475a0  pop eax
  0475a1  dec edi
  0475a2  aad 0xbe
  0475a4  add byte ptr [eax], al
  0475a6  in al, dx
  0475a7  inc edx
  0475a8  mov al, 0x32
  0475aa  push edi
  0475ab  mov esi, 0xbe32ad26
  0475b0  ret 0x7643
  0475b3  mov edi, 0xc1637407
  0475b8  push 0x26
  0475ba  ljmp 0x8bbf:0x5af49840
  0475c1  xchg ebx, eax
L475c2:
  0475c2  outsd dx, dword ptr [esi]
  0475c3  shr dword ptr [edi - 6], 0xfe
  0475c7  inc eax
  0475c8  salc 
  0475c9  int 0x4e
  0475cb  mov edi, 0x42ec0000
  0475d0  int 0x8b
  0475d2  salc 
  0475d3  cmp eax, 0x3f2216c3
  0475d8  adc dword ptr [ebx + 0x44], 0x1278a6bf
  0475df  rcl byte ptr [ebx + 0x2d4185dd], 0xda
  0475e6  mov bl, 0x40
  0475e8  jl 0x4758a
  0475ea  sbb eax, eax
  0475ec  sbb dword ptr [esp + ecx*4], ecx
  0475ef  inc ecx
  0475f0  dec eax
  0475f1  movsb byte ptr es:[edi], byte ptr [esi]
  0475f2  mov dword ptr [eax], 0xf842ec00
  0475f9  adc al, 0x90
  0475fb  mov ebp, 0x3ed0ff4e
  047600  js 0x47603
  047602  imul edi, dword ptr [edi + 0x4133d266], 0x419df714
  04760c  jmp 0xff451adf
  047611  mov byte ptr [ecx + eax*2], bh
  047614  out 0x34, al
  047616  movsb byte ptr es:[edi], byte ptr [esi]
  047617  inc ecx
  047618  jae 0x475c2
  04761a  scasb al, byte ptr es:[edi]
  04761b  inc eax
  04761c  add byte ptr [eax], al
  04761e  in al, dx
  04761f  inc edx
  047620  stosd dword ptr es:[edi], eax
  047621  arpl word ptr [edi + 0x1f0da7be], bp
  047627  mov esi, 0xbf6d3392
  04762c  adc eax, 0xde415c54
  047631  push esp
  047632  mov al, 0x41
  047634  mov dl, 0xc3
  047636  mov eax, es
  047638  pop ecx
  047639  les esp, ptr [esi + 0x41]
  04763c  mov bh, 0xb1
  04763e  mov ch, 0x41
  047640  adc al, 0x98
  047643  rol byte ptr [eax], 0
  047646  in al, dx
  047647  inc edx
  047648  mov eax, dword ptr [ebp - 0x7b]
  04764b  mov ebp, 0x3d8fde04
  047650  fcmovbe st(0), st(2)
  047652  jle 0x47613
  047654  xchg esp, eax
  047655  push cs
  047656  pop es
  047657  inc edx
  047658  inc ecx
  047659  cmp dword ptr [edx + 0x41], edi
  04765c  stc 
  04765d  adc dword ptr [esi], ebx
  04765f  sal byte ptr [eax + 0x34], 0xa
  047663  inc edx
  047664  push ds
  047665  or al, 0x82
  047667  inc ecx
  047668  db 0x8f
  047669  xchg ebx, eax
  04766a  push ds
  04766b  rol byte ptr [eax], 0
  04766e  in al, dx
  04766f  inc edx
  047670  ret 0xed6
  047673  add byte ptr ds:[ebx + 0x7bbb3c29], bh
  04767a  jge 0x4763b
  04767c  mov bl, 0xf6
  04767e  cld 
  04767f  inc ecx
  047680  push eax
  047681  ljmp 0x144a:0x4ac0
  047687  mov esi, 0x4202481f
  04768c  nop 
  04768d  jns 0x47682
  04768f  sal byte ptr [eax], 0x9d
  047692  mov esp, 0x42ec0000
  047698  mov dh, 0x12
  04769a  cdq 
  04769b  inc byte ptr ds:[ecx]
  04769e  db 0x8f
  04769f  mov ebp, 0xbf73a2df
  0476a4  cld 
  0476a5  mov word ptr [esi - 0x7d73ebbf], fs
  0476ab  ror dword ptr [edx - 0x46], 0xf8
  0476af  mov edi, 0x41aceffc
  0476b4  jg 0x4767b
  0476b6  xchg cl, al
  0476b8  retf 0xd3aa
  0476bb  mov edi, 0x42ec0000
  0476c0  sbb al, 0xed
  0476c2  cmpsb byte ptr [esi], byte ptr es:[edi]
  0476c3  cmp byte ptr ds:[ecx + 0x62753ea5], 0x63
  0476cb  mov edi, 0x40b0d966
  0476d0  mov eax, 0x2c08efe
  0476d5  mov dh, 0xc0
  0476d8  or al, 0x50
  0476da  mov dword ptr [eax - 4], 0x49c0a5c8
  0476e1  inc ebp
  0476e2  mov dh, 0xc0
  0476e4  add byte ptr [eax], al
  0476e6  in al, dx
  0476e7  inc edx
  0476e8  loopne 0x47739
  0476ea  xchg esp, eax
  0476eb  mov esi, 0xbe4bd4e0
  0476f0  mov ch, 0xaa
  0476f2  outsd dx, dword ptr [esi]
  0476f3  mov edi, 0xc1409cce
  0476f8  or ecx, dword ptr [ebp + 0x18cac18f]
  0476fe  cmp al, 0xbf
  047700  mov dl, 0xd5
  047702  inc ebp
L47703:
  047703  rcr dword ptr [esi], 0xbe
  047706  xchg esi, eax
  047707  ror dword ptr [eax], 0xa0
  04770a  loop 0x476ca
  04770c  add byte ptr [eax], al
  04770e  in al, dx
  04770f  inc edx
  047710  pop ss
  047711  int3 
  047712  cmp dword ptr [esi - 0x4450bb51], edi
  047718  inc eax
  047719  mov edi, 0x2759bf7b
  04771e  inc edi
  04771f  rcr dword ptr [eax - 0x6b], 0x38
  047723  sar dword ptr [edx - 0x734021f9], 0xb0
  04772a  push ecx
  04772b  sar dword ptr [esi + 0x3dc14474], 0xf6
  047732  int 0xbf
  047734  add byte ptr [eax], al
  047736  in al, dx
  047737  inc edx
  047738  and byte ptr [ecx - 0x43], bh
  04773c  jmp 0x7242c2f7
  047741  dec ebx
  047742  jns 0x47703
  047744  mov ebx, 0xf8c07d81
  047749  dec esp
  04774a  cli 
  04774b  inc eax
L4774c:
  04774c  insb byte ptr es:[edi], dx
  04774d  loope 0x4774c
  04774f  adc byte ptr ds:[eax - 0x6aef3f6f], 9
  047757  inc ecx
  047758  sub byte ptr [edi + 0x3f38], dl
  04775e  in al, dx
  04775f  inc edx
  047760  cld 
  047761  sbb byte ptr [ebx + 0x3e], al
  047764  sub byte ptr [ecx - 0x52c1de], 0x77
  04776b  mov edi, 0x408956e0
  047770  mov ebx, dword ptr [esi + esi - 0x726efebf]
  047777  scasd eax, dword ptr es:[edi]
  047779  push 0x200408f
  04777e  inc esi
  04777f  inc ecx
  047780  or dh, byte ptr [ecx + esi*8 + 0x3e]
  047784  add byte ptr [eax], al
  047786  in al, dx
  047787  inc edx
  047788  sbb eax, 0x343d21e4
  04778d  db 0x8e
  04778e  db 0xfe
  04778f  mov ebp, 0xbf7dd02f
  047794  in al, dx
  047795  jg 0x477b7
  047797  inc ecx
  047798  add dword ptr [edi + ebx*2 - 0x7ca2a540], edi
  04779f  rcl byte ptr [ebp + 0x55], 0x2c
  0477a3  inc ecx
  0477a4  db 0xc7
  0477a5  sbb dword ptr [ebp + 0x7f84b8c0], eax
  0477ab  rol byte ptr [eax], 0
  0477ae  sub al, 0x43
  0477b0  call 0x644229d7
  0477b5  cdq 
  0477b6  and eax, 0x7ba5a5be
L477bb:
  0477bb  mov edi, 0x411fed84
  0477c0  xchg esp, eax
  0477c1  inc eax
  0477c2  arpl ax, ax
  0477c4  xchg ebx, eax
  0477c5  sub byte ptr [ebp + 0x2c5555c0], al
  0477cb  inc ecx
  0477cc  db 0xc7
  0477cd  sbb dword ptr [ebp + 0x7f84b8c0], eax
  0477d3  rol byte ptr [eax], 0
  0477d6  sub al, 0x43
  0477d8  jo 0x4775b
  0477da  loop 0x47819
  0477dc  xchg esi, eax
  0477dd  mov dword ptr [eax], edi
  0477df  mov esi, 0xbf7a363e
  0477e4  fdivp st(1)
  0477e6  pop ds
  0477e7  inc ecx
  0477e8  adc dl, byte ptr [esi + 0x1da5c063]
  0477ee  xchg al, al
  0477f0  push ebp
  0477f1  push ebp
  0477f2  sub al, 0x41
  0477f4  enter -0x7ae7, -0x40
  0477f8  mov eax, 0xc07f84
  0477fd  add byte ptr [ebx + eax*2], ch
  047800  and byte ptr [ecx + 0x4e], bl
  047803  mov ebp, 0xbd2b685a
  047808  dec esi
  047809  jae 0x4788a
  04780b  mov edi, 0x4126b8e6
  047810  inc ebx
  047811  jge 0x47793
  047813  rcl byte ptr [ecx - 0x283f43d4], 0xdf
  04781a  xor al, byte ptr [ecx + 0x60]
  04781d  dec ebp
  04781e  xchg ebp, eax
  04781f  sar byte ptr [0xc0bc87], 0
  047826  sub al, 0x43
  047828  and bl, byte ptr [ecx + 0x4e]
  04782b  mov ebp, 0xbd2b6854
  047830  dec esi
  047831  jae 0x478b2
  047833  mov edi, 0x4126b8e6
  047838  inc edx
  047839  jge 0x477bb
  04783b  rcl byte ptr [ecx - 0x283f43d4], 0xdf
  047842  xor al, byte ptr [ecx + 0x60]
  047845  dec ebp
  047846  xchg ebp, eax
  047847  sar byte ptr [0xc0bc87], 0
  04784e  sub al, 0x43
  047850  sub ch, byte ptr [edi + 0x5ffabdf9]
  047856  je 0x47894
  047858  enter 0x7e0f, -0x41
  04785c  sub ah, byte ptr cs:[0x834e7641]
  047863  rcl byte ptr [ecx + 0x14c0f91b], 0x30
  04786a  xor dword ptr [ecx + 0x70], eax
  04786d  sub bl, byte ptr [eax - 0x39ff540]
  047873  rol byte ptr [eax], 0
  047876  sub al, 0x43
  047878  dec eax
  047879  add dword ptr [eax + 0x11], ebx
  04787f  add byte ptr [eax], al
  047881  add byte ptr [eax], al
  047883  add byte ptr [eax], al
  047885  add byte ptr [eax], al
  047887  add byte ptr [eax], al
  047889  add byte ptr [eax], al
  04788b  add byte ptr [eax], al
  04788d  add byte ptr [eax], al
  04788f  add byte ptr [eax], al
  047891  add byte ptr [eax], al
  047893  add byte ptr [eax], al
  047895  add byte ptr [eax], al
  047897  add byte ptr [eax], al
  047899  add byte ptr [eax], al
  04789b  add byte ptr [eax], al
  04789d  add byte ptr [eax], al
  04789f  add byte ptr [eax], al
  0478a1  add byte ptr [eax], al
  0478a3  add byte ptr [eax], al
  0478a5  add byte ptr [eax], al
  0478a7  add byte ptr [eax], al
  0478a9  add byte ptr [eax], al
  0478ab  add byte ptr [eax], al
  0478ad  add byte ptr [eax], al
  0478af  add byte ptr [eax], al
  0478b1  add byte ptr [eax], al
  0478b3  add byte ptr [eax], al
  0478b5  add byte ptr [eax], al
  0478b7  add byte ptr [eax], al
  0478b9  add byte ptr [eax], al
  0478bb  add byte ptr [eax], al
  0478bd  add byte ptr [eax], al
  0478bf  add byte ptr [eax], al
  0478c1  add byte ptr [eax], al
  0478c3  add byte ptr [eax], al
  0478c5  add byte ptr [eax], al
  0478c7  add byte ptr [eax], al
  0478c9  add byte ptr [eax], al
  0478cb  add byte ptr [eax], al
  0478cd  add byte ptr [eax], al
  0478cf  add byte ptr [eax], al
  0478d1  add byte ptr [eax], al
  0478d3  add byte ptr [eax], al
  0478d5  add byte ptr [eax], al
  0478d7  add byte ptr [eax], al
  0478d9  add byte ptr [eax], al
  0478db  add byte ptr [eax], al
  0478dd  add byte ptr [eax], al
  0478df  add byte ptr [eax], al
  0478e1  add byte ptr [eax], al
  0478e3  add byte ptr [eax], al
  0478e5  add byte ptr [eax], al
  0478e7  add byte ptr [eax], al
  0478e9  add byte ptr [eax], al
  0478eb  add byte ptr [eax], al
  0478ed  add byte ptr [eax], al
  0478ef  add byte ptr [eax], al
  0478f1  add byte ptr [eax], al
  0478f3  add byte ptr [eax], al
  0478f5  add byte ptr [eax], al
  0478f7  add byte ptr [eax], al
  0478f9  add byte ptr [eax], al
  0478fb  add byte ptr [eax], al
  0478fd  add byte ptr [eax], al
  0478ff  add byte ptr [eax], al
  047901  add byte ptr [eax], al
  047903  add byte ptr [eax], al
  047905  add byte ptr [eax], al
  047907  add byte ptr [eax], al
  047909  add byte ptr [eax], al
  04790b  add byte ptr [eax], al
  04790d  add byte ptr [eax], al
  04790f  add byte ptr [eax], al
  047911  add byte ptr [eax], al
  047913  add byte ptr [eax], al
  047915  add byte ptr [eax], al
  047917  add byte ptr [eax], al
  047919  add byte ptr [eax], al
  04791b  add byte ptr [eax], al
  04791d  add byte ptr [eax], al
  04791f  add byte ptr [eax], al
  047921  add byte ptr [eax], al
  047923  add byte ptr [eax], al
  047925  add byte ptr [eax], al
  047927  add byte ptr [eax], al
  047929  add byte ptr [eax], al
  04792b  add byte ptr [eax], al
  04792d  add byte ptr [eax], al
  04792f  add byte ptr [eax], al
  047931  add byte ptr [eax], al
  047933  add byte ptr [eax], al
  047935  add byte ptr [eax], al
  047937  add byte ptr [eax], al
  047939  add byte ptr [eax], al
  04793b  add byte ptr [eax], al
  04793d  add byte ptr [eax], al
  04793f  add byte ptr [eax], al
  047941  add byte ptr [eax], al
  047943  add byte ptr [eax], al
  047945  add byte ptr [eax], al
  047947  add byte ptr [eax], al
  047949  add byte ptr [eax], al
  04794b  add byte ptr [eax], al
  04794d  add byte ptr [eax], al
  04794f  add byte ptr [eax], al
  047951  add byte ptr [eax], al
  047953  add byte ptr [eax], al
  047955  add byte ptr [eax], al
  047957  add byte ptr [eax], al
  047959  add byte ptr [eax], al
  04795b  add byte ptr [eax], al
  04795d  add byte ptr [eax], al
  04795f  add byte ptr [eax], al
  047961  add byte ptr [eax], al
  047963  add byte ptr [eax], al
  047965  add byte ptr [eax], al
  047967  add byte ptr [eax], al
  047969  add byte ptr [eax], al
  04796b  add byte ptr [eax], al
  04796d  add byte ptr [eax], al
  04796f  add byte ptr [eax], al
  047971  add byte ptr [eax], al
  047973  add byte ptr [eax], al
  047975  add byte ptr [eax], al
  047977  add byte ptr [eax], al
  047979  add byte ptr [eax], al
  04797b  add byte ptr [eax], al
  04797d  add byte ptr [eax], al
  04797f  add byte ptr [eax], al
  047981  add byte ptr [eax], al
  047983  add byte ptr [eax], al
  047985  add byte ptr [eax], al
  047987  add byte ptr [eax], al
  047989  add byte ptr [eax], al
  04798b  add byte ptr [eax], al
  04798d  add byte ptr [eax], al
  04798f  add byte ptr [eax], al
  047991  add byte ptr [eax], al
  047993  add byte ptr [eax], al
  047995  add byte ptr [eax], al
  047997  add byte ptr [eax], al
  047999  add byte ptr [eax], al
  04799b  add byte ptr [eax], al
  04799d  add byte ptr [eax], al
  04799f  add byte ptr [eax], al
  0479a1  add byte ptr [eax], al
  0479a3  add byte ptr [eax], al
  0479a5  add byte ptr [eax], al
  0479a7  add byte ptr [eax], al
  0479a9  add byte ptr [eax], al
  0479ab  add byte ptr [eax], al
  0479ad  add byte ptr [eax], al
  0479af  add byte ptr [eax], al
  0479b1  add byte ptr [eax], al
  0479b3  add byte ptr [eax], al
  0479b5  add byte ptr [eax], al
  0479b7  add byte ptr [eax], al
  0479b9  add byte ptr [eax], al
  0479bb  add byte ptr [eax], al
  0479bd  add byte ptr [eax], al
  0479bf  add byte ptr [eax], al
  0479c1  add byte ptr [eax], al
  0479c3  add byte ptr [eax], al
  0479c5  add byte ptr [eax], al
  0479c7  add byte ptr [eax], al
  0479c9  add byte ptr [eax], al
  0479cb  add byte ptr [eax], al
  0479cd  add byte ptr [eax], al
  0479cf  add byte ptr [eax], al
  0479d1  add byte ptr [eax], al
  0479d3  add byte ptr [eax], al
  0479d5  add byte ptr [eax], al
  0479d7  add byte ptr [eax], al
  0479d9  add byte ptr [eax], al
  0479db  add byte ptr [eax], al
  0479dd  add byte ptr [eax], al
  0479df  add byte ptr [eax], al
  0479e1  add byte ptr [eax], al
  0479e3  add byte ptr [eax], al
  0479e5  add byte ptr [eax], al
  0479e7  add byte ptr [eax], al
  0479e9  add byte ptr [eax], al
  0479eb  add byte ptr [eax], al
  0479ed  add byte ptr [eax], al
  0479ef  add byte ptr [eax], al
  0479f1  add byte ptr [eax], al
  0479f3  add byte ptr [eax], al
  0479f5  add byte ptr [eax], al
  0479f7  add byte ptr [eax], al
  0479f9  add byte ptr [eax], al
  0479fb  add byte ptr [eax], al
  0479fd  add byte ptr [eax], al
  0479ff  add byte ptr [eax], al
  047a01  add byte ptr [eax], al
  047a03  add byte ptr [eax], al
  047a05  add byte ptr [eax], al
  047a07  add byte ptr [eax], al
  047a09  add byte ptr [eax], al
  047a0b  add byte ptr [eax], al
  047a0d  add byte ptr [eax], al
  047a0f  add byte ptr [eax], al
  047a11  add byte ptr [eax], al
  047a13  add byte ptr [eax], al
  047a15  add byte ptr [eax], al
  047a17  add byte ptr [eax], al
  047a19  add byte ptr [eax], al
  047a1b  add byte ptr [eax], al
  047a1d  add byte ptr [eax], al
  047a1f  add byte ptr [eax], al
  047a21  add byte ptr [eax], al
  047a23  add byte ptr [eax], al
  047a25  add byte ptr [eax], al
  047a27  add byte ptr [eax], al
  047a29  add byte ptr [eax], al
  047a2b  add byte ptr [eax], al
  047a2d  add byte ptr [eax], al
  047a2f  add byte ptr [eax], al
  047a31  add byte ptr [eax], al
  047a33  add byte ptr [eax], al
  047a35  add byte ptr [eax], al
  047a37  add byte ptr [eax], al
  047a39  add byte ptr [eax], al
  047a3b  add byte ptr [eax], al
  047a3d  add byte ptr [eax], al
  047a3f  add byte ptr [eax], al
  047a41  add byte ptr [eax], al
  047a43  add byte ptr [eax], al
  047a45  add byte ptr [eax], al
  047a47  add byte ptr [eax], al
  047a49  add byte ptr [eax], al
  047a4b  add byte ptr [eax], al
  047a4d  add byte ptr [eax], al
  047a4f  add byte ptr [eax], al
  047a51  add byte ptr [eax], al
  047a53  add byte ptr [eax], al
  047a55  add byte ptr [eax], al
  047a57  add byte ptr [eax], al
  047a59  add byte ptr [eax], al
  047a5b  add byte ptr [eax], al
  047a5d  add byte ptr [eax], al
  047a5f  add byte ptr [eax], al
  047a61  add byte ptr [eax], al
  047a63  add byte ptr [eax], al
  047a65  add byte ptr [eax], al
  047a67  add byte ptr [eax], al
  047a69  add byte ptr [eax], al
  047a6b  add byte ptr [eax], al
  047a6d  add byte ptr [eax], al
  047a6f  add byte ptr [eax], al
  047a71  add byte ptr [eax], al
  047a73  add byte ptr [eax], al
  047a75  add byte ptr [eax], al
  047a77  add byte ptr [eax], al
  047a79  add byte ptr [eax], al
  047a7b  add byte ptr [eax], al
  047a7d  add byte ptr [eax], al
  047a7f  add byte ptr [eax], al
  047a81  add byte ptr [eax], al
  047a83  add byte ptr [eax], al
  047a85  add byte ptr [eax], al
  047a87  add byte ptr [eax], al
  047a89  add byte ptr [eax], al
  047a8b  add byte ptr [eax], al
  047a8d  add byte ptr [eax], al
  047a8f  add byte ptr [eax], al
  047a91  add byte ptr [eax], al
  047a93  add byte ptr [eax], al
  047a95  add byte ptr [eax], al
  047a97  add byte ptr [eax], al
  047a99  add byte ptr [eax], al
  047a9b  add byte ptr [eax], al
  047a9d  add byte ptr [eax], al
  047a9f  add byte ptr [eax], al
  047aa1  add byte ptr [eax], al
  047aa3  add byte ptr [eax], al
  047aa5  add byte ptr [eax], al
  047aa7  add byte ptr [eax], al
  047aa9  add byte ptr [eax], al
  047aab  add byte ptr [eax], al
  047aad  add byte ptr [eax], al
  047aaf  add byte ptr [eax], al
  047ab1  add byte ptr [eax], al
  047ab3  add byte ptr [eax], al
  047ab5  add byte ptr [eax], al
  047ab7  add byte ptr [eax], al
  047ab9  add byte ptr [eax], al
  047abb  add byte ptr [eax], al
  047abd  add byte ptr [eax], al
  047abf  add byte ptr [eax], al
  047ac1  add byte ptr [eax], al
  047ac3  add byte ptr [eax], al
  047ac5  add byte ptr [eax], al
  047ac7  add byte ptr [eax], al
  047ac9  add byte ptr [eax], al
  047acb  add byte ptr [eax], al
  047acd  add byte ptr [eax], al
  047acf  add byte ptr [eax], al
  047ad1  add byte ptr [eax], al
  047ad3  add byte ptr [eax], al
  047ad5  add byte ptr [eax], al
  047ad7  add byte ptr [eax], al
  047ad9  add byte ptr [eax], al
  047adb  add byte ptr [eax], al
  047add  add byte ptr [eax], al
  047adf  add byte ptr [eax], al
  047ae1  add byte ptr [eax], al
  047ae3  add byte ptr [eax], al
  047ae5  add byte ptr [eax], al
  047ae7  add byte ptr [eax], al
  047ae9  add byte ptr [eax], al
  047aeb  add byte ptr [eax], al
  047aed  add byte ptr [eax], al
  047aef  add byte ptr [eax], al
  047af1  add byte ptr [eax], al
  047af3  add byte ptr [eax], al
  047af5  add byte ptr [eax], al
  047af7  add byte ptr [eax], al
  047af9  add byte ptr [eax], al
  047afb  add byte ptr [eax], al
  047afd  add byte ptr [eax], al
  047aff  add byte ptr [eax], al
  047b01  add byte ptr [eax], al
  047b03  add byte ptr [eax], al
  047b05  add byte ptr [eax], al
  047b07  add byte ptr [eax], al
  047b09  add byte ptr [eax], al
  047b0b  add byte ptr [eax], al
  047b0d  add byte ptr [eax], al
  047b0f  add byte ptr [eax], al
  047b11  add byte ptr [eax], al
  047b13  add byte ptr [eax], al
  047b15  add byte ptr [eax], al
  047b17  add byte ptr [eax], al
  047b19  add byte ptr [eax], al
  047b1b  add byte ptr [eax], al
  047b1d  add byte ptr [eax], al
  047b1f  add byte ptr [eax], al
  047b21  add byte ptr [eax], al
  047b23  add byte ptr [eax], al
  047b25  add byte ptr [eax], al
  047b27  add byte ptr [eax], al
  047b29  add byte ptr [eax], al
  047b2b  add byte ptr [eax], al
  047b2d  add byte ptr [eax], al
  047b2f  add byte ptr [eax], al
  047b31  add byte ptr [eax], al
  047b33  add byte ptr [eax], al
  047b35  add byte ptr [eax], al
  047b37  add byte ptr [eax], al
  047b39  add byte ptr [eax], al
  047b3b  add byte ptr [eax], al
  047b3d  add byte ptr [eax], al
  047b3f  add byte ptr [eax], al
  047b41  add byte ptr [eax], al
  047b43  add byte ptr [eax], al
  047b45  add byte ptr [eax], al
  047b47  add byte ptr [eax], al
  047b49  add byte ptr [eax], al
  047b4b  add byte ptr [eax], al
  047b4d  add byte ptr [eax], al
  047b4f  add byte ptr [eax], al
  047b51  add byte ptr [eax], al
  047b53  add byte ptr [eax], al
  047b55  add byte ptr [eax], al
  047b57  add byte ptr [eax], al
  047b59  add byte ptr [eax], al
  047b5b  add byte ptr [eax], al
  047b5d  add byte ptr [eax], al
  047b5f  add byte ptr [eax], al
  047b61  add byte ptr [eax], al
  047b63  add byte ptr [eax], al
  047b65  add byte ptr [eax], al
  047b67  add byte ptr [eax], al
  047b69  add byte ptr [eax], al
  047b6b  add byte ptr [eax], al
  047b6d  add byte ptr [eax], al
  047b6f  add byte ptr [eax], al
  047b71  add byte ptr [eax], al
  047b73  add byte ptr [eax], al
  047b75  add byte ptr [eax], al
  047b77  add byte ptr [eax], al
  047b79  add byte ptr [eax], al
  047b7b  add byte ptr [eax], al
  047b7d  add byte ptr [eax], al
  047b7f  add byte ptr [eax], al
  047b81  add byte ptr [eax], al
  047b83  add byte ptr [eax], al
  047b85  add byte ptr [eax], al
  047b87  add byte ptr [eax], al
  047b89  add byte ptr [eax], al
  047b8b  add byte ptr [eax], al
  047b8d  add byte ptr [eax], al
  047b8f  add byte ptr [eax], al
  047b91  add byte ptr [eax], al
  047b93  add byte ptr [eax], al
  047b95  add byte ptr [eax], al
  047b97  add byte ptr [eax], al
  047b99  add byte ptr [eax], al
  047b9b  add byte ptr [eax], al
  047b9d  add byte ptr [eax], al
  047b9f  add byte ptr [eax], al
  047ba1  add byte ptr [eax], al
  047ba3  add byte ptr [eax], al
  047ba5  add byte ptr [eax], al
  047ba7  add byte ptr [eax], al
  047ba9  add byte ptr [eax], al
  047bab  add byte ptr [eax], al
  047bad  add byte ptr [eax], al
  047baf  add byte ptr [eax], al
  047bb1  add byte ptr [eax], al
  047bb3  add byte ptr [eax], al
  047bb5  add byte ptr [eax], al
  047bb7  add byte ptr [eax], al
  047bb9  add byte ptr [eax], al
  047bbb  add byte ptr [eax], al
  047bbd  add byte ptr [eax], al
  047bbf  add byte ptr [eax], al
  047bc1  add byte ptr [eax], al
  047bc3  add byte ptr [eax], al
  047bc5  add byte ptr [eax], al
  047bc7  add byte ptr [eax], al
  047bc9  add byte ptr [eax], al
  047bcb  add byte ptr [eax], al
  047bcd  add byte ptr [eax], al
  047bcf  add byte ptr [eax], al
  047bd1  add byte ptr [eax], al
  047bd3  add byte ptr [eax], al
  047bd5  add byte ptr [eax], al
  047bd7  add byte ptr [eax], al
  047bd9  add byte ptr [eax], al
  047bdb  add byte ptr [eax], al
  047bdd  add byte ptr [eax], al
  047bdf  add byte ptr [eax], al
  047be1  add byte ptr [eax], al
  047be3  add byte ptr [eax], al
  047be5  add byte ptr [eax], al
  047be7  add byte ptr [eax], al
  047be9  add byte ptr [eax], al
  047beb  add byte ptr [eax], al
  047bed  add byte ptr [eax], al
  047bef  add byte ptr [eax], al
  047bf1  add byte ptr [eax], al
  047bf3  add byte ptr [eax], al
  047bf5  add byte ptr [eax], al
  047bf7  add byte ptr [eax], al
  047bf9  add byte ptr [eax], al
  047bfb  add byte ptr [eax], al
  047bfd  add byte ptr [eax], al
  047bff  add byte ptr [eax], al
  047c01  add byte ptr [eax], al
  047c03  add byte ptr [eax], al
  047c05  add byte ptr [eax], al
  047c07  add byte ptr [eax], al
  047c09  add byte ptr [eax], al
  047c0b  add byte ptr [eax], al
  047c0d  add byte ptr [eax], al
  047c0f  add byte ptr [eax], al
  047c11  add byte ptr [eax], al
  047c13  add byte ptr [eax], al
  047c15  add byte ptr [eax], al
  047c17  add byte ptr [eax], al
  047c19  add byte ptr [eax], al
  047c1b  add byte ptr [eax], al
  047c1d  add byte ptr [eax], al
  047c1f  add byte ptr [eax], al
  047c21  add byte ptr [eax], al
  047c23  add byte ptr [eax], al
  047c25  add byte ptr [eax], al
  047c27  add byte ptr [eax], al
  047c29  add byte ptr [eax], al
  047c2b  add byte ptr [eax], al
  047c2d  add byte ptr [eax], al
  047c2f  add byte ptr [eax], al
  047c31  add byte ptr [eax], al
  047c33  add byte ptr [eax], al
  047c35  add byte ptr [eax], al
  047c37  add byte ptr [eax], al
  047c39  add byte ptr [eax], al
  047c3b  add byte ptr [eax], al
  047c3d  add byte ptr [eax], al
  047c3f  add byte ptr [eax], al
  047c41  add byte ptr [eax], al
  047c43  add byte ptr [eax], al
  047c45  add byte ptr [eax], al
  047c47  add byte ptr [eax], al
  047c49  add byte ptr [eax], al
  047c4b  add byte ptr [eax], al
  047c4d  add byte ptr [eax], al
  047c4f  add byte ptr [eax], al
  047c51  add byte ptr [eax], al
  047c53  add byte ptr [eax], al
  047c55  add byte ptr [eax], al
  047c57  add byte ptr [eax], al
  047c59  add byte ptr [eax], al
  047c5b  add byte ptr [eax], al
  047c5d  add byte ptr [eax], al
  047c5f  add byte ptr [eax], al
  047c61  add byte ptr [eax], al
  047c63  add byte ptr [eax], al
  047c65  add byte ptr [eax], al
  047c67  add byte ptr [eax], al
  047c69  add byte ptr [eax], al
  047c6b  add byte ptr [eax], al
  047c6d  add byte ptr [eax], al
  047c6f  add byte ptr [eax], al
  047c71  add byte ptr [eax], al
  047c73  add byte ptr [eax], al
  047c75  add byte ptr [eax], al
  047c77  add byte ptr [eax], al
  047c79  add byte ptr [eax], al
  047c7b  add byte ptr [eax], al
  047c7d  add byte ptr [edx - 0x55555556], ch
  047c83  stosb byte ptr es:[edi], al
  047c84  ljmp 0:0xdd05c63f
  047c8b  add byte ptr [ecx], cl
  047c8d  add eax, dword ptr [0x18]
  047c93  shld ebx, eax, 0x1c
  047c97  and eax, 0xf
  047c9a  mov word ptr [0xe4], bx
  047ca1  mov word ptr [0xd4], ax
  047ca7  mov al, 0x21
  047ca9  int 0x33
  047cab  ret 
  047cac  or eax, 0x6c61680a
  047cb1  arpl word ptr [ecx + 0x6f], di
  047cb4  outsb dx, byte ptr [esi]
  047cb5  and byte ptr [ebx + 0x75], dh
  047cb8  jo 0x47d1f
  047cba  jb 0x47cdc
  047cbc  imul ebp, dword ptr [edi + 0x6c], 0x6d
  047cc0  and byte ptr gs:[ebp + 0x6e], ah
  047cc7  imul ebp, dword ptr [ecx + 0x6e], 0x65
  047ccb  and byte ptr [eax], ch
  047ccd  je 0x47d3c
  047ccf  sub dword ptr [eax], esp
  047cd1  insb byte ptr es:[edi], dx
  047cd2  outsd dx, dword ptr [esi]
  047cd3  popal 
  047cd4  imul ebp, dword ptr fs:[esi + 0x67], 0xa0d2e2e
L47cdc:
  047cdc  and al, 0x20
  047cde  cli 
  047cdf  imul ebp, dword ptr [esi + 0x69], 0x6c616974
  047ce6  imul edi, dword ptr [edx + 0x69], 0x7420676e
  047ced  popal 
  047cee  bound ebp, qword ptr [ebp + 0x73]
  047cf2  or eax, 0xfa20240a
  047cf9  popal 
  047cfa  insb byte ptr es:[edi], dx
  047cfb  insb byte ptr es:[edi], dx
  047cfc  outsd dx, dword ptr [esi]
  047cfd  arpl word ptr [ecx + 0x74], sp
  047d00  imul ebp, dword ptr [esi + 0x67], 0x6d656d20
  047d07  outsd dx, dword ptr [esi]
  047d08  jb 0x47d83
  047d0a  or eax, 0xfa20240a
  047d11  insb byte ptr es:[edi], dx
  047d12  outsd dx, dword ptr [esi]
  047d13  popal 
  047d14  imul ebp, dword ptr fs:[esi + 0x67], 0x646e6120
  047d1c  and byte ptr [eax + 0x72], dh
L47d1f:
  047d1f  jo 0x47d83
  047d22  jb 0x47d8d
  047d24  outsb dx, byte ptr [esi]
  047d25  and byte ptr [bx + di + 0x6e], ah
  047d29  imul ebp, dword ptr [ebp + 0x2e], 0x240a0d2e
  047d30  and dl, bh
  047d32  arpl word ptr [ecx + 0x6c], sp
  047d35  arpl word ptr [ebp + 0x6c], si
  047d38  popal 
  047d39  je 0x47da4
  047d3b  outsb dx, byte ptr [esi]
L47d3c:
  047d3c  and byte ptr [bp + 0x6c], ah
  047d40  popal 
  047d41  jb 0x47da8
  047d43  jae 0x47d73
  047d45  or eax, 0xfa20240a
  047d4b  insb byte ptr es:[edi], dx
  047d4c  outsd dx, dword ptr [esi]
  047d4d  popal 
  047d4e  imul ebp, dword ptr fs:[esi + 0x67], 0x78657420
  047d56  je 0x47dcd
  047d58  jb 0x47dbf
  047d5a  jae 0x47d8a
  047d5c  or eax, 0xfa20240a
  047d62  arpl word ptr [edx + 0x65], si
  047d65  popal 
  047d66  je 0x47dd1
  047d68  outsb dx, byte ptr [esi]
  047d69  and byte ptr [bx + di + 0x6e], ah
  047d6d  and byte ptr fs:[ecx + 0x75], dh
  047d71  popal 
  047d72  outsb dx, byte ptr [esi]
L47d73:
  047d73  je 0x47dde
  047d75  jp 0x47de0
  047d77  outsb dx, byte ptr [esi]
  047d78  and byte ptr [di + 0x69], ch
  047d7c  jo 0x47deb
  047d7e  popal 
  047d7f  jo 0x47df4
  047d81  and byte ptr [eax], ch
L47d83:
  047d83  xor dword ptr [ecx], ebp
  047d85  or byte ptr cs:[eax], cl
  047d89  or byte ptr [eax], cl
  047d8b  and al, 0x32
L47d8d:
  047d8d  sub dword ptr [esi], ebp
  047d8f  or byte ptr cs:[eax], cl
  047d92  or byte ptr [eax], cl
  047d94  and al, 0x33
  047d96  sub dword ptr [esi], ebp
  047d98  or byte ptr cs:[eax], cl
  047d9b  or byte ptr [eax], cl
  047d9d  and al, 0x34
  047d9f  sub dword ptr [esi], ebp
  047da1  or eax, 0xfa20240a
  047da7  jno 0x47e1e
  047da9  popal 
  047daa  outsb dx, byte ptr [esi]
  047dab  je 0x47e16
  047dad  jp 0x47e18
  047daf  outsb dx, byte ptr [esi]
  047db0  and byte ptr [bp + 0x69], ah
  047db4  jb 0x47e29
  047db6  je 0x47dd8
  047db8  je 0x47e1f
  047dba  js 0x47e30
  047dbc  jne 0x47e30
  047dbe  jae 0x47de1
  047dc1  jae 0x47e2b
  047dc3  popal 
  047dc4  imul ebp, dword ptr fs:[esi + 0x67], 0x62617420
  047dcc  insb byte ptr es:[edi], dx
L47dcd:
  047dcd  or eax, 0xfa20240a
  047dd5  jno 0x47e4c
  047dd7  popal 
L47dd8:
  047dd8  outsb dx, byte ptr [esi]
  047dd9  je 0x47e44
  047ddb  jp 0x47e46
  047ddd  outsb dx, byte ptr [esi]
L47dde:
  047dde  and byte ptr [bp + di + 0x65], dh
  047de2  arpl word ptr [edi + 0x6e], bp
  047de5  and byte ptr fs:[ebp + 0x78], dh
  047dea  je 0x47e61
  047dec  jb 0x47e53
  047dee  jae 0x47e10
  047df0  jae 0x47e5a
  047df2  popal 
  047df3  imul ebp, dword ptr fs:[esi + 0x67], 0x62617420
  047dfb  insb byte ptr es:[edi], dx
  047dfc  or eax, 0xfa20240a
  047e04  jno 0x47e7b
  047e06  popal 
  047e07  outsb dx, byte ptr [esi]
  047e08  je 0x47e73
  047e0a  jp 0x47e75
  047e0c  outsb dx, byte ptr [esi]
  047e0d  and byte ptr [bx + 0x65], ah
  047e11  outsb dx, byte ptr [esi]
  047e12  jb 0x47e76
  047e15  insb byte ptr es:[edi], dx
L47e16:
  047e16  and byte ptr [ebx + 0x68], dh
  047e19  popal 
  047e1a  imul ebp, dword ptr fs:[esi + 0x67], 0x62617420
  047e22  insb byte ptr es:[edi], dx
  047e23  or eax, 0xfa20240a
L47e2b:
  047e2b  insb byte ptr es:[edi], dx
  047e2c  outsd dx, dword ptr [esi]
  047e2d  popal 
  047e2e  imul ebp, dword ptr fs:[esi + 0x67], 0x646e6120
  047e36  and byte ptr [eax + 0x72], dh
  047e39  jo 0x47e9d
  047e3c  jb 0x47ea7
  047e3e  outsb dx, byte ptr [esi]
  047e3f  and byte ptr [bp + di + 0x63], dh
  047e43  outsb dx, byte ptr gs:[esi]
  047e45  or eax, 0x5c7240a
  047e4d  push eax
  047e4e  jg 0x47e50
L47e50:
  047e50  add byte ptr [ebp - 0x70], dl
L47e53:
  047e53  add al, 0
  047e55  mov dword ptr [0x7f54], 0x48bce
  047e5f  mov dword ptr [0x7f58], 0x48d9c
  047e69  xor edi, edi
  047e6b  mov dword ptr [0x4688], 0
L47e75:
  047e75  mov dword ptr [0x467c], 0xa
  047e7f  fild dword ptr [0x4688]
  047e85  fild dword ptr [0x467c]
  047e8b  fdivp st(1)
  047e8d  fmul st(0)
  047e8f  fmul st(0)
  047e91  fistp dword ptr [0x467c]
  047e97  mov eax, dword ptr [0x467c]
  047e9c  cmp eax, 0x3ff
  047ea1  jl 0x47ea8
  047ea3  mov eax, 0x3ff
L47ea8:
  047ea8  neg eax
  047eaa  add eax, 0x3ff
  047eaf  mov dword ptr [edi + 0x46464], eax
  047eb5  mov ebp, 0x1fc
  047eba  sub ebp, edi
  047ebc  mov dword ptr ds:[ebp + 0x46464], eax
  047ec3  add edi, 4
  047ec6  inc dword ptr [0x4688]
  047ecc  cmp dword ptr [0x4688], 0x40
  047ed3  jne 0x47e75
  047ed5  mov edi, 0x46064
  047eda  fldpi 
  047edc  mov dword ptr [0x467c], 0x10
  047ee6  fild dword ptr [0x467c]
  047eec  fdivp st(1)
  047eee  fstp qword ptr [0x4a50]
  047ef4  fldz 
  047ef6  fstp qword ptr [0x4a58]
  047efc  mov dword ptr [0x467c], 0x1ff
  047f06  fild dword ptr [0x467c]
  047f0c  fstp dword ptr [0x467c]
  047f12  mov ecx, 0x10
L47f17:
  047f17  fld qword ptr [0x4a58]
  047f1d  fcos 
  047f1f  fmul dword ptr [0x467c]
  047f25  fadd dword ptr [0x467c]
  047f2b  fistp dword ptr [edi]
  047f2d  fld qword ptr [0x4a58]
  047f33  fadd qword ptr [0x4a50]
  047f39  fstp qword ptr [0x4a58]
  047f3f  add edi, 4
  047f42  dec ecx
  047f43  jne 0x47f17
  047f45  fldpi 
  047f47  mov dword ptr [0x467c], 0x70
  047f51  fild dword ptr [0x467c]
  047f57  fdivp st(1)
  047f59  fstp qword ptr [0x4a50]
  047f5f  fldz 
  047f61  fstp qword ptr [0x4a58]
  047f67  mov dword ptr [0x467c], 0x1ff
  047f71  fild dword ptr [0x467c]
  047f77  fstp dword ptr [0x467c]
  047f7d  mov ecx, 0x70
L47f82:
  047f82  fld qword ptr [0x4a58]
  047f88  fcos 
  047f8a  fchs 
  047f8c  fmul dword ptr [0x467c]
  047f92  fadd dword ptr [0x467c]
  047f98  fistp dword ptr [edi]
  047f9a  fld qword ptr [0x4a58]
  047fa0  fadd qword ptr [0x4a50]
  047fa6  fstp qword ptr [0x4a58]
  047fac  add edi, 4
  047faf  dec ecx
  047fb0  jne 0x47f82
  047fb2  call 0x29300
  047fb7  call 0x1f4ba
  047fbc  mov edi, 0xa0000
  047fc1  sub edi, dword ptr [0x18]
  047fc7  mov dword ptr [0x4668], edi
  047fcd  mov eax, 0x56e9c
  047fd2  call 0x2ac
  047fd7  or eax, 0xffff
  047fdc  inc eax
  047fdd  mov dword ptr [0x4686c], eax
  047fe2  add eax, 0x10000
  047fe7  mov dword ptr [0x46870], eax
  047fec  add eax, 0x10000
  047ff1  mov dword ptr [0x46874], eax
  047ff6  add eax, 0x10000
  047ffb  mov dword ptr [0x46049], eax
  048000  add eax, 0x16e9c
  048005  mov edi, dword ptr [0x4686c]
  04800b  mov ecx, 0x11ba7
  048010  xor eax, eax
  048012  rep stosd dword ptr es:[edi], eax
  048014  mov edx, 0x46040
  048019  call 0x3dcc
  04801e  mov edx, dword ptr [0x46049]
  048024  mov ecx, 0x16e9c
  048029  call 0x3eed
  04802e  call 0x3e09
  048033  mov ecx, 0x80
  048038  mov edx, 0x80
  04803d  mov ebp, 0x20
  048042  mov edi, dword ptr [0x4678]
  048048  call 0x147a8
  04804d  mov ecx, 0x40
  048052  mov edx, 0x40
  048057  mov ebp, 0x10
  04805c  mov edi, dword ptr [0x4678]
  048062  add edi, 0x10000
  048068  call 0x147a8
  04806d  mov ecx, 0x20
  048072  mov edx, 0x20
  048077  mov ebp, 8
  04807c  mov edi, dword ptr [0x4678]
  048082  add edi, 0x18000
  048088  call 0x147a8
  04808d  mov ecx, 0x10
  048092  mov edx, 0x10
  048097  mov ebp, 4
  04809c  mov edi, dword ptr [0x4678]
  0480a2  add edi, 0x1c000
  0480a8  call 0x147a8
  0480ad  mov ecx, 8
  0480b2  mov edx, 8
  0480b7  mov ebp, 2
  0480bc  mov edi, dword ptr [0x4678]
  0480c2  add edi, 0x1e000
  0480c8  call 0x147a8
  0480cd  mov ecx, 4
  0480d2  mov edx, 4
  0480d7  mov ebp, 1
  0480dc  mov edi, dword ptr [0x4678]
  0480e2  add edi, 0x1f000
  0480e8  call 0x147a8
  0480ed  mov edx, 0x46010
  0480f2  call 0x3dcc
  0480f7  jb 0x49055
  0480fd  mov bl, 0
  0480ff  mov eax, 0xa
  048104  call 0x3e4a
  048109  mov edx, 0x46880
  04810e  mov ecx, 0x300
  048113  call 0x3eed
  048118  mov edx, dword ptr [0x4686c]
  04811e  mov ecx, 0x10000
  048123  call 0x3eed
  048128  call 0x3e09
  04812d  mov edi, 0x46b80
  048132  xor eax, eax
  048134  xor ebx, ebx
  048136  mov ecx, 0x100
L4813b:
  04813b  mov eax, 0
  048140  stosb byte ptr es:[edi], al
  048141  mov eax, 0
  048146  stosb byte ptr es:[edi], al
  048147  mov eax, 5
  04814c  stosb byte ptr es:[edi], al
  04814d  dec ecx
  04814e  jne 0x4813b
  048150  mov edi, dword ptr [0x48b0]
  048156  mov esi, 0
L4815b:
  04815b  mov ebp, 0
L48160:
  048160  mov ecx, 3
L48165:
  048165  movzx eax, byte ptr ds:[ebp + 0x46880]
  04816d  movzx ebx, byte ptr ds:[ebp + 0x46b80]
  048175  shl eax, 2
  048178  shl ebx, 2
  04817b  imul eax, esi
  04817e  mov edx, 0x15e
  048183  sub edx, esi
  048185  imul ebx, edx
  048188  add eax, ebx
  04818a  cdq 
  04818b  mov ebx, 0x15e
  048190  idiv ebx
  048192  cmp eax, 0
  048195  jg 0x48199
  048197  xor eax, eax
L48199:
  048199  cmp eax, 0xff
  04819e  jl 0x481a5
  0481a0  mov eax, 0xff
L481a5:
  0481a5  mov byte ptr [edi], al
  0481a7  inc edi
  0481a8  inc ebp
  0481a9  inc esi
  0481aa  loop 0x48165
  0481ac  sub esi, 3
  0481af  cmp ebp, 0x300
  0481b5  jne 0x48160
  0481b7  add esi, 3
  0481ba  cmp esi, 0x300
  0481c0  jne 0x4815b
  0481c2  mov esi, dword ptr [0x48b0]
  0481c8  mov edi, dword ptr [0x46870]
  0481ce  mov ebp, 0x46880
  0481d3  call 0x1f5a9
  0481d8  mov edi, 0x46880
  0481dd  mov edx, 0
  0481e2  mov ecx, 0x40
L481e7:
  0481e7  mov eax, 0
  0481ec  imul eax, ecx
  0481ef  mov ebx, 0x3f
  0481f4  imul ebx, edx
  0481f7  add eax, ebx
  0481f9  sar eax, 6
  0481fc  stosb byte ptr es:[edi], al
  0481fd  mov eax, 0
  048202  imul eax, ecx
  048205  mov ebx, 0x3f
  04820a  imul ebx, edx
  04820d  add eax, ebx
  04820f  sar eax, 6
  048212  stosb byte ptr es:[edi], al
  048213  mov eax, 5
  048218  imul eax, ecx
  04821b  mov ebx, 0x3f
  048220  imul ebx, edx
  048223  add eax, ebx
  048225  sar eax, 6
  048228  stosb byte ptr es:[edi], al
  048229  add edi, 9
  04822c  inc edx
  04822d  dec ecx
  04822e  jne 0x481e7
  048230  mov esi, dword ptr [0x48b0]
  048236  mov ecx, 0xc000
L4823b:
  04823b  shr byte ptr [esi], 2
  04823e  inc esi
  04823f  dec ecx
  048240  jne 0x4823b
  048242  mov eax, dword ptr [0x46870]
  048247  xor ebx, ebx
  048249  mov bl, byte ptr [eax]
  04824b  imul ebx, ebx, 3
  04824e  mov al, byte ptr [ebx + 0x46880]
  048254  mov byte ptr [0x46880], al
  048259  mov al, byte ptr [ebx + 0x46881]
  04825f  mov byte ptr [0x46881], al
  048264  mov al, byte ptr [ebx + 0x46882]
  04826a  mov byte ptr [0x46882], al
  04826f  mov esi, dword ptr [0x48b0]
  048275  mov edi, dword ptr [0x46870]
  04827b  mov ebp, 0x46880
  048280  mov ecx, 0x4000
  048285  call 0x1f4da
  04828a  mov edi, dword ptr [0x46870]
  048290  add edi, 0x3f00
  048296  mov edx, 0x5f
L4829b:
  04829b  mov esi, dword ptr [0x46870]
  0482a1  add esi, 0x3e00
  0482a7  mov ecx, 0x40
  0482ac  rep movsd dword ptr es:[edi], dword ptr [esi]
  0482ae  dec edx
  0482af  jne 0x4829b
  0482b1  mov edi, 0x46b80
  0482b6  xor eax, eax
  0482b8  xor ebx, ebx
  0482ba  mov ecx, 0x100
L482bf:
  0482bf  mov eax, ebx
  0482c1  stosb byte ptr es:[edi], al
  0482c2  stosb byte ptr es:[edi], al
  0482c3  mov eax, ebx
  0482c5  stosb byte ptr es:[edi], al
  0482c6  inc ebx
  0482c7  dec ecx
  0482c8  jne 0x482bf
  0482ca  mov edi, dword ptr [0x48b0]
  0482d0  mov esi, 0
L482d5:
  0482d5  mov ebp, 0
L482da:
  0482da  mov ecx, 3
L482df:
  0482df  movzx eax, byte ptr ds:[ebp + 0x46880]
  0482e7  movzx ebx, byte ptr [esi + 0x46b80]
  0482ee  shl ebx, 1
  0482f0  add eax, ebx
  0482f2  cmp eax, 0
  0482f5  jg 0x482f9
  0482f7  xor eax, eax
L482f9:
  0482f9  cmp eax, 0x3f
  0482fc  jl 0x48303
  0482fe  mov eax, 0x3f
L48303:
  048303  mov byte ptr [edi], al
  048305  inc edi
  048306  inc ebp
  048307  inc esi
  048308  loop 0x482df
  04830a  sub esi, 3
  04830d  cmp ebp, 0x300
  048313  jne 0x482da
  048315  add esi, 3
  048318  cmp esi, 0x300
  04831e  jne 0x482d5
  048320  mov esi, dword ptr [0x48b0]
  048326  mov edi, dword ptr [0x46874]
  04832c  mov ebp, 0x46880
  048331  mov ecx, 0x4000
  048336  call 0x1f4da
  04833b  ret 
  04833c  mov dword ptr [0x7f50], 0x49055
  048346  mov dword ptr [0x7f54], 0x48bce
  048350  mov dword ptr [0x7f58], 0x48d9c
  04835a  mov dword ptr [0x467c], 0x12
  048364  mov dword ptr [0x4680], 0x64
  04836e  fild dword ptr [0x467c]
  048374  fild dword ptr [0x4680]
  04837a  fdivp st(1)
  04837c  fstp dword ptr [0x4660]
  048382  mov dword ptr [0x17024], 0
  04838c  mov dword ptr [0x17210], 0
  048396  mov dword ptr [0x17208], 0
  0483a0  mov dword ptr [0x16630], 0
  0483aa  mov dword ptr [0x1f920], 0x1fefc
  0483b4  mov edx, 0x4601c
  0483b9  call 0x17570
  0483be  mov ebp, 0x7f98
  0483c3  call 0x17596
  0483c8  mov dword ptr [0x1f920], 0x1fc7b
  0483d2  mov edx, 0x46028
  0483d7  call 0x17570
  0483dc  call 0x17596
  0483e1  mov dword ptr [0x467c], 0xa
  0483eb  fild dword ptr [0x467c]
  0483f1  fstp qword ptr [0x4950]
  0483f7  mov ebp, 0x7f98
  0483fc  mov ecx, dword ptr [0x17210]
L48402:
  048402  mov dword ptr [ebp + 0x18], 0
  048409  mov dword ptr [ebp + 0x1c], 0
  048410  mov dword ptr [ebp + 0x20], 0
  048417  add ebp, 0x38
  04841a  dec ecx
  04841b  jne 0x48402
  04841d  mov dword ptr [0x14798], 0
  048427  mov ebp, 0xef98
  04842c  mov eax, 0x9128745
  048431  mov ebx, 0x23894175
  048436  mov ecx, 0x1838415
  04843b  mov edx, 1
  048440  mov edi, 0x178e0
L48445:
  048445  add eax, 0x40903484
  04844a  add ebx, 0x2935081
  048450  add ecx, 0x9234785
  048456  rol eax, 5
  048459  rol ebx, 7
  04845c  ror ecx, 4
  04845f  mov dword ptr [0x467c], eax
  048464  and dword ptr [0x467c], 0x1f
  04846b  sub dword ptr [0x467c], 0x10
  048472  mov dword ptr [0x4680], 0x64
  04847c  fild dword ptr [0x467c]
  048482  fild dword ptr [0x4680]
  048488  fdivp st(1)
  04848a  fstp qword ptr [edi + 8]
  04848d  mov esi, eax
  04848f  and esi, 0xff
  048495  imul esi, esi, 0x28
  048498  mov dword ptr [edi + 0x10], esi
  04849b  add edi, 0x18
  04849e  inc dword ptr [0x14798]
  0484a4  mov dword ptr [ebp], 0x48c10
  0484ab  fldz 
  0484ad  fstp dword ptr [ebp + 4]
  0484b0  fldz 
  0484b2  fstp dword ptr [ebp + 8]
  0484b5  fldz 
  0484b7  fstp dword ptr [ebp + 0xc]
  0484ba  mov dword ptr [0x467c], 0xfffffffb
  0484c4  fild dword ptr [0x467c]
  0484ca  fstp dword ptr [ebp + 0x20]
  0484cd  add ebp, 0x2c
  0484d0  dec edx
  0484d1  jne 0x48445
  0484d7  mov eax, dword ptr [0x14798]
  0484dc  add dword ptr [0x16630], eax
  0484e2  call 0x16e44
  0484e7  mov esi, 0x46880
  0484ec  mov ebp, 0x46b80
  0484f1  mov edi, 0x46e80
  0484f6  mov ecx, 0x300
L484fb:
  0484fb  movzx eax, byte ptr [esi]
  0484fe  mov ebx, eax
  048500  neg eax
  048502  add eax, 0x3f
  048505  cmp eax, 0x3f
  048508  jl 0x4850f
  04850a  mov eax, 0x3f
L4850f:
  04850f  mov byte ptr [edi], al
  048511  shr ebx, 2
  048514  cmp ebx, 0x3f
  048517  jl 0x4851e
  048519  mov ebx, 0x3f
L4851e:
  04851e  mov byte ptr [ebp], bl
  048521  inc esi
  048522  inc edi
  048523  inc ebp
  048524  dec ecx
  048525  jne 0x484fb
  048527  mov esi, dword ptr [0x4686c]
  04852d  mov edi, dword ptr [0x4670]
  048533  mov ecx, 0x4000
  048538  rep movsd dword ptr es:[edi], dword ptr [esi]
  04853a  mov esi, dword ptr [0x46870]
  048540  mov edi, dword ptr [0x48b4]
  048546  mov ecx, 0x4000
  04854b  rep movsd dword ptr es:[edi], dword ptr [esi]
  04854d  mov esi, dword ptr [0x46874]
  048553  mov edi, dword ptr [0x48bc]
  048559  mov ecx, 0x4000
  04855e  rep movsd dword ptr es:[edi], dword ptr [esi]
  048560  xor eax, eax
  048562  mov edi, 0x46e80
  048567  mov ecx, 0xc0
  04856c  rep stosd dword ptr es:[edi], eax
  04856e  mov dword ptr [0x4694], 0
  048578  mov eax, dword ptr [0x46008]
  04857d  mov dword ptr [0x46a8], eax
  048582  mov eax, dword ptr [0x4600c]
  048587  mov dword ptr [0x46ac], eax
  04858c  call 0x45ec8
  048591  call 0x45f43
  048596  mov dword ptr [0x469c], 1
  0485a0  mov dword ptr [0x1479c], 0
  0485aa  mov dword ptr [0x147a0], 0
  0485b4  mov dword ptr [0x147a4], 0
  0485be  mov eax, 0x2a30b
  0485c3  mov dword ptr [0x4c00], eax
  0485c8  mov dword ptr [0x467c], 0x5e
  0485d2  mov dword ptr [0x4680], 0x2710
  0485dc  fild dword ptr [0x467c]
  0485e2  fild dword ptr [0x4680]
  0485e8  fdivp st(1)
  0485ea  fst qword ptr [0x178a0]
  0485f0  fstp qword ptr [0x178d0]
  0485f6  mov dword ptr [0x178ac], 0x6e0
  048600  mov dword ptr [0x178dc], 0x6e0
  04860a  fldz 
  04860c  fst qword ptr [0x17898]
  048612  fstp qword ptr [0x178c8]
  048618  mov dword ptr [0x178a8], 0x348
  048622  mov dword ptr [0x178d8], 0x370
  04862c  mov dword ptr [0x467c], 0x3b
  048636  mov dword ptr [0x4680], 0x2710
  048640  fild dword ptr [0x467c]
  048646  fild dword ptr [0x4680]
  04864c  fdivp st(1)
  04864e  fstp qword ptr [0x178b8]
  048654  mov dword ptr [0x178c4], 0x780
  04865e  fldz 
  048660  fstp qword ptr [0x178b0]
  048666  mov dword ptr [0x178c0], 0
  048670  mov dword ptr [0x46868], 0
L4867a:
  04867a  mov dword ptr [0x469c], 0
L48684:
  048684  cmp dword ptr [0x469c], 1
  04868b  jl 0x48684
  04868d  mov esi, dword ptr [0x466c]
  048693  mov edi, dword ptr [0x4668]
  048699  xor ebp, ebp
  04869b  mov ecx, 0x1f40
L486a0:
  0486a0  mov eax, dword ptr [esi]
  0486a2  mov ebx, dword ptr [esi + 4]
  0486a5  mov dword ptr [esi], ebp
  0486a7  mov dword ptr [esi + 4], ebp
  0486aa  mov dword ptr [edi], eax
  0486ac  mov dword ptr [edi + 4], ebx
  0486af  add esi, 8
  0486b2  add edi, 8
  0486b5  dec ecx
  0486b6  jne 0x486a0
  0486b8  mov ebx, 0x17898
  0486bd  mov edi, 0x47198
  0486c2  call 0x1f2c0
  0486c7  fld qword ptr [0x17830]
  0486cd  fstp qword ptr [0x4af0]
  0486d3  fld qword ptr [0x17838]
  0486d9  fstp qword ptr [0x4af8]
  0486df  fld qword ptr [0x17840]
  0486e5  fstp qword ptr [0x4b00]
  0486eb  fld qword ptr [0x17848]
  0486f1  fstp qword ptr [0x4a20]
  0486f7  fld qword ptr [0x17850]
  0486fd  fstp qword ptr [0x4a28]
  048703  fld qword ptr [0x17858]
  048709  fstp qword ptr [0x4a30]
  04870f  fld qword ptr [0x17860]
  048715  fstp qword ptr [0x49f0]
  04871b  fld qword ptr [0x17868]
  048721  fstp qword ptr [0x49f8]
  048727  fld qword ptr [0x17870]
  04872d  fstp qword ptr [0x4a00]
  048733  fld qword ptr [0x17878]
  048739  fstp qword ptr [0x4938]
  04873f  mov ebx, 0x178c8
  048744  mov edi, 0x47198
  048749  call 0x1f2c0
  04874e  fld qword ptr [0x17860]
  048754  fstp qword ptr [0x49c0]
  04875a  fld qword ptr [0x17868]
  048760  fstp qword ptr [0x49c8]
  048766  fld qword ptr [0x17870]
  04876c  fstp qword ptr [0x49d0]
  048772  fldz 
  048774  fst qword ptr [0x49c0]
  04877a  fst qword ptr [0x49c8]
  048780  fstp qword ptr [0x49d0]
  048786  cmp word ptr [0x12bf], 0x26
  04878e  jae 0x487d6
  048790  fild dword ptr [0x46a8]
  048796  fdiv qword ptr [0x4a68]
  04879c  fcos 
  04879e  fild dword ptr [0x46ac]
  0487a4  fdiv qword ptr [0x4a68]
  0487aa  fsin 
  0487ac  fmulp st(1)
  0487ae  fmul st(0)
  0487b0  fmul st(0)
  0487b2  fmul st(0)
  0487b4  fmul st(0)
  0487b6  fabs 
  0487b8  fchs 
  0487ba  mov dword ptr [0x467c], 0x32
  0487c4  fimul dword ptr [0x467c]
  0487ca  fadd qword ptr [0x47c7e]
  0487d0  fstp qword ptr [0x4960]
L487d6:
  0487d6  fld qword ptr [0x4938]
  0487dc  fmul qword ptr [0x4960]
  0487e2  fstp qword ptr [0x4a78]
  0487e8  call 0x15d91
  0487ed  call 0x150d4
  0487f2  mov eax, dword ptr [0x1584c]
  0487f7  mov dword ptr [0x15854], eax
  0487fc  mov eax, dword ptr [0x15850]
  048801  mov dword ptr [0x15858], eax
  048806  mov dword ptr [0x1663c], 0
  048810  mov eax, dword ptr [0x16634]
  048815  mov dword ptr [0x16640], eax
  04881a  mov ecx, dword ptr [0x17210]
  048820  mov ebp, 0x7f98
L48825:
  048825  push ecx
  048826  cmp dword ptr [ebp + 4], 0
  04882a  jne 0x489d5
  048830  fld dword ptr [ebp + 0x34]
  048833  fstp dword ptr [0x17214]
  048839  fild dword ptr [ebp + 0x18]
  04883c  fdiv qword ptr [0x4a68]
  048842  fstp qword ptr [0x4a38]
  048848  fild dword ptr [ebp + 0x1c]
  04884b  fdiv qword ptr [0x4a68]
  048851  fstp qword ptr [0x4a40]
  048857  fild dword ptr [ebp + 0x20]
  04885a  fdiv qword ptr [0x4a68]
  048860  fstp qword ptr [0x4a48]
  048866  fld dword ptr [ebp + 0x24]
  048869  fstp qword ptr [0x49a8]
  04886f  fld dword ptr [ebp + 0x28]
  048872  fstp qword ptr [0x49b0]
  048878  fld dword ptr [ebp + 0x2c]
  04887b  fstp qword ptr [0x49b8]
  048881  mov ebx, 0x15b60
  048886  call 0x15f1b
  04888b  mov eax, 0x15b60
  048890  mov ebx, 0x15be0
  048895  mov ecx, 0x15ae0
  04889a  call 0x160b5
  04889f  cmp dword ptr [ebp], 0x4f627521
  0488a6  je 0x4891f
  0488a8  mov esi, dword ptr [ebp + 0x10]
  0488ab  mov ecx, dword ptr [ebp + 8]
L488ae:
  0488ae  mov dword ptr [esi + 4], 0
  0488b5  add esi, 0x40
  0488b8  dec ecx
  0488b9  jne 0x488ae
  0488bb  call 0x16244
  0488c0  mov esi, ebp
  0488c2  mov edi, 0x7f60
  0488c7  mov ecx, 0xe
  0488cc  rep movsd dword ptr es:[edi], dword ptr [esi]
  0488ce  mov dword ptr [0x7f68], 0
  0488d8  mov dword ptr [0x7f6c], 0
  0488e2  mov ebx, dword ptr [0x15854]
  0488e8  mov dword ptr [0x7f74], ebx
  0488ee  mov ebx, dword ptr [0x15858]
  0488f4  mov dword ptr [0x7f70], ebx
  0488fa  call 0x15a18
  0488ff  call 0x162fd
  048904  call 0x17028
  048909  push ebp
  04890a  mov ebp, 0x7f60
  04890f  call 0x162fd
  048914  call 0x17028
  048919  pop ebp
  04891a  jmp 0x489d5
L4891f:
  04891f  cmp byte ptr [0x41b6], 1
  048926  je 0x489d5
  04892c  mov esi, dword ptr [ebp + 0x14]
  04892f  mov eax, 0x1fa33
  048934  sub eax, dword ptr [esi + 4]
  048937  mov dword ptr [0x4664], eax
  04893c  mov eax, dword ptr [esi + 4]
  04893f  cmp eax, 0x1fc7b
  048944  jne 0x48950
  048946  mov dword ptr [0x4664], 1
L48950:
  048950  call 0x16100
  048955  call 0x16244
  04895a  call 0x163a4
  04895f  mov esi, ebp
  048961  mov edi, 0x7f60
  048966  mov ecx, 0xe
  04896b  rep movsd dword ptr es:[edi], dword ptr [esi]
  04896d  mov dword ptr [0x7f68], 0
  048977  mov dword ptr [0x7f6c], 0
  048981  mov ebx, dword ptr [0x15854]
  048987  mov dword ptr [0x7f74], ebx
  04898d  mov ebx, dword ptr [0x15858]
  048993  mov dword ptr [0x7f70], ebx
  048999  call 0x1592e
  04899e  call 0x162fd
  0489a3  call 0x16ea7
  0489a8  cmp dword ptr [0x4664], 1
  0489af  je 0x489b6
  0489b1  call 0x1653f
L489b6:
  0489b6  push ebp
  0489b7  mov ebp, 0x7f60
  0489bc  call 0x162fd
  0489c1  call 0x16ea7
  0489c6  cmp dword ptr [0x4664], 1
  0489cd  je 0x489d4
  0489cf  call 0x1653f
L489d4:
  0489d4  pop ebp
L489d5:
  0489d5  pop ecx
  0489d6  add ebp, 0x38
  0489d9  dec ecx
  0489da  jne 0x48825
  0489e0  mov dword ptr [0x467c], 0x28
  0489ea  fild dword ptr [0x467c]
  0489f0  fld dword ptr [0xefb8]
  0489f6  fmul qword ptr [0x4988]
  0489fc  fmul qword ptr [0x4938]
  048a02  fdivp st(1)
  048a04  fstp dword ptr [0x4658]
  048a0a  mov dword ptr [0x467c], 0xff
  048a14  fild dword ptr [0x467c]
  048a1a  fld dword ptr [0xefb8]
  048a20  fmul qword ptr [0x4988]
  048a26  fmul qword ptr [0x4938]
  048a2c  fdivp st(1)
  048a2e  fstp dword ptr [0x465c]
  048a34  mov ecx, dword ptr [0x14798]
  048a3a  cmp ecx, 0
  048a3d  je 0x48b91
  048a43  mov ebp, 0xef98
  048a48  mov edi, dword ptr [0x16640]
  048a4e  mov ebx, 0x178e0
L48a53:
  048a53  fld dword ptr [ebp + 4]
  048a56  fmul qword ptr [0x15be0]
  048a5c  fld dword ptr [ebp + 4]
  048a5f  fmul qword ptr [0x15be8]
  048a65  fld dword ptr [ebp + 4]
  048a68  fmul qword ptr [0x15bf0]
  048a6e  fld dword ptr [ebp + 8]
  048a71  fmul qword ptr [0x15c00]
  048a77  fld dword ptr [ebp + 8]
  048a7a  fmul qword ptr [0x15c08]
  048a80  fld dword ptr [ebp + 8]
  048a83  fmul qword ptr [0x15c10]
  048a89  fxch st(2)
  048a8b  faddp st(5)
  048a8d  faddp st(3)
  048a8f  faddp st(1)
  048a91  fld dword ptr [ebp + 0xc]
  048a94  fmul qword ptr [0x15c20]
  048a9a  fld dword ptr [ebp + 0xc]
  048a9d  fmul qword ptr [0x15c28]
  048aa3  fld dword ptr [ebp + 0xc]
  048aa6  fmul qword ptr [0x15c30]
  048aac  fxch st(2)
  048aae  faddp st(5)
  048ab0  faddp st(3)
  048ab2  faddp st(1)
  048ab4  fxch st(2)
  048ab6  fadd qword ptr [0x15c40]
  048abc  fxch st(1)
  048abe  fadd qword ptr [0x15c48]
  048ac4  fxch st(2)
  048ac6  fadd qword ptr [0x15c50]
  048acc  fst dword ptr [ebp + 0x1c]
  048acf  fstp dword ptr [0x4684]
  048ad5  fstp dword ptr [0x467c]
  048adb  fstp dword ptr [0x4680]
  048ae1  test dword ptr [0x4684], 0x80000000
  048aeb  je 0x48b81
  048af1  fld1 
  048af3  fld dword ptr [0x4684]
  048af9  fdivp st(1)
  048afb  fld dword ptr [0x467c]
  048b01  fld dword ptr [0x4680]
  048b07  fmul qword ptr [0x4a78]
  048b0d  fmul st(2)
  048b0f  fxch st(1)
  048b11  fmul qword ptr [0x4938]
  048b17  fmul st(2)
  048b19  fxch st(1)
  048b1b  fadd qword ptr [0x4930]
  048b21  fstp dword ptr [ebp + 0x18]
  048b24  fadd qword ptr [0x4928]
  048b2a  fstp dword ptr [ebp + 0x14]
  048b2d  fstp dword ptr [ebp + 0x10]
  048b30  mov eax, dword ptr [0x4658]
  048b35  cmp dword ptr [ebp], 0x48c10
  048b3c  jne 0x48b43
  048b3e  mov eax, dword ptr [0x465c]
L48b43:
  048b43  mov dword ptr [ebp + 0x28], eax
  048b46  fld dword ptr [0x4684]
  048b4c  fsub dword ptr [0x150d0]
  048b52  fmul dword ptr [0x150c0]
  048b58  fmul qword ptr [0x4990]
  048b5e  fchs 
  048b60  fistp dword ptr [0x4680]
  048b66  mov eax, 0xffff
  048b6b  sub eax, dword ptr [0x4680]
  048b71  mov dword ptr [edi], eax
  048b73  add edi, 4
  048b76  mov dword ptr [edi], ebp
  048b78  add edi, 4
  048b7b  inc dword ptr [0x1663c]
L48b81:
  048b81  add ebp, 0x2c
  048b84  dec ecx
  048b85  jne 0x48a53
  048b8b  mov dword ptr [0x16640], edi
L48b91:
  048b91  wait 
  048b92  fnstcw word ptr [0x4787c]
  048b98  push word ptr [0x4787c]
  048b9f  or word ptr [0x4787c], 0xc00
  048ba8  fldcw word ptr [0x4787c]
  048bae  cmp dword ptr [0x1663c], 0
  048bb5  je 0x48f8e
  048bbb  call 0x170f7
  048bc0  mov esi, dword ptr [0x16634]
  048bc6  add esi, 4
L48bc9:
  048bc9  mov ecx, dword ptr [esi]
  048bcb  push esi
  048bcc  jmp dword ptr [ecx]
  048bce  mov esi, dword ptr [ecx + 8]
  048bd1  mov edi, dword ptr [ecx + 0xc]
  048bd4  fld dword ptr [esi + 0x14]
  048bd7  fld dword ptr [esi + 0x18]
  048bda  fxch st(1)
  048bdc  fstp dword ptr [0x2936c]
  048be2  fstp dword ptr [0x29370]
  048be8  fld dword ptr [edi + 0x14]
  048beb  fld dword ptr [edi + 0x18]
  048bee  fxch st(1)
  048bf0  fstp dword ptr [0x2937c]
  048bf6  fstp dword ptr [0x29380]
  048bfc  mov esi, 0x2936c
  048c01  mov edi, 0x2937c
  048c06  call 0x293a4
  048c0b  jmp 0x48f7e
  048c10  fld dword ptr [ecx + 0x28]
  048c13  fmul dword ptr [ecx + 0x1c]
  048c16  fmul dword ptr [0x29690]
  048c1c  fistp dword ptr [0x4688]
  048c22  mov eax, dword ptr [0x4688]
  048c27  shr eax, 8
  048c2a  cmp eax, 0x3f
  048c2d  jl 0x48c34
  048c2f  mov eax, 0x3f
L48c34:
  048c34  cmp dword ptr [0x48dc], -1
  048c3b  je 0x48c42
  048c3d  mov eax, dword ptr [0x48dc]
L48c42:
  048c42  mov ebx, dword ptr [eax*4 + 0x4558]
  048c49  mov dword ptr [0x296a4], ebx
  048c4f  fld dword ptr [ecx + 0x28]
  048c52  fmul dword ptr [ecx + 0x1c]
  048c55  fmul dword ptr [eax*4 + 0x4458]
  048c5c  fst dword ptr [0x296c0]
  048c62  fmul dword ptr [0x29690]
  048c68  fistp dword ptr [0x296c8]
  048c6e  fld dword ptr [ecx + 0x20]
  048c71  fmul qword ptr [0x4938]
  048c77  fmul dword ptr [ecx + 0x10]
  048c7a  fstp dword ptr [0x2969c]
  048c80  fld dword ptr [ecx + 0x14]
  048c83  fsub dword ptr [0x2969c]
  048c89  fstp dword ptr [0x296a8]
  048c8f  fld dword ptr [ecx + 0x18]
  048c92  fsub dword ptr [0x2969c]
  048c98  fstp dword ptr [0x296ac]
  048c9e  fld dword ptr [ecx + 0x14]
  048ca1  fadd dword ptr [0x2969c]
  048ca7  fstp dword ptr [0x296b0]
  048cad  fld dword ptr [ecx + 0x18]
  048cb0  fadd dword ptr [0x2969c]
  048cb6  fstp dword ptr [0x296b4]
  048cbc  call 0x298b7
  048cc1  jmp 0x48f7e
  048cc6  fld qword ptr [0x49f0]
  048ccc  fsub dword ptr [ecx + 4]
  048ccf  fld qword ptr [0x49f8]
  048cd5  fsub dword ptr [ecx + 8]
  048cd8  fpatan 
  048cda  fldpi 
  048cdc  fmul qword ptr [0x4988]
  048ce2  fdivp st(1)
  048ce4  fmul qword ptr [0x4a68]
  048cea  fistp dword ptr [0x4688]
  048cf0  mov eax, dword ptr [0x4688]
  048cf5  and eax, 0xffff
  048cfa  mov ebx, 0x690
  048cff  cdq 
  048d00  idiv ebx
  048d02  mov esi, eax
  048d04  and esi, 3
  048d07  imul esi, esi, 0x28
  048d0a  shr eax, 2
  048d0d  imul eax, eax, 0x5300
  048d13  add eax, esi
  048d15  mov dword ptr [0x296a4], eax
  048d1a  fld dword ptr [ecx + 0x28]
  048d1d  fmul dword ptr [ecx + 0x1c]
  048d20  fst dword ptr [0x296c0]
  048d26  fmul dword ptr [0x29690]
  048d2c  fistp dword ptr [0x296c8]
  048d32  fld dword ptr [ecx + 0x20]
  048d35  fmul qword ptr [0x4938]
  048d3b  fmul dword ptr [ecx + 0x10]
  048d3e  fstp dword ptr [0x2969c]
  048d44  fld dword ptr [ecx + 0x24]
  048d47  fmul qword ptr [0x4938]
  048d4d  fmul dword ptr [ecx + 0x10]
  048d50  fstp dword ptr [0x296a0]
  048d56  fld dword ptr [ecx + 0x14]
  048d59  fsub dword ptr [0x2969c]
  048d5f  fstp dword ptr [0x296a8]
  048d65  fld dword ptr [ecx + 0x18]
  048d68  fsub dword ptr [0x296a0]
  048d6e  fstp dword ptr [0x296ac]
  048d74  fld dword ptr [ecx + 0x14]
  048d77  fadd dword ptr [0x2969c]
  048d7d  fstp dword ptr [0x296b0]
  048d83  fld dword ptr [ecx + 0x18]
  048d86  fadd dword ptr [0x296a0]
  048d8c  fstp dword ptr [0x296b4]
  048d92  call 0x296d8
  048d97  jmp 0x48f7e
  048d9c  mov esi, dword ptr [ecx + 0xc]
  048d9f  mov edi, dword ptr [ecx + 0x10]
  048da2  mov ebp, dword ptr [ecx + 0x14]
  048da5  xor eax, eax
  048da7  mov edx, eax
  048da9  shl edx, 0x10
  048dac  mov eax, dword ptr [eax*4 + 0x48e4]
  048db3  mov dword ptr [0x48f8], eax
  048db8  fild dword ptr [ecx + 0x2c]
  048dbb  fld dword ptr [esi + 0x1c]
  048dbe  fmul qword ptr [0x4940]
  048dc4  faddp st(1)
  048dc6  fistp dword ptr [0x4690]
  048dcc  mov eax, dword ptr [0x4690]
  048dd1  shr eax, 1
  048dd3  shl eax, 2
  048dd6  cmp eax, 0
  048dd9  jg 0x48ddd
  048ddb  xor eax, eax
L48ddd:
  048ddd  cmp eax, 0xff
  048de2  jl 0x48de9
  048de4  mov eax, 0xff
L48de9:
  048de9  mov byte ptr [0x1fa31], al
  048dee  mov eax, dword ptr [ecx + 0x28]
  048df1  shl eax, 0x10
  048df4  mov ebx, eax
  048df6  add eax, dword ptr [0x4670]
  048dfc  add eax, edx
  048dfe  mov dword ptr [0x1f924], eax
  048e03  add ebx, dword ptr [0x48b4]
  048e09  mov dword ptr [0x1f928], ebx
  048e0f  mov eax, dword ptr [ecx + 4]
  048e12  cmp eax, 0x1fa32
  048e17  je 0x48e49
  048e19  cmp eax, 0x1fc7b
  048e1e  je 0x48e49
  048e20  fld dword ptr [esi + 0x38]
  048e23  fadd dword ptr [edi + 0x38]
  048e26  fadd dword ptr [ebp + 0x38]
  048e29  fstp dword ptr [0x48d0]
  048e2f  mov ebx, dword ptr [0x490c]
  048e35  cmp dword ptr [0x48d0], ebx
  048e3b  jne 0x48e49
  048e3d  mov byte ptr [0x1fa31], 0
  048e44  mov eax, 0x1fa32
L48e49:
  048e49  mov dword ptr [0x1f920], eax
  048e4e  mov eax, dword ptr [esi]
  048e50  add eax, dword ptr [edi]
  048e52  add eax, dword ptr [ebp]
  048e55  jne 0x48e62
  048e57  call dword ptr [0x1f920]
  048e5d  jmp 0x48f7e
L48e62:
  048e62  push dword ptr [0x15858]
  048e68  mov dword ptr [0x14cb0], esi
  048e6e  mov dword ptr [0x14cb4], edi
  048e74  mov dword ptr [0x14cb8], ebp
  048e7a  mov dword ptr [0x14cbc], esi
  048e80  mov esi, 0x14cb0
  048e85  mov edi, 0x14d00
  048e8a  mov dword ptr [0x14d50], 0
  048e94  call 0x14d54
  048e99  call 0x14d54
  048e9e  call 0x14d54
  048ea3  cmp dword ptr [0x14d50], 3
  048eaa  jl 0x48f78
  048eb0  mov eax, dword ptr [0x14d00]
  048eb5  mov dword ptr [edi], eax
  048eb7  mov esi, 0x14d00
  048ebc  mov edi, 0x14cb0
  048ec1  mov ebp, dword ptr [0x14d50]
  048ec7  mov dword ptr [0x14d50], 0
L48ed1:
  048ed1  call 0x14e3a
  048ed6  dec ebp
  048ed7  jne 0x48ed1
  048ed9  cmp dword ptr [0x14d50], 3
  048ee0  jl 0x48f78
  048ee6  mov eax, dword ptr [0x14cb0]
  048eeb  mov dword ptr [edi], eax
  048eed  mov esi, 0x14cb0
  048ef2  mov edi, 0x14d00
  048ef7  mov ebp, dword ptr [0x14d50]
  048efd  mov dword ptr [0x14d50], 0
L48f07:
  048f07  call 0x14f28
  048f0c  dec ebp
  048f0d  jne 0x48f07
  048f0f  cmp dword ptr [0x14d50], 3
  048f16  jl 0x48f78
  048f18  mov eax, dword ptr [0x14d00]
  048f1d  mov dword ptr [edi], eax
  048f1f  mov esi, 0x14d00
  048f24  mov edi, 0x14cb0
  048f29  mov ebp, dword ptr [0x14d50]
  048f2f  mov dword ptr [0x14d50], 0
L48f39:
  048f39  call 0x14fed
  048f3e  dec ebp
  048f3f  jne 0x48f39
  048f41  cmp dword ptr [0x14d50], 3
  048f48  jl 0x48f78
  048f4a  sub dword ptr [0x14d50], 2
  048f51  xor eax, eax
L48f53:
  048f53  mov esi, dword ptr [0x14cb0]
  048f59  mov edi, dword ptr [eax + 0x14cb4]
  048f5f  mov ebp, dword ptr [eax + 0x14cb8]
  048f65  push eax
  048f66  call dword ptr [0x1f920]
  048f6c  pop eax
  048f6d  add eax, 4
  048f70  dec dword ptr [0x14d50]
  048f76  jne 0x48f53
L48f78:
  048f78  pop dword ptr [0x15858]
L48f7e:
  048f7e  pop esi
  048f7f  add esi, 8
  048f82  dec dword ptr [0x1663c]
  048f88  jne 0x48bc9
L48f8e:
  048f8e  pop word ptr [0x4787c]
  048f95  fldcw word ptr [0x4787c]
  048f9b  cmp dword ptr [0x4603c], 0
  048fa2  je 0x48fec
  048fa4  mov eax, dword ptr [0x46051]
  048fa9  imul eax, eax, 0x10aa
  048faf  mov esi, dword ptr [0x46049]
  048fb5  add esi, eax
  048fb7  mov edi, dword ptr [0x466c]
  048fbd  add edi, 0x34ee
  048fc3  mov edx, 0x9e
L48fc8:
  048fc8  mov ecx, 0x1b
L48fcd:
  048fcd  mov ebp, 8
  048fd2  mov bl, byte ptr [esi]
L48fd4:
  048fd4  mov al, bl
  048fd6  shr bl, 1
  048fd8  and al, 1
  048fda  je 0x48fde
  048fdc  mov byte ptr [edi], al
L48fde:
  048fde  inc edi
  048fdf  dec ebp
  048fe0  jne 0x48fd4
  048fe2  inc esi
  048fe3  dec ecx
  048fe4  jne 0x48fcd
  048fe6  add edi, 0x68
  048fe9  dec edx
  048fea  jne 0x48fc8
L48fec:
  048fec  cmp byte ptr [0x41cb], 1
  048ff3  jne 0x49007
  048ff5  fld qword ptr [0x4958]
  048ffb  fadd qword ptr [0x4950]
  049001  fstp qword ptr [0x4950]
L49007:
  049007  cmp byte ptr [0x41cc], 1
  04900e  jne 0x49024
  049010  fld qword ptr [0x4958]
  049016  fchs 
  049018  fadd qword ptr [0x4950]
  04901e  fstp qword ptr [0x4950]
L49024:
  049024  in al, 0x60
  049026  cmp al, 1
  049028  jne 0x49036
  04902a  mov dword ptr [0x4aeb0], 1
  049034  jmp 0x49044
L49036:
  049036  cmp word ptr [0x12bf], 0x27
  04903e  jl 0x4867a
L49044:
  049044  fld qword ptr [0x47c7e]
  04904a  fstp qword ptr [0x4960]
  049050  call 0x45f1c
L49055:
  049055  ret 
  049056  xchg ebx, ebx
  049058  xchg ebx, ebx
  04905a  xchg ebx, ebx
  04905c  xchg ebx, ebx
  04905e  xchg ebx, ebx
  049060  add byte ptr [eax], al
  049062  add byte ptr [eax], al
  049064  add byte ptr [eax], al
  049066  add byte ptr [eax], al
  049068  add byte ptr [eax], al
  04906a  add byte ptr [eax], al
  04906c  add byte ptr [eax], al
  04906e  add byte ptr [eax], al
  049070  add byte ptr [eax], al
  049072  add byte ptr [eax], al
  049074  xchg ebx, ebx
  049076  xchg ebx, ebx
  049078  xchg ebx, ebx
  04907a  xchg ebx, ebx
  04907c  xchg ebx, ebx
  04907e  xchg ebx, ebx
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
  0496ac  mov eax, 0x40e6427a
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
  0496ff  and byte ptr [0x200a240a], cl
  049705  and byte ptr [eax], ah
  049707  xor edx, edi
  049709  jae 0x4976d
  04970b  and byte ptr [eax], ah
  04970d  and byte ptr [eax], ah
  04970f  and byte ptr [eax], ah
  049711  and byte ptr [eax], ah
  049713  and byte ptr [eax], ah
  049715  and byte ptr [eax], ah
  049717  and byte ptr [eax], ah
  049719  and byte ptr [eax], ah
  04971b  and byte ptr [eax], ah
  04971d  and byte ptr [eax], ah
  04971f  and byte ptr [eax], ah
  049721  and byte ptr [eax], ah
  049723  or eax, 0x2020200a
  049728  xor bh, dl
  04972a  jne 0x497a0
  04972d  and byte ptr [eax], ah
  04972f  and byte ptr [eax], ah
  049731  and byte ptr [eax], ah
  049733  and byte ptr [eax], ah
  049735  and byte ptr [eax], ah
  049737  and byte ptr [eax], ah
  049739  and byte ptr [eax], ah
  04973b  and byte ptr [eax], ah
  04973d  and byte ptr [eax], ah
  04973f  and byte ptr [eax], ah
  049741  and byte ptr [eax], ah
  049743  and byte ptr [0x2020200a], cl
  049749  xor edi, edx
  04974b  jae 0x497af
  04974d  jo 0x497c1
  04974f  outsd dx, dword ptr [esi]
  049750  and byte ptr [eax], ah
  049752  and byte ptr [eax], ah
  049754  and byte ptr [eax], ah
  049756  and byte ptr [eax], ah
  049758  and byte ptr [eax], ah
  04975a  and byte ptr [eax], ah
  04975c  and byte ptr [eax], ah
  04975e  and byte ptr [eax], ah
  049760  and byte ptr [eax], ah
  049762  and byte ptr [eax], ah
  049764  and byte ptr [0x2020200a], cl
  04976a  xor al, 0xfa
  04976c  outsb dx, byte ptr [esi]
L4976d:
  04976d  outsd dx, dword ptr [esi]
  04976e  outsb dx, byte ptr [esi]
  04976f  and byte ptr gs:[eax], ah
  049772  and byte ptr [eax], ah
  049774  and byte ptr [eax], ah
  049776  and byte ptr [eax], ah
  049778  and byte ptr [eax], ah
  04977a  and byte ptr [eax], ah
  04977c  and byte ptr [eax], ah
  04977e  and byte ptr [eax], ah
  049780  and byte ptr [eax], ah
  049782  and byte ptr [eax], ah
  049784  and byte ptr [eax], ah
  049786  or eax, 0x200a240a
  04978b  and byte ptr [eax], ah
  04978d  xor edx, edi
  04978f  xor dh, byte ptr [ecx]
  049791  xor byte ptr [eax + 0x20], ch
  049794  and byte ptr [eax], ah
  049796  and byte ptr [eax], ah
  049798  and byte ptr [eax], ah
  04979a  and byte ptr [eax], ah
  04979c  and byte ptr [eax], ah
  04979e  and byte ptr [eax], ah
L497a0:
  0497a0  and byte ptr [eax], ah
  0497a2  and byte ptr [eax], ah
  0497a4  and byte ptr [eax], ah
  0497a6  and byte ptr [eax], ah
  0497a8  and byte ptr [0x2020200a], cl
  0497ae  xor bh, dl
  0497b0  xor dh, byte ptr [edx]
  0497b2  xor byte ptr [eax + 0x20], ch
  0497b5  and byte ptr [eax], ah
  0497b7  and byte ptr [eax], ah
  0497b9  and byte ptr [eax], ah
  0497bb  and byte ptr [eax], ah
  0497bd  and byte ptr [eax], ah
  0497bf  and byte ptr [eax], ah
L497c1:
  0497c1  and byte ptr [eax], ah
  0497c3  and byte ptr [eax], ah
  0497c5  and byte ptr [eax], ah
  0497c7  and byte ptr [eax], ah
  0497c9  and byte ptr [0x2020200a], cl
  0497cf  and byte ptr [esi], ch
  0497d1  and byte ptr cs:[eax], ah
  0497d5  and byte ptr [eax], ah
  0497d7  and byte ptr [eax], ah
  0497d9  and byte ptr [eax], ah
  0497db  and byte ptr [eax], ah
  0497dd  and byte ptr [eax], ah
  0497df  and byte ptr [eax], ah
  0497e1  and byte ptr [eax], ah
  0497e3  and byte ptr [eax], ah
  0497e5  and byte ptr [eax], ah
  0497e7  and byte ptr [eax], ah
  0497e9  and byte ptr [eax], ah
  0497eb  or eax, 0x200a240a
  0497f0  and byte ptr [eax], ah
  0497f2  xor edx, edi
  0497f4  imul esi, dword ptr [edx + 0x71], 0x20203220
  0497fb  and byte ptr [eax], ah
  0497fd  and byte ptr [eax], ah
  0497ff  and byte ptr [eax], ah
  049801  and byte ptr [eax], ah
  049803  and byte ptr [eax], ah
  049805  and byte ptr [eax], ah
  049807  and byte ptr [eax], ah
  049809  and byte ptr [eax], ah
  04980b  and byte ptr [eax], ah
  04980d  and byte ptr [0x2020200a], cl
  049813  xor bh, dl
  049815  imul esi, dword ptr [edx + 0x71], 0x20203320
  04981c  and byte ptr [eax], ah
  04981e  and byte ptr [eax], ah
  049820  and byte ptr [eax], ah
  049822  and byte ptr [eax], ah
  049824  and byte ptr [eax], ah
  049826  and byte ptr [eax], ah
  049828  and byte ptr [eax], ah
  04982a  and byte ptr [eax], ah
  04982c  and byte ptr [eax], ah
  04982e  and byte ptr [0x2020200a], cl
  049834  xor edi, edx
  049836  imul esi, dword ptr [edx + 0x71], 0x20203520
  04983d  and byte ptr [eax], ah
  04983f  and byte ptr [eax], ah
  049841  and byte ptr [eax], ah
  049843  and byte ptr [eax], ah
  049845  and byte ptr [eax], ah
  049847  and byte ptr [eax], ah
  049849  and byte ptr [eax], ah
  04984b  and byte ptr [eax], ah
  04984d  and byte ptr [eax], ah
  04984f  and byte ptr [0x2020200a], cl
  049855  xor al, 0xfa
  049857  imul esi, dword ptr [edx + 0x71], 0x20203720
  04985e  and byte ptr [eax], ah
  049860  and byte ptr [eax], ah
  049862  and byte ptr [eax], ah
  049864  and byte ptr [eax], ah
  049866  and byte ptr [eax], ah
  049868  and byte ptr [eax], ah
  04986a  and byte ptr [eax], ah
  04986c  and byte ptr [eax], ah
  04986e  and byte ptr [eax], ah
  049870  and byte ptr [0x2020200a], cl
  049876  xor eax, 0x717269fa
  04987b  xor dword ptr [ecx], esi
  04987d  and byte ptr [eax], ah
  04987f  and byte ptr [eax], ah
  049881  and byte ptr [eax], ah
  049883  and byte ptr [eax], ah
  049885  and byte ptr [eax], ah
  049887  and byte ptr [eax], ah
  049889  and byte ptr [eax], ah
  04988b  and byte ptr [eax], ah
  04988d  and byte ptr [eax], ah
  04988f  and byte ptr [eax], ah
  049891  and byte ptr [0x2020200a], cl
  049897  cli 
  049899  imul esi, dword ptr [edx + 0x71], 0x20203531
  0498a0  and byte ptr [eax], ah
  0498a2  and byte ptr [eax], ah
  0498a4  and byte ptr [eax], ah
  0498a6  and byte ptr [eax], ah
  0498a8  and byte ptr [eax], ah
  0498aa  and byte ptr [eax], ah
  0498ac  and byte ptr [eax], ah
  0498ae  and byte ptr [eax], ah
  0498b0  and byte ptr [eax], ah
  0498b2  and byte ptr [0x700a240a], cl
  0498b8  outsb dx, byte ptr gs:[esi]
  0498ba  je 0x49930
  0498bc  imul esp, dword ptr [eax], 0xfafafa5b
  0498c2  cli 
  0498c3  cli 
  0498c4  cli 
  0498c5  cli 
  0498c6  cli 
  0498c7  cli 
  0498c8  cli 
  0498c9  pop ebp
  0498ca  or byte ptr [eax], cl
  0498cc  or byte ptr [eax], cl
  0498ce  or byte ptr [eax], cl
  0498d0  or byte ptr [eax], cl
  0498d2  or byte ptr [eax], cl
  0498d4  or byte ptr [esi + edi*8], ah
  0498d7  and al, 0x68
  0498d9  imul esi, dword ptr gs:[eax + 0x70], 0x240a0d61
  0498e1  add al, byte ptr [ebx]
  0498e3  add eax, 0x100f0b07
  0498e8  add ah, byte ptr [eax]
  0498ea  add dh, byte ptr [eax]
  0498ec  add al, byte ptr [eax + 2]
  0498ef  push eax
  0498f0  add ah, byte ptr [eax + 2]
  0498f3  inc eax
  0498f4  inc esi
  0498f5  push ss
  0498f6  add byte ptr [ebx - 0x6b], dh
  0498f9  imul eax, dword ptr [eax], 0x55
  0498fc  dec esp
  0498fd  push esp
  0498fe  push edx
  0498ff  inc ecx
  049900  push ebx
  049901  dec esi
  049902  inc esp
  049903  inc edx
  049904  dec esp
  049905  inc ecx
  049906  push ebx
  049907  push esp
  049908  inc ebp
  049909  push edx
  04990a  add eax, 0xdb87db87
  04990f  nop 
  049910  add byte ptr [eax], al
  049912  add byte ptr [eax], al
  049914  add byte ptr [eax], al
  049916  add byte ptr [eax], al
  049918  add byte ptr [eax], al
  04991a  sub al, byte ptr [eax]
  04991c  mov al, byte ptr [0x66000000]
  049921  add byte ptr [eax], al
  049923  add dh, bh
  049925  add byte ptr [eax], al
  049927  add bh, bh
  049929  db 0xff
  04992a  db 0xff
  04992b  inc dword ptr [eax]
  04992d  add byte ptr [0x1e000000], bl
  049933  add byte ptr [eax], al
  049935  add byte ptr [edi], bl
  049937  add byte ptr [eax], al
  049939  add byte ptr [eax], ah
  04993b  add byte ptr [eax], al
  04993d  add byte ptr [ecx], ah
  04993f  add byte ptr [eax], al
  049941  add byte ptr [eax], al
  049943  add byte ptr [eax], al
  049945  add byte ptr [edx], ah
  049947  add byte ptr [ecx], cl
  04994a  add byte ptr [eax], al
  04994c  mov es, word ptr [eax]
  04994e  add byte ptr [eax], al
  049950  add eax, dword ptr [eax]
  049952  add byte ptr [eax], al
  049954  add al, byte ptr [eax]
  049956  add byte ptr [eax], al
  049958  sub dword ptr [eax], edx
  04995a  add byte ptr [eax], al
  04995c  xchg edi, eax
  04995d  and byte ptr [eax], al
  04995f  add ch, ch
  049961  xor byte ptr [eax], al
  049963  add byte ptr [edx], dh
  049965  inc ecx
  049966  add byte ptr [eax], al
  049968  xchg esi, eax
  049969  push ecx
  04996a  add byte ptr [eax], al
  04996c  shl dword ptr [ecx], 0
  049970  mov byte ptr [edx], dh
  049973  add dl, al
  049975  add byte ptr [eax], 0
  049978  xchg esi, eax
  049979  xchg ebx, eax
  04997a  add byte ptr [eax], al
  04997c  shl byte ptr [eax + eax + 0xb65c00], 0
  049984  and cl, al
  049986  add byte ptr [eax], al
  049988  push esi
  049989  fiadd dword ptr [eax]
  04998b  add dh, al
  04998d  in al, dx
  04998e  add byte ptr [eax], al
  049990  or bh, bh
  049992  add byte ptr [eax], al
  049994  pushfd 
  049995  adc dword ptr [ecx], eax
  049997  add byte ptr [esp], bl
  04999a  add dword ptr [eax], eax
  04999c  jb 0x499d4
  04999e  add dword ptr [eax], eax
  0499a0  sbb cl, byte ptr [ecx + 1]
  0499a3  add byte ptr [ecx + 0x7600015b], cl
  0499a9  outsb dx, byte ptr [esi]
  0499aa  add dword ptr [eax], eax
  0499ac  xor eax, 0xae000181
  0499b1  xchg ebx, eax
  0499b2  add dword ptr [eax], eax
  0499b4  aaa 
  0499b5  cmpsb byte ptr [esi], byte ptr es:[edi]
  0499b6  add dword ptr [eax], eax
  0499b8  mov esp, 0xa00001b8
  0499bd  retf 1
  0499c0  xor eax, 0x430001dc
  0499c5  in eax, dx
  0499c6  add dword ptr [eax], eax
  0499c8  pop ds
  0499c9  inc byte ptr [ecx]
  0499cb  add byte ptr [ebp + 0xe], al
  0499ce  add al, byte ptr [eax]
  0499d0  mov dh, 0x1d
  0499d2  add al, byte ptr [eax]
L499d4:
  0499d4  std 
  0499d5  sub al, 2
  0499d7  add byte ptr [edi + 0x3b], bl
  0499da  add al, byte ptr [eax]
  0499dc  aaa 
  0499dd  dec ecx
  0499de  add al, byte ptr [eax]
  0499e0  pop ds
  0499e1  push esi
  0499e2  add al, byte ptr [eax]
  0499e4  mov ah, 0x62
  0499e6  add al, byte ptr [eax]
  0499e8  and ch, byte ptr [edi + 2]
  0499eb  add byte ptr [edi], dh
  0499ed  jnp 0x499f1
  0499ef  add byte ptr [edi + 0x7b000287], dl
  0499f5  xchg ebx, eax
  0499f6  add al, byte ptr [eax]
  0499f8  adc esp, dword ptr [eax - 0x53a6fffe]
  0499fe  add al, byte ptr [eax]
  049a00  scasb al, byte ptr es:[edi]
  049a01  mov eax, 0xc4ca0002
  049a06  add al, byte ptr [eax]
  049a08  sbb al, 0xd1
  049a0a  add al, byte ptr [eax]
  049a0c  pushal 
  049a0d  fld qword ptr [edx]
  049a0f  add byte ptr [esi - 0x17], bh
  049a12  add al, byte ptr [eax]
  049a14  mov ecx, 0xe00002f5
  049a19  add dword ptr [ebx], eax
  049a1b  add byte ptr [edx], cl
  049a1d  push cs
  049a1e  add eax, dword ptr [eax]
  049a20  adc byte ptr [edx], bl
  049a22  add eax, dword ptr [eax]
  049a24  std 
  049a25  and eax, 0x31da0003
  049a2a  add eax, dword ptr [eax]
  049a2c  iretd 
  049a2d  cmp eax, 0x4a620003
  049a32  add eax, dword ptr [eax]
  049a34  cmp byte ptr [edi + 3], dl
  049a37  add byte ptr [ebp - 0x68fffc9c], ch
  049a3d  jb 0x49a42
  049a3f  add byte ptr [edi - 0x80], al
L49a42:
  049a42  add eax, dword ptr [eax]
  049a44  mov esp, 0x4a00038e
  049a49  popfd 
  049a4a  add eax, dword ptr [eax]
  049a4c  mov cl, 0xab
  049a4e  add eax, dword ptr [eax]
  049a50  db 0xff
  049a51  mov edx, 0xca170003
  049a56  add eax, dword ptr [eax]
  049a58  ret 
  049a59  fadd dword ptr [ebx]
  049a5b  add byte ptr [ebx + 0x330003e6], ch
  049a61  add eax, dword ptr [eax]
  049a64  db 0x8e
  049a65  cld 
  049a66  add eax, dword ptr [eax]
  049a68  push edi
  049a69  add eax, 0xe110004
  049a6e  add al, 0
  049a70  push 0xbf000416
  049a75  push ds
  049a76  add al, 0
  049a78  and eax, 0xde000427
  049a7d  das 
  049a7e  add al, 0
  049a80  dec esi
  049a81  cmp dword ptr [eax + eax], eax
  049a84  or eax, dword ptr [ebx + 4]
  049a87  add byte ptr [edx + 0x4d], dl
  049a8a  add al, 0
  049a8c  or eax, 0xf3000458
  049a91  bound eax, qword ptr [eax + eax]
  049a94  int1 
  049a95  insd dword ptr es:[edi], dx
  049a96  add al, 0
  049a98  dec eax
  049a99  jns 0x49a9f
  049a9b  add ch, dh
  049a9d  test byte ptr [eax + eax], al
  049aa0  pop ecx
  049aa1  nop 
  049aa2  add al, 0
  049aa4  insb byte ptr es:[edi], dx
  049aa5  wait 
  049aa6  add al, 0
  049aa8  push ss
  049aa9  cmpsd dword ptr [esi], dword ptr es:[edi]
  049aaa  add al, 0
  049aac  fnstenv [edx - 0x40e1fffc]
  049ab2  add al, 0
  049ab4  mov byte ptr [0x30004cb], al
  049ab9  fadd dword ptr [eax + eax]
  049abc  mov esp, esp
  049abe  add al, 0
  049ac0  jne 0x49ab3
  049ac2  add al, 0
  049ac4  nop 
  049ac5  inc byte ptr [eax + eax]
  049ac8  movsb byte ptr es:[edi], byte ptr [esi]
  049ac9  or eax, dword ptr [0x518bb00]
  049acf  add ah, bl
  049ad1  and eax, 0x33100005
  049ad6  add eax, 0x53fff00
  049adb  add byte ptr [esp + ecx*2 + 0x59bb0005], ch
  049ae2  add eax, 0x566da00
  049ae7  add byte ptr [ebx + esi*2 - 0x7f7efffb], dh
  049aee  add eax, 0x58d3200
  049af3  add dl, dl
  049af5  cdq 
  049af6  add eax, 0x5a6b400
  049afb  add byte ptr [edx + 0x7e0005b3], dh
  049b01  rol byte ptr [0x5cd6800], 0
  049b08  push esi
  049b09  fiadd dword ptr [0x5e73500]
  049b0f  add byte ptr [esp + esi*8], ah
  049b12  add eax, 0x6010f00
  049b17  add byte ptr [edx - 0x15fff9f2], dh
  049b1d  sbb eax, dword ptr [esi]
  049b1f  add bh, al
  049b21  sub dword ptr [esi], eax
  049b23  add byte ptr [esi + 0x37], ch
  049b26  push es
  049b27  add byte ptr [eax*2 + 0x52ca0006], dl
  049b2e  push es
  049b2f  add byte ptr [eax], al
  049b32  push es
  049b33  add bl, ah
  049b35  insb byte ptr es:[edi], dx
  049b36  push es
  049b37  add byte ptr [eax + 0x7a], dh
  049b3a  push es
  049b3b  add byte ptr [eax + ecx*4 + 6], ah
  049b3f  add byte ptr [edi], bh
  049b41  xchg esi, eax
  049b42  push es
  049b43  add byte ptr [eax], dl
  049b45  movsb byte ptr es:[edi], byte ptr [esi]
  049b46  push es
  049b47  add byte ptr [eax - 0x2fff94f], dl
  049b4d  mov esi, 0xcc5c0006
  049b52  push es
  049b53  add byte ptr [esi - 0x3efff927], dh
  049b59  out 6, al
  049b5b  add byte ptr [esi - 0x2efff90d], bh
  049b61  add byte ptr [edi], al
  049b63  add byte ptr [esi + 0xf00070d], ah
  049b69  sbb al, byte ptr [edi]
  049b6b  add byte ptr [esi], ah
  049b6e  pop es
  049b6f  add byte ptr [esi], cl
  049b71  xor al, byte ptr [edi]
  049b73  add al, bh
  049b75  cmp eax, 0x49d50007
  049b7a  pop es
  049b7b  add bl, ch
  049b7d  push ebp
  049b7e  pop es
  049b7f  add ah, ah
  049b81  popal 
  049b82  pop es
  049b83  add dh, bl
  049b85  insd dword ptr es:[edi], dx
  049b86  pop es
  049b87  add byte ptr [edx], cl
  049b89  jp 0x49b92
  049b8b  add al, dh
  049b8d  lock add byte ptr [eax], al
  049b90  inc eax
  049b91  inc ecx
L49b92:
  049b92  add dword ptr [eax], eax
  049b94  inc eax
  049b95  mov eax, dword ptr [0xb91f3bbb]
  049b9a  pushfd 
  049b9b  aas 
  049b9c  add al, 0x2d
  049b9e  inc esp
  049b9f  push esp
  049ba0  sti 
  049ba1  and dword ptr [ecx], ecx
  049ba3  inc eax
  049ba4  add byte ptr [eax], al
  049ba6  add byte ptr [eax], al
  049ba8  add byte ptr es:[eax], al
  049bab  add byte ptr [eax + eax], ah
  049baf  add dh, bh
  049bb1  add eax, dword ptr [eax]
  049bb3  add ah, dh
  049bb5  add eax, dword ptr [eax]
  049bb7  add bh, dl
  049bb9  add eax, dword ptr [eax]
  049bbb  add byte ptr [eax + 0x68000003], ch
  049bc1  add eax, dword ptr [eax]
  049bc3  add byte ptr [ebx], bl
  049bc5  add eax, dword ptr [eax]
  049bc7  add bl, al
  049bc9  add al, byte ptr [eax]
  049bcb  add byte ptr [ebx + 2], ah
  049bce  add byte ptr [eax], al
  049bd0  inc dword ptr [ecx]
  049bd2  add byte ptr [eax], al
  049bd4  wait 
  049bd5  add dword ptr [eax], eax
  049bd7  add byte ptr [ebx], bh
  049bd9  add dword ptr [eax], eax
  049bdb  add bl, ah
  049bdd  add byte ptr [eax], al
  049bdf  add byte ptr [esi + 0x56000000], dl
  049be5  add byte ptr [eax], al
  049be7  add byte ptr [edi], ah
  049be9  add byte ptr [eax], al
  049beb  add byte ptr [edx], cl
  049bed  add byte ptr [eax], al
  049bef  add byte ptr [eax], al
  049bf1  add byte ptr [eax], al
  049bf3  add byte ptr [eax], al
  049bf5  add byte ptr [eax], al
  049bf7  add byte ptr [ecx], al
  049bf9  add byte ptr [eax], al
  049bfb  add byte ptr [edx], al
  049bfd  add byte ptr [eax], al
  049bff  add byte ptr [ebx], al
  049c01  add byte ptr [eax], al
  049c03  add byte ptr [0x7000000], al
  049c09  add byte ptr [eax], al
  049c0b  add byte ptr [edx], cl
  049c0d  add byte ptr [eax], al
  049c0f  add byte ptr [0x10000000], cl
  049c15  add byte ptr [eax], al
  049c17  add byte ptr [eax + eax], dl
  049c1a  add byte ptr [eax], al
  049c1c  sbb byte ptr [eax], al
  049c1e  add byte ptr [eax], al
  049c20  sbb eax, 0x22000000
  049c25  add byte ptr [eax], al
  049c27  add byte ptr [edi], ah
  049c29  add byte ptr [eax], al
  049c2b  add byte ptr [0x33000000], ch
  049c31  add byte ptr [eax], al
  049c33  add byte ptr [ecx], bh
  049c35  add byte ptr [eax], al
  049c37  add byte ptr [eax], al
  049c3a  add byte ptr [eax], al
  049c3c  inc edi
  049c3d  add byte ptr [eax], al
  049c3f  add byte ptr [esi], cl
  049c42  add byte ptr [eax], al
  049c44  push esi
  049c45  add byte ptr [eax], al
  049c47  add byte ptr [esi], bl
  049c4a  add byte ptr [eax], al
  049c4c  add byte ptr [bx + si], al
  049c4f  add byte ptr [edi], ch
  049c52  add byte ptr [eax], al
  049c54  jns 0x49c56
L49c56:
  049c56  add byte ptr [eax], al
  049c58  add byte ptr [eax], 0
  049c5b  add byte ptr [eax + eax + 0x960000], cl
  049c62  add byte ptr [eax], al
  049c64  mov al, byte ptr [0xaa000000]
  049c69  add byte ptr [eax], al
  049c6b  add byte ptr [ebp - 0x40000000], dh
  049c71  add byte ptr [eax], al
  049c73  add ah, cl
  049c75  add byte ptr [eax], al
  049c77  add bh, dl
  049c79  add byte ptr [eax], al
  049c7b  add bl, ah
  049c7d  add byte ptr [eax], al
  049c7f  add bh, ch
  049c81  add byte ptr [eax], al
  049c83  add bl, bh
  049c85  add byte ptr [eax], al
  049c87  add byte ptr [eax], cl
  049c89  add dword ptr [eax], eax
  049c8b  add byte ptr [ecx + eax], dl
  049c8e  add byte ptr [eax], al
  049c90  and dword ptr [ecx], eax
  049c92  add byte ptr [eax], al
  049c94  add dword ptr cs:[eax], eax
  049c97  add byte ptr [ebx], bh
  049c99  add dword ptr [eax], eax
  049c9b  add byte ptr [ecx + 1], cl
  049c9e  add byte ptr [eax], al
  049ca0  push esi
  049ca1  add dword ptr [eax], eax
  049ca3  add byte ptr [ecx + eax], ah
  049ca7  add byte ptr [edx + 1], dh
  049caa  add byte ptr [eax], al
  049cac  jg 0x49caf
  049cae  add byte ptr [eax], al
  049cb0  lea eax, [ecx]
  049cb2  add byte ptr [eax], al
  049cb4  wait 
  049cb5  add dword ptr [eax], eax
  049cb7  add byte ptr [ecx - 0x47ffffff], ch
  049cbd  add dword ptr [eax], eax
  049cbf  add dh, al
  049cc1  add dword ptr [eax], eax
  049cc3  add ah, dl
  049cc5  add dword ptr [eax], eax
  049cc7  add dl, ah
  049cc9  add dword ptr [eax], eax
  049ccb  add cl, dh
  049ccd  add dword ptr [eax], eax
  049ccf  add bh, bh
  049cd1  add dword ptr [eax], eax
  049cd3  add byte ptr [0x1c000002], cl
  049cd9  add al, byte ptr [eax]
  049cdb  add byte ptr [edx], ch
  049cdd  add al, byte ptr [eax]
  049cdf  add byte ptr [eax], bh
  049ce1  add al, byte ptr [eax]
  049ce3  add byte ptr [esi + 2], al
  049ce6  add byte ptr [eax], al
  049ce8  push ebp
  049ce9  add al, byte ptr [eax]
  049ceb  add byte ptr [ebx + 2], ah
  049cee  add byte ptr [eax], al
  049cf0  jno 0x49cf4
  049cf2  add byte ptr [eax], al
L49cf4:
  049cf4  jg 0x49cf8
  049cf6  add byte ptr [eax], al
L49cf8:
  049cf8  mov word ptr [edx], es
  049cfa  add byte ptr [eax], al
  049cfc  lcall 2, 0xa8000002
  049d03  add byte ptr [ebp - 0x3cfffffe], dh
  049d09  add al, byte ptr [eax]
  049d0b  add al, dl
  049d0d  add al, byte ptr [eax]
  049d0f  add ch, bl
  049d11  add al, byte ptr [eax]
  049d13  add dl, ch
  049d15  add al, byte ptr [eax]
  049d17  add dh, dh
  049d19  add al, byte ptr [eax]
  049d1b  add byte ptr [ebx], al
  049d1d  add eax, dword ptr [eax]
  049d1f  add byte ptr [edi], cl
  049d21  add eax, dword ptr [eax]
  049d23  add byte ptr [ebx], bl
  049d25  add eax, dword ptr [eax]
  049d27  add byte ptr [edi], ah
  049d29  add eax, dword ptr [eax]
  049d2b  add byte ptr [edx], dh
  049d2d  add eax, dword ptr [eax]
  049d2f  add byte ptr [esi], bh
  049d31  add eax, dword ptr [eax]
  049d33  add byte ptr [ecx + 3], cl
  049d36  add byte ptr [eax], al
  049d38  push esp
  049d39  add eax, dword ptr [eax]
  049d3b  add byte ptr [esi + 3], bl
  049d3e  add byte ptr [eax], al
  049d40  push 0x72000003
  049d45  add eax, dword ptr [eax]
  049d47  add byte ptr [ebx + eax], bh
  049d4b  add byte ptr [ebp - 0x70fffffd], al
  049d51  add eax, dword ptr [eax]
  049d53  add byte ptr [edi - 0x5ffffffd], dl
  049d59  add eax, dword ptr [eax]
  049d5b  add byte ptr [eax - 0x4ffffffd], ch
  049d61  add eax, dword ptr [eax]
  049d63  add byte ptr [edi - 0x41fffffd], dh
  049d69  add eax, dword ptr [eax]
  049d6b  add ch, al
  049d6d  add eax, dword ptr [eax]
  049d6f  add bl, cl
  049d71  add eax, dword ptr [eax]
  049d73  add cl, dl
  049d75  add eax, dword ptr [eax]
  049d77  add bh, dl
  049d79  add eax, dword ptr [eax]
  049d7b  add ah, bl
  049d7d  add eax, dword ptr [eax]
  049d7f  add cl, ah
  049d81  add eax, dword ptr [eax]
  049d83  add dh, ah
  049d85  add eax, dword ptr [eax]
  049d87  add dl, ch
  049d89  add eax, dword ptr [eax]
  049d8b  add dh, ch
  049d8d  add eax, dword ptr [eax]
  049d8f  add cl, dh
  049d91  add eax, dword ptr [eax]
  049d93  add ah, dh
  049d95  add eax, dword ptr [eax]
  049d97  add bh, dh
  049d99  add eax, dword ptr [eax]
  049d9b  add cl, bh
  049d9d  add eax, dword ptr [eax]
  049d9f  add bl, bh
  049da1  add eax, dword ptr [eax]
  049da3  add ah, bh
  049da5  add eax, dword ptr [eax]
  049da7  add ch, bh
  049da9  add eax, dword ptr [eax]
  049dab  add dh, bh
  049dad  add eax, dword ptr [eax]
  049daf  add byte ptr [eax], al
  049db1  add byte ptr [eax], al
  049db3  add byte ptr [eax], al
  049db5  add byte ptr [eax], al
  049db7  add byte ptr [eax], al
  049db9  add byte ptr [eax], al
  049dbb  add byte ptr [eax], al
  049dbd  add byte ptr [eax], al
  049dbf  add byte ptr [eax], al
  049dc1  add byte ptr [eax], al
  049dc3  add byte ptr [eax], al
  049dc5  add byte ptr [eax], al
  049dc7  add byte ptr [eax], al
  049dc9  add byte ptr [eax], al
  049dcb  add byte ptr [eax], al
  049dcd  add byte ptr [eax], al
  049dcf  add byte ptr [eax], al
  049dd1  add byte ptr [eax], al
  049dd3  add byte ptr [eax], al
  049dd5  add byte ptr [eax], al
  049dd7  add byte ptr [eax], al
  049dd9  add byte ptr [eax], al
  049ddb  add byte ptr [eax], al
  049ddd  add byte ptr [eax], al
  049ddf  add byte ptr [eax], al
  049de1  add byte ptr [eax], al
  049de3  add byte ptr [eax], al
  049de5  add byte ptr [eax], al
  049de7  add byte ptr [eax], al
  049de9  add byte ptr [eax], al
  049deb  add byte ptr [eax], al
  049ded  add byte ptr [eax], al
  049def  add byte ptr [eax], al
  049df1  add byte ptr [eax], al
  049df3  add byte ptr [eax], al
  049df5  add byte ptr [eax], al
  049df7  add byte ptr [eax], al
  049df9  add byte ptr [eax], al
  049dfb  add byte ptr [eax], al
  049dfd  add byte ptr [eax], al
  049dff  add byte ptr [eax], al
  049e01  add byte ptr [eax], al
  049e03  add byte ptr [eax], al
  049e05  add byte ptr [eax], al
  049e07  add byte ptr [eax], al
  049e09  add byte ptr [eax], al
  049e0b  add byte ptr [eax], al
  049e0d  add byte ptr [eax], al
  049e0f  add byte ptr [eax], al
  049e11  add byte ptr [eax], al
  049e13  add byte ptr [eax], al
  049e15  add byte ptr [eax], al
  049e17  add byte ptr [eax], al
  049e19  add byte ptr [eax], al
  049e1b  add byte ptr [eax], al
  049e1d  add byte ptr [eax], al
  049e1f  add byte ptr [eax], al
  049e21  add byte ptr [eax], al
  049e23  add byte ptr [eax], al
  049e25  add byte ptr [eax], al
  049e27  add byte ptr [eax], al
  049e29  add byte ptr [eax], al
  049e2b  add byte ptr [eax], al
  049e2d  add byte ptr [eax], al
  049e2f  add byte ptr [eax], al
  049e31  add byte ptr [eax], al
  049e33  add byte ptr [eax], al
  049e35  add byte ptr [eax], al
  049e37  add byte ptr [eax], al
  049e39  add byte ptr [eax], al
  049e3b  add byte ptr [eax], al
  049e3d  add byte ptr [eax], al
  049e3f  add byte ptr [eax], al
  049e41  add byte ptr [eax], al
  049e43  add byte ptr [eax], al
  049e45  add byte ptr [eax], al
  049e47  add byte ptr [eax], al
  049e49  add byte ptr [eax], al
  049e4b  add byte ptr [eax], al
  049e4d  add byte ptr [eax], al
  049e4f  add byte ptr [eax], al
  049e51  add byte ptr [eax], al
  049e53  add byte ptr [eax], al
  049e55  add byte ptr [eax], al
  049e57  add byte ptr [eax], al
  049e59  add byte ptr [eax], al
  049e5b  add byte ptr [eax], al
  049e5d  add byte ptr [eax], al
  049e5f  add byte ptr [eax], al
  049e61  add byte ptr [eax], al
  049e63  add byte ptr [eax], al
  049e65  add byte ptr [eax], al
  049e67  add byte ptr [eax], al
  049e69  add byte ptr [eax], al
  049e6b  add byte ptr [eax], al
  049e6d  add byte ptr [eax], al
  049e6f  add byte ptr [eax], al
  049e71  add byte ptr [eax], al
  049e73  add byte ptr [eax], al
  049e75  add byte ptr [eax], al
  049e77  add byte ptr [eax], al
  049e79  add byte ptr [eax], al
  049e7b  add byte ptr [eax], al
  049e7d  add byte ptr [eax], al
  049e7f  add byte ptr [eax], al
  049e81  add byte ptr [eax], al
  049e83  add byte ptr [eax], al
  049e85  add byte ptr [eax], al
  049e87  add byte ptr [eax], al
  049e89  add byte ptr [eax], al
  049e8b  add byte ptr [eax], al
  049e8d  add byte ptr [eax], al
  049e8f  add byte ptr [eax], al
  049e91  add byte ptr [eax], al
  049e93  add byte ptr [eax], al
  049e95  add byte ptr [eax], al
  049e97  add byte ptr [eax], al
  049e99  add byte ptr [eax], al
  049e9b  add byte ptr [eax], al
  049e9d  add byte ptr [eax], al
  049e9f  add byte ptr [eax], al
  049ea1  add byte ptr [eax], al
  049ea3  add byte ptr [eax], al
  049ea5  add byte ptr [eax], al
  049ea7  add byte ptr [eax], al
  049ea9  add byte ptr [eax], al
  049eab  add byte ptr [eax], al
  049ead  add byte ptr [eax], al
  049eaf  add byte ptr [eax], al
  049eb1  add byte ptr [eax], al
  049eb3  add byte ptr [eax], al
  049eb5  add byte ptr [eax], al
  049eb7  add byte ptr [eax], al
  049eb9  add byte ptr [eax], al
  049ebb  add byte ptr [eax], al
  049ebd  add byte ptr [eax], al
  049ebf  add byte ptr [eax], al
  049ec1  add byte ptr [eax], al
  049ec3  add byte ptr [eax], al
  049ec5  add byte ptr [eax], al
  049ec7  add byte ptr [eax], al
  049ec9  add byte ptr [eax], al
  049ecb  add byte ptr [eax], al
  049ecd  add byte ptr [eax], al
  049ecf  add byte ptr [eax], al
  049ed1  add byte ptr [eax], al
  049ed3  add byte ptr [eax], al
  049ed5  add byte ptr [eax], al
  049ed7  add byte ptr [eax], al
  049ed9  add byte ptr [eax], al
  049edb  add byte ptr [eax], al
  049edd  add byte ptr [eax], al
  049edf  add byte ptr [eax], al
  049ee1  add byte ptr [eax], al
  049ee3  add byte ptr [eax], al
  049ee5  add byte ptr [eax], al
  049ee7  add byte ptr [eax], al
  049ee9  add byte ptr [eax], al
  049eeb  add byte ptr [eax], al
  049eed  add byte ptr [eax], al
  049eef  add byte ptr [eax], al
  049ef1  add byte ptr [eax], al
  049ef3  add byte ptr [eax], al
  049ef5  add byte ptr [eax], al
  049ef7  add byte ptr [eax], al
  049ef9  add byte ptr [eax], al
  049efb  add byte ptr [eax], al
  049efd  add byte ptr [eax], al
  049eff  add byte ptr [eax], al
  049f01  add byte ptr [eax], al
  049f03  add byte ptr [eax], al
  049f05  add byte ptr [eax], al
  049f07  add byte ptr [eax], al
  049f09  add byte ptr [eax], al
  049f0b  add byte ptr [eax], al
  049f0d  add byte ptr [eax], al
  049f0f  add byte ptr [eax], al
  049f11  add byte ptr [eax], al
  049f13  add byte ptr [eax], al
  049f15  add byte ptr [eax], al
  049f17  add byte ptr [eax], al
  049f19  add byte ptr [eax], al
  049f1b  add byte ptr [eax], al
  049f1d  add byte ptr [eax], al
  049f1f  add byte ptr [eax], al
  049f21  add byte ptr [eax], al
  049f23  add byte ptr [eax], al
  049f25  add byte ptr [eax], al
  049f27  add byte ptr [eax], al
  049f29  add byte ptr [eax], al
  049f2b  add byte ptr [eax], al
  049f2d  add byte ptr [eax], al
  049f2f  add byte ptr [eax], al
  049f31  add byte ptr [eax], al
  049f33  add byte ptr [eax], al
  049f35  add byte ptr [eax], al
  049f37  add byte ptr [eax], al
  049f39  add byte ptr [eax], al
  049f3b  add byte ptr [eax], al
  049f3d  add byte ptr [eax], al
  049f3f  add byte ptr [eax], al
  049f41  add byte ptr [eax], al
  049f43  add byte ptr [eax], al
  049f45  add byte ptr [eax], al
  049f47  add byte ptr [eax], al
  049f49  add byte ptr [eax], al
  049f4b  add byte ptr [eax], al
  049f4d  add byte ptr [eax], al
  049f4f  add byte ptr [eax], al
  049f51  add byte ptr [eax], al
  049f53  add byte ptr [eax], al
  049f55  add byte ptr [eax], al
  049f57  add byte ptr [eax], al
  049f59  add byte ptr [eax], al
  049f5b  add byte ptr [eax], al
  049f5d  add byte ptr [eax], al
  049f5f  add byte ptr [eax], al
  049f61  add byte ptr [eax], al
  049f63  add byte ptr [eax], al
  049f65  add byte ptr [eax], al
  049f67  add byte ptr [eax], al
  049f69  add byte ptr [eax], al
  049f6b  add byte ptr [eax], al
  049f6d  add byte ptr [eax], al
  049f6f  add byte ptr [eax], al
  049f71  add byte ptr [eax], al
  049f73  add byte ptr [eax], al
  049f75  add byte ptr [eax], al
  049f77  add byte ptr [eax], al
  049f79  add byte ptr [eax], al
  049f7b  add byte ptr [eax], al
  049f7d  add byte ptr [eax], al
  049f7f  add byte ptr [eax], al
  049f81  add byte ptr [eax], al
  049f83  add byte ptr [eax], al
  049f85  add byte ptr [eax], al
  049f87  add byte ptr [eax], al
  049f89  add byte ptr [eax], al
  049f8b  add byte ptr [eax], al
  049f8d  add byte ptr [eax], al
  049f8f  add byte ptr [eax], al
  049f91  add byte ptr [eax], al
  049f93  add byte ptr [eax], al
  049f95  add byte ptr [eax], al
  049f97  add byte ptr [eax], al
  049f99  add byte ptr [eax], al
  049f9b  add byte ptr [eax], al
  049f9d  add byte ptr [eax], al
  049f9f  add byte ptr [eax], al
  049fa1  add byte ptr [eax], al
  049fa3  add byte ptr [eax], al
  049fa5  add byte ptr [eax], al
  049fa7  add byte ptr [eax], al
  049fa9  add byte ptr [eax], al
  049fab  add byte ptr [eax], al
  049fad  add byte ptr [eax], al
  049faf  add bh, bh
  049fb1  add eax, dword ptr [eax]
  049fb3  add bh, bh
  049fb5  add eax, dword ptr [eax]
  049fb7  add bh, bh
  049fb9  add eax, dword ptr [eax]
  049fbb  add bh, bh
  049fbd  add eax, dword ptr [eax]
  049fbf  add bh, bh
  049fc1  add eax, dword ptr [eax]
  049fc3  add bh, bh
  049fc5  add eax, dword ptr [eax]
  049fc7  add bh, bh
  049fc9  add eax, dword ptr [eax]
  049fcb  add bh, bh
  049fcd  add eax, dword ptr [eax]
  049fcf  add bh, bh
  049fd1  add eax, dword ptr [eax]
  049fd3  add dh, bh
  049fd5  add eax, dword ptr [eax]
  049fd7  add dh, bh
  049fd9  add eax, dword ptr [eax]
  049fdb  add dh, bh
  049fdd  add eax, dword ptr [eax]
  049fdf  add ch, bh
  049fe1  add eax, dword ptr [eax]
  049fe3  add ah, bh
  049fe5  add eax, dword ptr [eax]
  049fe7  add bl, bh
  049fe9  add eax, dword ptr [eax]
  049feb  add dl, bh
  049fed  add eax, dword ptr [eax]
  049fef  add al, bh
  049ff1  add eax, dword ptr [eax]
  049ff3  add bh, dh
  049ff5  add eax, dword ptr [eax]
  049ff7  add ch, dh
  049ff9  add eax, dword ptr [eax]
  049ffb  add dl, dh
  049ffd  add eax, dword ptr [eax]
  049fff  db 0x00
