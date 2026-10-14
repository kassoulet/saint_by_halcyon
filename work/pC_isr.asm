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
  042610  movsd dword ptr es:[edi], dword ptr [esi]
  042611  inc byte ptr [eax]
  042613  db 0xf0
  042614  pop es
  042615  or byte ptr [eax], al
  042617  add dl, bh
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
