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
