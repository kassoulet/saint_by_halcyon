  040003  mov edi, dword ptr [0x48bc]
  040009  mov ecx, 0x4000
  04000e  rep movsd dword ptr es:[edi], dword ptr [esi]
  040010  mov dword ptr [0x4694], 0x10
  04001a  call 0x3d478
  04001f  call 0x3d4f3
  040024  mov dword ptr [0x469c], 1
  04002e  mov dword ptr [0x1479c], 0
  040038  mov dword ptr [0x147a0], 0
  040042  mov dword ptr [0x147a4], 0
  04004c  mov eax, 0x2a30b
  040051  mov dword ptr [0x4c00], eax
  040056  mov dword ptr [0x467c], 0x3b8
  040060  mov dword ptr [0x4680], 0x2710
  04006a  fild dword ptr [0x467c]
  040070  fild dword ptr [0x4680]
  040076  fdivp st(1)
  040078  fst qword ptr [0x178a0]
  04007e  fstp qword ptr [0x178d0]
  040084  mov dword ptr [0x178ac], 0x3a98
  04008e  mov dword ptr [0x178dc], 0x3a98
  040098  fldz 
  04009a  fst qword ptr [0x17898]
  0400a0  fstp qword ptr [0x178c8]
  0400a6  mov dword ptr [0x178a8], 0
  0400b0  mov dword ptr [0x178d8], 0x28
  0400ba  mov dword ptr [0x467c], 0x3b
  0400c4  mov dword ptr [0x4680], 0x2710
  0400ce  fild dword ptr [0x467c]
  0400d4  fild dword ptr [0x4680]
  0400da  fdivp st(1)
  0400dc  fstp qword ptr [0x178b8]
  0400e2  mov dword ptr [0x178c4], 0x780
  0400ec  fldz 
  0400ee  fstp qword ptr [0x178b0]
  0400f4  mov dword ptr [0x178c0], 0
  0400fe  mov dword ptr [0x32728], 0
  040108  mov dword ptr [0x32724], 0
  040112  mov edi, dword ptr [0x466c]
  040118  xor eax, eax
  04011a  mov ecx, 0x3e80
  04011f  rep stosd dword ptr es:[edi], eax
L40121:
  040121  mov dword ptr [0x469c], 0
L4012b:
  04012b  cmp dword ptr [0x469c], 1
  040132  jl 0x4012b
  040134  mov esi, dword ptr [0x466c]
  04013a  mov edi, dword ptr [0x4668]
  040140  xor ebp, ebp
  040142  mov ecx, 0x1f40
  040147  nop 
L40148:
  040148  mov eax, dword ptr [esi]
  04014a  mov ebx, dword ptr [esi + 4]
  04014d  mov dword ptr [esi], ebp
  04014f  mov dword ptr [esi + 4], ebp
  040152  mov dword ptr [edi], eax
  040154  mov dword ptr [edi + 4], ebx
  040157  add esi, 8
  04015a  add edi, 8
  04015d  dec ecx
  04015e  jne 0x40148
  040160  mov ebx, 0x17898
  040165  mov edi, 0x17d90
  04016a  cmp dword ptr [0x32728], 0
  040171  je 0x4017d
  040173  mov ebx, 0x178b0
  040178  mov edi, 0x3305c
L4017d:
  04017d  call 0x2ac80
  040182  fld qword ptr [0x17830]
  040188  fstp qword ptr [0x4af0]
  04018e  fld qword ptr [0x17838]
  040194  fstp qword ptr [0x4af8]
  04019a  fld qword ptr [0x17840]
  0401a0  fstp qword ptr [0x4b00]
  0401a6  fld qword ptr [0x17848]
  0401ac  fstp qword ptr [0x4a20]
  0401b2  fld qword ptr [0x17850]
  0401b8  fstp qword ptr [0x4a28]
  0401be  fld qword ptr [0x17858]
  0401c4  fstp qword ptr [0x4a30]
  0401ca  fld qword ptr [0x17860]
  0401d0  fstp qword ptr [0x49f0]
  0401d6  fld qword ptr [0x17868]
  0401dc  fstp qword ptr [0x49f8]
  0401e2  fld qword ptr [0x17870]
  0401e8  fstp qword ptr [0x4a00]
  0401ee  fld qword ptr [0x17878]
  0401f4  fstp qword ptr [0x4938]
  0401fa  mov ebx, 0x178c8
  0401ff  mov edi, 0x17d90
  040204  call 0x2ac80
  040209  fld qword ptr [0x17860]
  04020f  fstp qword ptr [0x49c0]
  040215  fld qword ptr [0x17868]
  04021b  fstp qword ptr [0x49c8]
  040221  fld qword ptr [0x17870]
  040227  fstp qword ptr [0x49d0]
  04022d  fld qword ptr [0x4938]
  040233  fmul qword ptr [0x4960]
  040239  fstp qword ptr [0x4a78]
  04023f  call 0x21751
  040244  call 0x20a94
  040249  cmp byte ptr [0x41b7], 1
  040250  je 0x40791
  040256  fld qword ptr [0x49f0]
  04025c  fstp dword ptr [0x4c1c]
  040262  fld qword ptr [0x49f8]
  040268  fstp dword ptr [0x4c20]
  04026e  fld qword ptr [0x4a00]
  040274  fstp dword ptr [0x4c24]
  04027a  fld dword ptr [0x7f30]
  040280  fcos 
  040282  fld1 
  040284  faddp st(1)
  040286  fdiv qword ptr [0x4988]
  04028c  fstp qword ptr [0x7eb8]
  040292  fld dword ptr [0x7f30]
  040298  fsin 
  04029a  fmul qword ptr [0x7f18]
  0402a0  fstp qword ptr [0x7ed0]
  0402a6  fld dword ptr [0x7f38]
  0402ac  fcos 
  0402ae  fmul qword ptr [0x7f00]
  0402b4  fstp qword ptr [0x7ed8]
  0402ba  fld dword ptr [0x7f30]
  0402c0  fsin 
  0402c2  fmul qword ptr [0x7f28]
  0402c8  fstp qword ptr [0x7ef0]
  0402ce  fld dword ptr [0x7f38]
  0402d4  fcos 
  0402d6  fmul qword ptr [0x7f10]
  0402dc  fstp qword ptr [0x7ef8]
  0402e2  fld dword ptr [0x7f30]
  0402e8  fsin 
  0402ea  fmul qword ptr [0x7f20]
  0402f0  fstp qword ptr [0x7ee0]
  0402f6  fld dword ptr [0x7f38]
  0402fc  fcos 
  0402fe  fmul qword ptr [0x7f08]
  040304  fstp qword ptr [0x7ee8]
  04030a  mov esi, 0x4c84
  04030f  mov edi, dword ptr [0x466c]
  040315  add edi, 0x10000
  04031b  mov edx, 0x1a
L40320:
  040320  mov ecx, 0x29
L40325:
  040325  fld dword ptr [esi]
  040327  fmul qword ptr [0x15be0]
  04032d  fld dword ptr [esi + 4]
  040330  fmul qword ptr [0x15be8]
  040336  fld dword ptr [esi + 8]
  040339  fmul qword ptr [0x15bf0]
  04033f  faddp st(1)
  040341  faddp st(1)
  040343  fadd dword ptr [0x4c1c]
  040349  fstp dword ptr [0x4c28]
  04034f  fld dword ptr [esi]
  040351  fmul qword ptr [0x15c00]
  040357  fld dword ptr [esi + 4]
  04035a  fmul qword ptr [0x15c08]
  040360  fld dword ptr [esi + 8]
  040363  fmul qword ptr [0x15c10]
  040369  faddp st(1)
  04036b  faddp st(1)
  04036d  fadd dword ptr [0x4c20]
  040373  fstp dword ptr [0x4c2c]
  040379  fld dword ptr [esi]
  04037b  fmul qword ptr [0x15c20]
  040381  fld dword ptr [esi + 4]
  040384  fmul qword ptr [0x15c28]
  04038a  fld dword ptr [esi + 8]
  04038d  fmul qword ptr [0x15c30]
  040393  faddp st(1)
  040395  faddp st(1)
  040397  fadd dword ptr [0x4c24]
  04039d  fstp dword ptr [0x4c30]
  0403a3  call dword ptr [0x4c00]
  0403a9  cmp dword ptr [0x33044], 1
  0403b0  jne 0x4044c
  0403b6  mov eax, dword ptr [0x4c34]
  0403bb  mov ebx, dword ptr [0x4c38]
  0403c1  mov dword ptr [0x4c40], eax
  0403c6  mov dword ptr [0x4c44], ebx
  0403cc  mov eax, dword ptr [0x4c3c]
  0403d1  mov dword ptr [0x4c48], eax
  0403d6  call dword ptr [0x33058]
  0403dc  fld dword ptr [0x4c34]
  0403e2  fmul dword ptr [0x33048]
  0403e8  fld1 
  0403ea  fsub dword ptr [0x33048]
  0403f0  fmul dword ptr [0x4c40]
  0403f6  faddp st(1)
  0403f8  fmul qword ptr [0x7ea0]
  0403fe  fistp dword ptr [edi]
  040400  fld dword ptr [0x4c38]
  040406  fmul dword ptr [0x33048]
  04040c  fld1 
  04040e  fsub dword ptr [0x33048]
  040414  fmul dword ptr [0x4c44]
  04041a  faddp st(1)
  04041c  fmul qword ptr [0x7ea0]
  040422  fistp dword ptr [edi + 4]
  040425  fld dword ptr [0x4c3c]
  04042b  fmul dword ptr [0x33048]
  040431  fld1 
  040433  fsub dword ptr [0x33048]
  040439  fmul dword ptr [0x4c48]
  04043f  faddp st(1)
  040441  fmul qword ptr [0x7ea0]
  040447  fistp dword ptr [edi + 8]
  04044a  jmp 0x40478
L4044c:
  04044c  fld dword ptr [0x4c34]
  040452  fmul qword ptr [0x7ea0]
  040458  fistp dword ptr [edi]
  04045a  fld dword ptr [0x4c38]
  040460  fmul qword ptr [0x7ea0]
  040466  fistp dword ptr [edi + 4]
  040469  fld dword ptr [0x4c3c]
  04046f  fmul qword ptr [0x7ea0]
  040475  fistp dword ptr [edi + 8]
L40478:
  040478  add edi, 0xc
  04047b  add esi, 0xc
  04047e  dec ecx
  04047f  jne 0x40325
  040485  dec edx
  040486  jne 0x40320
  04048c  mov esi, dword ptr [0x466c]
  040492  add esi, 0x10000
  040498  mov edi, dword ptr [0x466c]
  04049e  sub edi, 2
  0404a1  mov dword ptr [0x4680], 0x19
L404ab:
  0404ab  mov dword ptr [0x467c], 0x28
L404b5:
  0404b5  mov eax, dword ptr [esi + 8]
  0404b8  add eax, dword ptr [esi + 0x14]
  0404bb  add eax, dword ptr [esi + 0x1f4]
  0404c1  add eax, dword ptr [esi + 0x200]
  0404c7  je 0x4076a
  0404cd  push edi
  0404ce  mov edx, dword ptr [esi]
  0404d0  mov ebp, dword ptr [esi + 4]
  0404d3  mov edi, dword ptr [esi + 8]
  0404d6  mov eax, dword ptr [esi + 0x1ec]
  0404dc  mov ebx, dword ptr [esi + 0x1f0]
  0404e2  mov ecx, dword ptr [esi + 0x1f4]
  0404e8  sub eax, edx
  0404ea  sub ebx, ebp
  0404ec  sub ecx, edi
  0404ee  mov dword ptr [0x33be0], edx
  0404f4  mov dword ptr [0x33be4], ebp
  0404fa  mov dword ptr [0x33be8], edi
  040500  sar eax, 3
  040503  sar ebx, 3
  040506  sar ecx, 3
  040509  mov dword ptr [0x33bfc], eax
  04050e  mov dword ptr [0x33c00], ebx
  040514  mov dword ptr [0x33c04], ecx
  04051a  mov edx, dword ptr [esi + 0xc]
  04051d  mov ebp, dword ptr [esi + 0x10]
  040520  mov edi, dword ptr [esi + 0x14]
  040523  mov eax, dword ptr [esi + 0x1f8]
  040529  mov ebx, dword ptr [esi + 0x1fc]
  04052f  mov ecx, dword ptr [esi + 0x200]
  040535  sub eax, edx
  040537  sub ebx, ebp
  040539  sub ecx, edi
  04053b  mov dword ptr [0x33bec], edx
  040541  mov dword ptr [0x33bf0], ebp
  040547  mov dword ptr [0x33bf4], edi
  04054d  sar eax, 3
  040550  sar ebx, 3
  040553  sar ecx, 3
  040556  pop edi
  040557  mov dword ptr [0x33c08], eax
  04055c  mov dword ptr [0x33c0c], ebx
  040562  mov dword ptr [0x33c10], ecx
  040568  push esi
  040569  mov dword ptr [0x33bf8], 8
  040573  nop 
L40574:
  040574  mov ebp, dword ptr [0x33be0]
  04057a  mov esi, dword ptr [0x33be4]
  040580  mov edx, dword ptr [0x33be8]
  040586  mov eax, dword ptr [0x33bec]
  04058b  mov ebx, dword ptr [0x33bf0]
  040591  mov ecx, dword ptr [0x33bf4]
  040597  sub eax, ebp
  040599  sub ebx, esi
  04059b  sub ecx, edx
  04059d  sar eax, 0xb
  0405a0  sar ebx, 0xb
  0405a3  sar ecx, 0xb
  0405a6  mov dword ptr [0x33c14], eax
  0405ab  mov dword ptr [0x33c18], ebx
  0405b1  mov dword ptr [0x33c1c], ecx
  0405b7  sar ebp, 8
  0405ba  sar esi, 8
  0405bd  sar edx, 8
  0405c0  mov ecx, ebp
  0405c2  mov eax, dword ptr [0x4670]
  0405c7  mov ax, si
  0405ca  add edi, 2
  0405cd  mov al, ch
  0405cf  add ecx, dword ptr [0x33c14]
  0405d5  add esi, dword ptr [0x33c18]
  0405db  mov al, byte ptr [eax]
  0405dd  mov ah, dh
  0405df  add edx, dword ptr [0x33c1c]
  0405e5  mov bl, byte ptr [eax + 0x10000]
  0405eb  mov ax, si
  0405ee  mov al, ch
  0405f0  add ecx, dword ptr [0x33c14]
  0405f6  add esi, dword ptr [0x33c18]
  0405fc  mov al, byte ptr [eax]
  0405fe  mov ah, dh
  040600  add edx, dword ptr [0x33c1c]
  040606  mov bh, byte ptr [eax + 0x10000]
  04060c  mov word ptr [edi], bx
  04060f  mov ax, si
  040612  add edi, 2
  040615  mov al, ch
  040617  add ecx, dword ptr [0x33c14]
  04061d  add esi, dword ptr [0x33c18]
  040623  mov al, byte ptr [eax]
  040625  mov ah, dh
  040627  add edx, dword ptr [0x33c1c]
  04062d  mov bl, byte ptr [eax + 0x10000]
  040633  mov ax, si
  040636  mov al, ch
  040638  add ecx, dword ptr [0x33c14]
  04063e  add esi, dword ptr [0x33c18]
  040644  mov al, byte ptr [eax]
  040646  mov ah, dh
  040648  add edx, dword ptr [0x33c1c]
  04064e  mov bh, byte ptr [eax + 0x10000]
  040654  mov word ptr [edi], bx
  040657  mov ax, si
  04065a  add edi, 2
  04065d  mov al, ch
  04065f  add ecx, dword ptr [0x33c14]
  040665  add esi, dword ptr [0x33c18]
  04066b  mov al, byte ptr [eax]
  04066d  mov ah, dh
  04066f  add edx, dword ptr [0x33c1c]
  040675  mov bl, byte ptr [eax + 0x10000]
  04067b  mov ax, si
  04067e  mov al, ch
  040680  add ecx, dword ptr [0x33c14]
  040686  add esi, dword ptr [0x33c18]
  04068c  mov al, byte ptr [eax]
  04068e  mov ah, dh
  040690  add edx, dword ptr [0x33c1c]
  040696  mov bh, byte ptr [eax + 0x10000]
  04069c  mov word ptr [edi], bx
  04069f  mov ax, si
  0406a2  add edi, 2
  0406a5  mov al, ch
  0406a7  add ecx, dword ptr [0x33c14]
  0406ad  add esi, dword ptr [0x33c18]
  0406b3  mov al, byte ptr [eax]
  0406b5  mov ah, dh
  0406b7  add edx, dword ptr [0x33c1c]
  0406bd  mov bl, byte ptr [eax + 0x10000]
  0406c3  mov ax, si
  0406c6  mov al, ch
  0406c8  add ecx, dword ptr [0x33c14]
  0406ce  add esi, dword ptr [0x33c18]
  0406d4  mov al, byte ptr [eax]
  0406d6  mov ah, dh
  0406d8  add edx, dword ptr [0x33c1c]
  0406de  mov bh, byte ptr [eax + 0x10000]
  0406e4  mov word ptr [edi], bx
  0406e7  mov eax, dword ptr [0x33be0]
  0406ec  mov ebx, dword ptr [0x33be4]
  0406f2  mov ecx, dword ptr [0x33be8]
  0406f8  mov edx, dword ptr [0x33bec]
  0406fe  mov esi, dword ptr [0x33bf0]
  040704  mov ebp, dword ptr [0x33bf4]
  04070a  add eax, dword ptr [0x33bfc]
  040710  add ebx, dword ptr [0x33c00]
  040716  add ecx, dword ptr [0x33c04]
  04071c  add edx, dword ptr [0x33c08]
  040722  add esi, dword ptr [0x33c0c]
  040728  add ebp, dword ptr [0x33c10]
  04072e  mov dword ptr [0x33be0], eax
  040733  mov dword ptr [0x33be4], ebx
  040739  mov dword ptr [0x33be8], ecx
  04073f  mov dword ptr [0x33bec], edx
  040745  mov dword ptr [0x33bf0], esi
  04074b  mov dword ptr [0x33bf4], ebp
  040751  add edi, 0x138
  040757  dec dword ptr [0x33bf8]
  04075d  jne 0x40574
  040763  pop esi
  040764  add edi, 0xfffff600
L4076a:
  04076a  add edi, 8
  04076d  add esi, 0xc
  040770  dec dword ptr [0x467c]
  040776  jne 0x404b5
  04077c  add edi, 0x8c0
  040782  add esi, 0xc
  040785  dec dword ptr [0x4680]
  04078b  jne 0x404ab
L40791:
  040791  jmp 0x407b3
  040793  adc byte ptr [eax], al
  040795  add byte ptr [eax], al
  040797  sbb byte ptr [eax], al
  040799  add byte ptr [eax], al
  04079b  adc byte ptr [eax], al
  04079d  add byte ptr [eax], al
  04079f  sbb byte ptr [eax], al
  0407a1  add byte ptr [eax], al
  0407a3  adc byte ptr [eax], al
  0407a5  add byte ptr [eax], al
  0407a7  sbb byte ptr [eax], al
  0407a9  add byte ptr [eax], al
  0407ab  adc byte ptr [eax], al
  0407ad  add byte ptr [eax], al
  0407af  sbb byte ptr [eax], al
  0407b1  add byte ptr [eax], al
L407b3:
  0407b3  mov esi, dword ptr [0x7fac]
  0407b9  mov ecx, dword ptr [0x7fa4]
  0407bf  shr ecx, 4
L407c2:
  0407c2  mov edx, 0
L407c7:
  0407c7  mov ebx, edx
  0407c9  shr ebx, 1
  0407cb  mov eax, dword ptr [esi + 0x2c]
  0407ce  sub eax, 1
  0407d1  cmp eax, dword ptr [ebx*4 + 0x34dd3]
  0407d8  jg 0x407e1
  0407da  mov eax, dword ptr [ebx*4 + 0x34dd3]
L407e1:
  0407e1  mov dword ptr [esi + 0x2c], eax
  0407e4  add esi, 0x30
  0407e7  inc edx
  0407e8  cmp edx, 0x10
  0407eb  jl 0x407c7
  0407ed  dec ecx
  0407ee  jne 0x407c2
  0407f0  mov eax, dword ptr [0x1584c]
  0407f5  mov dword ptr [0x15854], eax
  0407fa  mov eax, dword ptr [0x15850]
  0407ff  mov dword ptr [0x15858], eax
  040804  mov dword ptr [0x1663c], 0
  04080e  mov eax, dword ptr [0x16634]
  040813  mov dword ptr [0x16640], eax
  040818  mov ecx, dword ptr [0x17210]
  04081e  mov ebp, 0x7f98
L40823:
  040823  push ecx
  040824  cmp dword ptr [ebp + 4], 0
  040828  jne 0x409fb
  04082e  fld dword ptr [ebp + 0x34]
  040831  fstp dword ptr [0x17214]
  040837  fild dword ptr [ebp + 0x18]
  04083a  fdiv qword ptr [0x4a68]
  040840  fstp qword ptr [0x4a38]
  040846  fild dword ptr [ebp + 0x1c]
  040849  fdiv qword ptr [0x4a68]
  04084f  fstp qword ptr [0x4a40]
  040855  fild dword ptr [ebp + 0x20]
  040858  fdiv qword ptr [0x4a68]
  04085e  fstp qword ptr [0x4a48]
  040864  fld dword ptr [ebp + 0x24]
  040867  fstp qword ptr [0x49a8]
  04086d  fld dword ptr [ebp + 0x28]
  040870  fstp qword ptr [0x49b0]
  040876  fld dword ptr [ebp + 0x2c]
  040879  fstp qword ptr [0x49b8]
  04087f  mov ebx, 0x15b60
  040884  call 0x218db
  040889  mov eax, 0x15b60
  04088e  mov ebx, 0x15be0
  040893  mov ecx, 0x15ae0
  040898  call 0x21a75
  04089d  cmp dword ptr [ebp], 0x4f627521
  0408a4  je 0x4091d
  0408a6  mov esi, dword ptr [ebp + 0x10]
  0408a9  mov ecx, dword ptr [ebp + 8]
L408ac:
  0408ac  mov dword ptr [esi + 4], 0
  0408b3  add esi, 0x40
  0408b6  dec ecx
  0408b7  jne 0x408ac
  0408b9  call 0x21c04
  0408be  mov esi, ebp
  0408c0  mov edi, 0x7f60
  0408c5  mov ecx, 0xe
  0408ca  rep movsd dword ptr es:[edi], dword ptr [esi]
  0408cc  mov dword ptr [0x7f68], 0
  0408d6  mov dword ptr [0x7f6c], 0
  0408e0  mov ebx, dword ptr [0x15854]
  0408e6  mov dword ptr [0x7f74], ebx
  0408ec  mov ebx, dword ptr [0x15858]
  0408f2  mov dword ptr [0x7f70], ebx
  0408f8  call 0x213d8
  0408fd  call 0x21cbd
  040902  call 0x229e8
  040907  push ebp
  040908  mov ebp, 0x7f60
  04090d  call 0x21cbd
  040912  call 0x229e8
  040917  pop ebp
  040918  jmp 0x409fb
L4091d:
  04091d  cmp byte ptr [0x41b6], 1
  040924  je 0x409fb
  04092a  mov esi, dword ptr [ebp + 0x14]
  04092d  mov eax, 0x1fa33
  040932  sub eax, dword ptr [esi + 4]
  040935  mov dword ptr [0x4664], eax
  04093a  mov eax, dword ptr [esi + 4]
  04093d  cmp eax, 0x1fc7b
  040942  jne 0x4094e
  040944  mov dword ptr [0x4664], 1
L4094e:
  04094e  call 0x21ac0
  040953  call 0x21c04
  040958  call 0x21d64
  04095d  mov esi, ebp
  04095f  mov edi, 0x7f60
  040964  mov ecx, 0xe
  040969  rep movsd dword ptr es:[edi], dword ptr [esi]
  04096b  mov dword ptr [0x7f68], 0
  040975  mov dword ptr [0x7f6c], 0
  04097f  mov ebx, dword ptr [0x15854]
  040985  mov dword ptr [0x7f74], ebx
  04098b  mov ebx, dword ptr [0x15858]
  040991  mov dword ptr [0x7f70], ebx
  040997  call 0x212ee
  04099c  call 0x21cbd
  0409a1  mov dword ptr [0x4664], 0
  0409ab  call 0x22867
  0409b0  mov dword ptr [0x4664], 1
  0409ba  cmp dword ptr [0x4664], 1
  0409c1  je 0x409c8
  0409c3  call 0x21eff
L409c8:
  0409c8  push ebp
  0409c9  mov ebp, 0x7f60
  0409ce  call 0x21cbd
  0409d3  mov dword ptr [0x4664], 0
  0409dd  call 0x22867
  0409e2  mov dword ptr [0x4664], 1
  0409ec  cmp dword ptr [0x4664], 1
  0409f3  je 0x409fa
  0409f5  call 0x21eff
L409fa:
  0409fa  pop ebp
L409fb:
  0409fb  pop ecx
  0409fc  add ebp, 0x38
  0409ff  dec ecx
  040a00  jne 0x40823
  040a06  mov dword ptr [0x467c], 0x28
  040a10  fild dword ptr [0x467c]
  040a16  fld dword ptr [0xefb8]
  040a1c  fmul qword ptr [0x4988]
  040a22  fmul qword ptr [0x4938]
  040a28  fdivp st(1)
  040a2a  fstp dword ptr [0x4658]
  040a30  mov dword ptr [0x467c], 0xff
  040a3a  fild dword ptr [0x467c]
  040a40  fld dword ptr [0xefe4]
  040a46  fmul qword ptr [0x4988]
  040a4c  fmul qword ptr [0x4938]
  040a52  fdivp st(1)
  040a54  fstp dword ptr [0x465c]
  040a5a  mov ecx, dword ptr [0x14798]
  040a60  cmp ecx, 0
  040a63  je 0x40be1
  040a69  mov ebp, 0xef98
  040a6e  mov edi, dword ptr [0x16640]
  040a74  mov ebx, 0x178e0
L40a79:
  040a79  pushal 
  040a7a  mov edi, 0x1b828
  040a7f  call 0x2ac80
  040a84  popal 
  040a85  add ebx, 0x18
  040a88  fld qword ptr [0x17860]
  040a8e  fstp dword ptr [ebp + 4]
  040a91  fld qword ptr [0x17868]
  040a97  fstp dword ptr [ebp + 8]
  040a9a  fld qword ptr [0x17870]
  040aa0  fstp dword ptr [ebp + 0xc]
  040aa3  fld dword ptr [ebp + 4]
  040aa6  fmul qword ptr [0x15be0]
  040aac  fld dword ptr [ebp + 4]
  040aaf  fmul qword ptr [0x15be8]
  040ab5  fld dword ptr [ebp + 4]
  040ab8  fmul qword ptr [0x15bf0]
  040abe  fld dword ptr [ebp + 8]
  040ac1  fmul qword ptr [0x15c00]
  040ac7  fld dword ptr [ebp + 8]
  040aca  fmul qword ptr [0x15c08]
  040ad0  fld dword ptr [ebp + 8]
  040ad3  fmul qword ptr [0x15c10]
  040ad9  fxch st(2)
  040adb  faddp st(5)
  040add  faddp st(3)
  040adf  faddp st(1)
  040ae1  fld dword ptr [ebp + 0xc]
  040ae4  fmul qword ptr [0x15c20]
  040aea  fld dword ptr [ebp + 0xc]
  040aed  fmul qword ptr [0x15c28]
  040af3  fld dword ptr [ebp + 0xc]
  040af6  fmul qword ptr [0x15c30]
  040afc  fxch st(2)
  040afe  faddp st(5)
  040b00  faddp st(3)
  040b02  faddp st(1)
  040b04  fxch st(2)
  040b06  fadd qword ptr [0x15c40]
  040b0c  fxch st(1)
  040b0e  fadd qword ptr [0x15c48]
  040b14  fxch st(2)
  040b16  fadd qword ptr [0x15c50]
  040b1c  fst dword ptr [ebp + 0x1c]
  040b1f  fstp dword ptr [0x4684]
  040b25  fstp dword ptr [0x467c]
  040b2b  fstp dword ptr [0x4680]
  040b31  test dword ptr [0x4684], 0x80000000
  040b3b  je 0x40bd1
  040b41  fld1 
  040b43  fld dword ptr [0x4684]
  040b49  fdivp st(1)
  040b4b  fld dword ptr [0x467c]
  040b51  fld dword ptr [0x4680]
  040b57  fmul qword ptr [0x4a78]
  040b5d  fmul st(2)
  040b5f  fxch st(1)
  040b61  fmul qword ptr [0x4938]
  040b67  fmul st(2)
  040b69  fxch st(1)
  040b6b  fadd qword ptr [0x4930]
  040b71  fstp dword ptr [ebp + 0x18]
  040b74  fadd qword ptr [0x4928]
  040b7a  fstp dword ptr [ebp + 0x14]
  040b7d  fstp dword ptr [ebp + 0x10]
  040b80  mov eax, dword ptr [0x4658]
  040b85  cmp dword ptr [ebp], 0x352a0
  040b8c  jne 0x40b93
  040b8e  mov eax, dword ptr [0x465c]
L40b93:
  040b93  mov dword ptr [ebp + 0x28], eax
  040b96  fld dword ptr [0x4684]
  040b9c  fsub dword ptr [0x150d0]
  040ba2  fmul dword ptr [0x150c0]
  040ba8  fmul qword ptr [0x4990]
  040bae  fchs 
  040bb0  fistp dword ptr [0x4680]
  040bb6  mov eax, 0xffff
  040bbb  sub eax, dword ptr [0x4680]
  040bc1  mov dword ptr [edi], eax
  040bc3  add edi, 4
  040bc6  mov dword ptr [edi], ebp
  040bc8  add edi, 4
  040bcb  inc dword ptr [0x1663c]
L40bd1:
  040bd1  add ebp, 0x2c
  040bd4  dec ecx
  040bd5  jne 0x40a79
  040bdb  mov dword ptr [0x16640], edi
L40be1:
  040be1  wait 
  040be2  fnstcw word ptr [0x337dc]
  040be8  push word ptr [0x337dc]
  040bef  or word ptr [0x337dc], 0xc00
  040bf8  fldcw word ptr [0x337dc]
  040bfe  cmp dword ptr [0x1663c], 0
  040c05  je 0x40fdc
  040c0b  call 0x22ab7
  040c10  mov esi, dword ptr [0x16634]
  040c16  add esi, 4
L40c19:
  040c19  mov ecx, dword ptr [esi]
  040c1b  push esi
  040c1c  jmp dword ptr [ecx]
  040c1e  mov esi, dword ptr [ecx + 8]
  040c21  mov edi, dword ptr [ecx + 0xc]
  040c24  fld dword ptr [esi + 0x14]
  040c27  fld dword ptr [esi + 0x18]
  040c2a  fxch st(1)
  040c2c  fstp dword ptr [0x2936c]
  040c32  fstp dword ptr [0x29370]
  040c38  fld dword ptr [edi + 0x14]
  040c3b  fld dword ptr [edi + 0x18]
  040c3e  fxch st(1)
  040c40  fstp dword ptr [0x2937c]
  040c46  fstp dword ptr [0x29380]
  040c4c  mov esi, 0x2936c
  040c51  mov edi, 0x2937c
  040c56  call 0x34d64
  040c5b  jmp 0x40fcc
  040c60  fld dword ptr [ecx + 0x28]
  040c63  fmul dword ptr [ecx + 0x1c]
  040c66  fmul dword ptr [0x29690]
  040c6c  fistp dword ptr [0x4688]
  040c72  mov eax, dword ptr [0x4688]
  040c77  shr eax, 8
  040c7a  cmp eax, 0x3f
  040c7d  jl 0x40c84
  040c7f  mov eax, 0x3f
L40c84:
  040c84  cmp dword ptr [0x48dc], -1
  040c8b  je 0x40c92
  040c8d  mov eax, dword ptr [0x48dc]
L40c92:
  040c92  mov ebx, dword ptr [eax*4 + 0x4558]
  040c99  mov dword ptr [0x296a4], ebx
  040c9f  fld dword ptr [ecx + 0x28]
  040ca2  fmul dword ptr [ecx + 0x1c]
  040ca5  fmul dword ptr [eax*4 + 0x4458]
  040cac  fst dword ptr [0x296c0]
  040cb2  fmul dword ptr [0x29690]
  040cb8  fistp dword ptr [0x296c8]
  040cbe  fld dword ptr [ecx + 0x20]
  040cc1  fmul qword ptr [0x4938]
  040cc7  fmul dword ptr [ecx + 0x10]
  040cca  fstp dword ptr [0x2969c]
  040cd0  fld dword ptr [ecx + 0x14]
  040cd3  fsub dword ptr [0x2969c]
  040cd9  fstp dword ptr [0x296a8]
  040cdf  fld dword ptr [ecx + 0x18]
  040ce2  fsub dword ptr [0x2969c]
  040ce8  fstp dword ptr [0x296ac]
  040cee  fld dword ptr [ecx + 0x14]
  040cf1  fadd dword ptr [0x2969c]
  040cf7  fstp dword ptr [0x296b0]
  040cfd  fld dword ptr [ecx + 0x18]
  040d00  fadd dword ptr [0x2969c]
  040d06  fstp dword ptr [0x296b4]
  040d0c  call 0x35277
  040d11  jmp 0x40fcc
  040d16  fld qword ptr [0x49f0]
  040d1c  fsub dword ptr [ecx + 4]
  040d1f  fld qword ptr [0x49f8]
  040d25  fsub dword ptr [ecx + 8]
  040d28  fpatan 
  040d2a  fldpi 
  040d2c  fmul qword ptr [0x4988]
  040d32  fdivp st(1)
  040d34  fmul qword ptr [0x4a68]
  040d3a  fistp dword ptr [0x4688]
  040d40  mov eax, dword ptr [0x4688]
  040d45  and eax, 0xffff
  040d4a  mov ebx, 0x690
  040d4f  cdq 
  040d50  idiv ebx
  040d52  mov esi, eax
  040d54  and esi, 3
  040d57  imul esi, esi, 0x28
  040d5a  shr eax, 2
  040d5d  imul eax, eax, 0x5300
  040d63  add eax, esi
  040d65  mov dword ptr [0x296a4], eax
  040d6a  fld dword ptr [ecx + 0x28]
  040d6d  fmul dword ptr [ecx + 0x1c]
  040d70  fst dword ptr [0x296c0]
  040d76  fmul dword ptr [0x29690]
  040d7c  fistp dword ptr [0x296c8]
  040d82  fld dword ptr [ecx + 0x20]
  040d85  fmul qword ptr [0x4938]
  040d8b  fmul dword ptr [ecx + 0x10]
  040d8e  fstp dword ptr [0x2969c]
  040d94  fld dword ptr [ecx + 0x24]
  040d97  fmul qword ptr [0x4938]
  040d9d  fmul dword ptr [ecx + 0x10]
  040da0  fstp dword ptr [0x296a0]
  040da6  fld dword ptr [ecx + 0x14]
  040da9  fsub dword ptr [0x2969c]
  040daf  fstp dword ptr [0x296a8]
  040db5  fld dword ptr [ecx + 0x18]
  040db8  fsub dword ptr [0x296a0]
  040dbe  fstp dword ptr [0x296ac]
  040dc4  fld dword ptr [ecx + 0x14]
  040dc7  fadd dword ptr [0x2969c]
  040dcd  fstp dword ptr [0x296b0]
  040dd3  fld dword ptr [ecx + 0x18]
  040dd6  fadd dword ptr [0x296a0]
  040ddc  fstp dword ptr [0x296b4]
  040de2  call 0x35098
  040de7  jmp 0x40fcc
  040dec  mov esi, dword ptr [ecx + 0xc]
  040def  mov edi, dword ptr [ecx + 0x10]
  040df2  mov ebp, dword ptr [ecx + 0x14]
  040df5  xor eax, eax
  040df7  mov edx, eax
  040df9  shl edx, 0x10
  040dfc  mov eax, dword ptr [eax*4 + 0x48e4]
  040e03  mov dword ptr [0x48f8], eax
  040e08  fild dword ptr [ecx + 0x2c]
  040e0b  fld dword ptr [esi + 0x1c]
  040e0e  fmul qword ptr [0x4940]
  040e14  faddp st(1)
  040e16  fistp dword ptr [0x4690]
  040e1c  mov eax, dword ptr [0x4690]
  040e21  shl eax, 2
  040e24  cmp eax, 0
  040e27  jg 0x40e2b
  040e29  xor eax, eax
L40e2b:
  040e2b  cmp eax, 0xff
  040e30  jl 0x40e37
  040e32  mov eax, 0xff
L40e37:
  040e37  mov byte ptr [0x1fa31], al
  040e3c  mov eax, dword ptr [ecx + 0x28]
  040e3f  shl eax, 0x10
  040e42  mov ebx, eax
  040e44  add eax, dword ptr [0x4670]
  040e4a  add eax, edx
  040e4c  mov dword ptr [0x1f924], eax
  040e51  add ebx, dword ptr [0x48b4]
  040e57  mov dword ptr [0x1f928], ebx
  040e5d  mov eax, dword ptr [ecx + 4]
  040e60  cmp eax, 0x1fa32
  040e65  je 0x40e97
  040e67  cmp eax, 0x1fc7b
  040e6c  je 0x40e97
  040e6e  fld dword ptr [esi + 0x38]
  040e71  fadd dword ptr [edi + 0x38]
  040e74  fadd dword ptr [ebp + 0x38]
  040e77  fstp dword ptr [0x48d0]
  040e7d  mov ebx, dword ptr [0x490c]
  040e83  cmp dword ptr [0x48d0], ebx
  040e89  jne 0x40e97
  040e8b  mov byte ptr [0x1fa31], 0
  040e92  mov eax, 0x1fa32
L40e97:
  040e97  mov dword ptr [0x1f920], eax
  040e9c  mov eax, dword ptr [esi]
  040e9e  add eax, dword ptr [edi]
  040ea0  add eax, dword ptr [ebp]
  040ea3  jne 0x40eb0
  040ea5  call dword ptr [0x1f920]
  040eab  jmp 0x40fcc
L40eb0:
  040eb0  push dword ptr [0x15858]
  040eb6  mov dword ptr [0x14cb0], esi
  040ebc  mov dword ptr [0x14cb4], edi
  040ec2  mov dword ptr [0x14cb8], ebp
  040ec8  mov dword ptr [0x14cbc], esi
  040ece  mov esi, 0x14cb0
  040ed3  mov edi, 0x14d00
  040ed8  mov dword ptr [0x14d50], 0
  040ee2  call 0x20714
  040ee7  call 0x20714
  040eec  call 0x20714
  040ef1  cmp dword ptr [0x14d50], 3
  040ef8  jl 0x40fc6
  040efe  mov eax, dword ptr [0x14d00]
  040f03  mov dword ptr [edi], eax
  040f05  mov esi, 0x14d00
  040f0a  mov edi, 0x14cb0
  040f0f  mov ebp, dword ptr [0x14d50]
  040f15  mov dword ptr [0x14d50], 0
L40f1f:
  040f1f  call 0x207fa
  040f24  dec ebp
  040f25  jne 0x40f1f
  040f27  cmp dword ptr [0x14d50], 3
  040f2e  jl 0x40fc6
  040f34  mov eax, dword ptr [0x14cb0]
  040f39  mov dword ptr [edi], eax
  040f3b  mov esi, 0x14cb0
  040f40  mov edi, 0x14d00
  040f45  mov ebp, dword ptr [0x14d50]
  040f4b  mov dword ptr [0x14d50], 0
L40f55:
  040f55  call 0x208e8
  040f5a  dec ebp
  040f5b  jne 0x40f55
  040f5d  cmp dword ptr [0x14d50], 3
  040f64  jl 0x40fc6
  040f66  mov eax, dword ptr [0x14d00]
  040f6b  mov dword ptr [edi], eax
  040f6d  mov esi, 0x14d00
  040f72  mov edi, 0x14cb0
  040f77  mov ebp, dword ptr [0x14d50]
  040f7d  mov dword ptr [0x14d50], 0
L40f87:
  040f87  call 0x209ad
  040f8c  dec ebp
  040f8d  jne 0x40f87
  040f8f  cmp dword ptr [0x14d50], 3
  040f96  jl 0x40fc6
  040f98  sub dword ptr [0x14d50], 2
  040f9f  xor eax, eax
L40fa1:
  040fa1  mov esi, dword ptr [0x14cb0]
  040fa7  mov edi, dword ptr [eax + 0x14cb4]
  040fad  mov ebp, dword ptr [eax + 0x14cb8]
  040fb3  push eax
  040fb4  call dword ptr [0x1f920]
  040fba  pop eax
  040fbb  add eax, 4
  040fbe  dec dword ptr [0x14d50]
  040fc4  jne 0x40fa1
L40fc6:
  040fc6  pop dword ptr [0x15858]
L40fcc:
  040fcc  pop esi
  040fcd  add esi, 8
  040fd0  dec dword ptr [0x1663c]
  040fd6  jne 0x40c19
L40fdc:
  040fdc  pop word ptr [0x337dc]
  040fe3  fldcw word ptr [0x337dc]
  040fe9  mov edx, dword ptr [0x33c20]
  040fef  cmp dword ptr [edx + 0x33c2c], 0
  040ff6  je 0x41081
  040ffc  cmp dword ptr [edx + 0x33c2c], 2
  041003  je 0x41044
  041005  mov esi, dword ptr [0x31bf1]
  04100b  mov edi, dword ptr [0x466c]
  041011  add edi, 0x5c80
  041017  mov edx, 0x7e
L4101c:
  04101c  mov ecx, 0x8a
L41021:
  041021  mov al, byte ptr [esi]
  041023  or al, al
  041025  je 0x4102e
  041027  shl al, 2
  04102a  add al, 3
  04102c  mov byte ptr [edi], al
L4102e:
  04102e  inc esi
  04102f  inc edi
  041030  dec ecx
  041031  jne 0x41021
  041033  add esi, 0xb6
  041039  add edi, 0xb6
  04103f  dec edx
  041040  jne 0x4101c
  041042  jmp 0x41081
L41044:
  041044  mov esi, dword ptr [0x31bf1]
  04104a  add esi, 0xa500
  041050  mov edi, dword ptr [0x466c]
  041056  add edi, 0xa500
  04105c  mov edx, 0x44
L41061:
  041061  mov ecx, 0xcd
L41066:
  041066  mov al, byte ptr [esi]
  041068  or al, al
  04106a  je 0x41073
  04106c  shl al, 2
  04106f  add al, 3
  041071  mov byte ptr [edi], al
L41073:
  041073  inc esi
  041074  inc edi
  041075  dec ecx
  041076  jne 0x41066
  041078  add esi, 0x73
  04107b  add edi, 0x73
  04107e  dec edx
  04107f  jne 0x41061
L41081:
  041081  cmp byte ptr [0x41cb], 1
  041088  jne 0x4109c
  04108a  fld qword ptr [0x4958]
  041090  fadd qword ptr [0x4950]
  041096  fstp qword ptr [0x4950]
L4109c:
  04109c  cmp byte ptr [0x41cc], 1
  0410a3  jne 0x410b9
  0410a5  fld qword ptr [0x4958]
  0410ab  fchs 
  0410ad  fadd qword ptr [0x4950]
  0410b3  fstp qword ptr [0x4950]
L410b9:
  0410b9  in al, 0x60
  0410bb  cmp al, 1
  0410bd  jne 0x410cb
  0410bf  mov dword ptr [0x4aeb0], 1
  0410c9  jmp 0x410d9
L410cb:
  0410cb  cmp word ptr [0x12bf], 0x16
  0410d3  jl 0x40121
L410d9:
  0410d9  call 0x3d4cc
  0410de  ret 
  0410df  nop 
  0410e0  add byte ptr [eax], al
  0410e2  add byte ptr [eax], al
  0410e4  add byte ptr [eax], al
  0410e6  add byte ptr [eax], al
  0410e8  add byte ptr [eax], al
  0410ea  add byte ptr [eax], al
  0410ec  add byte ptr [eax], al
  0410ee  add byte ptr [eax], al
  0410f0  add byte ptr [eax], al
  0410f2  add byte ptr [eax], al
  0410f4  add byte ptr [eax], al
  0410f6  add byte ptr [eax], al
  0410f8  xchg ebx, ebx
  0410fa  xchg ebx, ebx
  0410fc  xchg ebx, ebx
  0410fe  xchg ebx, ebx
  041100  pushfd 
  041101  pushal 
  041102  wait 
  041103  fnsave dword ptr [0x337de]
  041109  cmp byte ptr [0x496da], 3
  041110  je 0x4111e
  041112  mov eax, 4
  041117  call 0xdf84
  04111c  jmp 0x41155
L4111e:
  04111e  inc byte ptr [0x496d9]
  041124  cmp byte ptr [0x496d9], 7
  04112b  jl 0x41155
  04112d  mov byte ptr [0x496d9], 0
  041134  inc word ptr [0x12ca]
  04113b  cmp word ptr [0x12ca], 0x40
  041143  jl 0x41155
  041145  inc word ptr [0x12bf]
  04114c  mov word ptr [0x12ca], 0
L41155:
  041155  inc dword ptr [0x469c]
  04115b  inc dword ptr [0x46a4]
  041161  cmp byte ptr [0x41d1], 1
  041168  je 0x41738
  04116e  cmp word ptr [0x12bf], 0x15
  041176  jl 0x411a0
  041178  mov edi, 0x32d44
  04117d  xor eax, eax
  04117f  mov ecx, 0xc0
  041184  rep stosd dword ptr es:[edi], eax
  041186  sub dword ptr [0x3272c], 6
  04118d  cmp dword ptr [0x3272c], 0
  041194  jg 0x411a0
  041196  mov dword ptr [0x3272c], 0
L411a0:
  0411a0  mov edi, dword ptr [0x4698]
  0411a6  cmp byte ptr [0x41b7], 1
  0411ad  jne 0x411b4
  0411af  mov edi, 0x400
L411b4:
  0411b4  mov ebp, dword ptr [0x4694]
  0411ba  mov ebp, dword ptr ds:[ebp*4 + 0x31f24]
  0411c2  cmp word ptr [0x12bf], 0x15
  0411ca  jl 0x411d2
  0411cc  mov ebp, dword ptr [0x3272c]
L411d2:
  0411d2  mov edx, 0x3c8
  0411d7  xor eax, eax
  0411d9  out dx, al
  0411da  inc edx
  0411db  mov esi, 0xfffffd00
L411e0:
  0411e0  xor eax, eax
  0411e2  xor ebx, ebx
  0411e4  xor ecx, ecx
  0411e6  mov al, byte ptr [esi + 0x32a44]
  0411ec  mov bl, byte ptr [esi + 0x32d44]
  0411f2  mov cl, byte ptr [esi + 0x33044]
  0411f8  sub eax, ebx
  0411fa  imul eax, edi
  0411fd  sar eax, 0xa
  041200  add eax, ebx
  041202  sub eax, ecx
  041204  imul eax, ebp
  041207  sar eax, 0xa
  04120a  add eax, ecx
  04120c  out dx, al
  04120d  inc esi
  04120e  jne 0x411e0
  041210  add dword ptr [0x4694], 2
  041217  cmp dword ptr [0x4694], 0x7f
  04121e  jl 0x4122a
  041220  mov dword ptr [0x4694], 0x7f
L4122a:
  04122a  cmp byte ptr [0x419a], 1
  041231  jne 0x4123d
  041233  mov dword ptr [0x4694], 0
L4123d:
  04123d  cmp word ptr [0x12bf], 0xc
  041245  je 0x4127b
  041247  cmp word ptr [0x12bf], 0xe
  04124f  je 0x4127b
  041251  cmp word ptr [0x12bf], 0x11
  041259  je 0x4127b
  04125b  cmp word ptr [0x12bf], 0x12
  041263  je 0x4127b
  041265  cmp word ptr [0x12bf], 0x14
  04126d  je 0x4127b
  04126f  cmp word ptr [0x12bf], 0x15
  041277  je 0x4127b
  041279  jmp 0x41294
L4127b:
  04127b  movzx eax, word ptr [0x12ca]
  041282  and eax, 0x3f
  041285  cmp eax, 0
  041288  jne 0x41294
  04128a  mov dword ptr [0x4694], 0
L41294:
  041294  mov dword ptr [0x35720], 0x1ff
  04129e  fld dword ptr [0x32730]
  0412a4  fcos 
  0412a6  fimul dword ptr [0x35720]
  0412ac  fiadd dword ptr [0x35720]
  0412b2  fistp dword ptr [0x4698]
  0412b8  neg dword ptr [0x4698]
  0412be  add dword ptr [0x4698], 0x3ff
  0412c8  fld dword ptr [0x32730]
  0412ce  fadd dword ptr [0x32734]
  0412d4  fstp dword ptr [0x32730]
  0412da  neg ebp
  0412dc  add ebp, 0x3ff
  0412e2  mov dword ptr [0x35724], ebp
  0412e8  fild dword ptr [0x35724]
  0412ee  fmul qword ptr [0x178a0]
  0412f4  mov dword ptr [0x35720], 0x12c
  0412fe  fild dword ptr [0x35720]
  041304  fdivp st(1)
  041306  fadd qword ptr [0x178a0]
  04130c  fld st(0)
  04130e  fadd qword ptr [0x17898]
  041314  fstp qword ptr [0x17898]
  04131a  fadd qword ptr [0x178c8]
  041320  fstp qword ptr [0x178c8]
  041326  fld qword ptr [0x17898]
  04132c  fstp dword ptr [0x35734]
  041332  test dword ptr [0x35734], 0x80000000
  04133c  je 0x41369
  04133e  fld1 
  041340  fadd qword ptr [0x17898]
  041346  fstp qword ptr [0x17898]
  04134c  sub dword ptr [0x178a8], 0x28
  041353  cmp dword ptr [0x178a8], 0
  04135a  jg 0x41369
  04135c  mov eax, dword ptr [0x178ac]
  041361  sub eax, 0x78
  041364  mov dword ptr [0x178a8], eax
L41369:
  041369  fld1 
  04136b  fld qword ptr [0x17898]
  041371  fcompp 
  041373  wait 
  041374  fnstsw ax
  041376  sahf 
  041377  jb 0x413aa
  041379  fld1 
  04137b  fchs 
  04137d  fadd qword ptr [0x17898]
  041383  fstp qword ptr [0x17898]
  041389  add dword ptr [0x178a8], 0x28
  041390  mov eax, dword ptr [0x178ac]
  041395  sub eax, 0x78
  041398  cmp dword ptr [0x178a8], eax
  04139e  jl 0x413aa
  0413a0  mov dword ptr [0x178a8], 0
L413aa:
  0413aa  fild dword ptr [0x35724]
  0413b0  fmul qword ptr [0x178b8]
  0413b6  mov dword ptr [0x35720], 0x12c
  0413c0  fild dword ptr [0x35720]
  0413c6  fdivp st(1)
  0413c8  fadd qword ptr [0x178b8]
  0413ce  fadd qword ptr [0x178b0]
  0413d4  fstp qword ptr [0x178b0]
  0413da  fld qword ptr [0x178b0]
  0413e0  fstp dword ptr [0x35734]
  0413e6  test dword ptr [0x35734], 0x80000000
  0413f0  je 0x4141d
  0413f2  fld1 
  0413f4  fadd qword ptr [0x178b0]
  0413fa  fstp qword ptr [0x178b0]
  041400  sub dword ptr [0x178c0], 0x28
  041407  cmp dword ptr [0x178c0], 0
  04140e  jg 0x4141d
  041410  mov eax, dword ptr [0x178c4]
  041415  sub eax, 0x78
  041418  mov dword ptr [0x178c0], eax
L4141d:
  04141d  fld1 
  04141f  fld qword ptr [0x178b0]
  041425  fcompp 
  041427  wait 
  041428  fnstsw ax
  04142a  sahf 
  04142b  jb 0x4145e
  04142d  fld1 
  04142f  fchs 
  041431  fadd qword ptr [0x178b0]
  041437  fstp qword ptr [0x178b0]
  04143d  add dword ptr [0x178c0], 0x28
  041444  mov eax, dword ptr [0x178c4]
  041449  sub eax, 0x78
  04144c  cmp dword ptr [0x178c0], eax
  041452  jl 0x4145e
  041454  mov dword ptr [0x178c0], 0
L4145e:
  04145e  fld qword ptr [0x4bb0]
  041464  fadd qword ptr [0x4968]
  04146a  fstp qword ptr [0x4bb0]
  041470  mov dword ptr [0x48d8], 0xffffffff
  04147a  cmp byte ptr [0x419b], 1
  041481  jne 0x4148d
  041483  mov dword ptr [0x48d8], 0
L4148d:
  04148d  cmp byte ptr [0x419c], 1
  041494  jne 0x414a0
  041496  mov dword ptr [0x48d8], 1
L414a0:
  0414a0  cmp byte ptr [0x419d], 1
  0414a7  jne 0x414b3
  0414a9  mov dword ptr [0x48d8], 2
L414b3:
  0414b3  cmp byte ptr [0x419e], 1
  0414ba  jne 0x414c6
  0414bc  mov dword ptr [0x48d8], 3
L414c6:
  0414c6  cmp byte ptr [0x419f], 1
  0414cd  jne 0x414d9
  0414cf  mov dword ptr [0x48d8], 4
L414d9:
  0414d9  mov dword ptr [0x48dc], 0xffffffff
  0414e3  cmp byte ptr [0x41a8], 1
  0414ea  jne 0x414f6
  0414ec  mov dword ptr [0x48dc], 0
L414f6:
  0414f6  cmp byte ptr [0x41a9], 1
  0414fd  jne 0x41509
  0414ff  mov dword ptr [0x48dc], 1
L41509:
  041509  cmp byte ptr [0x41aa], 1
  041510  jne 0x4151c
  041512  mov dword ptr [0x48dc], 2
L4151c:
  04151c  cmp byte ptr [0x41ab], 1
  041523  jne 0x4152f
  041525  mov dword ptr [0x48dc], 4
L4152f:
  04152f  cmp byte ptr [0x41ac], 1
  041536  jne 0x41542
  041538  mov dword ptr [0x48dc], 8
L41542:
  041542  cmp byte ptr [0x41ad], 1
  041549  jne 0x41555
  04154b  mov dword ptr [0x48dc], 0x10
L41555:
  041555  add dword ptr [0x46a8], 0x26c
  04155f  add dword ptr [0x46ac], 0x230
  041569  fld dword ptr [0x7f30]
  04156f  fadd dword ptr [0x7f34]
  041575  fstp dword ptr [0x7f30]
  04157b  fld dword ptr [0x7f38]
  041581  fadd dword ptr [0x7f3c]
  041587  fstp dword ptr [0x7f38]
  04158d  cmp byte ptr [0x41c4], 1
  041594  jne 0x415a0
  041596  mov eax, 0x29d9a
  04159b  mov dword ptr [0x4c00], eax
L415a0:
  0415a0  cmp byte ptr [0x41c5], 1
  0415a7  jne 0x415b3
  0415a9  mov eax, 0x2a0f5
  0415ae  mov dword ptr [0x4c00], eax
L415b3:
  0415b3  cmp byte ptr [0x41c6], 1
  0415ba  jne 0x415c6
  0415bc  mov eax, 0x2a30b
  0415c1  mov dword ptr [0x4c00], eax
L415c6:
  0415c6  cmp byte ptr [0x41b0], 1
  0415cd  jne 0x415df
  0415cf  fld1 
  0415d1  fchs 
  0415d3  fadd dword ptr [0x7fbc]
  0415d9  fstp dword ptr [0x7fbc]
L415df:
  0415df  cmp byte ptr [0x41be], 1
  0415e6  jne 0x415f6
  0415e8  fld1 
  0415ea  fadd dword ptr [0x7fbc]
  0415f0  fstp dword ptr [0x7fbc]
L415f6:
  0415f6  cmp byte ptr [0x41b1], 1
  0415fd  jne 0x4160f
  0415ff  fld1 
  041601  fchs 
  041603  fadd dword ptr [0x7fc0]
  041609  fstp dword ptr [0x7fc0]
L4160f:
  04160f  cmp byte ptr [0x41bf], 1
  041616  jne 0x41626
  041618  fld1 
  04161a  fadd dword ptr [0x7fc0]
  041620  fstp dword ptr [0x7fc0]
L41626:
  041626  cmp byte ptr [0x41b2], 1
  04162d  jne 0x4163f
  04162f  fld1 
  041631  fchs 
  041633  fadd dword ptr [0x7fc4]
  041639  fstp dword ptr [0x7fc4]
L4163f:
  04163f  cmp byte ptr [0x41c0], 1
  041646  jne 0x41656
  041648  fld1 
  04164a  fadd dword ptr [0x7fc4]
  041650  fstp dword ptr [0x7fc4]
L41656:
  041656  mov ecx, 0x32
  04165b  mov edi, 0x178e0
L41660:
  041660  fld qword ptr [edi]
  041662  fadd qword ptr [edi + 8]
  041665  fstp qword ptr [edi]
  041667  add edi, 0x18
  04166a  dec ecx
  04166b  jne 0x41660
  04166d  cmp dword ptr [0x33054], 0
  041674  jne 0x4169f
  041676  cmp dword ptr [0x33044], 0
  04167d  jne 0x4169f
  04167f  cmp dword ptr [0x178a8], 0x410
  041689  jl 0x4169f
  04168b  mov dword ptr [0x33044], 1
  041695  mov dword ptr [0x33054], 0
L4169f:
  04169f  cmp dword ptr [0x33044], 0
  0416a6  je 0x416fd
  0416a8  fld dword ptr [0x33048]
  0416ae  fadd dword ptr [0x3304c]
  0416b4  fstp dword ptr [0x33048]
  0416ba  inc dword ptr [0x33054]
  0416c0  fld1 
  0416c2  fstp dword ptr [0x35720]
  0416c8  mov eax, dword ptr [0x33048]
  0416cd  cmp eax, dword ptr [0x35720]
  0416d3  jb 0x416fd
  0416d5  fldz 
  0416d7  fstp dword ptr [0x33048]
  0416dd  mov dword ptr [0x33044], 0
  0416e7  mov eax, dword ptr [0x33058]
  0416ec  mov ebx, dword ptr [0x4c00]
  0416f2  mov dword ptr [0x4c00], eax
  0416f7  mov dword ptr [0x33058], ebx
L416fd:
  0416fd  mov edx, dword ptr [0x33c20]
  041703  movzx eax, word ptr [0x12bf]
  04170a  cmp eax, dword ptr [edx + 0x33c24]
  041710  jl 0x41738
  041712  movzx eax, word ptr [0x12ca]
  041719  and eax, 0x3f
  04171c  cmp eax, dword ptr [edx + 0x33c28]
  041722  jl 0x41738
  041724  add dword ptr [0x33c20], 0xc
  04172b  inc dword ptr [0x32728]
  041731  and dword ptr [0x32728], 1
L41738:
  041738  wait 
  041739  frstor dword ptr [0x337de]
  04173f  popal 
  041740  popfd 
  041741  ret 
  041742  add byte ptr [eax], al
  041744  add byte ptr [eax], al
  041746  add byte ptr [eax], al
  041748  add byte ptr [eax], al
  04174a  add byte ptr [eax], al
  04174c  add byte ptr [eax], al
  04174e  add byte ptr [eax], al
  041750  add byte ptr [esi + 3], bh
  041753  add byte ptr [eax], al
  041755  add byte ptr [eax], al
  041757  add byte ptr [eax], al
  041759  add byte ptr [eax], al
  04175b  add dl, bh
  04175d  mov eax, 0x35ea4
  041762  add eax, dword ptr [0x18]
  041768  shl eax, 0xc
  04176b  shr ax, 0xc
  04176f  mov edx, 0x19
  041774  add dx, ax
  041777  mov word ptr [0x35eb3], dx
  04177e  xchg dword ptr gs:[0x20], eax
  041784  mov dword ptr [0x35d94], eax
  041789  xor bl, bl
  04178b  call dword ptr [0x24]
  041791  mov dword ptr [0x35d98], edx
  041797  mov edx, 0x35e68
  04179c  call dword ptr [0x28]
  0417a2  mov al, 0x30
  0417a4  out 0x43, al
  0417a6  mov al, 0
  0417a8  out 0x40, al
  0417aa  mov al, 0x41
  0417ac  out 0x40, al
  0417ae  sti 
  0417af  ret 
  0417b0  cli 
  0417b1  mov edx, dword ptr [0x35d94]
  0417b7  mov dword ptr gs:[0x20], edx
  0417bd  mov edx, dword ptr [0x35d98]
  0417c3  xor bl, bl
  0417c5  call dword ptr [0x28]
  0417cb  mov al, 0x36
  0417cd  out 0x43, al
  0417cf  xor al, al
  0417d1  out 0x40, al
  0417d3  out 0x40, al
  0417d5  sti 
  0417d6  ret 
  0417d7  cli 
  0417d8  mov al, 0x30
  0417da  out 0x43, al
  0417dc  mov dx, 0x3da
L417e0:
  0417e0  in al, dx
  0417e1  test al, 8
  0417e3  jne 0x417e0
L417e5:
  0417e5  in al, dx
  0417e6  test al, 8
  0417e8  je 0x417e5
  0417ea  xor al, al
  0417ec  out 0x40, al
  0417ee  out 0x40, al
L417f0:
  0417f0  in al, dx
  0417f1  test al, 8
  0417f3  jne 0x417f0
L417f5:
  0417f5  in al, dx
  0417f6  test al, 8
  0417f8  je 0x417f5
  0417fa  in al, 0x40
  0417fc  mov ah, al
  0417fe  in al, 0x40
  041800  xchg ah, al
  041802  neg ax
  041805  sub ax, 0xc0
  041809  mov word ptr [0x35ebd], ax
  04180f  mov bx, ax
L41812:
  041812  in al, dx
  041813  test al, 8
  041815  je 0x41812
L41817:
  041817  in al, dx
  041818  test al, 8
  04181a  jne 0x41817
  04181c  mov al, bl
  04181e  out 0x40, al
  041820  mov al, bh
  041822  out 0x40, al
  041824  sti 
  041825  ret 
  041826  xchg ebx, ebx
  041828  push eax
  041829  push edx
  04182a  push ds
  04182b  mov ds, word ptr cs:[0x1e]
  041832  mov dx, 0x3da
  041836  in al, dx
  041837  and eax, 8
  04183a  dec eax
  04183b  neg eax
  04183d  add word ptr [0x35ebd], ax
L41844:
  041844  in al, dx
  041845  test al, 8
  041847  je 0x41844
  041849  mov ax, word ptr [0x35ebd]
  04184f  out 0x40, al
  041851  mov al, ah
  041853  out 0x40, al
  041855  call dword ptr [0x35d90]
  04185b  pop ds
  04185c  pop edx
  04185d  mov al, 0x20
  04185f  out 0x20, al
  041861  pop eax
  041862  sti 
  041863  iretd 
  041864  push eax
  041865  push edx
  041866  mov edx, 0x25ec03da
  04186b  or byte ptr [eax], al
  04186d  dec eax
  04186e  neg eax
  041870  add dword ptr cs:[esi], eax
  041873  add byte ptr [eax], al
L41875:
  041875  in al, dx
  041876  test al, 8
  041878  je 0x41875
  04187a  jmp 0x4187c
L4187c:
  04187c  mov eax, 0x40e64100
  041881  mov al, ah
  041883  out 0x40, al
  041885  pop edx
  041886  mov al, 0x20
  041888  out 0x20, al
  04188a  pop eax
  04188b  iretd 
  04188c  imul esi, dword ptr [edx + 0x65], 0x64
  041890  jne 0x418c0
  041892  jae 0x418f7
  041894  js 0x41896
L41896:
  041896  je 0x41910
  041898  je 0x418cb
  04189a  cmp dword ptr [ebx + 0x2e], esp
  04189d  jae 0x41902
  04189f  js 0x418a1
L418a1:
  0418a1  xchg ebx, ebx
  0418a3  nop 
  0418a4  aas 
  0418a5  aas 
  0418a6  aas 
  0418a7  add eax, dword ptr [edx + eax]
  0418aa  add eax, dword ptr [0x2050404]
  0418b0  add eax, 0x8050405
  0418b5  add eax, dword ptr [esi]
  0418b7  or byte ptr [0x3f080906], al
  0418bd  aas 
  0418be  aas 
  0418bf  or dword ptr [eax], ecx
  0418c1  push es
  0418c2  or dword ptr [esi + eax], ecx
  0418c5  or al, 0xa
  0418c7  push es
  0418c8  or al, 0xc
  0418ca  push es
L418cb:
  0418cb  or dword ptr [ecx], ecx
  0418cd  or byte ptr [ecx], cl
  0418cf  or eax, 0xc0d0a09
  0418d4  cmp edi, dword ptr [ebx]
  0418d6  cmp ecx, dword ptr [0xd0d0c0b]
  0418dc  or dword ptr [0x100b0c0d], ecx
  0418e2  pop es
  0418e3  or dl, byte ptr [eax]
  0418e5  or dword ptr [edx], ecx
  0418e7  adc byte ptr [0x3709110d], cl
  0418ed  aaa 
  0418ee  aaa 
  0418ef  push cs
  0418f0  adc al, 0xa
  0418f2  push cs
  0418f3  adc eax, 0xe180f0d
  0418f8  or eax, 0x150e1011
  0418fd  adc dword ptr [edi], ecx
  0418ff  push ss
  041900  adc al, 0xf
L41902:
  041902  sbb byte ptr [0x11333333], dl
  041908  push cs
  041909  or eax, 0x110a1011
  04190e  adc dword ptr [0x110a1510], ecx
  041914  adc eax, 0xa11140d
  041919  adc eax, 0x2f2f0d11
  04191e  das 
  04191f  adc eax, 0x18100d15
  041924  or edx, dword ptr [ecx]
  041926  sbb byte ptr [0x150e1c12], cl
  04192c  sbb byte ptr [0x180e1d14], cl
  041932  adc cl, byte ptr [ebx]
  041934  sub ebp, dword ptr [ebx]
  041936  sub ebx, dword ptr [ecx]
  041938  adc eax, 0xe161c0d
  04193d  sbb dword ptr [ecx], ebx
  04193f  push cs
  041940  sbb dword ptr [0xe181c0f], ebx
  041946  sbb eax, 0x12110f1c
  04194b  adc byte ptr [edi], ah
  04194d  daa 
  04194e  daa 
  04194f  adc dword ptr [0x11121514], edx
  041955  adc eax, 0x15151115
  04195a  adc al, 0x11
  04195c  sbb dword ptr [ecx], edx
  04195e  adc dword ptr [eax], ebx
  041960  adc eax, 0x23111c12
  041965  and esp, dword ptr [ebx]
  041967  adc eax, 0x19151118
  04196c  adc eax, 0x15111d15
  041971  sbb eax, 0x18191115
  041976  adc bl, byte ptr [ecx + ebx]
  041979  adc eax, 0x2020181a
  04197e  and byte ptr [0x13181c1d], dl
  041984  adc byte ptr [ecx], bl
  041986  adc eax, 0x14161911
  04198b  sbb al, 0x16
  04198d  adc dword ptr [0x171b1517], ebx
  041993  sbb byte ptr [edi], bl
  041995  pop ds
  041996  pop ds
  041997  sbb dword ptr [ecx], ebx
  041999  adc eax, 0x19111d19
  04199e  sbb eax, 0x11191d15
  0419a3  sbb eax, 0x1d1d1519
  0419a8  adc dword ptr [0x1c1c151d], ebx
  0419ae  sbb al, 0x19
  0419b0  sbb al, 0x19
  0419b2  sbb dword ptr [0x181a1d1c], ebx
  0419b8  sbb eax, 0x1d1d191d
  0419bd  sbb al, 0x16
  0419bf  and byte ptr [edi], cl
  0419c1  adc eax, 0x18181321
  0419c6  sbb byte ptr [edx], bl
  0419c8  and edx, dword ptr [ebx]
  0419ca  sbb esp, dword ptr [ebx]
  0419cc  sbb bl, byte ptr [0x2b1d152a]
  0419d2  sbb ebx, dword ptr [esi]
  0419d4  xor byte ptr [esp + ebx], bl
  0419d7  and al, 0x21
  0419d9  sbb eax, 0x1414232a
  0419de  adc al, 0x1e
  0419e0  xor byte ptr [ecx], ah
  0419e2  pop ds
  0419e3  xor byte ptr [ebx], ch
  0419e5  and byte ptr [eax], bl
  0419e7  mov esp, cr3
  0419ea  mov ecx, dr3
  0419ed  adc dword ptr [ecx], esp
  0419ef  sbb dl, byte ptr [0x10111d21]
  0419f5  adc byte ptr [eax], dl
  0419f7  and eax, 0x1d25121d
  0419fc  adc eax, 0x23191a21
  041a01  sbb ebx, dword ptr [ecx]
  041a04  sbb eax, 0x1c1e2119
  041a09  and eax, 0xc0c181e
  041a0e  or al, 0x28
  041a10  push ds
  041a11  adc eax, 0x21142223
  041a16  and dword ptr [ecx], ebx
  041a18  and ah, byte ptr [ecx]
  041a1a  sbb eax, 0x21192521
  041a1f  and eax, 0x1921251d
  041a24  or byte ptr [eax], cl
  041a26  or byte ptr [0x25261925], ah
  041a2c  sbb eax, 0x23162a23
  041a31  sub ebx, dword ptr [ebx]
  041a33  sub dword ptr [ecx], esp
  041a35  adc ebp, dword ptr [ecx]
  041a37  and dword ptr [0x4152528], edx
  041a3d  add al, 4
  041a3f  sub al, 0x26
  041a41  adc eax, 0x28192129
  041a46  and dword ptr [0x29192529], ebx
  041a4c  and eax, 0x19222c1d
  041a51  sub al, 0x23
  041a53  sbb eax, 0x2c000000
  041a58  sbb eax, 0x2b16292b
  041a5e  sub ebx, dword ptr [ebx]
  041a60  and dh, byte ptr [eax]
  041a62  push ss
  041a63  and esi, dword ptr [edx]
  041a65  sbb esp, dword ptr [0x322b1d38]
  041a6b  sbb al, 0
  041a6d  aas 
  041a6e  add byte ptr [eax], dh
  041a70  and eax, 0x1b263116
  041a75  xor dword ptr [ebx], ebp
  041a77  pop ss
  041a78  xor ebp, dword ptr [ebx]
  041a7a  sbb al, 0x3a
  041a7c  sub eax, 0x1c32331d
  041a81  xor edi, dword ptr [ecx]
  041a83  push ds
  041a84  add byte ptr [edi], bh
  041a86  add byte ptr [ebx], bh
  041a88  cmp dword ptr [esi], ebx
  041a8a  and dword ptr [edx], esp
  041a8c  and byte ptr [ecx], ah
  041a8e  and eax, 0x24262222
  041a93  and al, 0x21
  041a95  and byte ptr [0x26252125], ah
  041a9b  and al, 0
  041a9d  aas 
  041a9e  add byte ptr [esp + ebp], ah
  041aa1  sub ch, byte ptr [ecx]
  041aa3  and ah, byte ptr [ecx]
  041aa5  sub dword ptr [ebx], esp
  041aa7  and al, 0x29
  041aa9  and eax, 0x25262921
  041aae  sub al, 0x23
  041ab0  and dword ptr [0x3f0021], ebp
  041ab7  sub al, 0x2b
  041ab9  and ebp, dword ptr [ecx]
  041abb  sub dword ptr [eax], ebp
  041abd  sub dword ptr [0x2c2e2a29], ebp
  041ac3  sub eax, 0x2d2d2929
  041ac8  sub dword ptr [0x3f002c2e], ebp
  041ace  add byte ptr [edx + esi], ah
  041ad1  sub ah, byte ptr [0x39262339]
  041ad7  sub ch, byte ptr [ebx]
  041ad9  xor ah, byte ptr [ebx]
  041adb  sub esi, dword ptr [ebx]
  041add  sub ebp, dword ptr [ebx]
  041adf  cmp eax, 0x2b3d2b23
  041ae4  add byte ptr [edi], bh
  041ae6  add byte ptr [esi], ah
  041ae8  cmp dword ptr [edx], esi
  041aea  sub al, 0x35
  041aec  xor dword ptr [esp + edi], ebp
  041aef  xor ch, byte ptr [esi + edi]
  041af2  cmp dh, byte ptr [ecx]
  041af4  and esi, dword ptr es:[ebx]
  041af7  daa 
  041af8  sub dword ptr [ebx], esi
  041afa  sub esp, dword ptr [ebx]
  041afc  add byte ptr [edi], bh
  041afe  add byte ptr [edx], bh
  041b00  and edi, dword ptr cs:[edx]
  041b03  sub esi, dword ptr cs:[edi]
  041b06  das 
  041b07  xor dword ptr [ebx], esi
  041b09  xor esp, dword ptr [ebx]
  041b0b  xor al, 0x33
  041b0d  sub esi, dword ptr [ebx]
  041b0f  cmp eax, 0x2b3d3324
  041b14  add byte ptr [edi], bh
  041b16  add byte ptr [esp + esi], bh
  041b19  sub edi, dword ptr [0x3d3d243c]
  041b1f  sub esi, dword ptr [ebx]
  041b21  xor eax, 0x333d3332
  041b26  xor edi, dword ptr [esi]
  041b28  cmp edi, dword ptr [esi + 0x3f0032]
  041b2f  xor edi, dword ptr ds:[esi]
  041b33  cmp eax, 0x1e182518
  041b39  sub dword ptr [esi], ebx
  041b3b  sbb ah, byte ptr [edi]
  041b3d  sbb ah, byte ptr [ecx]
  041b3f  sub esp, dword ptr [ecx]
  041b41  sbb al, 0x29
  041b43  sbb al, 0
  041b45  aas 
  041b46  add byte ptr [esi], bl
  041b48  sub ebx, dword ptr [esi]
  041b4a  push ss
  041b4b  and eax, 0x1a251818
  041b50  sbb ah, byte ptr [edi]
  041b52  sbb al, 0x1a
  041b54  and eax, 0x1e271c1c
  041b59  and ebp, dword ptr [0x3f0025]
  041b5f  sbb byte ptr [0x1e271a1c], ah
  041b65  push ds
  041b66  sub esp, dword ptr [ebx]
  041b68  daa 
  041b69  sub eax, 0x1e251a29
  041b6e  and dword ptr [ebx], ebp
  041b70  and eax, 0x272d23
  041b75  aas 
  041b76  add byte ptr [0x2d292729], ah
  041b7c  sub ebp, dword ptr [ebx]
  041b7e  das 
  041b7f  sub eax, 0x27252921
  041b84  sub ebp, dword ptr [ecx]
  041b86  sbb ah, byte ptr [edi]
  041b88  and dword ptr [edx], ebx
  041b8a  sub dword ptr [ebx], esp
  041b8c  add byte ptr [edi], bh
  041b8e  add byte ptr [edx], bl
  041b90  sub dword ptr [0x25232718], esp
  041b96  sub eax, 0x292b212b
  041b9b  and ebp, dword ptr [0x27291c2b]
  041ba1  aas 
  041ba2  aas 
  041ba3  aas 
  041ba4  add byte ptr [eax], al
  041ba6  add byte ptr [ecx], al
  041ba8  add dword ptr [ecx], eax
  041baa  add al, byte ptr [edx]
  041bac  add al, byte ptr [ebx]
  041bae  add eax, dword ptr [ebx]
  041bb0  add al, 4
  041bb2  add al, 5
  041bb4  add eax, 0x6060605
  041bb9  pop es
  041bba  pop es
  041bbb  pop es
  041bbc  or byte ptr [eax], cl
  041bbe  or byte ptr [ecx], cl
  041bc0  or dword ptr [ecx], ecx
  041bc2  or cl, byte ptr [edx]
  041bc4  or cl, byte ptr [ebx]
  041bc6  or ecx, dword ptr [ebx]
  041bc8  or al, 0xc
  041bca  or al, 0xd
  041bcc  or eax, 0xe0e0e0d
