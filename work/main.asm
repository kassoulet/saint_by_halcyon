  034643  mov edi, dword ptr [0x48bc]
  034649  mov ecx, 0x4000
  03464e  rep movsd dword ptr es:[edi], dword ptr [esi]
  034650  mov dword ptr [0x4694], 0x10
  03465a  call 0x31ab8
  03465f  call 0x31b33
  034664  mov dword ptr [0x469c], 1
  03466e  mov dword ptr [0x1479c], 0
  034678  mov dword ptr [0x147a0], 0
  034682  mov dword ptr [0x147a4], 0
  03468c  mov eax, 0x2a30b
  034691  mov dword ptr [0x4c00], eax
  034696  mov dword ptr [0x467c], 0x3b8
  0346a0  mov dword ptr [0x4680], 0x2710
  0346aa  fild dword ptr [0x467c]
  0346b0  fild dword ptr [0x4680]
  0346b6  fdivp st(1)
  0346b8  fst qword ptr [0x178a0]
  0346be  fstp qword ptr [0x178d0]
  0346c4  mov dword ptr [0x178ac], 0x3a98
  0346ce  mov dword ptr [0x178dc], 0x3a98
  0346d8  fldz 
  0346da  fst qword ptr [0x17898]
  0346e0  fstp qword ptr [0x178c8]
  0346e6  mov dword ptr [0x178a8], 0
  0346f0  mov dword ptr [0x178d8], 0x28
  0346fa  mov dword ptr [0x467c], 0x3b
  034704  mov dword ptr [0x4680], 0x2710
  03470e  fild dword ptr [0x467c]
  034714  fild dword ptr [0x4680]
  03471a  fdivp st(1)
  03471c  fstp qword ptr [0x178b8]
  034722  mov dword ptr [0x178c4], 0x780
  03472c  fldz 
  03472e  fstp qword ptr [0x178b0]
  034734  mov dword ptr [0x178c0], 0
  03473e  mov dword ptr [0x32728], 0
  034748  mov dword ptr [0x32724], 0
  034752  mov edi, dword ptr [0x466c]
  034758  xor eax, eax
  03475a  mov ecx, 0x3e80
  03475f  rep stosd dword ptr es:[edi], eax
L34761:
  034761  mov dword ptr [0x469c], 0
L3476b:
  03476b  cmp dword ptr [0x469c], 1
  034772  jl 0x3476b
  034774  mov esi, dword ptr [0x466c]
  03477a  mov edi, dword ptr [0x4668]
  034780  xor ebp, ebp
  034782  mov ecx, 0x1f40
  034787  nop 
L34788:
  034788  mov eax, dword ptr [esi]
  03478a  mov ebx, dword ptr [esi + 4]
  03478d  mov dword ptr [esi], ebp
  03478f  mov dword ptr [esi + 4], ebp
  034792  mov dword ptr [edi], eax
  034794  mov dword ptr [edi + 4], ebx
  034797  add esi, 8
  03479a  add edi, 8
  03479d  dec ecx
  03479e  jne 0x34788
  0347a0  mov ebx, 0x17898
  0347a5  mov edi, 0x17d90
  0347aa  cmp dword ptr [0x32728], 0
  0347b1  je 0x347bd
  0347b3  mov ebx, 0x178b0
  0347b8  mov edi, 0x3305c
L347bd:
  0347bd  call 0x1f2c0
  0347c2  fld qword ptr [0x17830]
  0347c8  fstp qword ptr [0x4af0]
  0347ce  fld qword ptr [0x17838]
  0347d4  fstp qword ptr [0x4af8]
  0347da  fld qword ptr [0x17840]
  0347e0  fstp qword ptr [0x4b00]
  0347e6  fld qword ptr [0x17848]
  0347ec  fstp qword ptr [0x4a20]
  0347f2  fld qword ptr [0x17850]
  0347f8  fstp qword ptr [0x4a28]
  0347fe  fld qword ptr [0x17858]
  034804  fstp qword ptr [0x4a30]
  03480a  fld qword ptr [0x17860]
  034810  fstp qword ptr [0x49f0]
  034816  fld qword ptr [0x17868]
  03481c  fstp qword ptr [0x49f8]
  034822  fld qword ptr [0x17870]
  034828  fstp qword ptr [0x4a00]
  03482e  fld qword ptr [0x17878]
  034834  fstp qword ptr [0x4938]
  03483a  mov ebx, 0x178c8
  03483f  mov edi, 0x17d90
  034844  call 0x1f2c0
  034849  fld qword ptr [0x17860]
  03484f  fstp qword ptr [0x49c0]
  034855  fld qword ptr [0x17868]
  03485b  fstp qword ptr [0x49c8]
  034861  fld qword ptr [0x17870]
  034867  fstp qword ptr [0x49d0]
  03486d  fld qword ptr [0x4938]
  034873  fmul qword ptr [0x4960]
  034879  fstp qword ptr [0x4a78]
  03487f  call 0x15d91
  034884  call 0x150d4
  034889  cmp byte ptr [0x41b7], 1
  034890  je 0x34dd1
  034896  fld qword ptr [0x49f0]
  03489c  fstp dword ptr [0x4c1c]
  0348a2  fld qword ptr [0x49f8]
  0348a8  fstp dword ptr [0x4c20]
  0348ae  fld qword ptr [0x4a00]
  0348b4  fstp dword ptr [0x4c24]
  0348ba  fld dword ptr [0x7f30]
  0348c0  fcos 
  0348c2  fld1 
  0348c4  faddp st(1)
  0348c6  fdiv qword ptr [0x4988]
  0348cc  fstp qword ptr [0x7eb8]
  0348d2  fld dword ptr [0x7f30]
  0348d8  fsin 
  0348da  fmul qword ptr [0x7f18]
  0348e0  fstp qword ptr [0x7ed0]
  0348e6  fld dword ptr [0x7f38]
  0348ec  fcos 
  0348ee  fmul qword ptr [0x7f00]
  0348f4  fstp qword ptr [0x7ed8]
  0348fa  fld dword ptr [0x7f30]
  034900  fsin 
  034902  fmul qword ptr [0x7f28]
  034908  fstp qword ptr [0x7ef0]
  03490e  fld dword ptr [0x7f38]
  034914  fcos 
  034916  fmul qword ptr [0x7f10]
  03491c  fstp qword ptr [0x7ef8]
  034922  fld dword ptr [0x7f30]
  034928  fsin 
  03492a  fmul qword ptr [0x7f20]
  034930  fstp qword ptr [0x7ee0]
  034936  fld dword ptr [0x7f38]
  03493c  fcos 
  03493e  fmul qword ptr [0x7f08]
  034944  fstp qword ptr [0x7ee8]
  03494a  mov esi, 0x4c84
  03494f  mov edi, dword ptr [0x466c]
  034955  add edi, 0x10000
  03495b  mov edx, 0x1a
L34960:
  034960  mov ecx, 0x29
L34965:
  034965  fld dword ptr [esi]
  034967  fmul qword ptr [0x15be0]
  03496d  fld dword ptr [esi + 4]
  034970  fmul qword ptr [0x15be8]
  034976  fld dword ptr [esi + 8]
  034979  fmul qword ptr [0x15bf0]
  03497f  faddp st(1)
  034981  faddp st(1)
  034983  fadd dword ptr [0x4c1c]
  034989  fstp dword ptr [0x4c28]
  03498f  fld dword ptr [esi]
  034991  fmul qword ptr [0x15c00]
  034997  fld dword ptr [esi + 4]
  03499a  fmul qword ptr [0x15c08]
  0349a0  fld dword ptr [esi + 8]
  0349a3  fmul qword ptr [0x15c10]
  0349a9  faddp st(1)
  0349ab  faddp st(1)
  0349ad  fadd dword ptr [0x4c20]
  0349b3  fstp dword ptr [0x4c2c]
  0349b9  fld dword ptr [esi]
  0349bb  fmul qword ptr [0x15c20]
  0349c1  fld dword ptr [esi + 4]
  0349c4  fmul qword ptr [0x15c28]
  0349ca  fld dword ptr [esi + 8]
  0349cd  fmul qword ptr [0x15c30]
  0349d3  faddp st(1)
  0349d5  faddp st(1)
  0349d7  fadd dword ptr [0x4c24]
  0349dd  fstp dword ptr [0x4c30]
  0349e3  call dword ptr [0x4c00]
  0349e9  cmp dword ptr [0x33044], 1
  0349f0  jne 0x34a8c
  0349f6  mov eax, dword ptr [0x4c34]
  0349fb  mov ebx, dword ptr [0x4c38]
  034a01  mov dword ptr [0x4c40], eax
  034a06  mov dword ptr [0x4c44], ebx
  034a0c  mov eax, dword ptr [0x4c3c]
  034a11  mov dword ptr [0x4c48], eax
  034a16  call dword ptr [0x33058]
  034a1c  fld dword ptr [0x4c34]
  034a22  fmul dword ptr [0x33048]
  034a28  fld1 
  034a2a  fsub dword ptr [0x33048]
  034a30  fmul dword ptr [0x4c40]
  034a36  faddp st(1)
  034a38  fmul qword ptr [0x7ea0]
  034a3e  fistp dword ptr [edi]
  034a40  fld dword ptr [0x4c38]
  034a46  fmul dword ptr [0x33048]
  034a4c  fld1 
  034a4e  fsub dword ptr [0x33048]
  034a54  fmul dword ptr [0x4c44]
  034a5a  faddp st(1)
  034a5c  fmul qword ptr [0x7ea0]
  034a62  fistp dword ptr [edi + 4]
  034a65  fld dword ptr [0x4c3c]
  034a6b  fmul dword ptr [0x33048]
  034a71  fld1 
  034a73  fsub dword ptr [0x33048]
  034a79  fmul dword ptr [0x4c48]
  034a7f  faddp st(1)
  034a81  fmul qword ptr [0x7ea0]
  034a87  fistp dword ptr [edi + 8]
  034a8a  jmp 0x34ab8
L34a8c:
  034a8c  fld dword ptr [0x4c34]
  034a92  fmul qword ptr [0x7ea0]
  034a98  fistp dword ptr [edi]
  034a9a  fld dword ptr [0x4c38]
  034aa0  fmul qword ptr [0x7ea0]
  034aa6  fistp dword ptr [edi + 4]
  034aa9  fld dword ptr [0x4c3c]
  034aaf  fmul qword ptr [0x7ea0]
  034ab5  fistp dword ptr [edi + 8]
L34ab8:
  034ab8  add edi, 0xc
  034abb  add esi, 0xc
  034abe  dec ecx
  034abf  jne 0x34965
  034ac5  dec edx
  034ac6  jne 0x34960
  034acc  mov esi, dword ptr [0x466c]
  034ad2  add esi, 0x10000
  034ad8  mov edi, dword ptr [0x466c]
  034ade  sub edi, 2
  034ae1  mov dword ptr [0x4680], 0x19
L34aeb:
  034aeb  mov dword ptr [0x467c], 0x28
L34af5:
  034af5  mov eax, dword ptr [esi + 8]
  034af8  add eax, dword ptr [esi + 0x14]
  034afb  add eax, dword ptr [esi + 0x1f4]
  034b01  add eax, dword ptr [esi + 0x200]
  034b07  je 0x34daa
  034b0d  push edi
  034b0e  mov edx, dword ptr [esi]
  034b10  mov ebp, dword ptr [esi + 4]
  034b13  mov edi, dword ptr [esi + 8]
  034b16  mov eax, dword ptr [esi + 0x1ec]
  034b1c  mov ebx, dword ptr [esi + 0x1f0]
  034b22  mov ecx, dword ptr [esi + 0x1f4]
  034b28  sub eax, edx
  034b2a  sub ebx, ebp
  034b2c  sub ecx, edi
  034b2e  mov dword ptr [0x33be0], edx
  034b34  mov dword ptr [0x33be4], ebp
  034b3a  mov dword ptr [0x33be8], edi
  034b40  sar eax, 3
  034b43  sar ebx, 3
  034b46  sar ecx, 3
  034b49  mov dword ptr [0x33bfc], eax
  034b4e  mov dword ptr [0x33c00], ebx
  034b54  mov dword ptr [0x33c04], ecx
  034b5a  mov edx, dword ptr [esi + 0xc]
  034b5d  mov ebp, dword ptr [esi + 0x10]
  034b60  mov edi, dword ptr [esi + 0x14]
  034b63  mov eax, dword ptr [esi + 0x1f8]
  034b69  mov ebx, dword ptr [esi + 0x1fc]
  034b6f  mov ecx, dword ptr [esi + 0x200]
  034b75  sub eax, edx
  034b77  sub ebx, ebp
  034b79  sub ecx, edi
  034b7b  mov dword ptr [0x33bec], edx
  034b81  mov dword ptr [0x33bf0], ebp
  034b87  mov dword ptr [0x33bf4], edi
  034b8d  sar eax, 3
  034b90  sar ebx, 3
  034b93  sar ecx, 3
  034b96  pop edi
  034b97  mov dword ptr [0x33c08], eax
  034b9c  mov dword ptr [0x33c0c], ebx
  034ba2  mov dword ptr [0x33c10], ecx
  034ba8  push esi
  034ba9  mov dword ptr [0x33bf8], 8
  034bb3  nop 
L34bb4:
  034bb4  mov ebp, dword ptr [0x33be0]
  034bba  mov esi, dword ptr [0x33be4]
  034bc0  mov edx, dword ptr [0x33be8]
  034bc6  mov eax, dword ptr [0x33bec]
  034bcb  mov ebx, dword ptr [0x33bf0]
  034bd1  mov ecx, dword ptr [0x33bf4]
  034bd7  sub eax, ebp
  034bd9  sub ebx, esi
  034bdb  sub ecx, edx
  034bdd  sar eax, 0xb
  034be0  sar ebx, 0xb
  034be3  sar ecx, 0xb
  034be6  mov dword ptr [0x33c14], eax
  034beb  mov dword ptr [0x33c18], ebx
  034bf1  mov dword ptr [0x33c1c], ecx
  034bf7  sar ebp, 8
  034bfa  sar esi, 8
  034bfd  sar edx, 8
  034c00  mov ecx, ebp
  034c02  mov eax, dword ptr [0x4670]
  034c07  mov ax, si
  034c0a  add edi, 2
  034c0d  mov al, ch
  034c0f  add ecx, dword ptr [0x33c14]
  034c15  add esi, dword ptr [0x33c18]
  034c1b  mov al, byte ptr [eax]
  034c1d  mov ah, dh
  034c1f  add edx, dword ptr [0x33c1c]
  034c25  mov bl, byte ptr [eax + 0x10000]
  034c2b  mov ax, si
  034c2e  mov al, ch
  034c30  add ecx, dword ptr [0x33c14]
  034c36  add esi, dword ptr [0x33c18]
  034c3c  mov al, byte ptr [eax]
  034c3e  mov ah, dh
  034c40  add edx, dword ptr [0x33c1c]
  034c46  mov bh, byte ptr [eax + 0x10000]
  034c4c  mov word ptr [edi], bx
  034c4f  mov ax, si
  034c52  add edi, 2
  034c55  mov al, ch
  034c57  add ecx, dword ptr [0x33c14]
  034c5d  add esi, dword ptr [0x33c18]
  034c63  mov al, byte ptr [eax]
  034c65  mov ah, dh
  034c67  add edx, dword ptr [0x33c1c]
  034c6d  mov bl, byte ptr [eax + 0x10000]
  034c73  mov ax, si
  034c76  mov al, ch
  034c78  add ecx, dword ptr [0x33c14]
  034c7e  add esi, dword ptr [0x33c18]
  034c84  mov al, byte ptr [eax]
  034c86  mov ah, dh
  034c88  add edx, dword ptr [0x33c1c]
  034c8e  mov bh, byte ptr [eax + 0x10000]
  034c94  mov word ptr [edi], bx
  034c97  mov ax, si
  034c9a  add edi, 2
  034c9d  mov al, ch
  034c9f  add ecx, dword ptr [0x33c14]
  034ca5  add esi, dword ptr [0x33c18]
  034cab  mov al, byte ptr [eax]
  034cad  mov ah, dh
  034caf  add edx, dword ptr [0x33c1c]
  034cb5  mov bl, byte ptr [eax + 0x10000]
  034cbb  mov ax, si
  034cbe  mov al, ch
  034cc0  add ecx, dword ptr [0x33c14]
  034cc6  add esi, dword ptr [0x33c18]
  034ccc  mov al, byte ptr [eax]
  034cce  mov ah, dh
  034cd0  add edx, dword ptr [0x33c1c]
  034cd6  mov bh, byte ptr [eax + 0x10000]
  034cdc  mov word ptr [edi], bx
  034cdf  mov ax, si
  034ce2  add edi, 2
  034ce5  mov al, ch
  034ce7  add ecx, dword ptr [0x33c14]
  034ced  add esi, dword ptr [0x33c18]
  034cf3  mov al, byte ptr [eax]
  034cf5  mov ah, dh
  034cf7  add edx, dword ptr [0x33c1c]
  034cfd  mov bl, byte ptr [eax + 0x10000]
  034d03  mov ax, si
  034d06  mov al, ch
  034d08  add ecx, dword ptr [0x33c14]
  034d0e  add esi, dword ptr [0x33c18]
  034d14  mov al, byte ptr [eax]
  034d16  mov ah, dh
  034d18  add edx, dword ptr [0x33c1c]
  034d1e  mov bh, byte ptr [eax + 0x10000]
  034d24  mov word ptr [edi], bx
  034d27  mov eax, dword ptr [0x33be0]
  034d2c  mov ebx, dword ptr [0x33be4]
  034d32  mov ecx, dword ptr [0x33be8]
  034d38  mov edx, dword ptr [0x33bec]
  034d3e  mov esi, dword ptr [0x33bf0]
  034d44  mov ebp, dword ptr [0x33bf4]
  034d4a  add eax, dword ptr [0x33bfc]
  034d50  add ebx, dword ptr [0x33c00]
  034d56  add ecx, dword ptr [0x33c04]
  034d5c  add edx, dword ptr [0x33c08]
  034d62  add esi, dword ptr [0x33c0c]
  034d68  add ebp, dword ptr [0x33c10]
  034d6e  mov dword ptr [0x33be0], eax
  034d73  mov dword ptr [0x33be4], ebx
  034d79  mov dword ptr [0x33be8], ecx
  034d7f  mov dword ptr [0x33bec], edx
  034d85  mov dword ptr [0x33bf0], esi
  034d8b  mov dword ptr [0x33bf4], ebp
  034d91  add edi, 0x138
  034d97  dec dword ptr [0x33bf8]
  034d9d  jne 0x34bb4
  034da3  pop esi
  034da4  add edi, 0xfffff600
L34daa:
  034daa  add edi, 8
  034dad  add esi, 0xc
  034db0  dec dword ptr [0x467c]
  034db6  jne 0x34af5
  034dbc  add edi, 0x8c0
  034dc2  add esi, 0xc
  034dc5  dec dword ptr [0x4680]
  034dcb  jne 0x34aeb
L34dd1:
  034dd1  jmp 0x34df3
  034dd3  adc byte ptr [eax], al
  034dd5  add byte ptr [eax], al
  034dd7  sbb byte ptr [eax], al
  034dd9  add byte ptr [eax], al
  034ddb  adc byte ptr [eax], al
  034ddd  add byte ptr [eax], al
  034ddf  sbb byte ptr [eax], al
  034de1  add byte ptr [eax], al
  034de3  adc byte ptr [eax], al
  034de5  add byte ptr [eax], al
  034de7  sbb byte ptr [eax], al
  034de9  add byte ptr [eax], al
  034deb  adc byte ptr [eax], al
  034ded  add byte ptr [eax], al
  034def  sbb byte ptr [eax], al
  034df1  add byte ptr [eax], al
L34df3:
  034df3  mov esi, dword ptr [0x7fac]
  034df9  mov ecx, dword ptr [0x7fa4]
  034dff  shr ecx, 4
L34e02:
  034e02  mov edx, 0
L34e07:
  034e07  mov ebx, edx
  034e09  shr ebx, 1
  034e0b  mov eax, dword ptr [esi + 0x2c]
  034e0e  sub eax, 1
  034e11  cmp eax, dword ptr [ebx*4 + 0x34dd3]
  034e18  jg 0x34e21
  034e1a  mov eax, dword ptr [ebx*4 + 0x34dd3]
L34e21:
  034e21  mov dword ptr [esi + 0x2c], eax
  034e24  add esi, 0x30
  034e27  inc edx
  034e28  cmp edx, 0x10
  034e2b  jl 0x34e07
  034e2d  dec ecx
  034e2e  jne 0x34e02
  034e30  mov eax, dword ptr [0x1584c]
  034e35  mov dword ptr [0x15854], eax
  034e3a  mov eax, dword ptr [0x15850]
  034e3f  mov dword ptr [0x15858], eax
  034e44  mov dword ptr [0x1663c], 0
  034e4e  mov eax, dword ptr [0x16634]
  034e53  mov dword ptr [0x16640], eax
  034e58  mov ecx, dword ptr [0x17210]
  034e5e  mov ebp, 0x7f98
L34e63:
  034e63  push ecx
  034e64  cmp dword ptr [ebp + 4], 0
  034e68  jne 0x3503b
  034e6e  fld dword ptr [ebp + 0x34]
  034e71  fstp dword ptr [0x17214]
  034e77  fild dword ptr [ebp + 0x18]
  034e7a  fdiv qword ptr [0x4a68]
  034e80  fstp qword ptr [0x4a38]
  034e86  fild dword ptr [ebp + 0x1c]
  034e89  fdiv qword ptr [0x4a68]
  034e8f  fstp qword ptr [0x4a40]
  034e95  fild dword ptr [ebp + 0x20]
  034e98  fdiv qword ptr [0x4a68]
  034e9e  fstp qword ptr [0x4a48]
  034ea4  fld dword ptr [ebp + 0x24]
  034ea7  fstp qword ptr [0x49a8]
  034ead  fld dword ptr [ebp + 0x28]
  034eb0  fstp qword ptr [0x49b0]
  034eb6  fld dword ptr [ebp + 0x2c]
  034eb9  fstp qword ptr [0x49b8]
  034ebf  mov ebx, 0x15b60
  034ec4  call 0x15f1b
  034ec9  mov eax, 0x15b60
  034ece  mov ebx, 0x15be0
  034ed3  mov ecx, 0x15ae0
  034ed8  call 0x160b5
  034edd  cmp dword ptr [ebp], 0x4f627521
  034ee4  je 0x34f5d
  034ee6  mov esi, dword ptr [ebp + 0x10]
  034ee9  mov ecx, dword ptr [ebp + 8]
L34eec:
  034eec  mov dword ptr [esi + 4], 0
  034ef3  add esi, 0x40
  034ef6  dec ecx
  034ef7  jne 0x34eec
  034ef9  call 0x16244
  034efe  mov esi, ebp
  034f00  mov edi, 0x7f60
  034f05  mov ecx, 0xe
  034f0a  rep movsd dword ptr es:[edi], dword ptr [esi]
  034f0c  mov dword ptr [0x7f68], 0
  034f16  mov dword ptr [0x7f6c], 0
  034f20  mov ebx, dword ptr [0x15854]
  034f26  mov dword ptr [0x7f74], ebx
  034f2c  mov ebx, dword ptr [0x15858]
  034f32  mov dword ptr [0x7f70], ebx
  034f38  call 0x15a18
  034f3d  call 0x162fd
  034f42  call 0x17028
  034f47  push ebp
  034f48  mov ebp, 0x7f60
  034f4d  call 0x162fd
  034f52  call 0x17028
  034f57  pop ebp
  034f58  jmp 0x3503b
L34f5d:
  034f5d  cmp byte ptr [0x41b6], 1
  034f64  je 0x3503b
  034f6a  mov esi, dword ptr [ebp + 0x14]
  034f6d  mov eax, 0x1fa33
  034f72  sub eax, dword ptr [esi + 4]
  034f75  mov dword ptr [0x4664], eax
  034f7a  mov eax, dword ptr [esi + 4]
  034f7d  cmp eax, 0x1fc7b
  034f82  jne 0x34f8e
  034f84  mov dword ptr [0x4664], 1
L34f8e:
  034f8e  call 0x16100
  034f93  call 0x16244
  034f98  call 0x163a4
  034f9d  mov esi, ebp
  034f9f  mov edi, 0x7f60
  034fa4  mov ecx, 0xe
  034fa9  rep movsd dword ptr es:[edi], dword ptr [esi]
  034fab  mov dword ptr [0x7f68], 0
  034fb5  mov dword ptr [0x7f6c], 0
  034fbf  mov ebx, dword ptr [0x15854]
  034fc5  mov dword ptr [0x7f74], ebx
  034fcb  mov ebx, dword ptr [0x15858]
  034fd1  mov dword ptr [0x7f70], ebx
  034fd7  call 0x1592e
  034fdc  call 0x162fd
  034fe1  mov dword ptr [0x4664], 0
  034feb  call 0x16ea7
  034ff0  mov dword ptr [0x4664], 1
  034ffa  cmp dword ptr [0x4664], 1
  035001  je 0x35008
  035003  call 0x1653f
L35008:
  035008  push ebp
  035009  mov ebp, 0x7f60
  03500e  call 0x162fd
  035013  mov dword ptr [0x4664], 0
  03501d  call 0x16ea7
  035022  mov dword ptr [0x4664], 1
  03502c  cmp dword ptr [0x4664], 1
  035033  je 0x3503a
  035035  call 0x1653f
L3503a:
  03503a  pop ebp
L3503b:
  03503b  pop ecx
  03503c  add ebp, 0x38
  03503f  dec ecx
  035040  jne 0x34e63
  035046  mov dword ptr [0x467c], 0x28
  035050  fild dword ptr [0x467c]
  035056  fld dword ptr [0xefb8]
  03505c  fmul qword ptr [0x4988]
  035062  fmul qword ptr [0x4938]
  035068  fdivp st(1)
  03506a  fstp dword ptr [0x4658]
  035070  mov dword ptr [0x467c], 0xff
  03507a  fild dword ptr [0x467c]
  035080  fld dword ptr [0xefe4]
  035086  fmul qword ptr [0x4988]
  03508c  fmul qword ptr [0x4938]
  035092  fdivp st(1)
  035094  fstp dword ptr [0x465c]
  03509a  mov ecx, dword ptr [0x14798]
  0350a0  cmp ecx, 0
  0350a3  je 0x35221
  0350a9  mov ebp, 0xef98
  0350ae  mov edi, dword ptr [0x16640]
  0350b4  mov ebx, 0x178e0
L350b9:
  0350b9  pushal 
  0350ba  mov edi, 0x1b828
  0350bf  call 0x1f2c0
  0350c4  popal 
  0350c5  add ebx, 0x18
  0350c8  fld qword ptr [0x17860]
  0350ce  fstp dword ptr [ebp + 4]
  0350d1  fld qword ptr [0x17868]
  0350d7  fstp dword ptr [ebp + 8]
  0350da  fld qword ptr [0x17870]
  0350e0  fstp dword ptr [ebp + 0xc]
  0350e3  fld dword ptr [ebp + 4]
  0350e6  fmul qword ptr [0x15be0]
  0350ec  fld dword ptr [ebp + 4]
  0350ef  fmul qword ptr [0x15be8]
  0350f5  fld dword ptr [ebp + 4]
  0350f8  fmul qword ptr [0x15bf0]
  0350fe  fld dword ptr [ebp + 8]
  035101  fmul qword ptr [0x15c00]
  035107  fld dword ptr [ebp + 8]
  03510a  fmul qword ptr [0x15c08]
  035110  fld dword ptr [ebp + 8]
  035113  fmul qword ptr [0x15c10]
  035119  fxch st(2)
  03511b  faddp st(5)
  03511d  faddp st(3)
  03511f  faddp st(1)
  035121  fld dword ptr [ebp + 0xc]
  035124  fmul qword ptr [0x15c20]
  03512a  fld dword ptr [ebp + 0xc]
  03512d  fmul qword ptr [0x15c28]
  035133  fld dword ptr [ebp + 0xc]
  035136  fmul qword ptr [0x15c30]
  03513c  fxch st(2)
  03513e  faddp st(5)
  035140  faddp st(3)
  035142  faddp st(1)
  035144  fxch st(2)
  035146  fadd qword ptr [0x15c40]
  03514c  fxch st(1)
  03514e  fadd qword ptr [0x15c48]
  035154  fxch st(2)
  035156  fadd qword ptr [0x15c50]
  03515c  fst dword ptr [ebp + 0x1c]
  03515f  fstp dword ptr [0x4684]
  035165  fstp dword ptr [0x467c]
  03516b  fstp dword ptr [0x4680]
  035171  test dword ptr [0x4684], 0x80000000
  03517b  je 0x35211
  035181  fld1 
  035183  fld dword ptr [0x4684]
  035189  fdivp st(1)
  03518b  fld dword ptr [0x467c]
  035191  fld dword ptr [0x4680]
  035197  fmul qword ptr [0x4a78]
  03519d  fmul st(2)
  03519f  fxch st(1)
  0351a1  fmul qword ptr [0x4938]
  0351a7  fmul st(2)
  0351a9  fxch st(1)
  0351ab  fadd qword ptr [0x4930]
  0351b1  fstp dword ptr [ebp + 0x18]
  0351b4  fadd qword ptr [0x4928]
  0351ba  fstp dword ptr [ebp + 0x14]
  0351bd  fstp dword ptr [ebp + 0x10]
  0351c0  mov eax, dword ptr [0x4658]
  0351c5  cmp dword ptr [ebp], 0x352a0
  0351cc  jne 0x351d3
  0351ce  mov eax, dword ptr [0x465c]
L351d3:
  0351d3  mov dword ptr [ebp + 0x28], eax
  0351d6  fld dword ptr [0x4684]
  0351dc  fsub dword ptr [0x150d0]
  0351e2  fmul dword ptr [0x150c0]
  0351e8  fmul qword ptr [0x4990]
  0351ee  fchs 
  0351f0  fistp dword ptr [0x4680]
  0351f6  mov eax, 0xffff
  0351fb  sub eax, dword ptr [0x4680]
  035201  mov dword ptr [edi], eax
  035203  add edi, 4
  035206  mov dword ptr [edi], ebp
  035208  add edi, 4
  03520b  inc dword ptr [0x1663c]
L35211:
  035211  add ebp, 0x2c
  035214  dec ecx
  035215  jne 0x350b9
  03521b  mov dword ptr [0x16640], edi
L35221:
  035221  wait 
  035222  fnstcw word ptr [0x337dc]
  035228  push word ptr [0x337dc]
  03522f  or word ptr [0x337dc], 0xc00
  035238  fldcw word ptr [0x337dc]
  03523e  cmp dword ptr [0x1663c], 0
  035245  je 0x3561c
  03524b  call 0x170f7
  035250  mov esi, dword ptr [0x16634]
  035256  add esi, 4
L35259:
  035259  mov ecx, dword ptr [esi]
  03525b  push esi
  03525c  jmp dword ptr [ecx]
  03525e  mov esi, dword ptr [ecx + 8]
  035261  mov edi, dword ptr [ecx + 0xc]
  035264  fld dword ptr [esi + 0x14]
  035267  fld dword ptr [esi + 0x18]
  03526a  fxch st(1)
  03526c  fstp dword ptr [0x2936c]
  035272  fstp dword ptr [0x29370]
  035278  fld dword ptr [edi + 0x14]
  03527b  fld dword ptr [edi + 0x18]
  03527e  fxch st(1)
  035280  fstp dword ptr [0x2937c]
  035286  fstp dword ptr [0x29380]
  03528c  mov esi, 0x2936c
  035291  mov edi, 0x2937c
  035296  call 0x293a4
  03529b  jmp 0x3560c
  0352a0  fld dword ptr [ecx + 0x28]
  0352a3  fmul dword ptr [ecx + 0x1c]
  0352a6  fmul dword ptr [0x29690]
  0352ac  fistp dword ptr [0x4688]
  0352b2  mov eax, dword ptr [0x4688]
  0352b7  shr eax, 8
  0352ba  cmp eax, 0x3f
  0352bd  jl 0x352c4
  0352bf  mov eax, 0x3f
L352c4:
  0352c4  cmp dword ptr [0x48dc], -1
  0352cb  je 0x352d2
  0352cd  mov eax, dword ptr [0x48dc]
L352d2:
  0352d2  mov ebx, dword ptr [eax*4 + 0x4558]
  0352d9  mov dword ptr [0x296a4], ebx
  0352df  fld dword ptr [ecx + 0x28]
  0352e2  fmul dword ptr [ecx + 0x1c]
  0352e5  fmul dword ptr [eax*4 + 0x4458]
  0352ec  fst dword ptr [0x296c0]
  0352f2  fmul dword ptr [0x29690]
  0352f8  fistp dword ptr [0x296c8]
  0352fe  fld dword ptr [ecx + 0x20]
  035301  fmul qword ptr [0x4938]
  035307  fmul dword ptr [ecx + 0x10]
  03530a  fstp dword ptr [0x2969c]
  035310  fld dword ptr [ecx + 0x14]
  035313  fsub dword ptr [0x2969c]
  035319  fstp dword ptr [0x296a8]
  03531f  fld dword ptr [ecx + 0x18]
  035322  fsub dword ptr [0x2969c]
  035328  fstp dword ptr [0x296ac]
  03532e  fld dword ptr [ecx + 0x14]
  035331  fadd dword ptr [0x2969c]
  035337  fstp dword ptr [0x296b0]
  03533d  fld dword ptr [ecx + 0x18]
  035340  fadd dword ptr [0x2969c]
  035346  fstp dword ptr [0x296b4]
  03534c  call 0x298b7
  035351  jmp 0x3560c
  035356  fld qword ptr [0x49f0]
  03535c  fsub dword ptr [ecx + 4]
  03535f  fld qword ptr [0x49f8]
  035365  fsub dword ptr [ecx + 8]
  035368  fpatan 
  03536a  fldpi 
  03536c  fmul qword ptr [0x4988]
  035372  fdivp st(1)
  035374  fmul qword ptr [0x4a68]
  03537a  fistp dword ptr [0x4688]
  035380  mov eax, dword ptr [0x4688]
  035385  and eax, 0xffff
  03538a  mov ebx, 0x690
  03538f  cdq 
  035390  idiv ebx
  035392  mov esi, eax
  035394  and esi, 3
  035397  imul esi, esi, 0x28
  03539a  shr eax, 2
  03539d  imul eax, eax, 0x5300
  0353a3  add eax, esi
  0353a5  mov dword ptr [0x296a4], eax
  0353aa  fld dword ptr [ecx + 0x28]
  0353ad  fmul dword ptr [ecx + 0x1c]
  0353b0  fst dword ptr [0x296c0]
  0353b6  fmul dword ptr [0x29690]
  0353bc  fistp dword ptr [0x296c8]
  0353c2  fld dword ptr [ecx + 0x20]
  0353c5  fmul qword ptr [0x4938]
  0353cb  fmul dword ptr [ecx + 0x10]
  0353ce  fstp dword ptr [0x2969c]
  0353d4  fld dword ptr [ecx + 0x24]
  0353d7  fmul qword ptr [0x4938]
  0353dd  fmul dword ptr [ecx + 0x10]
  0353e0  fstp dword ptr [0x296a0]
  0353e6  fld dword ptr [ecx + 0x14]
  0353e9  fsub dword ptr [0x2969c]
  0353ef  fstp dword ptr [0x296a8]
  0353f5  fld dword ptr [ecx + 0x18]
  0353f8  fsub dword ptr [0x296a0]
  0353fe  fstp dword ptr [0x296ac]
  035404  fld dword ptr [ecx + 0x14]
  035407  fadd dword ptr [0x2969c]
  03540d  fstp dword ptr [0x296b0]
  035413  fld dword ptr [ecx + 0x18]
  035416  fadd dword ptr [0x296a0]
  03541c  fstp dword ptr [0x296b4]
  035422  call 0x296d8
  035427  jmp 0x3560c
  03542c  mov esi, dword ptr [ecx + 0xc]
  03542f  mov edi, dword ptr [ecx + 0x10]
  035432  mov ebp, dword ptr [ecx + 0x14]
  035435  xor eax, eax
  035437  mov edx, eax
  035439  shl edx, 0x10
  03543c  mov eax, dword ptr [eax*4 + 0x48e4]
  035443  mov dword ptr [0x48f8], eax
  035448  fild dword ptr [ecx + 0x2c]
  03544b  fld dword ptr [esi + 0x1c]
  03544e  fmul qword ptr [0x4940]
  035454  faddp st(1)
  035456  fistp dword ptr [0x4690]
  03545c  mov eax, dword ptr [0x4690]
  035461  shl eax, 2
  035464  cmp eax, 0
  035467  jg 0x3546b
  035469  xor eax, eax
L3546b:
  03546b  cmp eax, 0xff
  035470  jl 0x35477
  035472  mov eax, 0xff
L35477:
  035477  mov byte ptr [0x1fa31], al
  03547c  mov eax, dword ptr [ecx + 0x28]
  03547f  shl eax, 0x10
  035482  mov ebx, eax
  035484  add eax, dword ptr [0x4670]
  03548a  add eax, edx
  03548c  mov dword ptr [0x1f924], eax
  035491  add ebx, dword ptr [0x48b4]
  035497  mov dword ptr [0x1f928], ebx
  03549d  mov eax, dword ptr [ecx + 4]
  0354a0  cmp eax, 0x1fa32
  0354a5  je 0x354d7
  0354a7  cmp eax, 0x1fc7b
  0354ac  je 0x354d7
  0354ae  fld dword ptr [esi + 0x38]
  0354b1  fadd dword ptr [edi + 0x38]
  0354b4  fadd dword ptr [ebp + 0x38]
  0354b7  fstp dword ptr [0x48d0]
  0354bd  mov ebx, dword ptr [0x490c]
  0354c3  cmp dword ptr [0x48d0], ebx
  0354c9  jne 0x354d7
  0354cb  mov byte ptr [0x1fa31], 0
  0354d2  mov eax, 0x1fa32
L354d7:
  0354d7  mov dword ptr [0x1f920], eax
  0354dc  mov eax, dword ptr [esi]
  0354de  add eax, dword ptr [edi]
  0354e0  add eax, dword ptr [ebp]
  0354e3  jne 0x354f0
  0354e5  call dword ptr [0x1f920]
  0354eb  jmp 0x3560c
L354f0:
  0354f0  push dword ptr [0x15858]
  0354f6  mov dword ptr [0x14cb0], esi
  0354fc  mov dword ptr [0x14cb4], edi
  035502  mov dword ptr [0x14cb8], ebp
  035508  mov dword ptr [0x14cbc], esi
  03550e  mov esi, 0x14cb0
  035513  mov edi, 0x14d00
  035518  mov dword ptr [0x14d50], 0
  035522  call 0x14d54
  035527  call 0x14d54
  03552c  call 0x14d54
  035531  cmp dword ptr [0x14d50], 3
  035538  jl 0x35606
  03553e  mov eax, dword ptr [0x14d00]
  035543  mov dword ptr [edi], eax
  035545  mov esi, 0x14d00
  03554a  mov edi, 0x14cb0
  03554f  mov ebp, dword ptr [0x14d50]
  035555  mov dword ptr [0x14d50], 0
L3555f:
  03555f  call 0x14e3a
  035564  dec ebp
  035565  jne 0x3555f
  035567  cmp dword ptr [0x14d50], 3
  03556e  jl 0x35606
  035574  mov eax, dword ptr [0x14cb0]
  035579  mov dword ptr [edi], eax
  03557b  mov esi, 0x14cb0
  035580  mov edi, 0x14d00
  035585  mov ebp, dword ptr [0x14d50]
  03558b  mov dword ptr [0x14d50], 0
L35595:
  035595  call 0x14f28
  03559a  dec ebp
  03559b  jne 0x35595
  03559d  cmp dword ptr [0x14d50], 3
  0355a4  jl 0x35606
  0355a6  mov eax, dword ptr [0x14d00]
  0355ab  mov dword ptr [edi], eax
  0355ad  mov esi, 0x14d00
  0355b2  mov edi, 0x14cb0
  0355b7  mov ebp, dword ptr [0x14d50]
  0355bd  mov dword ptr [0x14d50], 0
L355c7:
  0355c7  call 0x14fed
  0355cc  dec ebp
  0355cd  jne 0x355c7
  0355cf  cmp dword ptr [0x14d50], 3
  0355d6  jl 0x35606
  0355d8  sub dword ptr [0x14d50], 2
  0355df  xor eax, eax
L355e1:
  0355e1  mov esi, dword ptr [0x14cb0]
  0355e7  mov edi, dword ptr [eax + 0x14cb4]
  0355ed  mov ebp, dword ptr [eax + 0x14cb8]
  0355f3  push eax
  0355f4  call dword ptr [0x1f920]
  0355fa  pop eax
  0355fb  add eax, 4
  0355fe  dec dword ptr [0x14d50]
  035604  jne 0x355e1
L35606:
  035606  pop dword ptr [0x15858]
L3560c:
  03560c  pop esi
  03560d  add esi, 8
  035610  dec dword ptr [0x1663c]
  035616  jne 0x35259
L3561c:
  03561c  pop word ptr [0x337dc]
  035623  fldcw word ptr [0x337dc]
  035629  mov edx, dword ptr [0x33c20]
  03562f  cmp dword ptr [edx + 0x33c2c], 0
  035636  je 0x356c1
  03563c  cmp dword ptr [edx + 0x33c2c], 2
  035643  je 0x35684
  035645  mov esi, dword ptr [0x31bf1]
  03564b  mov edi, dword ptr [0x466c]
  035651  add edi, 0x5c80
  035657  mov edx, 0x7e
L3565c:
  03565c  mov ecx, 0x8a
L35661:
  035661  mov al, byte ptr [esi]
  035663  or al, al
  035665  je 0x3566e
  035667  shl al, 2
  03566a  add al, 3
  03566c  mov byte ptr [edi], al
L3566e:
  03566e  inc esi
  03566f  inc edi
  035670  dec ecx
  035671  jne 0x35661
  035673  add esi, 0xb6
  035679  add edi, 0xb6
  03567f  dec edx
  035680  jne 0x3565c
  035682  jmp 0x356c1
L35684:
  035684  mov esi, dword ptr [0x31bf1]
  03568a  add esi, 0xa500
  035690  mov edi, dword ptr [0x466c]
  035696  add edi, 0xa500
  03569c  mov edx, 0x44
L356a1:
  0356a1  mov ecx, 0xcd
L356a6:
  0356a6  mov al, byte ptr [esi]
  0356a8  or al, al
  0356aa  je 0x356b3
  0356ac  shl al, 2
  0356af  add al, 3
  0356b1  mov byte ptr [edi], al
L356b3:
  0356b3  inc esi
  0356b4  inc edi
  0356b5  dec ecx
  0356b6  jne 0x356a6
  0356b8  add esi, 0x73
  0356bb  add edi, 0x73
  0356be  dec edx
  0356bf  jne 0x356a1
L356c1:
  0356c1  cmp byte ptr [0x41cb], 1
  0356c8  jne 0x356dc
  0356ca  fld qword ptr [0x4958]
  0356d0  fadd qword ptr [0x4950]
  0356d6  fstp qword ptr [0x4950]
L356dc:
  0356dc  cmp byte ptr [0x41cc], 1
  0356e3  jne 0x356f9
  0356e5  fld qword ptr [0x4958]
  0356eb  fchs 
  0356ed  fadd qword ptr [0x4950]
  0356f3  fstp qword ptr [0x4950]
L356f9:
  0356f9  in al, 0x60
  0356fb  cmp al, 1
  0356fd  jne 0x3570b
  0356ff  mov dword ptr [0x4aeb0], 1
  035709  jmp 0x35719
L3570b:
  03570b  cmp word ptr [0x12bf], 0x16
  035713  jl 0x34761
L35719:
  035719  call 0x31b0c
  03571e  ret 
  03571f  nop 
  035720  add byte ptr [eax], al
  035722  add byte ptr [eax], al
  035724  add byte ptr [eax], al
  035726  add byte ptr [eax], al
  035728  add byte ptr [eax], al
  03572a  add byte ptr [eax], al
  03572c  add byte ptr [eax], al
  03572e  add byte ptr [eax], al
  035730  add byte ptr [eax], al
  035732  add byte ptr [eax], al
  035734  add byte ptr [eax], al
  035736  add byte ptr [eax], al
  035738  xchg ebx, ebx
  03573a  xchg ebx, ebx
  03573c  xchg ebx, ebx
  03573e  xchg ebx, ebx
  035740  pushfd 
  035741  pushal 
  035742  wait 
  035743  fnsave dword ptr [0x337de]
  035749  cmp byte ptr [0x496da], 3
  035750  je 0x3575e
  035752  mov eax, 4
  035757  call 0x25c4
  03575c  jmp 0x35795
L3575e:
  03575e  inc byte ptr [0x496d9]
  035764  cmp byte ptr [0x496d9], 7
  03576b  jl 0x35795
  03576d  mov byte ptr [0x496d9], 0
  035774  inc word ptr [0x12ca]
  03577b  cmp word ptr [0x12ca], 0x40
  035783  jl 0x35795
  035785  inc word ptr [0x12bf]
  03578c  mov word ptr [0x12ca], 0
L35795:
  035795  inc dword ptr [0x469c]
  03579b  inc dword ptr [0x46a4]
  0357a1  cmp byte ptr [0x41d1], 1
  0357a8  je 0x35d78
  0357ae  cmp word ptr [0x12bf], 0x15
  0357b6  jl 0x357e0
  0357b8  mov edi, 0x32d44
  0357bd  xor eax, eax
  0357bf  mov ecx, 0xc0
  0357c4  rep stosd dword ptr es:[edi], eax
  0357c6  sub dword ptr [0x3272c], 6
  0357cd  cmp dword ptr [0x3272c], 0
  0357d4  jg 0x357e0
  0357d6  mov dword ptr [0x3272c], 0
L357e0:
  0357e0  mov edi, dword ptr [0x4698]
  0357e6  cmp byte ptr [0x41b7], 1
  0357ed  jne 0x357f4
  0357ef  mov edi, 0x400
L357f4:
  0357f4  mov ebp, dword ptr [0x4694]
  0357fa  mov ebp, dword ptr ds:[ebp*4 + 0x31f24]
  035802  cmp word ptr [0x12bf], 0x15
  03580a  jl 0x35812
  03580c  mov ebp, dword ptr [0x3272c]
L35812:
  035812  mov edx, 0x3c8
  035817  xor eax, eax
  035819  out dx, al
  03581a  inc edx
  03581b  mov esi, 0xfffffd00
L35820:
  035820  xor eax, eax
  035822  xor ebx, ebx
  035824  xor ecx, ecx
  035826  mov al, byte ptr [esi + 0x32a44]
  03582c  mov bl, byte ptr [esi + 0x32d44]
  035832  mov cl, byte ptr [esi + 0x33044]
  035838  sub eax, ebx
  03583a  imul eax, edi
  03583d  sar eax, 0xa
  035840  add eax, ebx
  035842  sub eax, ecx
  035844  imul eax, ebp
  035847  sar eax, 0xa
  03584a  add eax, ecx
  03584c  out dx, al
  03584d  inc esi
  03584e  jne 0x35820
  035850  add dword ptr [0x4694], 2
  035857  cmp dword ptr [0x4694], 0x7f
  03585e  jl 0x3586a
  035860  mov dword ptr [0x4694], 0x7f
L3586a:
  03586a  cmp byte ptr [0x419a], 1
  035871  jne 0x3587d
  035873  mov dword ptr [0x4694], 0
L3587d:
  03587d  cmp word ptr [0x12bf], 0xc
  035885  je 0x358bb
  035887  cmp word ptr [0x12bf], 0xe
  03588f  je 0x358bb
  035891  cmp word ptr [0x12bf], 0x11
  035899  je 0x358bb
  03589b  cmp word ptr [0x12bf], 0x12
  0358a3  je 0x358bb
  0358a5  cmp word ptr [0x12bf], 0x14
  0358ad  je 0x358bb
  0358af  cmp word ptr [0x12bf], 0x15
  0358b7  je 0x358bb
  0358b9  jmp 0x358d4
L358bb:
  0358bb  movzx eax, word ptr [0x12ca]
  0358c2  and eax, 0x3f
  0358c5  cmp eax, 0
  0358c8  jne 0x358d4
  0358ca  mov dword ptr [0x4694], 0
L358d4:
  0358d4  mov dword ptr [0x35720], 0x1ff
  0358de  fld dword ptr [0x32730]
  0358e4  fcos 
  0358e6  fimul dword ptr [0x35720]
  0358ec  fiadd dword ptr [0x35720]
  0358f2  fistp dword ptr [0x4698]
  0358f8  neg dword ptr [0x4698]
  0358fe  add dword ptr [0x4698], 0x3ff
  035908  fld dword ptr [0x32730]
  03590e  fadd dword ptr [0x32734]
  035914  fstp dword ptr [0x32730]
  03591a  neg ebp
  03591c  add ebp, 0x3ff
  035922  mov dword ptr [0x35724], ebp
  035928  fild dword ptr [0x35724]
  03592e  fmul qword ptr [0x178a0]
  035934  mov dword ptr [0x35720], 0x12c
  03593e  fild dword ptr [0x35720]
  035944  fdivp st(1)
  035946  fadd qword ptr [0x178a0]
  03594c  fld st(0)
  03594e  fadd qword ptr [0x17898]
  035954  fstp qword ptr [0x17898]
  03595a  fadd qword ptr [0x178c8]
  035960  fstp qword ptr [0x178c8]
  035966  fld qword ptr [0x17898]
  03596c  fstp dword ptr [0x35734]
  035972  test dword ptr [0x35734], 0x80000000
  03597c  je 0x359a9
  03597e  fld1 
  035980  fadd qword ptr [0x17898]
  035986  fstp qword ptr [0x17898]
  03598c  sub dword ptr [0x178a8], 0x28
  035993  cmp dword ptr [0x178a8], 0
  03599a  jg 0x359a9
  03599c  mov eax, dword ptr [0x178ac]
  0359a1  sub eax, 0x78
  0359a4  mov dword ptr [0x178a8], eax
L359a9:
  0359a9  fld1 
  0359ab  fld qword ptr [0x17898]
  0359b1  fcompp 
  0359b3  wait 
  0359b4  fnstsw ax
  0359b6  sahf 
  0359b7  jb 0x359ea
  0359b9  fld1 
  0359bb  fchs 
  0359bd  fadd qword ptr [0x17898]
  0359c3  fstp qword ptr [0x17898]
  0359c9  add dword ptr [0x178a8], 0x28
  0359d0  mov eax, dword ptr [0x178ac]
  0359d5  sub eax, 0x78
  0359d8  cmp dword ptr [0x178a8], eax
  0359de  jl 0x359ea
  0359e0  mov dword ptr [0x178a8], 0
L359ea:
  0359ea  fild dword ptr [0x35724]
  0359f0  fmul qword ptr [0x178b8]
  0359f6  mov dword ptr [0x35720], 0x12c
  035a00  fild dword ptr [0x35720]
  035a06  fdivp st(1)
  035a08  fadd qword ptr [0x178b8]
  035a0e  fadd qword ptr [0x178b0]
  035a14  fstp qword ptr [0x178b0]
  035a1a  fld qword ptr [0x178b0]
  035a20  fstp dword ptr [0x35734]
  035a26  test dword ptr [0x35734], 0x80000000
  035a30  je 0x35a5d
  035a32  fld1 
  035a34  fadd qword ptr [0x178b0]
  035a3a  fstp qword ptr [0x178b0]
  035a40  sub dword ptr [0x178c0], 0x28
  035a47  cmp dword ptr [0x178c0], 0
  035a4e  jg 0x35a5d
  035a50  mov eax, dword ptr [0x178c4]
  035a55  sub eax, 0x78
  035a58  mov dword ptr [0x178c0], eax
L35a5d:
  035a5d  fld1 
  035a5f  fld qword ptr [0x178b0]
  035a65  fcompp 
  035a67  wait 
  035a68  fnstsw ax
  035a6a  sahf 
  035a6b  jb 0x35a9e
  035a6d  fld1 
  035a6f  fchs 
  035a71  fadd qword ptr [0x178b0]
  035a77  fstp qword ptr [0x178b0]
  035a7d  add dword ptr [0x178c0], 0x28
  035a84  mov eax, dword ptr [0x178c4]
  035a89  sub eax, 0x78
  035a8c  cmp dword ptr [0x178c0], eax
  035a92  jl 0x35a9e
  035a94  mov dword ptr [0x178c0], 0
L35a9e:
  035a9e  fld qword ptr [0x4bb0]
  035aa4  fadd qword ptr [0x4968]
  035aaa  fstp qword ptr [0x4bb0]
  035ab0  mov dword ptr [0x48d8], 0xffffffff
  035aba  cmp byte ptr [0x419b], 1
  035ac1  jne 0x35acd
  035ac3  mov dword ptr [0x48d8], 0
L35acd:
  035acd  cmp byte ptr [0x419c], 1
  035ad4  jne 0x35ae0
  035ad6  mov dword ptr [0x48d8], 1
L35ae0:
  035ae0  cmp byte ptr [0x419d], 1
  035ae7  jne 0x35af3
  035ae9  mov dword ptr [0x48d8], 2
L35af3:
  035af3  cmp byte ptr [0x419e], 1
  035afa  jne 0x35b06
  035afc  mov dword ptr [0x48d8], 3
L35b06:
  035b06  cmp byte ptr [0x419f], 1
  035b0d  jne 0x35b19
  035b0f  mov dword ptr [0x48d8], 4
L35b19:
  035b19  mov dword ptr [0x48dc], 0xffffffff
  035b23  cmp byte ptr [0x41a8], 1
  035b2a  jne 0x35b36
  035b2c  mov dword ptr [0x48dc], 0
L35b36:
  035b36  cmp byte ptr [0x41a9], 1
  035b3d  jne 0x35b49
  035b3f  mov dword ptr [0x48dc], 1
L35b49:
  035b49  cmp byte ptr [0x41aa], 1
  035b50  jne 0x35b5c
  035b52  mov dword ptr [0x48dc], 2
L35b5c:
  035b5c  cmp byte ptr [0x41ab], 1
  035b63  jne 0x35b6f
  035b65  mov dword ptr [0x48dc], 4
L35b6f:
  035b6f  cmp byte ptr [0x41ac], 1
  035b76  jne 0x35b82
  035b78  mov dword ptr [0x48dc], 8
L35b82:
  035b82  cmp byte ptr [0x41ad], 1
  035b89  jne 0x35b95
  035b8b  mov dword ptr [0x48dc], 0x10
L35b95:
  035b95  add dword ptr [0x46a8], 0x26c
  035b9f  add dword ptr [0x46ac], 0x230
  035ba9  fld dword ptr [0x7f30]
  035baf  fadd dword ptr [0x7f34]
  035bb5  fstp dword ptr [0x7f30]
  035bbb  fld dword ptr [0x7f38]
  035bc1  fadd dword ptr [0x7f3c]
  035bc7  fstp dword ptr [0x7f38]
  035bcd  cmp byte ptr [0x41c4], 1
  035bd4  jne 0x35be0
  035bd6  mov eax, 0x29d9a
  035bdb  mov dword ptr [0x4c00], eax
L35be0:
  035be0  cmp byte ptr [0x41c5], 1
  035be7  jne 0x35bf3
  035be9  mov eax, 0x2a0f5
  035bee  mov dword ptr [0x4c00], eax
L35bf3:
  035bf3  cmp byte ptr [0x41c6], 1
  035bfa  jne 0x35c06
  035bfc  mov eax, 0x2a30b
  035c01  mov dword ptr [0x4c00], eax
L35c06:
  035c06  cmp byte ptr [0x41b0], 1
  035c0d  jne 0x35c1f
  035c0f  fld1 
  035c11  fchs 
  035c13  fadd dword ptr [0x7fbc]
  035c19  fstp dword ptr [0x7fbc]
L35c1f:
  035c1f  cmp byte ptr [0x41be], 1
  035c26  jne 0x35c36
  035c28  fld1 
  035c2a  fadd dword ptr [0x7fbc]
  035c30  fstp dword ptr [0x7fbc]
L35c36:
  035c36  cmp byte ptr [0x41b1], 1
  035c3d  jne 0x35c4f
  035c3f  fld1 
  035c41  fchs 
  035c43  fadd dword ptr [0x7fc0]
  035c49  fstp dword ptr [0x7fc0]
L35c4f:
  035c4f  cmp byte ptr [0x41bf], 1
  035c56  jne 0x35c66
  035c58  fld1 
  035c5a  fadd dword ptr [0x7fc0]
  035c60  fstp dword ptr [0x7fc0]
L35c66:
  035c66  cmp byte ptr [0x41b2], 1
  035c6d  jne 0x35c7f
  035c6f  fld1 
  035c71  fchs 
  035c73  fadd dword ptr [0x7fc4]
  035c79  fstp dword ptr [0x7fc4]
L35c7f:
  035c7f  cmp byte ptr [0x41c0], 1
  035c86  jne 0x35c96
  035c88  fld1 
  035c8a  fadd dword ptr [0x7fc4]
  035c90  fstp dword ptr [0x7fc4]
L35c96:
  035c96  mov ecx, 0x32
  035c9b  mov edi, 0x178e0
L35ca0:
  035ca0  fld qword ptr [edi]
  035ca2  fadd qword ptr [edi + 8]
  035ca5  fstp qword ptr [edi]
  035ca7  add edi, 0x18
  035caa  dec ecx
  035cab  jne 0x35ca0
  035cad  cmp dword ptr [0x33054], 0
  035cb4  jne 0x35cdf
  035cb6  cmp dword ptr [0x33044], 0
  035cbd  jne 0x35cdf
  035cbf  cmp dword ptr [0x178a8], 0x410
  035cc9  jl 0x35cdf
  035ccb  mov dword ptr [0x33044], 1
  035cd5  mov dword ptr [0x33054], 0
L35cdf:
  035cdf  cmp dword ptr [0x33044], 0
  035ce6  je 0x35d3d
  035ce8  fld dword ptr [0x33048]
  035cee  fadd dword ptr [0x3304c]
  035cf4  fstp dword ptr [0x33048]
  035cfa  inc dword ptr [0x33054]
  035d00  fld1 
  035d02  fstp dword ptr [0x35720]
  035d08  mov eax, dword ptr [0x33048]
  035d0d  cmp eax, dword ptr [0x35720]
  035d13  jb 0x35d3d
  035d15  fldz 
  035d17  fstp dword ptr [0x33048]
  035d1d  mov dword ptr [0x33044], 0
  035d27  mov eax, dword ptr [0x33058]
  035d2c  mov ebx, dword ptr [0x4c00]
  035d32  mov dword ptr [0x4c00], eax
  035d37  mov dword ptr [0x33058], ebx
L35d3d:
  035d3d  mov edx, dword ptr [0x33c20]
  035d43  movzx eax, word ptr [0x12bf]
  035d4a  cmp eax, dword ptr [edx + 0x33c24]
  035d50  jl 0x35d78
  035d52  movzx eax, word ptr [0x12ca]
  035d59  and eax, 0x3f
  035d5c  cmp eax, dword ptr [edx + 0x33c28]
  035d62  jl 0x35d78
  035d64  add dword ptr [0x33c20], 0xc
  035d6b  inc dword ptr [0x32728]
  035d71  and dword ptr [0x32728], 1
L35d78:
  035d78  wait 
  035d79  frstor dword ptr [0x337de]
  035d7f  popal 
  035d80  popfd 
  035d81  ret 
  035d82  add byte ptr [eax], al
  035d84  add byte ptr [eax], al
  035d86  add byte ptr [eax], al
  035d88  add byte ptr [eax], al
  035d8a  add byte ptr [eax], al
  035d8c  add byte ptr [eax], al
  035d8e  add byte ptr [eax], al
  035d90  add byte ptr [esi + 3], bh
  035d93  add byte ptr [eax], al
  035d95  add byte ptr [eax], al
  035d97  add byte ptr [eax], al
  035d99  add byte ptr [eax], al
  035d9b  add dl, bh
  035d9d  mov eax, 0x35ea4
  035da2  add eax, dword ptr [0x18]
  035da8  shl eax, 0xc
  035dab  shr ax, 0xc
  035daf  mov edx, 0x19
  035db4  add dx, ax
  035db7  mov word ptr [0x35eb3], dx
  035dbe  xchg dword ptr gs:[0x20], eax
  035dc4  mov dword ptr [0x35d94], eax
  035dc9  xor bl, bl
  035dcb  call dword ptr [0x24]
  035dd1  mov dword ptr [0x35d98], edx
  035dd7  mov edx, 0x35e68
  035ddc  call dword ptr [0x28]
  035de2  mov al, 0x30
  035de4  out 0x43, al
  035de6  mov al, 0
  035de8  out 0x40, al
  035dea  mov al, 0x41
  035dec  out 0x40, al
  035dee  sti 
  035def  ret 
  035df0  cli 
  035df1  mov edx, dword ptr [0x35d94]
  035df7  mov dword ptr gs:[0x20], edx
  035dfd  mov edx, dword ptr [0x35d98]
  035e03  xor bl, bl
  035e05  call dword ptr [0x28]
  035e0b  mov al, 0x36
  035e0d  out 0x43, al
  035e0f  xor al, al
  035e11  out 0x40, al
  035e13  out 0x40, al
  035e15  sti 
  035e16  ret 
  035e17  cli 
  035e18  mov al, 0x30
  035e1a  out 0x43, al
  035e1c  mov dx, 0x3da
L35e20:
  035e20  in al, dx
  035e21  test al, 8
  035e23  jne 0x35e20
L35e25:
  035e25  in al, dx
  035e26  test al, 8
  035e28  je 0x35e25
  035e2a  xor al, al
  035e2c  out 0x40, al
  035e2e  out 0x40, al
L35e30:
  035e30  in al, dx
  035e31  test al, 8
  035e33  jne 0x35e30
L35e35:
  035e35  in al, dx
  035e36  test al, 8
  035e38  je 0x35e35
  035e3a  in al, 0x40
  035e3c  mov ah, al
  035e3e  in al, 0x40
  035e40  xchg ah, al
  035e42  neg ax
  035e45  sub ax, 0xc0
  035e49  mov word ptr [0x35ebd], ax
  035e4f  mov bx, ax
L35e52:
  035e52  in al, dx
  035e53  test al, 8
  035e55  je 0x35e52
L35e57:
  035e57  in al, dx
  035e58  test al, 8
  035e5a  jne 0x35e57
  035e5c  mov al, bl
  035e5e  out 0x40, al
  035e60  mov al, bh
  035e62  out 0x40, al
  035e64  sti 
  035e65  ret 
  035e66  xchg ebx, ebx
  035e68  push eax
  035e69  push edx
  035e6a  push ds
  035e6b  mov ds, word ptr cs:[0x1e]
  035e72  mov dx, 0x3da
  035e76  in al, dx
  035e77  and eax, 8
  035e7a  dec eax
  035e7b  neg eax
  035e7d  add word ptr [0x35ebd], ax
L35e84:
  035e84  in al, dx
  035e85  test al, 8
  035e87  je 0x35e84
  035e89  mov ax, word ptr [0x35ebd]
  035e8f  out 0x40, al
  035e91  mov al, ah
  035e93  out 0x40, al
  035e95  call dword ptr [0x35d90]
  035e9b  pop ds
  035e9c  pop edx
  035e9d  mov al, 0x20
  035e9f  out 0x20, al
  035ea1  pop eax
  035ea2  sti 
  035ea3  iretd 
  035ea4  push eax
  035ea5  push edx
  035ea6  mov edx, 0x25ec03da
  035eab  or byte ptr [eax], al
  035ead  dec eax
  035eae  neg eax
  035eb0  add dword ptr cs:[esi], eax
  035eb3  add byte ptr [eax], al
L35eb5:
  035eb5  in al, dx
  035eb6  test al, 8
  035eb8  je 0x35eb5
  035eba  jmp 0x35ebc
L35ebc:
  035ebc  mov eax, 0x40e64100
  035ec1  mov al, ah
  035ec3  out 0x40, al
  035ec5  pop edx
  035ec6  mov al, 0x20
  035ec8  out 0x20, al
  035eca  pop eax
  035ecb  iretd 
  035ecc  imul esi, dword ptr [edx + 0x65], 0x64
  035ed0  jne 0x35f00
  035ed2  jae 0x35f37
  035ed4  js 0x35ed6
L35ed6:
  035ed6  je 0x35f50
  035ed8  je 0x35f0b
  035eda  cmp dword ptr [ebx + 0x2e], esp
  035edd  jae 0x35f42
  035edf  js 0x35ee1
L35ee1:
  035ee1  xchg ebx, ebx
  035ee3  nop 
  035ee4  aas 
  035ee5  aas 
  035ee6  aas 
  035ee7  add eax, dword ptr [edx + eax]
  035eea  add eax, dword ptr [0x2050404]
  035ef0  add eax, 0x8050405
  035ef5  add eax, dword ptr [esi]
  035ef7  or byte ptr [0x3f080906], al
  035efd  aas 
  035efe  aas 
  035eff  or dword ptr [eax], ecx
  035f01  push es
  035f02  or dword ptr [esi + eax], ecx
  035f05  or al, 0xa
  035f07  push es
  035f08  or al, 0xc
  035f0a  push es
L35f0b:
  035f0b  or dword ptr [ecx], ecx
  035f0d  or byte ptr [ecx], cl
  035f0f  or eax, 0xc0d0a09
  035f14  cmp edi, dword ptr [ebx]
  035f16  cmp ecx, dword ptr [0xd0d0c0b]
  035f1c  or dword ptr [0x100b0c0d], ecx
  035f22  pop es
  035f23  or dl, byte ptr [eax]
  035f25  or dword ptr [edx], ecx
  035f27  adc byte ptr [0x3709110d], cl
  035f2d  aaa 
  035f2e  aaa 
  035f2f  push cs
  035f30  adc al, 0xa
  035f32  push cs
  035f33  adc eax, 0xe180f0d
  035f38  or eax, 0x150e1011
  035f3d  adc dword ptr [edi], ecx
  035f3f  push ss
  035f40  adc al, 0xf
L35f42:
  035f42  sbb byte ptr [0x11333333], dl
  035f48  push cs
  035f49  or eax, 0x110a1011
  035f4e  adc dword ptr [0x110a1510], ecx
  035f54  adc eax, 0xa11140d
  035f59  adc eax, 0x2f2f0d11
  035f5e  das 
  035f5f  adc eax, 0x18100d15
  035f64  or edx, dword ptr [ecx]
  035f66  sbb byte ptr [0x150e1c12], cl
  035f6c  sbb byte ptr [0x180e1d14], cl
  035f72  adc cl, byte ptr [ebx]
  035f74  sub ebp, dword ptr [ebx]
  035f76  sub ebx, dword ptr [ecx]
  035f78  adc eax, 0xe161c0d
  035f7d  sbb dword ptr [ecx], ebx
  035f7f  push cs
  035f80  sbb dword ptr [0xe181c0f], ebx
  035f86  sbb eax, 0x12110f1c
  035f8b  adc byte ptr [edi], ah
  035f8d  daa 
  035f8e  daa 
  035f8f  adc dword ptr [0x11121514], edx
  035f95  adc eax, 0x15151115
  035f9a  adc al, 0x11
  035f9c  sbb dword ptr [ecx], edx
  035f9e  adc dword ptr [eax], ebx
  035fa0  adc eax, 0x23111c12
  035fa5  and esp, dword ptr [ebx]
  035fa7  adc eax, 0x19151118
  035fac  adc eax, 0x15111d15
  035fb1  sbb eax, 0x18191115
  035fb6  adc bl, byte ptr [ecx + ebx]
  035fb9  adc eax, 0x2020181a
  035fbe  and byte ptr [0x13181c1d], dl
  035fc4  adc byte ptr [ecx], bl
  035fc6  adc eax, 0x14161911
  035fcb  sbb al, 0x16
  035fcd  adc dword ptr [0x171b1517], ebx
  035fd3  sbb byte ptr [edi], bl
  035fd5  pop ds
  035fd6  pop ds
  035fd7  sbb dword ptr [ecx], ebx
  035fd9  adc eax, 0x19111d19
  035fde  sbb eax, 0x11191d15
  035fe3  sbb eax, 0x1d1d1519
  035fe8  adc dword ptr [0x1c1c151d], ebx
  035fee  sbb al, 0x19
  035ff0  sbb al, 0x19
  035ff2  sbb dword ptr [0x181a1d1c], ebx
  035ff8  sbb eax, 0x1d1d191d
  035ffd  sbb al, 0x16
  035fff  and byte ptr [edi], cl
  036001  adc eax, 0x18181321
  036006  sbb byte ptr [edx], bl
  036008  and edx, dword ptr [ebx]
  03600a  sbb esp, dword ptr [ebx]
  03600c  sbb bl, byte ptr [0x2b1d152a]
  036012  sbb ebx, dword ptr [esi]
  036014  xor byte ptr [esp + ebx], bl
  036017  and al, 0x21
  036019  sbb eax, 0x1414232a
  03601e  adc al, 0x1e
  036020  xor byte ptr [ecx], ah
  036022  pop ds
  036023  xor byte ptr [ebx], ch
  036025  and byte ptr [eax], bl
  036027  mov esp, cr3
  03602a  mov ecx, dr3
  03602d  adc dword ptr [ecx], esp
  03602f  sbb dl, byte ptr [0x10111d21]
  036035  adc byte ptr [eax], dl
  036037  and eax, 0x1d25121d
  03603c  adc eax, 0x23191a21
  036041  sbb ebx, dword ptr [ecx]
  036044  sbb eax, 0x1c1e2119
  036049  and eax, 0xc0c181e
  03604e  or al, 0x28
  036050  push ds
  036051  adc eax, 0x21142223
  036056  and dword ptr [ecx], ebx
  036058  and ah, byte ptr [ecx]
  03605a  sbb eax, 0x21192521
  03605f  and eax, 0x1921251d
  036064  or byte ptr [eax], cl
  036066  or byte ptr [0x25261925], ah
  03606c  sbb eax, 0x23162a23
  036071  sub ebx, dword ptr [ebx]
  036073  sub dword ptr [ecx], esp
  036075  adc ebp, dword ptr [ecx]
  036077  and dword ptr [0x4152528], edx
  03607d  add al, 4
  03607f  sub al, 0x26
  036081  adc eax, 0x28192129
  036086  and dword ptr [0x29192529], ebx
  03608c  and eax, 0x19222c1d
  036091  sub al, 0x23
  036093  sbb eax, 0x2c000000
  036098  sbb eax, 0x2b16292b
  03609e  sub ebx, dword ptr [ebx]
  0360a0  and dh, byte ptr [eax]
  0360a2  push ss
  0360a3  and esi, dword ptr [edx]
  0360a5  sbb esp, dword ptr [0x322b1d38]
  0360ab  sbb al, 0
  0360ad  aas 
  0360ae  add byte ptr [eax], dh
  0360b0  and eax, 0x1b263116
  0360b5  xor dword ptr [ebx], ebp
  0360b7  pop ss
  0360b8  xor ebp, dword ptr [ebx]
  0360ba  sbb al, 0x3a
  0360bc  sub eax, 0x1c32331d
  0360c1  xor edi, dword ptr [ecx]
  0360c3  push ds
  0360c4  add byte ptr [edi], bh
  0360c6  add byte ptr [ebx], bh
  0360c8  cmp dword ptr [esi], ebx
  0360ca  and dword ptr [edx], esp
  0360cc  and byte ptr [ecx], ah
  0360ce  and eax, 0x24262222
  0360d3  and al, 0x21
  0360d5  and byte ptr [0x26252125], ah
  0360db  and al, 0
  0360dd  aas 
  0360de  add byte ptr [esp + ebp], ah
  0360e1  sub ch, byte ptr [ecx]
  0360e3  and ah, byte ptr [ecx]
  0360e5  sub dword ptr [ebx], esp
  0360e7  and al, 0x29
  0360e9  and eax, 0x25262921
  0360ee  sub al, 0x23
  0360f0  and dword ptr [0x3f0021], ebp
  0360f7  sub al, 0x2b
  0360f9  and ebp, dword ptr [ecx]
  0360fb  sub dword ptr [eax], ebp
  0360fd  sub dword ptr [0x2c2e2a29], ebp
  036103  sub eax, 0x2d2d2929
  036108  sub dword ptr [0x3f002c2e], ebp
  03610e  add byte ptr [edx + esi], ah
  036111  sub ah, byte ptr [0x39262339]
  036117  sub ch, byte ptr [ebx]
  036119  xor ah, byte ptr [ebx]
  03611b  sub esi, dword ptr [ebx]
  03611d  sub ebp, dword ptr [ebx]
  03611f  cmp eax, 0x2b3d2b23
  036124  add byte ptr [edi], bh
  036126  add byte ptr [esi], ah
  036128  cmp dword ptr [edx], esi
  03612a  sub al, 0x35
  03612c  xor dword ptr [esp + edi], ebp
  03612f  xor ch, byte ptr [esi + edi]
  036132  cmp dh, byte ptr [ecx]
  036134  and esi, dword ptr es:[ebx]
  036137  daa 
  036138  sub dword ptr [ebx], esi
  03613a  sub esp, dword ptr [ebx]
  03613c  add byte ptr [edi], bh
  03613e  add byte ptr [edx], bh
  036140  and edi, dword ptr cs:[edx]
  036143  sub esi, dword ptr cs:[edi]
  036146  das 
  036147  xor dword ptr [ebx], esi
  036149  xor esp, dword ptr [ebx]
  03614b  xor al, 0x33
  03614d  sub esi, dword ptr [ebx]
  03614f  cmp eax, 0x2b3d3324
  036154  add byte ptr [edi], bh
  036156  add byte ptr [esp + esi], bh
  036159  sub edi, dword ptr [0x3d3d243c]
  03615f  sub esi, dword ptr [ebx]
  036161  xor eax, 0x333d3332
  036166  xor edi, dword ptr [esi]
  036168  cmp edi, dword ptr [esi + 0x3f0032]
  03616f  xor edi, dword ptr ds:[esi]
  036173  cmp eax, 0x1e182518
  036179  sub dword ptr [esi], ebx
  03617b  sbb ah, byte ptr [edi]
  03617d  sbb ah, byte ptr [ecx]
  03617f  sub esp, dword ptr [ecx]
  036181  sbb al, 0x29
  036183  sbb al, 0
  036185  aas 
  036186  add byte ptr [esi], bl
  036188  sub ebx, dword ptr [esi]
  03618a  push ss
  03618b  and eax, 0x1a251818
  036190  sbb ah, byte ptr [edi]
  036192  sbb al, 0x1a
  036194  and eax, 0x1e271c1c
  036199  and ebp, dword ptr [0x3f0025]
  03619f  sbb byte ptr [0x1e271a1c], ah
  0361a5  push ds
  0361a6  sub esp, dword ptr [ebx]
  0361a8  daa 
  0361a9  sub eax, 0x1e251a29
  0361ae  and dword ptr [ebx], ebp
  0361b0  and eax, 0x272d23
  0361b5  aas 
  0361b6  add byte ptr [0x2d292729], ah
  0361bc  sub ebp, dword ptr [ebx]
  0361be  das 
  0361bf  sub eax, 0x27252921
  0361c4  sub ebp, dword ptr [ecx]
  0361c6  sbb ah, byte ptr [edi]
  0361c8  and dword ptr [edx], ebx
  0361ca  sub dword ptr [ebx], esp
  0361cc  add byte ptr [edi], bh
  0361ce  add byte ptr [edx], bl
  0361d0  sub dword ptr [0x25232718], esp
  0361d6  sub eax, 0x292b212b
  0361db  and ebp, dword ptr [0x27291c2b]
  0361e1  aas 
  0361e2  aas 
  0361e3  aas 
  0361e4  add byte ptr [eax], al
  0361e6  add byte ptr [ecx], al
  0361e8  add dword ptr [ecx], eax
  0361ea  add al, byte ptr [edx]
  0361ec  add al, byte ptr [ebx]
  0361ee  add eax, dword ptr [ebx]
  0361f0  add al, 4
  0361f2  add al, 5
  0361f4  add eax, 0x6060605
  0361f9  pop es
  0361fa  pop es
  0361fb  pop es
  0361fc  or byte ptr [eax], cl
  0361fe  or byte ptr [ecx], cl
  036200  or dword ptr [ecx], ecx
  036202  or cl, byte ptr [edx]
  036204  or cl, byte ptr [ebx]
  036206  or ecx, dword ptr [ebx]
  036208  or al, 0xc
  03620a  or al, 0xd
  03620c  or eax, 0xe0e0e0d
