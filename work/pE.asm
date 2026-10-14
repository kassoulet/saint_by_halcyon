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
