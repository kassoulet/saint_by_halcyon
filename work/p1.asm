  02c885  mov dword ptr [0x469c], 0
L2c88f:
  02c88f  cmp dword ptr [0x469c], 1
  02c896  jl 0x2c88f
  02c898  mov esi, dword ptr [0x466c]
  02c89e  mov edi, dword ptr [0x4668]
  02c8a4  xor ebp, ebp
  02c8a6  mov ecx, 0x1f40
  02c8ab  nop 
L2c8ac:
  02c8ac  mov eax, dword ptr [esi]
  02c8ae  mov ebx, dword ptr [esi + 4]
  02c8b1  mov dword ptr [esi], ebp
  02c8b3  mov dword ptr [esi + 4], ebp
  02c8b6  mov dword ptr [edi], eax
  02c8b8  mov dword ptr [edi + 4], ebx
  02c8bb  add esi, 8
  02c8be  add edi, 8
  02c8c1  dec ecx
  02c8c2  jne 0x2c8ac
  02c8c4  fld1 
  02c8c6  cmp dword ptr [0x2b7e4], 1
  02c8cd  jne 0x2c8cf
L2c8cf:
  02c8cf  fstp dword ptr [0x17214]
  02c8d5  fild dword ptr [0x2aec8]
  02c8db  fdiv qword ptr [0x4a68]
  02c8e1  fstp qword ptr [0x4a38]
  02c8e7  fild dword ptr [0x2aecc]
  02c8ed  fdiv qword ptr [0x4a68]
  02c8f3  fstp qword ptr [0x4a40]
  02c8f9  fild dword ptr [0x2aec4]
  02c8ff  fdiv qword ptr [0x4a68]
  02c905  fstp qword ptr [0x4a48]
  02c90b  fldz 
  02c90d  fstp qword ptr [0x49a8]
  02c913  fldz 
  02c915  fstp qword ptr [0x49b0]
  02c91b  fldz 
  02c91d  cmp dword ptr [0x2b7e4], 1
  02c924  jne 0x2c93e
  02c926  fstp st(0)
  02c928  fld dword ptr [0x2b7ec]
  02c92e  mov dword ptr [0x467c], 0xd6d8
  02c938  fimul dword ptr [0x467c]
L2c93e:
  02c93e  fstp qword ptr [0x49b8]
  02c944  mov ebx, 0x15ae0
  02c949  call 0x15f1b
  02c94e  mov dword ptr [0x2aec4], 0
  02c958  mov dword ptr [0x2aec8], 0
  02c962  mov dword ptr [0x2aecc], 0
  02c96c  mov edi, 0x7f98
  02c971  mov ebp, 0xef98
  02c976  mov ecx, 0x21
L2c97b:
  02c97b  fld dword ptr [edi + 0x24]
  02c97e  fstp qword ptr [0x4a90]
  02c984  fld dword ptr [edi + 0x28]
  02c987  fstp qword ptr [0x4a98]
  02c98d  fld dword ptr [edi + 0x2c]
  02c990  fstp qword ptr [0x4aa0]
  02c996  pushal 
  02c997  mov esi, 0x4a90
  02c99c  mov edi, 0x15ae0
  02c9a1  mov ebx, 0x4aa8
  02c9a6  call 0x15d63
  02c9ab  popal 
  02c9ac  fld qword ptr [0x4aa8]
  02c9b2  fst dword ptr [edi + 0x24]
  02c9b5  fstp dword ptr [ebp + 4]
  02c9b8  fld qword ptr [0x4ab0]
  02c9be  fst dword ptr [edi + 0x28]
  02c9c1  fstp dword ptr [ebp + 8]
  02c9c4  fld qword ptr [0x4ab8]
  02c9ca  fst dword ptr [edi + 0x2c]
  02c9cd  fstp dword ptr [ebp + 0xc]
  02c9d0  add edi, 0x38
  02c9d3  add ebp, 0x2c
  02c9d6  dec ecx
  02c9d7  jne 0x2c97b
  02c9d9  mov ebx, 0x17898
  02c9de  mov edi, 0x2b7fc
  02c9e3  call 0x1f2c0
  02c9e8  fld qword ptr [0x17830]
  02c9ee  fstp qword ptr [0x4af0]
  02c9f4  fld qword ptr [0x17838]
  02c9fa  fstp qword ptr [0x4af8]
  02ca00  fld qword ptr [0x17840]
  02ca06  fstp qword ptr [0x4b00]
  02ca0c  fld qword ptr [0x17848]
  02ca12  fstp qword ptr [0x4a20]
  02ca18  fld qword ptr [0x17850]
  02ca1e  fstp qword ptr [0x4a28]
  02ca24  fld qword ptr [0x17858]
  02ca2a  fstp qword ptr [0x4a30]
  02ca30  fld qword ptr [0x17860]
  02ca36  fstp qword ptr [0x49f0]
  02ca3c  fld qword ptr [0x17868]
  02ca42  fstp qword ptr [0x49f8]
  02ca48  fld qword ptr [0x17870]
  02ca4e  fstp qword ptr [0x4a00]
  02ca54  fld qword ptr [0x17878]
  02ca5a  fstp qword ptr [0x4938]
  02ca60  mov ebx, 0x178c8
  02ca65  mov edi, 0x2b7fc
  02ca6a  call 0x1f2c0
  02ca6f  fld qword ptr [0x17860]
  02ca75  fstp qword ptr [0x49c0]
  02ca7b  fld qword ptr [0x17868]
  02ca81  fstp qword ptr [0x49c8]
  02ca87  fld qword ptr [0x17870]
  02ca8d  fstp qword ptr [0x49d0]
  02ca93  fld qword ptr [0x4938]
  02ca99  fmul qword ptr [0x4960]
  02ca9f  fstp qword ptr [0x4a78]
  02caa5  call 0x15d91
  02caaa  call 0x150d4
  02caaf  cmp byte ptr [0x41b7], 1
  02cab6  je 0x2cff9
  02cabc  fld qword ptr [0x49f0]
  02cac2  fstp dword ptr [0x4c1c]
  02cac8  fld qword ptr [0x49f8]
  02cace  fstp dword ptr [0x4c20]
  02cad4  fld qword ptr [0x4a00]
  02cada  fstp dword ptr [0x4c24]
  02cae0  fld dword ptr [0x7f30]
  02cae6  fcos 
  02cae8  fld1 
  02caea  faddp st(1)
  02caec  fdiv qword ptr [0x4988]
  02caf2  fstp qword ptr [0x7eb8]
  02caf8  fld dword ptr [0x7f30]
  02cafe  fsin 
  02cb00  fmul qword ptr [0x7f18]
  02cb06  fstp qword ptr [0x7ed0]
  02cb0c  fld dword ptr [0x7f38]
  02cb12  fcos 
  02cb14  fmul qword ptr [0x7f00]
  02cb1a  fstp qword ptr [0x7ed8]
  02cb20  fld dword ptr [0x7f30]
  02cb26  fsin 
  02cb28  fmul qword ptr [0x7f28]
  02cb2e  fstp qword ptr [0x7ef0]
  02cb34  fld dword ptr [0x7f38]
  02cb3a  fcos 
  02cb3c  fmul qword ptr [0x7f10]
  02cb42  fstp qword ptr [0x7ef8]
  02cb48  fld dword ptr [0x7f30]
  02cb4e  fsin 
  02cb50  fmul qword ptr [0x7f20]
  02cb56  fstp qword ptr [0x7ee0]
  02cb5c  fld dword ptr [0x7f38]
  02cb62  fcos 
  02cb64  fmul qword ptr [0x7f08]
  02cb6a  fstp qword ptr [0x7ee8]
  02cb70  mov esi, 0x4c84
  02cb75  mov edi, dword ptr [0x466c]
  02cb7b  add edi, 0x10000
  02cb81  mov edx, 0x1a
L2cb86:
  02cb86  mov ecx, 0x29
L2cb8b:
  02cb8b  fld dword ptr [esi]
  02cb8d  fmul qword ptr [0x15be0]
  02cb93  fld dword ptr [esi + 4]
  02cb96  fmul qword ptr [0x15be8]
  02cb9c  fld dword ptr [esi + 8]
  02cb9f  fmul qword ptr [0x15bf0]
  02cba5  faddp st(1)
  02cba7  faddp st(1)
  02cba9  fadd dword ptr [0x4c1c]
  02cbaf  fstp dword ptr [0x4c28]
  02cbb5  fld dword ptr [esi]
  02cbb7  fmul qword ptr [0x15c00]
  02cbbd  fld dword ptr [esi + 4]
  02cbc0  fmul qword ptr [0x15c08]
  02cbc6  fld dword ptr [esi + 8]
  02cbc9  fmul qword ptr [0x15c10]
  02cbcf  faddp st(1)
  02cbd1  faddp st(1)
  02cbd3  fadd dword ptr [0x4c20]
  02cbd9  fstp dword ptr [0x4c2c]
  02cbdf  fld dword ptr [esi]
  02cbe1  fmul qword ptr [0x15c20]
  02cbe7  fld dword ptr [esi + 4]
  02cbea  fmul qword ptr [0x15c28]
  02cbf0  fld dword ptr [esi + 8]
  02cbf3  fmul qword ptr [0x15c30]
  02cbf9  faddp st(1)
  02cbfb  faddp st(1)
  02cbfd  fadd dword ptr [0x4c24]
  02cc03  fstp dword ptr [0x4c30]
  02cc09  call dword ptr [0x4c00]
  02cc0f  cmp dword ptr [0x2b7e4], 1
  02cc16  jne 0x2ccb2
  02cc1c  mov eax, dword ptr [0x4c34]
  02cc21  mov ebx, dword ptr [0x4c38]
  02cc27  mov dword ptr [0x4c40], eax
  02cc2c  mov dword ptr [0x4c44], ebx
  02cc32  mov eax, dword ptr [0x4c3c]
  02cc37  mov dword ptr [0x4c48], eax
  02cc3c  call dword ptr [0x2b7f8]
  02cc42  fld dword ptr [0x4c34]
  02cc48  fmul dword ptr [0x2b7e8]
  02cc4e  fld1 
  02cc50  fsub dword ptr [0x2b7e8]
  02cc56  fmul dword ptr [0x4c40]
  02cc5c  faddp st(1)
  02cc5e  fmul qword ptr [0x7ea0]
  02cc64  fistp dword ptr [edi]
  02cc66  fld dword ptr [0x4c38]
  02cc6c  fmul dword ptr [0x2b7e8]
  02cc72  fld1 
  02cc74  fsub dword ptr [0x2b7e8]
  02cc7a  fmul dword ptr [0x4c44]
  02cc80  faddp st(1)
  02cc82  fmul qword ptr [0x7ea0]
  02cc88  fistp dword ptr [edi + 4]
  02cc8b  fld dword ptr [0x4c3c]
  02cc91  fmul dword ptr [0x2b7e8]
  02cc97  fld1 
  02cc99  fsub dword ptr [0x2b7e8]
  02cc9f  fmul dword ptr [0x4c48]
  02cca5  faddp st(1)
  02cca7  fmul qword ptr [0x7ea0]
  02ccad  fistp dword ptr [edi + 8]
  02ccb0  jmp 0x2ccde
L2ccb2:
  02ccb2  fld dword ptr [0x4c34]
  02ccb8  fmul qword ptr [0x7ea0]
  02ccbe  fistp dword ptr [edi]
  02ccc0  fld dword ptr [0x4c38]
  02ccc6  fmul qword ptr [0x7ea0]
  02cccc  fistp dword ptr [edi + 4]
  02cccf  fld dword ptr [0x4c3c]
  02ccd5  fmul qword ptr [0x7ea0]
  02ccdb  fistp dword ptr [edi + 8]
L2ccde:
  02ccde  add edi, 0xc
  02cce1  add esi, 0xc
  02cce4  dec ecx
  02cce5  jne 0x2cb8b
  02cceb  dec edx
  02ccec  jne 0x2cb86
  02ccf2  mov esi, dword ptr [0x466c]
  02ccf8  add esi, 0x10000
  02ccfe  mov edi, dword ptr [0x466c]
  02cd04  sub edi, 2
  02cd07  mov dword ptr [0x4680], 0x19
L2cd11:
  02cd11  mov dword ptr [0x467c], 0x28
L2cd1b:
  02cd1b  mov eax, dword ptr [esi + 8]
  02cd1e  add eax, dword ptr [esi + 0x14]
  02cd21  add eax, dword ptr [esi + 0x1f4]
  02cd27  add eax, dword ptr [esi + 0x200]
  02cd2d  je 0x2cfd2
  02cd33  push edi
  02cd34  mov edx, dword ptr [esi]
  02cd36  mov ebp, dword ptr [esi + 4]
  02cd39  mov edi, dword ptr [esi + 8]
  02cd3c  mov eax, dword ptr [esi + 0x1ec]
  02cd42  mov ebx, dword ptr [esi + 0x1f0]
  02cd48  mov ecx, dword ptr [esi + 0x1f4]
  02cd4e  sub eax, edx
  02cd50  sub ebx, ebp
  02cd52  sub ecx, edi
  02cd54  mov dword ptr [0x2be80], edx
  02cd5a  mov dword ptr [0x2be84], ebp
  02cd60  mov dword ptr [0x2be88], edi
  02cd66  sar eax, 3
  02cd69  sar ebx, 3
  02cd6c  sar ecx, 3
  02cd6f  mov dword ptr [0x2be9c], eax
  02cd74  mov dword ptr [0x2bea0], ebx
  02cd7a  mov dword ptr [0x2bea4], ecx
  02cd80  mov edx, dword ptr [esi + 0xc]
  02cd83  mov ebp, dword ptr [esi + 0x10]
  02cd86  mov edi, dword ptr [esi + 0x14]
  02cd89  mov eax, dword ptr [esi + 0x1f8]
  02cd8f  mov ebx, dword ptr [esi + 0x1fc]
  02cd95  mov ecx, dword ptr [esi + 0x200]
  02cd9b  sub eax, edx
  02cd9d  sub ebx, ebp
  02cd9f  sub ecx, edi
  02cda1  mov dword ptr [0x2be8c], edx
  02cda7  mov dword ptr [0x2be90], ebp
  02cdad  mov dword ptr [0x2be94], edi
  02cdb3  sar eax, 3
  02cdb6  sar ebx, 3
  02cdb9  sar ecx, 3
  02cdbc  pop edi
  02cdbd  mov dword ptr [0x2bea8], eax
  02cdc2  mov dword ptr [0x2beac], ebx
  02cdc8  mov dword ptr [0x2beb0], ecx
  02cdce  push esi
  02cdcf  mov dword ptr [0x2be98], 8
  02cdd9  xchg ebx, ebx
  02cddb  nop 
L2cddc:
  02cddc  mov ebp, dword ptr [0x2be80]
  02cde2  mov esi, dword ptr [0x2be84]
  02cde8  mov edx, dword ptr [0x2be88]
  02cdee  mov eax, dword ptr [0x2be8c]
  02cdf3  mov ebx, dword ptr [0x2be90]
  02cdf9  mov ecx, dword ptr [0x2be94]
  02cdff  sub eax, ebp
  02ce01  sub ebx, esi
  02ce03  sub ecx, edx
  02ce05  sar eax, 0xb
  02ce08  sar ebx, 0xb
  02ce0b  sar ecx, 0xb
  02ce0e  mov dword ptr [0x2beb4], eax
  02ce13  mov dword ptr [0x2beb8], ebx
  02ce19  mov dword ptr [0x2bebc], ecx
  02ce1f  sar ebp, 8
  02ce22  sar esi, 8
  02ce25  sar edx, 8
  02ce28  mov ecx, ebp
  02ce2a  mov eax, dword ptr [0x4670]
  02ce2f  mov ax, si
  02ce32  add edi, 2
  02ce35  mov al, ch
  02ce37  add ecx, dword ptr [0x2beb4]
  02ce3d  add esi, dword ptr [0x2beb8]
  02ce43  mov al, byte ptr [eax]
  02ce45  mov ah, dh
  02ce47  add edx, dword ptr [0x2bebc]
  02ce4d  mov bl, byte ptr [eax + 0x10000]
  02ce53  mov ax, si
  02ce56  mov al, ch
  02ce58  add ecx, dword ptr [0x2beb4]
  02ce5e  add esi, dword ptr [0x2beb8]
  02ce64  mov al, byte ptr [eax]
  02ce66  mov ah, dh
  02ce68  add edx, dword ptr [0x2bebc]
  02ce6e  mov bh, byte ptr [eax + 0x10000]
  02ce74  mov word ptr [edi], bx
  02ce77  mov ax, si
  02ce7a  add edi, 2
  02ce7d  mov al, ch
  02ce7f  add ecx, dword ptr [0x2beb4]
  02ce85  add esi, dword ptr [0x2beb8]
  02ce8b  mov al, byte ptr [eax]
  02ce8d  mov ah, dh
  02ce8f  add edx, dword ptr [0x2bebc]
  02ce95  mov bl, byte ptr [eax + 0x10000]
  02ce9b  mov ax, si
  02ce9e  mov al, ch
  02cea0  add ecx, dword ptr [0x2beb4]
  02cea6  add esi, dword ptr [0x2beb8]
  02ceac  mov al, byte ptr [eax]
  02ceae  mov ah, dh
  02ceb0  add edx, dword ptr [0x2bebc]
  02ceb6  mov bh, byte ptr [eax + 0x10000]
  02cebc  mov word ptr [edi], bx
  02cebf  mov ax, si
  02cec2  add edi, 2
  02cec5  mov al, ch
  02cec7  add ecx, dword ptr [0x2beb4]
  02cecd  add esi, dword ptr [0x2beb8]
  02ced3  mov al, byte ptr [eax]
  02ced5  mov ah, dh
  02ced7  add edx, dword ptr [0x2bebc]
  02cedd  mov bl, byte ptr [eax + 0x10000]
  02cee3  mov ax, si
  02cee6  mov al, ch
  02cee8  add ecx, dword ptr [0x2beb4]
  02ceee  add esi, dword ptr [0x2beb8]
  02cef4  mov al, byte ptr [eax]
  02cef6  mov ah, dh
  02cef8  add edx, dword ptr [0x2bebc]
  02cefe  mov bh, byte ptr [eax + 0x10000]
  02cf04  mov word ptr [edi], bx
  02cf07  mov ax, si
  02cf0a  add edi, 2
  02cf0d  mov al, ch
  02cf0f  add ecx, dword ptr [0x2beb4]
  02cf15  add esi, dword ptr [0x2beb8]
  02cf1b  mov al, byte ptr [eax]
  02cf1d  mov ah, dh
  02cf1f  add edx, dword ptr [0x2bebc]
  02cf25  mov bl, byte ptr [eax + 0x10000]
  02cf2b  mov ax, si
  02cf2e  mov al, ch
  02cf30  add ecx, dword ptr [0x2beb4]
  02cf36  add esi, dword ptr [0x2beb8]
  02cf3c  mov al, byte ptr [eax]
  02cf3e  mov ah, dh
  02cf40  add edx, dword ptr [0x2bebc]
  02cf46  mov bh, byte ptr [eax + 0x10000]
  02cf4c  mov word ptr [edi], bx
  02cf4f  mov eax, dword ptr [0x2be80]
  02cf54  mov ebx, dword ptr [0x2be84]
  02cf5a  mov ecx, dword ptr [0x2be88]
  02cf60  mov edx, dword ptr [0x2be8c]
  02cf66  mov esi, dword ptr [0x2be90]
  02cf6c  mov ebp, dword ptr [0x2be94]
  02cf72  add eax, dword ptr [0x2be9c]
  02cf78  add ebx, dword ptr [0x2bea0]
  02cf7e  add ecx, dword ptr [0x2bea4]
  02cf84  add edx, dword ptr [0x2bea8]
  02cf8a  add esi, dword ptr [0x2beac]
  02cf90  add ebp, dword ptr [0x2beb0]
  02cf96  mov dword ptr [0x2be80], eax
  02cf9b  mov dword ptr [0x2be84], ebx
  02cfa1  mov dword ptr [0x2be88], ecx
  02cfa7  mov dword ptr [0x2be8c], edx
  02cfad  mov dword ptr [0x2be90], esi
  02cfb3  mov dword ptr [0x2be94], ebp
  02cfb9  add edi, 0x138
  02cfbf  dec dword ptr [0x2be98]
  02cfc5  jne 0x2cddc
  02cfcb  pop esi
  02cfcc  add edi, 0xfffff600
L2cfd2:
  02cfd2  add edi, 8
  02cfd5  add esi, 0xc
  02cfd8  dec dword ptr [0x467c]
  02cfde  jne 0x2cd1b
  02cfe4  add edi, 0x8c0
  02cfea  add esi, 0xc
  02cfed  dec dword ptr [0x4680]
  02cff3  jne 0x2cd11
L2cff9:
  02cff9  mov eax, dword ptr [0x1584c]
  02cffe  mov dword ptr [0x15854], eax
  02d003  mov eax, dword ptr [0x15850]
  02d008  mov dword ptr [0x15858], eax
  02d00d  mov dword ptr [0x1663c], 0
  02d017  mov eax, dword ptr [0x16634]
  02d01c  mov dword ptr [0x16640], eax
  02d021  mov ecx, dword ptr [0x17210]
  02d027  mov ebp, 0x7f98
L2d02c:
  02d02c  push ecx
  02d02d  cmp dword ptr [ebp + 4], 0
  02d031  jne 0x2d1dc
  02d037  fld dword ptr [ebp + 0x34]
  02d03a  fstp dword ptr [0x17214]
  02d040  fild dword ptr [ebp + 0x18]
  02d043  fdiv qword ptr [0x4a68]
  02d049  fstp qword ptr [0x4a38]
  02d04f  fild dword ptr [ebp + 0x1c]
  02d052  fdiv qword ptr [0x4a68]
  02d058  fstp qword ptr [0x4a40]
  02d05e  fild dword ptr [ebp + 0x20]
  02d061  fdiv qword ptr [0x4a68]
  02d067  fstp qword ptr [0x4a48]
  02d06d  fld dword ptr [ebp + 0x24]
  02d070  fstp qword ptr [0x49a8]
  02d076  fld dword ptr [ebp + 0x28]
  02d079  fstp qword ptr [0x49b0]
  02d07f  fld dword ptr [ebp + 0x2c]
  02d082  fstp qword ptr [0x49b8]
  02d088  mov ebx, 0x15b60
  02d08d  call 0x15f1b
  02d092  mov eax, 0x15b60
  02d097  mov ebx, 0x15be0
  02d09c  mov ecx, 0x15ae0
  02d0a1  call 0x160b5
  02d0a6  cmp dword ptr [ebp], 0x4f627521
  02d0ad  je 0x2d126
  02d0af  mov esi, dword ptr [ebp + 0x10]
  02d0b2  mov ecx, dword ptr [ebp + 8]
L2d0b5:
  02d0b5  mov dword ptr [esi + 4], 0
  02d0bc  add esi, 0x40
  02d0bf  dec ecx
  02d0c0  jne 0x2d0b5
  02d0c2  call 0x16244
  02d0c7  mov esi, ebp
  02d0c9  mov edi, 0x7f60
  02d0ce  mov ecx, 0xe
  02d0d3  rep movsd dword ptr es:[edi], dword ptr [esi]
  02d0d5  mov dword ptr [0x7f68], 0
  02d0df  mov dword ptr [0x7f6c], 0
  02d0e9  mov ebx, dword ptr [0x15854]
  02d0ef  mov dword ptr [0x7f74], ebx
  02d0f5  mov ebx, dword ptr [0x15858]
  02d0fb  mov dword ptr [0x7f70], ebx
  02d101  call 0x15a18
  02d106  call 0x162fd
  02d10b  call 0x17028
  02d110  push ebp
  02d111  mov ebp, 0x7f60
  02d116  call 0x162fd
  02d11b  call 0x17028
  02d120  pop ebp
  02d121  jmp 0x2d1dc
L2d126:
  02d126  cmp byte ptr [0x41b6], 1
  02d12d  je 0x2d1dc
  02d133  mov esi, dword ptr [ebp + 0x14]
  02d136  mov eax, 0x1fa33
  02d13b  sub eax, dword ptr [esi + 4]
  02d13e  mov dword ptr [0x4664], eax
  02d143  mov eax, dword ptr [esi + 4]
  02d146  cmp eax, 0x1fc7b
  02d14b  jne 0x2d157
  02d14d  mov dword ptr [0x4664], 1
L2d157:
  02d157  call 0x16100
  02d15c  call 0x16244
  02d161  call 0x163a4
  02d166  mov esi, ebp
  02d168  mov edi, 0x7f60
  02d16d  mov ecx, 0xe
  02d172  rep movsd dword ptr es:[edi], dword ptr [esi]
  02d174  mov dword ptr [0x7f68], 0
  02d17e  mov dword ptr [0x7f6c], 0
  02d188  mov ebx, dword ptr [0x15854]
  02d18e  mov dword ptr [0x7f74], ebx
  02d194  mov ebx, dword ptr [0x15858]
  02d19a  mov dword ptr [0x7f70], ebx
  02d1a0  call 0x1592e
  02d1a5  call 0x162fd
  02d1aa  call 0x16ea7
  02d1af  cmp dword ptr [0x4664], 1
  02d1b6  je 0x2d1bd
  02d1b8  call 0x1653f
L2d1bd:
  02d1bd  push ebp
  02d1be  mov ebp, 0x7f60
  02d1c3  call 0x162fd
  02d1c8  call 0x16ea7
  02d1cd  cmp dword ptr [0x4664], 1
  02d1d4  je 0x2d1db
  02d1d6  call 0x1653f
L2d1db:
  02d1db  pop ebp
L2d1dc:
  02d1dc  pop ecx
  02d1dd  add ebp, 0x38
  02d1e0  dec ecx
  02d1e1  jne 0x2d02c
  02d1e7  mov dword ptr [0x467c], 0x28
  02d1f1  fild dword ptr [0x467c]
  02d1f7  fld dword ptr [0xefb8]
  02d1fd  fmul qword ptr [0x4988]
  02d203  fmul qword ptr [0x4938]
  02d209  fdivp st(1)
  02d20b  fstp dword ptr [0x4658]
  02d211  mov dword ptr [0x467c], 0xff
  02d21b  fild dword ptr [0x467c]
  02d221  fld dword ptr [0xefe4]
  02d227  fmul qword ptr [0x4988]
  02d22d  fmul qword ptr [0x4938]
  02d233  fdivp st(1)
  02d235  fstp dword ptr [0x465c]
  02d23b  mov ecx, dword ptr [0x14798]
  02d241  cmp ecx, 0
  02d244  je 0x2d398
  02d24a  mov ebp, 0xef98
  02d24f  mov edi, dword ptr [0x16640]
  02d255  mov ebx, 0x178e0
L2d25a:
  02d25a  fld dword ptr [ebp + 4]
  02d25d  fmul qword ptr [0x15be0]
  02d263  fld dword ptr [ebp + 4]
  02d266  fmul qword ptr [0x15be8]
  02d26c  fld dword ptr [ebp + 4]
  02d26f  fmul qword ptr [0x15bf0]
  02d275  fld dword ptr [ebp + 8]
  02d278  fmul qword ptr [0x15c00]
  02d27e  fld dword ptr [ebp + 8]
  02d281  fmul qword ptr [0x15c08]
  02d287  fld dword ptr [ebp + 8]
  02d28a  fmul qword ptr [0x15c10]
  02d290  fxch st(2)
  02d292  faddp st(5)
  02d294  faddp st(3)
  02d296  faddp st(1)
  02d298  fld dword ptr [ebp + 0xc]
  02d29b  fmul qword ptr [0x15c20]
  02d2a1  fld dword ptr [ebp + 0xc]
  02d2a4  fmul qword ptr [0x15c28]
  02d2aa  fld dword ptr [ebp + 0xc]
  02d2ad  fmul qword ptr [0x15c30]
  02d2b3  fxch st(2)
  02d2b5  faddp st(5)
  02d2b7  faddp st(3)
  02d2b9  faddp st(1)
  02d2bb  fxch st(2)
  02d2bd  fadd qword ptr [0x15c40]
  02d2c3  fxch st(1)
  02d2c5  fadd qword ptr [0x15c48]
  02d2cb  fxch st(2)
  02d2cd  fadd qword ptr [0x15c50]
  02d2d3  fst dword ptr [ebp + 0x1c]
  02d2d6  fstp dword ptr [0x4684]
  02d2dc  fstp dword ptr [0x467c]
  02d2e2  fstp dword ptr [0x4680]
  02d2e8  test dword ptr [0x4684], 0x80000000
  02d2f2  je 0x2d388
  02d2f8  fld1 
  02d2fa  fld dword ptr [0x4684]
  02d300  fdivp st(1)
  02d302  fld dword ptr [0x467c]
  02d308  fld dword ptr [0x4680]
  02d30e  fmul qword ptr [0x4a78]
  02d314  fmul st(2)
  02d316  fxch st(1)
  02d318  fmul qword ptr [0x4938]
  02d31e  fmul st(2)
  02d320  fxch st(1)
  02d322  fadd qword ptr [0x4930]
  02d328  fstp dword ptr [ebp + 0x18]
  02d32b  fadd qword ptr [0x4928]
  02d331  fstp dword ptr [ebp + 0x14]
  02d334  fstp dword ptr [ebp + 0x10]
  02d337  mov eax, dword ptr [0x4658]
  02d33c  cmp dword ptr [ebp], 0x2d417
  02d343  jne 0x2d34a
  02d345  mov eax, dword ptr [0x465c]
L2d34a:
  02d34a  mov dword ptr [ebp + 0x28], eax
  02d34d  fld dword ptr [0x4684]
  02d353  fsub dword ptr [0x150d0]
  02d359  fmul dword ptr [0x150c0]
  02d35f  fmul qword ptr [0x4990]
  02d365  fchs 
  02d367  fistp dword ptr [0x4680]
  02d36d  mov eax, 0xffff
  02d372  sub eax, dword ptr [0x4680]
  02d378  mov dword ptr [edi], eax
  02d37a  add edi, 4
  02d37d  mov dword ptr [edi], ebp
  02d37f  add edi, 4
  02d382  inc dword ptr [0x1663c]
L2d388:
  02d388  add ebp, 0x2c
  02d38b  dec ecx
  02d38c  jne 0x2d25a
  02d392  mov dword ptr [0x16640], edi
L2d398:
  02d398  wait 
  02d399  fnstcw word ptr [0x2ba7c]
  02d39f  push word ptr [0x2ba7c]
  02d3a6  or word ptr [0x2ba7c], 0xc00
  02d3af  fldcw word ptr [0x2ba7c]
  02d3b5  cmp dword ptr [0x1663c], 0
  02d3bc  je 0x2d7d4
  02d3c2  call 0x170f7
  02d3c7  mov esi, dword ptr [0x16634]
  02d3cd  add esi, 4
L2d3d0:
  02d3d0  mov ecx, dword ptr [esi]
  02d3d2  push esi
  02d3d3  jmp dword ptr [ecx]
  02d3d5  mov esi, dword ptr [ecx + 8]
  02d3d8  mov edi, dword ptr [ecx + 0xc]
  02d3db  fld dword ptr [esi + 0x14]
  02d3de  fld dword ptr [esi + 0x18]
  02d3e1  fxch st(1)
  02d3e3  fstp dword ptr [0x2936c]
  02d3e9  fstp dword ptr [0x29370]
  02d3ef  fld dword ptr [edi + 0x14]
  02d3f2  fld dword ptr [edi + 0x18]
  02d3f5  fxch st(1)
  02d3f7  fstp dword ptr [0x2937c]
  02d3fd  fstp dword ptr [0x29380]
  02d403  mov esi, 0x2936c
  02d408  mov edi, 0x2937c
  02d40d  call 0x293a4
  02d412  jmp 0x2d7c4
  02d417  fld dword ptr [ecx + 0x28]
  02d41a  fmul dword ptr [ecx + 0x1c]
  02d41d  fmul dword ptr [0x29690]
  02d423  fistp dword ptr [0x4688]
  02d429  mov eax, dword ptr [0x4688]
  02d42e  shr eax, 8
  02d431  cmp eax, 0x3f
  02d434  jl 0x2d43b
  02d436  mov eax, 0x3f
L2d43b:
  02d43b  cmp dword ptr [0x48dc], -1
  02d442  je 0x2d449
  02d444  mov eax, dword ptr [0x48dc]
L2d449:
  02d449  mov ebx, dword ptr [eax*4 + 0x4558]
  02d450  mov dword ptr [0x296a4], ebx
  02d456  fld dword ptr [ecx + 0x28]
  02d459  fmul dword ptr [ecx + 0x1c]
  02d45c  fmul dword ptr [eax*4 + 0x4458]
  02d463  fst dword ptr [0x296c0]
  02d469  fmul dword ptr [0x29690]
  02d46f  fistp dword ptr [0x296c8]
  02d475  fld dword ptr [ecx + 0x20]
  02d478  fmul qword ptr [0x4938]
  02d47e  fmul dword ptr [ecx + 0x10]
  02d481  fstp dword ptr [0x2969c]
  02d487  fld dword ptr [ecx + 0x14]
  02d48a  fsub dword ptr [0x2969c]
  02d490  fstp dword ptr [0x296a8]
  02d496  fld dword ptr [ecx + 0x18]
  02d499  fsub dword ptr [0x2969c]
  02d49f  fstp dword ptr [0x296ac]
  02d4a5  fld dword ptr [ecx + 0x14]
  02d4a8  fadd dword ptr [0x2969c]
  02d4ae  fstp dword ptr [0x296b0]
  02d4b4  fld dword ptr [ecx + 0x18]
  02d4b7  fadd dword ptr [0x2969c]
  02d4bd  fstp dword ptr [0x296b4]
  02d4c3  call 0x298b7
  02d4c8  jmp 0x2d7c4
  02d4cd  fld qword ptr [0x49f0]
  02d4d3  fsub dword ptr [ecx + 4]
  02d4d6  fld qword ptr [0x49f8]
  02d4dc  fsub dword ptr [ecx + 8]
  02d4df  fpatan 
  02d4e1  fldpi 
  02d4e3  fmul qword ptr [0x4988]
  02d4e9  fdivp st(1)
  02d4eb  fmul qword ptr [0x4a68]
  02d4f1  fistp dword ptr [0x4688]
  02d4f7  mov eax, dword ptr [0x4688]
  02d4fc  and eax, 0xffff
  02d501  mov ebx, 0x690
  02d506  cdq 
  02d507  idiv ebx
  02d509  mov esi, eax
  02d50b  and esi, 3
  02d50e  imul esi, esi, 0x28
  02d511  shr eax, 2
  02d514  imul eax, eax, 0x5300
  02d51a  add eax, esi
  02d51c  mov dword ptr [0x296a4], eax
  02d521  fld dword ptr [ecx + 0x28]
  02d524  fmul dword ptr [ecx + 0x1c]
  02d527  fst dword ptr [0x296c0]
  02d52d  fmul dword ptr [0x29690]
  02d533  fistp dword ptr [0x296c8]
  02d539  fld dword ptr [ecx + 0x20]
  02d53c  fmul qword ptr [0x4938]
  02d542  fmul dword ptr [ecx + 0x10]
  02d545  fstp dword ptr [0x2969c]
  02d54b  fld dword ptr [ecx + 0x24]
  02d54e  fmul qword ptr [0x4938]
  02d554  fmul dword ptr [ecx + 0x10]
  02d557  fstp dword ptr [0x296a0]
  02d55d  fld dword ptr [ecx + 0x14]
  02d560  fsub dword ptr [0x2969c]
  02d566  fstp dword ptr [0x296a8]
  02d56c  fld dword ptr [ecx + 0x18]
  02d56f  fsub dword ptr [0x296a0]
  02d575  fstp dword ptr [0x296ac]
  02d57b  fld dword ptr [ecx + 0x14]
  02d57e  fadd dword ptr [0x2969c]
  02d584  fstp dword ptr [0x296b0]
  02d58a  fld dword ptr [ecx + 0x18]
  02d58d  fadd dword ptr [0x296a0]
  02d593  fstp dword ptr [0x296b4]
  02d599  call 0x296d8
  02d59e  jmp 0x2d7c4
  02d5a3  mov esi, dword ptr [ecx + 0xc]
  02d5a6  mov edi, dword ptr [ecx + 0x10]
  02d5a9  mov ebp, dword ptr [ecx + 0x14]
  02d5ac  fld dword ptr [esi + 0x20]
  02d5af  fadd dword ptr [edi + 0x20]
  02d5b2  fadd dword ptr [ebp + 0x20]
  02d5b5  fmul dword ptr [0x48e0]
  02d5bb  fchs 
  02d5bd  fistp dword ptr [0x48d0]
  02d5c3  mov eax, dword ptr [0x48d0]
  02d5c8  sar eax, 7
  02d5cb  cmp eax, 0
  02d5ce  jg 0x2d5d2
  02d5d0  xor eax, eax
L2d5d2:
  02d5d2  cmp eax, 4
  02d5d5  jl 0x2d5dc
  02d5d7  mov eax, 4
L2d5dc:
  02d5dc  neg eax
  02d5de  add eax, 4
  02d5e1  cmp dword ptr [0x48d8], -1
  02d5e8  je 0x2d5ef
  02d5ea  mov eax, dword ptr [0x48d8]
L2d5ef:
  02d5ef  mov edx, eax
  02d5f1  shl edx, 0x10
  02d5f4  mov eax, dword ptr [eax*4 + 0x48e4]
  02d5fb  mov dword ptr [0x48f8], eax
  02d600  fild dword ptr [ecx + 0x2c]
  02d603  fld dword ptr [esi + 0x1c]
  02d606  fmul qword ptr [0x4940]
  02d60c  faddp st(1)
  02d60e  fistp dword ptr [0x4690]
  02d614  mov eax, dword ptr [0x4690]
  02d619  shl eax, 2
  02d61c  cmp eax, 0
  02d61f  jg 0x2d623
  02d621  xor eax, eax
L2d623:
  02d623  cmp eax, 0xff
  02d628  jl 0x2d62f
  02d62a  mov eax, 0xff
L2d62f:
  02d62f  mov byte ptr [0x1fa31], al
  02d634  mov eax, dword ptr [ecx + 0x28]
  02d637  shl eax, 0x10
  02d63a  mov ebx, eax
  02d63c  add eax, dword ptr [0x4670]
  02d642  add eax, edx
  02d644  mov dword ptr [0x1f924], eax
  02d649  add ebx, dword ptr [0x48b4]
  02d64f  mov dword ptr [0x1f928], ebx
  02d655  mov eax, dword ptr [ecx + 4]
  02d658  cmp eax, 0x1fa32
  02d65d  je 0x2d68f
  02d65f  cmp eax, 0x1fc7b
  02d664  je 0x2d68f
  02d666  fld dword ptr [esi + 0x38]
  02d669  fadd dword ptr [edi + 0x38]
  02d66c  fadd dword ptr [ebp + 0x38]
  02d66f  fstp dword ptr [0x48d0]
  02d675  mov ebx, dword ptr [0x490c]
  02d67b  cmp dword ptr [0x48d0], ebx
  02d681  jne 0x2d68f
  02d683  mov byte ptr [0x1fa31], 0
  02d68a  mov eax, 0x1fa32
L2d68f:
  02d68f  mov dword ptr [0x1f920], eax
  02d694  mov eax, dword ptr [esi]
  02d696  add eax, dword ptr [edi]
  02d698  add eax, dword ptr [ebp]
  02d69b  jne 0x2d6a8
  02d69d  call dword ptr [0x1f920]
  02d6a3  jmp 0x2d7c4
L2d6a8:
  02d6a8  push dword ptr [0x15858]
  02d6ae  mov dword ptr [0x14cb0], esi
  02d6b4  mov dword ptr [0x14cb4], edi
  02d6ba  mov dword ptr [0x14cb8], ebp
  02d6c0  mov dword ptr [0x14cbc], esi
  02d6c6  mov esi, 0x14cb0
  02d6cb  mov edi, 0x14d00
  02d6d0  mov dword ptr [0x14d50], 0
  02d6da  call 0x14d54
  02d6df  call 0x14d54
  02d6e4  call 0x14d54
  02d6e9  cmp dword ptr [0x14d50], 3
  02d6f0  jl 0x2d7be
  02d6f6  mov eax, dword ptr [0x14d00]
  02d6fb  mov dword ptr [edi], eax
  02d6fd  mov esi, 0x14d00
  02d702  mov edi, 0x14cb0
  02d707  mov ebp, dword ptr [0x14d50]
  02d70d  mov dword ptr [0x14d50], 0
L2d717:
  02d717  call 0x14e3a
  02d71c  dec ebp
  02d71d  jne 0x2d717
  02d71f  cmp dword ptr [0x14d50], 3
  02d726  jl 0x2d7be
  02d72c  mov eax, dword ptr [0x14cb0]
  02d731  mov dword ptr [edi], eax
  02d733  mov esi, 0x14cb0
  02d738  mov edi, 0x14d00
  02d73d  mov ebp, dword ptr [0x14d50]
  02d743  mov dword ptr [0x14d50], 0
L2d74d:
  02d74d  call 0x14f28
  02d752  dec ebp
  02d753  jne 0x2d74d
  02d755  cmp dword ptr [0x14d50], 3
  02d75c  jl 0x2d7be
  02d75e  mov eax, dword ptr [0x14d00]
  02d763  mov dword ptr [edi], eax
  02d765  mov esi, 0x14d00
  02d76a  mov edi, 0x14cb0
  02d76f  mov ebp, dword ptr [0x14d50]
  02d775  mov dword ptr [0x14d50], 0
L2d77f:
  02d77f  call 0x14fed
  02d784  dec ebp
  02d785  jne 0x2d77f
  02d787  cmp dword ptr [0x14d50], 3
  02d78e  jl 0x2d7be
  02d790  sub dword ptr [0x14d50], 2
  02d797  xor eax, eax
L2d799:
  02d799  mov esi, dword ptr [0x14cb0]
  02d79f  mov edi, dword ptr [eax + 0x14cb4]
  02d7a5  mov ebp, dword ptr [eax + 0x14cb8]
  02d7ab  push eax
  02d7ac  call dword ptr [0x1f920]
  02d7b2  pop eax
  02d7b3  add eax, 4
  02d7b6  dec dword ptr [0x14d50]
  02d7bc  jne 0x2d799
L2d7be:
  02d7be  pop dword ptr [0x15858]
L2d7c4:
  02d7c4  pop esi
  02d7c5  add esi, 8
  02d7c8  dec dword ptr [0x1663c]
  02d7ce  jne 0x2d3d0
L2d7d4:
  02d7d4  pop word ptr [0x2ba7c]
  02d7db  fldcw word ptr [0x2ba7c]
  02d7e1  cmp byte ptr [0x41cb], 1
  02d7e8  jne 0x2d7fc
  02d7ea  fld qword ptr [0x4958]
  02d7f0  fadd qword ptr [0x4950]
  02d7f6  fstp qword ptr [0x4950]
L2d7fc:
  02d7fc  cmp byte ptr [0x41cc], 1
  02d803  jne 0x2d819
  02d805  fld qword ptr [0x4958]
  02d80b  fchs 
  02d80d  fadd qword ptr [0x4950]
  02d813  fstp qword ptr [0x4950]
L2d819:
  02d819  cmp word ptr [0x12bf], 4
  02d821  ja 0x2d873
  02d823  je 0x2d840
  02d825  cmp word ptr [0x12bf], 3
  02d82d  jl 0x2d873
  02d82f  movzx eax, word ptr [0x12ca]
  02d836  and eax, 0x3f
  02d839  cmp eax, 0x20
  02d83c  jl 0x2d873
  02d83e  jmp 0x2d84f
L2d840:
  02d840  movzx eax, word ptr [0x12ca]
  02d847  and eax, 0x3f
  02d84a  cmp eax, 0x20
  02d84d  jg 0x2d873
L2d84f:
  02d84f  mov esi, dword ptr [0x2b7dc]
  02d855  mov edi, dword ptr [0x466c]
  02d85b  add edi, 0x6040
  02d861  mov ecx, 0x3840
L2d866:
  02d866  mov al, byte ptr [esi]
  02d868  or al, al
  02d86a  je 0x2d86e
  02d86c  mov byte ptr [edi], al
L2d86e:
  02d86e  inc esi
  02d86f  inc edi
  02d870  dec ecx
  02d871  jne 0x2d866
L2d873:
  02d873  in al, 0x60
  02d875  cmp al, 1
  02d877  jne 0x2d885
  02d879  mov dword ptr [0x4aeb0], 1
  02d883  jmp 0x2d8a8
L2d885:
  02d885  cmp word ptr [0x12bf], 5
  02d88d  ja 0x2d8a8
  02d88f  jl 0x2c885
  02d895  movzx eax, word ptr [0x12ca]
  02d89c  and eax, 0x3f
  02d89f  cmp eax, 0x3c
  02d8a2  jl 0x2c885
L2d8a8:
  02d8a8  call 0x2a5ac
L2d8ad:
  02d8ad  ret 
  02d8ae  xchg ebx, ebx
  02d8b0  xchg esi, eax
  02d8b1  add byte ptr [eax], al
  02d8b3  add byte ptr [ecx], al
  02d8b5  add byte ptr [eax], al
  02d8b7  add byte ptr [eax], al
  02d8b9  add byte ptr [eax], al
  02d8bb  add byte ptr [eax], al
  02d8bd  add byte ptr [eax], al
  02d8bf  add byte ptr [eax], al
  02d8c1  add byte ptr [eax], al
  02d8c3  add byte ptr [edi - 0x78247825], al
  02d8c9  fild dword ptr [edi - 0x78247825]
  02d8cf  fistp dword ptr [eax + 0x7e35dd9b]
  02d8d6  mov edx, 0x3d800002
  02d8db  ficom dword ptr [esi + 0x74030004]
  02d8e1  or al, 0xb8
  02d8e3  add al, 0
