L305b8:
  0305b8  mov dword ptr [0x469c], 0
L305c2:
  0305c2  cmp dword ptr [0x469c], 1
  0305c9  jl 0x305c2
  0305cb  mov esi, dword ptr [0x466c]
  0305d1  mov edi, dword ptr [0x4668]
  0305d7  xor ebp, ebp
  0305d9  mov ecx, 0x1f40
  0305de  xchg ebx, ebx
L305e0:
  0305e0  mov eax, dword ptr [esi]
  0305e2  mov ebx, dword ptr [esi + 4]
  0305e5  mov dword ptr [esi], ebp
  0305e7  mov dword ptr [esi + 4], ebp
  0305ea  mov dword ptr [edi], eax
  0305ec  mov dword ptr [edi + 4], ebx
  0305ef  add esi, 8
  0305f2  add edi, 8
  0305f5  dec ecx
  0305f6  jne 0x305e0
  0305f8  mov ebx, 0x17898
  0305fd  mov edi, 0x2f3f0
  030602  call 0x1f2c0
  030607  fld qword ptr [0x17830]
  03060d  fstp qword ptr [0x4af0]
  030613  fld qword ptr [0x17838]
  030619  fstp qword ptr [0x4af8]
  03061f  fld qword ptr [0x17840]
  030625  fstp qword ptr [0x4b00]
  03062b  fld qword ptr [0x17848]
  030631  fstp qword ptr [0x4a20]
  030637  fld qword ptr [0x17850]
  03063d  fstp qword ptr [0x4a28]
  030643  fld qword ptr [0x17858]
  030649  fstp qword ptr [0x4a30]
  03064f  fld qword ptr [0x17860]
  030655  fstp qword ptr [0x49f0]
  03065b  fld qword ptr [0x17868]
  030661  fstp qword ptr [0x49f8]
  030667  fld qword ptr [0x17870]
  03066d  fstp qword ptr [0x4a00]
  030673  fld qword ptr [0x17878]
  030679  fstp qword ptr [0x4938]
  03067f  mov ebx, 0x178c8
  030684  mov edi, 0x2f3f0
  030689  call 0x1f2c0
  03068e  fld qword ptr [0x17860]
  030694  fstp qword ptr [0x49c0]
  03069a  fld qword ptr [0x17868]
  0306a0  fstp qword ptr [0x49c8]
  0306a6  fld qword ptr [0x17870]
  0306ac  fstp qword ptr [0x49d0]
  0306b2  fld qword ptr [0x4bb0]
  0306b8  fstp qword ptr [0x4a50]
  0306be  fld1 
  0306c0  fsub qword ptr [0x4a50]
  0306c6  fstp qword ptr [0x4a58]
  0306cc  mov ebp, dword ptr [0x7fe0]
  0306d2  mov esi, dword ptr [0x8018]
  0306d8  mov edi, dword ptr [0x7fa8]
  0306de  mov ecx, dword ptr [0x7fa0]
L306e4:
  0306e4  fld dword ptr [ebp + 8]
  0306e7  fmul qword ptr [0x4a50]
  0306ed  fld dword ptr [esi + 8]
  0306f0  fmul qword ptr [0x4a58]
  0306f6  faddp st(1)
  0306f8  fstp dword ptr [edi + 8]
  0306fb  fld dword ptr [ebp + 0xc]
  0306fe  fmul qword ptr [0x4a50]
  030704  fld dword ptr [esi + 0xc]
  030707  fmul qword ptr [0x4a58]
  03070d  faddp st(1)
  03070f  fstp dword ptr [edi + 0xc]
  030712  fld dword ptr [ebp + 0x10]
  030715  fmul qword ptr [0x4a50]
  03071b  fld dword ptr [esi + 0x10]
  03071e  fmul qword ptr [0x4a58]
  030724  faddp st(1)
  030726  fstp dword ptr [edi + 0x10]
  030729  add esi, 0x40
  03072c  add ebp, 0x40
  03072f  add edi, 0x40
  030732  dec ecx
  030733  jne 0x306e4
  030735  mov ebp, 0x7f98
  03073a  call 0x1725c
  03073f  fld qword ptr [0x4938]
  030745  fmul qword ptr [0x4960]
  03074b  fstp qword ptr [0x4a78]
  030751  call 0x15d91
  030756  call 0x150d4
  03075b  cmp byte ptr [0x41b7], 1
  030762  je 0x30ca5
  030768  fld qword ptr [0x49f0]
  03076e  fstp dword ptr [0x4c1c]
  030774  fld qword ptr [0x49f8]
  03077a  fstp dword ptr [0x4c20]
  030780  fld qword ptr [0x4a00]
  030786  fstp dword ptr [0x4c24]
  03078c  fld dword ptr [0x7f30]
  030792  fcos 
  030794  fld1 
  030796  faddp st(1)
  030798  fdiv qword ptr [0x4988]
  03079e  fstp qword ptr [0x7eb8]
  0307a4  fld dword ptr [0x7f30]
  0307aa  fsin 
  0307ac  fmul qword ptr [0x7f18]
  0307b2  fstp qword ptr [0x7ed0]
  0307b8  fld dword ptr [0x7f38]
  0307be  fcos 
  0307c0  fmul qword ptr [0x7f00]
  0307c6  fstp qword ptr [0x7ed8]
  0307cc  fld dword ptr [0x7f30]
  0307d2  fsin 
  0307d4  fmul qword ptr [0x7f28]
  0307da  fstp qword ptr [0x7ef0]
  0307e0  fld dword ptr [0x7f38]
  0307e6  fcos 
  0307e8  fmul qword ptr [0x7f10]
  0307ee  fstp qword ptr [0x7ef8]
  0307f4  fld dword ptr [0x7f30]
  0307fa  fsin 
  0307fc  fmul qword ptr [0x7f20]
  030802  fstp qword ptr [0x7ee0]
  030808  fld dword ptr [0x7f38]
  03080e  fcos 
  030810  fmul qword ptr [0x7f08]
  030816  fstp qword ptr [0x7ee8]
  03081c  mov esi, 0x4c84
  030821  mov edi, dword ptr [0x466c]
  030827  add edi, 0x10000
  03082d  mov edx, 0x1a
L30832:
  030832  mov ecx, 0x29
L30837:
  030837  fld dword ptr [esi]
  030839  fmul qword ptr [0x15be0]
  03083f  fld dword ptr [esi + 4]
  030842  fmul qword ptr [0x15be8]
  030848  fld dword ptr [esi + 8]
  03084b  fmul qword ptr [0x15bf0]
  030851  faddp st(1)
  030853  faddp st(1)
  030855  fadd dword ptr [0x4c1c]
  03085b  fstp dword ptr [0x4c28]
  030861  fld dword ptr [esi]
  030863  fmul qword ptr [0x15c00]
  030869  fld dword ptr [esi + 4]
  03086c  fmul qword ptr [0x15c08]
  030872  fld dword ptr [esi + 8]
  030875  fmul qword ptr [0x15c10]
  03087b  faddp st(1)
  03087d  faddp st(1)
  03087f  fadd dword ptr [0x4c20]
  030885  fstp dword ptr [0x4c2c]
  03088b  fld dword ptr [esi]
  03088d  fmul qword ptr [0x15c20]
  030893  fld dword ptr [esi + 4]
  030896  fmul qword ptr [0x15c28]
  03089c  fld dword ptr [esi + 8]
  03089f  fmul qword ptr [0x15c30]
  0308a5  faddp st(1)
  0308a7  faddp st(1)
  0308a9  fadd dword ptr [0x4c24]
  0308af  fstp dword ptr [0x4c30]
  0308b5  call dword ptr [0x4c00]
  0308bb  cmp dword ptr [0x2f3d8], 1
  0308c2  jne 0x3095e
  0308c8  mov eax, dword ptr [0x4c34]
  0308cd  mov ebx, dword ptr [0x4c38]
  0308d3  mov dword ptr [0x4c40], eax
  0308d8  mov dword ptr [0x4c44], ebx
  0308de  mov eax, dword ptr [0x4c3c]
  0308e3  mov dword ptr [0x4c48], eax
  0308e8  call dword ptr [0x2fcf0]
  0308ee  fld dword ptr [0x4c34]
  0308f4  fmul dword ptr [0x2f3dc]
  0308fa  fld1 
  0308fc  fsub dword ptr [0x2f3dc]
  030902  fmul dword ptr [0x4c40]
  030908  faddp st(1)
  03090a  fmul qword ptr [0x7ea0]
  030910  fistp dword ptr [edi]
  030912  fld dword ptr [0x4c38]
  030918  fmul dword ptr [0x2f3dc]
  03091e  fld1 
  030920  fsub dword ptr [0x2f3dc]
  030926  fmul dword ptr [0x4c44]
  03092c  faddp st(1)
  03092e  fmul qword ptr [0x7ea0]
  030934  fistp dword ptr [edi + 4]
  030937  fld dword ptr [0x4c3c]
  03093d  fmul dword ptr [0x2f3dc]
  030943  fld1 
  030945  fsub dword ptr [0x2f3dc]
  03094b  fmul dword ptr [0x4c48]
  030951  faddp st(1)
  030953  fmul qword ptr [0x7ea0]
  030959  fistp dword ptr [edi + 8]
  03095c  jmp 0x3098a
L3095e:
  03095e  fld dword ptr [0x4c34]
  030964  fmul qword ptr [0x7ea0]
  03096a  fistp dword ptr [edi]
  03096c  fld dword ptr [0x4c38]
  030972  fmul qword ptr [0x7ea0]
  030978  fistp dword ptr [edi + 4]
  03097b  fld dword ptr [0x4c3c]
  030981  fmul qword ptr [0x7ea0]
  030987  fistp dword ptr [edi + 8]
L3098a:
  03098a  add edi, 0xc
  03098d  add esi, 0xc
  030990  dec ecx
  030991  jne 0x30837
  030997  dec edx
  030998  jne 0x30832
  03099e  mov esi, dword ptr [0x466c]
  0309a4  add esi, 0x10000
  0309aa  mov edi, dword ptr [0x466c]
  0309b0  sub edi, 2
  0309b3  mov dword ptr [0x4680], 0x19
L309bd:
  0309bd  mov dword ptr [0x467c], 0x28
L309c7:
  0309c7  mov eax, dword ptr [esi + 8]
  0309ca  add eax, dword ptr [esi + 0x14]
  0309cd  add eax, dword ptr [esi + 0x1f4]
  0309d3  add eax, dword ptr [esi + 0x200]
  0309d9  je 0x30c7e
  0309df  push edi
  0309e0  mov edx, dword ptr [esi]
  0309e2  mov ebp, dword ptr [esi + 4]
  0309e5  mov edi, dword ptr [esi + 8]
  0309e8  mov eax, dword ptr [esi + 0x1ec]
  0309ee  mov ebx, dword ptr [esi + 0x1f0]
  0309f4  mov ecx, dword ptr [esi + 0x1f4]
  0309fa  sub eax, edx
  0309fc  sub ebx, ebp
  0309fe  sub ecx, edi
  030a00  mov dword ptr [0x2fcb0], edx
  030a06  mov dword ptr [0x2fcb4], ebp
  030a0c  mov dword ptr [0x2fcb8], edi
  030a12  sar eax, 3
  030a15  sar ebx, 3
  030a18  sar ecx, 3
  030a1b  mov dword ptr [0x2fccc], eax
  030a20  mov dword ptr [0x2fcd0], ebx
  030a26  mov dword ptr [0x2fcd4], ecx
  030a2c  mov edx, dword ptr [esi + 0xc]
  030a2f  mov ebp, dword ptr [esi + 0x10]
  030a32  mov edi, dword ptr [esi + 0x14]
  030a35  mov eax, dword ptr [esi + 0x1f8]
  030a3b  mov ebx, dword ptr [esi + 0x1fc]
  030a41  mov ecx, dword ptr [esi + 0x200]
  030a47  sub eax, edx
  030a49  sub ebx, ebp
  030a4b  sub ecx, edi
  030a4d  mov dword ptr [0x2fcbc], edx
  030a53  mov dword ptr [0x2fcc0], ebp
  030a59  mov dword ptr [0x2fcc4], edi
  030a5f  sar eax, 3
  030a62  sar ebx, 3
  030a65  sar ecx, 3
  030a68  pop edi
  030a69  mov dword ptr [0x2fcd8], eax
  030a6e  mov dword ptr [0x2fcdc], ebx
  030a74  mov dword ptr [0x2fce0], ecx
  030a7a  push esi
  030a7b  mov dword ptr [0x2fcc8], 8
  030a85  xchg ebx, ebx
  030a87  nop 
L30a88:
  030a88  mov ebp, dword ptr [0x2fcb0]
  030a8e  mov esi, dword ptr [0x2fcb4]
  030a94  mov edx, dword ptr [0x2fcb8]
  030a9a  mov eax, dword ptr [0x2fcbc]
  030a9f  mov ebx, dword ptr [0x2fcc0]
  030aa5  mov ecx, dword ptr [0x2fcc4]
  030aab  sub eax, ebp
  030aad  sub ebx, esi
  030aaf  sub ecx, edx
  030ab1  sar eax, 0xb
  030ab4  sar ebx, 0xb
  030ab7  sar ecx, 0xb
  030aba  mov dword ptr [0x2fce4], eax
  030abf  mov dword ptr [0x2fce8], ebx
  030ac5  mov dword ptr [0x2fcec], ecx
  030acb  sar ebp, 8
  030ace  sar esi, 8
  030ad1  sar edx, 8
  030ad4  mov ecx, ebp
  030ad6  mov eax, dword ptr [0x4670]
  030adb  mov ax, si
  030ade  add edi, 2
  030ae1  mov al, ch
  030ae3  add ecx, dword ptr [0x2fce4]
  030ae9  add esi, dword ptr [0x2fce8]
  030aef  mov al, byte ptr [eax]
  030af1  mov ah, dh
  030af3  add edx, dword ptr [0x2fcec]
  030af9  mov bl, byte ptr [eax + 0x10000]
  030aff  mov ax, si
  030b02  mov al, ch
  030b04  add ecx, dword ptr [0x2fce4]
  030b0a  add esi, dword ptr [0x2fce8]
  030b10  mov al, byte ptr [eax]
  030b12  mov ah, dh
  030b14  add edx, dword ptr [0x2fcec]
  030b1a  mov bh, byte ptr [eax + 0x10000]
  030b20  mov word ptr [edi], bx
  030b23  mov ax, si
  030b26  add edi, 2
  030b29  mov al, ch
  030b2b  add ecx, dword ptr [0x2fce4]
  030b31  add esi, dword ptr [0x2fce8]
  030b37  mov al, byte ptr [eax]
  030b39  mov ah, dh
  030b3b  add edx, dword ptr [0x2fcec]
  030b41  mov bl, byte ptr [eax + 0x10000]
  030b47  mov ax, si
  030b4a  mov al, ch
  030b4c  add ecx, dword ptr [0x2fce4]
  030b52  add esi, dword ptr [0x2fce8]
  030b58  mov al, byte ptr [eax]
  030b5a  mov ah, dh
  030b5c  add edx, dword ptr [0x2fcec]
  030b62  mov bh, byte ptr [eax + 0x10000]
  030b68  mov word ptr [edi], bx
  030b6b  mov ax, si
  030b6e  add edi, 2
  030b71  mov al, ch
  030b73  add ecx, dword ptr [0x2fce4]
  030b79  add esi, dword ptr [0x2fce8]
  030b7f  mov al, byte ptr [eax]
  030b81  mov ah, dh
  030b83  add edx, dword ptr [0x2fcec]
  030b89  mov bl, byte ptr [eax + 0x10000]
  030b8f  mov ax, si
  030b92  mov al, ch
  030b94  add ecx, dword ptr [0x2fce4]
  030b9a  add esi, dword ptr [0x2fce8]
  030ba0  mov al, byte ptr [eax]
  030ba2  mov ah, dh
  030ba4  add edx, dword ptr [0x2fcec]
  030baa  mov bh, byte ptr [eax + 0x10000]
  030bb0  mov word ptr [edi], bx
  030bb3  mov ax, si
  030bb6  add edi, 2
  030bb9  mov al, ch
  030bbb  add ecx, dword ptr [0x2fce4]
  030bc1  add esi, dword ptr [0x2fce8]
  030bc7  mov al, byte ptr [eax]
  030bc9  mov ah, dh
  030bcb  add edx, dword ptr [0x2fcec]
  030bd1  mov bl, byte ptr [eax + 0x10000]
  030bd7  mov ax, si
  030bda  mov al, ch
  030bdc  add ecx, dword ptr [0x2fce4]
  030be2  add esi, dword ptr [0x2fce8]
  030be8  mov al, byte ptr [eax]
  030bea  mov ah, dh
  030bec  add edx, dword ptr [0x2fcec]
  030bf2  mov bh, byte ptr [eax + 0x10000]
  030bf8  mov word ptr [edi], bx
  030bfb  mov eax, dword ptr [0x2fcb0]
  030c00  mov ebx, dword ptr [0x2fcb4]
  030c06  mov ecx, dword ptr [0x2fcb8]
  030c0c  mov edx, dword ptr [0x2fcbc]
  030c12  mov esi, dword ptr [0x2fcc0]
  030c18  mov ebp, dword ptr [0x2fcc4]
  030c1e  add eax, dword ptr [0x2fccc]
  030c24  add ebx, dword ptr [0x2fcd0]
  030c2a  add ecx, dword ptr [0x2fcd4]
  030c30  add edx, dword ptr [0x2fcd8]
  030c36  add esi, dword ptr [0x2fcdc]
  030c3c  add ebp, dword ptr [0x2fce0]
  030c42  mov dword ptr [0x2fcb0], eax
  030c47  mov dword ptr [0x2fcb4], ebx
  030c4d  mov dword ptr [0x2fcb8], ecx
  030c53  mov dword ptr [0x2fcbc], edx
  030c59  mov dword ptr [0x2fcc0], esi
  030c5f  mov dword ptr [0x2fcc4], ebp
  030c65  add edi, 0x138
  030c6b  dec dword ptr [0x2fcc8]
  030c71  jne 0x30a88
  030c77  pop esi
  030c78  add edi, 0xfffff600
L30c7e:
  030c7e  add edi, 8
  030c81  add esi, 0xc
  030c84  dec dword ptr [0x467c]
  030c8a  jne 0x309c7
  030c90  add edi, 0x8c0
  030c96  add esi, 0xc
  030c99  dec dword ptr [0x4680]
  030c9f  jne 0x309bd
L30ca5:
  030ca5  mov eax, dword ptr [0x1584c]
  030caa  mov dword ptr [0x15854], eax
  030caf  mov eax, dword ptr [0x15850]
  030cb4  mov dword ptr [0x15858], eax
  030cb9  mov dword ptr [0x1663c], 0
  030cc3  mov eax, dword ptr [0x16634]
  030cc8  mov dword ptr [0x16640], eax
  030ccd  mov ecx, dword ptr [0x17210]
  030cd3  mov ebp, 0x7f98
L30cd8:
  030cd8  push ecx
  030cd9  cmp dword ptr [ebp + 4], 0
  030cdd  jne 0x30e88
  030ce3  fld dword ptr [ebp + 0x34]
  030ce6  fstp dword ptr [0x17214]
  030cec  fild dword ptr [ebp + 0x18]
  030cef  fdiv qword ptr [0x4a68]
  030cf5  fstp qword ptr [0x4a38]
  030cfb  fild dword ptr [ebp + 0x1c]
  030cfe  fdiv qword ptr [0x4a68]
  030d04  fstp qword ptr [0x4a40]
  030d0a  fild dword ptr [ebp + 0x20]
  030d0d  fdiv qword ptr [0x4a68]
  030d13  fstp qword ptr [0x4a48]
  030d19  fld dword ptr [ebp + 0x24]
  030d1c  fstp qword ptr [0x49a8]
  030d22  fld dword ptr [ebp + 0x28]
  030d25  fstp qword ptr [0x49b0]
  030d2b  fld dword ptr [ebp + 0x2c]
  030d2e  fstp qword ptr [0x49b8]
  030d34  mov ebx, 0x15b60
  030d39  call 0x15f1b
  030d3e  mov eax, 0x15b60
  030d43  mov ebx, 0x15be0
  030d48  mov ecx, 0x15ae0
  030d4d  call 0x160b5
  030d52  cmp dword ptr [ebp], 0x4f627521
  030d59  je 0x30dd2
  030d5b  mov esi, dword ptr [ebp + 0x10]
  030d5e  mov ecx, dword ptr [ebp + 8]
L30d61:
  030d61  mov dword ptr [esi + 4], 0
  030d68  add esi, 0x40
  030d6b  dec ecx
  030d6c  jne 0x30d61
  030d6e  call 0x16244
  030d73  mov esi, ebp
  030d75  mov edi, 0x7f60
  030d7a  mov ecx, 0xe
  030d7f  rep movsd dword ptr es:[edi], dword ptr [esi]
  030d81  mov dword ptr [0x7f68], 0
  030d8b  mov dword ptr [0x7f6c], 0
  030d95  mov ebx, dword ptr [0x15854]
  030d9b  mov dword ptr [0x7f74], ebx
  030da1  mov ebx, dword ptr [0x15858]
  030da7  mov dword ptr [0x7f70], ebx
  030dad  call 0x15a18
  030db2  call 0x162fd
  030db7  call 0x17028
  030dbc  push ebp
  030dbd  mov ebp, 0x7f60
  030dc2  call 0x162fd
  030dc7  call 0x17028
  030dcc  pop ebp
  030dcd  jmp 0x30e88
L30dd2:
  030dd2  cmp byte ptr [0x41b6], 1
  030dd9  je 0x30e88
  030ddf  mov esi, dword ptr [ebp + 0x14]
  030de2  mov eax, 0x1fa33
  030de7  sub eax, dword ptr [esi + 4]
  030dea  mov dword ptr [0x4664], eax
  030def  mov eax, dword ptr [esi + 4]
  030df2  cmp eax, 0x1fc7b
  030df7  jne 0x30e03
  030df9  mov dword ptr [0x4664], 1
L30e03:
  030e03  call 0x16100
  030e08  call 0x16244
  030e0d  call 0x163a4
  030e12  mov esi, ebp
  030e14  mov edi, 0x7f60
  030e19  mov ecx, 0xe
  030e1e  rep movsd dword ptr es:[edi], dword ptr [esi]
  030e20  mov dword ptr [0x7f68], 0
  030e2a  mov dword ptr [0x7f6c], 0
  030e34  mov ebx, dword ptr [0x15854]
  030e3a  mov dword ptr [0x7f74], ebx
  030e40  mov ebx, dword ptr [0x15858]
  030e46  mov dword ptr [0x7f70], ebx
  030e4c  call 0x1592e
  030e51  call 0x162fd
  030e56  call 0x16ea7
  030e5b  cmp dword ptr [0x4664], 1
  030e62  je 0x30e69
  030e64  call 0x1653f
L30e69:
  030e69  push ebp
  030e6a  mov ebp, 0x7f60
  030e6f  call 0x162fd
  030e74  call 0x16ea7
  030e79  cmp dword ptr [0x4664], 1
  030e80  je 0x30e87
  030e82  call 0x1653f
L30e87:
  030e87  pop ebp
L30e88:
  030e88  pop ecx
  030e89  add ebp, 0x38
  030e8c  dec ecx
  030e8d  jne 0x30cd8
  030e93  mov dword ptr [0x467c], 0x28
  030e9d  fild dword ptr [0x467c]
  030ea3  fld dword ptr [0xefb8]
  030ea9  fmul qword ptr [0x4988]
  030eaf  fmul qword ptr [0x4938]
  030eb5  fdivp st(1)
  030eb7  fstp dword ptr [0x4658]
  030ebd  mov dword ptr [0x467c], 0xff
  030ec7  fild dword ptr [0x467c]
  030ecd  fld dword ptr [0xefe4]
  030ed3  fmul qword ptr [0x4988]
  030ed9  fmul qword ptr [0x4938]
  030edf  fdivp st(1)
  030ee1  fstp dword ptr [0x465c]
  030ee7  mov ecx, dword ptr [0x14798]
  030eed  cmp ecx, 0
  030ef0  je 0x31044
  030ef6  mov ebp, 0xef98
  030efb  mov edi, dword ptr [0x16640]
  030f01  mov ebx, 0x178e0
L30f06:
  030f06  fld dword ptr [ebp + 4]
  030f09  fmul qword ptr [0x15be0]
  030f0f  fld dword ptr [ebp + 4]
  030f12  fmul qword ptr [0x15be8]
  030f18  fld dword ptr [ebp + 4]
  030f1b  fmul qword ptr [0x15bf0]
  030f21  fld dword ptr [ebp + 8]
  030f24  fmul qword ptr [0x15c00]
  030f2a  fld dword ptr [ebp + 8]
  030f2d  fmul qword ptr [0x15c08]
  030f33  fld dword ptr [ebp + 8]
  030f36  fmul qword ptr [0x15c10]
  030f3c  fxch st(2)
  030f3e  faddp st(5)
  030f40  faddp st(3)
  030f42  faddp st(1)
  030f44  fld dword ptr [ebp + 0xc]
  030f47  fmul qword ptr [0x15c20]
  030f4d  fld dword ptr [ebp + 0xc]
  030f50  fmul qword ptr [0x15c28]
  030f56  fld dword ptr [ebp + 0xc]
  030f59  fmul qword ptr [0x15c30]
  030f5f  fxch st(2)
  030f61  faddp st(5)
  030f63  faddp st(3)
  030f65  faddp st(1)
  030f67  fxch st(2)
  030f69  fadd qword ptr [0x15c40]
  030f6f  fxch st(1)
  030f71  fadd qword ptr [0x15c48]
  030f77  fxch st(2)
  030f79  fadd qword ptr [0x15c50]
  030f7f  fst dword ptr [ebp + 0x1c]
  030f82  fstp dword ptr [0x4684]
  030f88  fstp dword ptr [0x467c]
  030f8e  fstp dword ptr [0x4680]
  030f94  test dword ptr [0x4684], 0x80000000
  030f9e  je 0x31034
  030fa4  fld1 
  030fa6  fld dword ptr [0x4684]
  030fac  fdivp st(1)
  030fae  fld dword ptr [0x467c]
  030fb4  fld dword ptr [0x4680]
  030fba  fmul qword ptr [0x4a78]
  030fc0  fmul st(2)
  030fc2  fxch st(1)
  030fc4  fmul qword ptr [0x4938]
  030fca  fmul st(2)
  030fcc  fxch st(1)
  030fce  fadd qword ptr [0x4930]
  030fd4  fstp dword ptr [ebp + 0x18]
  030fd7  fadd qword ptr [0x4928]
  030fdd  fstp dword ptr [ebp + 0x14]
  030fe0  fstp dword ptr [ebp + 0x10]
  030fe3  mov eax, dword ptr [0x4658]
  030fe8  cmp dword ptr [ebp], 0x310c3
  030fef  jne 0x30ff6
  030ff1  mov eax, dword ptr [0x465c]
L30ff6:
  030ff6  mov dword ptr [ebp + 0x28], eax
  030ff9  fld dword ptr [0x4684]
  030fff  fsub dword ptr [0x150d0]
  031005  fmul dword ptr [0x150c0]
  03100b  fmul qword ptr [0x4990]
  031011  fchs 
  031013  fistp dword ptr [0x4680]
  031019  mov eax, 0xffff
  03101e  sub eax, dword ptr [0x4680]
  031024  mov dword ptr [edi], eax
  031026  add edi, 4
  031029  mov dword ptr [edi], ebp
  03102b  add edi, 4
  03102e  inc dword ptr [0x1663c]
L31034:
  031034  add ebp, 0x2c
  031037  dec ecx
  031038  jne 0x30f06
  03103e  mov dword ptr [0x16640], edi
L31044:
  031044  wait 
  031045  fnstcw word ptr [0x2f8a0]
  03104b  push word ptr [0x2f8a0]
  031052  or word ptr [0x2f8a0], 0xc00
  03105b  fldcw word ptr [0x2f8a0]
  031061  cmp dword ptr [0x1663c], 0
  031068  je 0x3143f
  03106e  call 0x170f7
  031073  mov esi, dword ptr [0x16634]
  031079  add esi, 4
L3107c:
  03107c  mov ecx, dword ptr [esi]
  03107e  push esi
  03107f  jmp dword ptr [ecx]
  031081  mov esi, dword ptr [ecx + 8]
  031084  mov edi, dword ptr [ecx + 0xc]
  031087  fld dword ptr [esi + 0x14]
  03108a  fld dword ptr [esi + 0x18]
  03108d  fxch st(1)
  03108f  fstp dword ptr [0x2936c]
  031095  fstp dword ptr [0x29370]
  03109b  fld dword ptr [edi + 0x14]
  03109e  fld dword ptr [edi + 0x18]
  0310a1  fxch st(1)
  0310a3  fstp dword ptr [0x2937c]
  0310a9  fstp dword ptr [0x29380]
  0310af  mov esi, 0x2936c
  0310b4  mov edi, 0x2937c
  0310b9  call 0x293a4
  0310be  jmp 0x3142f
  0310c3  fld dword ptr [ecx + 0x28]
  0310c6  fmul dword ptr [ecx + 0x1c]
  0310c9  fmul dword ptr [0x29690]
  0310cf  fistp dword ptr [0x4688]
  0310d5  mov eax, dword ptr [0x4688]
  0310da  shr eax, 8
  0310dd  cmp eax, 0x3f
  0310e0  jl 0x310e7
  0310e2  mov eax, 0x3f
L310e7:
  0310e7  cmp dword ptr [0x48dc], -1
  0310ee  je 0x310f5
  0310f0  mov eax, dword ptr [0x48dc]
L310f5:
  0310f5  mov ebx, dword ptr [eax*4 + 0x4558]
  0310fc  mov dword ptr [0x296a4], ebx
  031102  fld dword ptr [ecx + 0x28]
  031105  fmul dword ptr [ecx + 0x1c]
  031108  fmul dword ptr [eax*4 + 0x4458]
  03110f  fst dword ptr [0x296c0]
  031115  fmul dword ptr [0x29690]
  03111b  fistp dword ptr [0x296c8]
  031121  fld dword ptr [ecx + 0x20]
  031124  fmul qword ptr [0x4938]
  03112a  fmul dword ptr [ecx + 0x10]
  03112d  fstp dword ptr [0x2969c]
  031133  fld dword ptr [ecx + 0x14]
  031136  fsub dword ptr [0x2969c]
  03113c  fstp dword ptr [0x296a8]
  031142  fld dword ptr [ecx + 0x18]
  031145  fsub dword ptr [0x2969c]
  03114b  fstp dword ptr [0x296ac]
  031151  fld dword ptr [ecx + 0x14]
  031154  fadd dword ptr [0x2969c]
  03115a  fstp dword ptr [0x296b0]
  031160  fld dword ptr [ecx + 0x18]
  031163  fadd dword ptr [0x2969c]
  031169  fstp dword ptr [0x296b4]
  03116f  call 0x298b7
  031174  jmp 0x3142f
  031179  fld qword ptr [0x49f0]
  03117f  fsub dword ptr [ecx + 4]
  031182  fld qword ptr [0x49f8]
  031188  fsub dword ptr [ecx + 8]
  03118b  fpatan 
  03118d  fldpi 
  03118f  fmul qword ptr [0x4988]
  031195  fdivp st(1)
  031197  fmul qword ptr [0x4a68]
  03119d  fistp dword ptr [0x4688]
  0311a3  mov eax, dword ptr [0x4688]
  0311a8  and eax, 0xffff
  0311ad  mov ebx, 0x690
  0311b2  cdq 
  0311b3  idiv ebx
  0311b5  mov esi, eax
  0311b7  and esi, 3
  0311ba  imul esi, esi, 0x28
  0311bd  shr eax, 2
  0311c0  imul eax, eax, 0x5300
  0311c6  add eax, esi
  0311c8  mov dword ptr [0x296a4], eax
  0311cd  fld dword ptr [ecx + 0x28]
  0311d0  fmul dword ptr [ecx + 0x1c]
  0311d3  fst dword ptr [0x296c0]
  0311d9  fmul dword ptr [0x29690]
  0311df  fistp dword ptr [0x296c8]
  0311e5  fld dword ptr [ecx + 0x20]
  0311e8  fmul qword ptr [0x4938]
  0311ee  fmul dword ptr [ecx + 0x10]
  0311f1  fstp dword ptr [0x2969c]
  0311f7  fld dword ptr [ecx + 0x24]
  0311fa  fmul qword ptr [0x4938]
  031200  fmul dword ptr [ecx + 0x10]
  031203  fstp dword ptr [0x296a0]
  031209  fld dword ptr [ecx + 0x14]
  03120c  fsub dword ptr [0x2969c]
  031212  fstp dword ptr [0x296a8]
  031218  fld dword ptr [ecx + 0x18]
  03121b  fsub dword ptr [0x296a0]
  031221  fstp dword ptr [0x296ac]
  031227  fld dword ptr [ecx + 0x14]
  03122a  fadd dword ptr [0x2969c]
  031230  fstp dword ptr [0x296b0]
  031236  fld dword ptr [ecx + 0x18]
  031239  fadd dword ptr [0x296a0]
  03123f  fstp dword ptr [0x296b4]
  031245  call 0x296d8
  03124a  jmp 0x3142f
  03124f  mov esi, dword ptr [ecx + 0xc]
  031252  mov edi, dword ptr [ecx + 0x10]
  031255  mov ebp, dword ptr [ecx + 0x14]
  031258  xor eax, eax
  03125a  mov edx, eax
  03125c  shl edx, 0x10
  03125f  mov eax, dword ptr [eax*4 + 0x48e4]
  031266  mov dword ptr [0x48f8], eax
  03126b  fild dword ptr [ecx + 0x2c]
  03126e  fld dword ptr [esi + 0x1c]
  031271  fmul qword ptr [0x4940]
  031277  faddp st(1)
  031279  fistp dword ptr [0x4690]
  03127f  mov eax, dword ptr [0x4690]
  031284  shl eax, 2
  031287  cmp eax, 0
  03128a  jg 0x3128e
  03128c  xor eax, eax
L3128e:
  03128e  cmp eax, 0xff
  031293  jl 0x3129a
  031295  mov eax, 0xff
L3129a:
  03129a  mov byte ptr [0x1fa31], al
  03129f  mov eax, dword ptr [ecx + 0x28]
  0312a2  shl eax, 0x10
  0312a5  mov ebx, eax
  0312a7  add eax, dword ptr [0x4670]
  0312ad  add eax, edx
  0312af  mov dword ptr [0x1f924], eax
  0312b4  add ebx, dword ptr [0x48b4]
  0312ba  mov dword ptr [0x1f928], ebx
  0312c0  mov eax, dword ptr [ecx + 4]
  0312c3  cmp eax, 0x1fa32
  0312c8  je 0x312fa
  0312ca  cmp eax, 0x1fc7b
  0312cf  je 0x312fa
  0312d1  fld dword ptr [esi + 0x38]
  0312d4  fadd dword ptr [edi + 0x38]
  0312d7  fadd dword ptr [ebp + 0x38]
  0312da  fstp dword ptr [0x48d0]
  0312e0  mov ebx, dword ptr [0x490c]
  0312e6  cmp dword ptr [0x48d0], ebx
  0312ec  jne 0x312fa
  0312ee  mov byte ptr [0x1fa31], 0
  0312f5  mov eax, 0x1fa32
L312fa:
  0312fa  mov dword ptr [0x1f920], eax
  0312ff  mov eax, dword ptr [esi]
  031301  add eax, dword ptr [edi]
  031303  add eax, dword ptr [ebp]
  031306  jne 0x31313
  031308  call dword ptr [0x1f920]
  03130e  jmp 0x3142f
L31313:
  031313  push dword ptr [0x15858]
  031319  mov dword ptr [0x14cb0], esi
  03131f  mov dword ptr [0x14cb4], edi
  031325  mov dword ptr [0x14cb8], ebp
  03132b  mov dword ptr [0x14cbc], esi
  031331  mov esi, 0x14cb0
  031336  mov edi, 0x14d00
  03133b  mov dword ptr [0x14d50], 0
  031345  call 0x14d54
  03134a  call 0x14d54
  03134f  call 0x14d54
  031354  cmp dword ptr [0x14d50], 3
  03135b  jl 0x31429
  031361  mov eax, dword ptr [0x14d00]
  031366  mov dword ptr [edi], eax
  031368  mov esi, 0x14d00
  03136d  mov edi, 0x14cb0
  031372  mov ebp, dword ptr [0x14d50]
  031378  mov dword ptr [0x14d50], 0
L31382:
  031382  call 0x14e3a
  031387  dec ebp
  031388  jne 0x31382
  03138a  cmp dword ptr [0x14d50], 3
  031391  jl 0x31429
  031397  mov eax, dword ptr [0x14cb0]
  03139c  mov dword ptr [edi], eax
  03139e  mov esi, 0x14cb0
  0313a3  mov edi, 0x14d00
  0313a8  mov ebp, dword ptr [0x14d50]
  0313ae  mov dword ptr [0x14d50], 0
L313b8:
  0313b8  call 0x14f28
  0313bd  dec ebp
  0313be  jne 0x313b8
  0313c0  cmp dword ptr [0x14d50], 3
  0313c7  jl 0x31429
  0313c9  mov eax, dword ptr [0x14d00]
  0313ce  mov dword ptr [edi], eax
  0313d0  mov esi, 0x14d00
  0313d5  mov edi, 0x14cb0
  0313da  mov ebp, dword ptr [0x14d50]
  0313e0  mov dword ptr [0x14d50], 0
L313ea:
  0313ea  call 0x14fed
  0313ef  dec ebp
  0313f0  jne 0x313ea
  0313f2  cmp dword ptr [0x14d50], 3
  0313f9  jl 0x31429
  0313fb  sub dword ptr [0x14d50], 2
  031402  xor eax, eax
L31404:
  031404  mov esi, dword ptr [0x14cb0]
  03140a  mov edi, dword ptr [eax + 0x14cb4]
  031410  mov ebp, dword ptr [eax + 0x14cb8]
  031416  push eax
  031417  call dword ptr [0x1f920]
  03141d  pop eax
  03141e  add eax, 4
  031421  dec dword ptr [0x14d50]
  031427  jne 0x31404
L31429:
  031429  pop dword ptr [0x15858]
L3142f:
  03142f  pop esi
  031430  add esi, 8
  031433  dec dword ptr [0x1663c]
  031439  jne 0x3107c
L3143f:
  03143f  pop word ptr [0x2f8a0]
  031446  fldcw word ptr [0x2f8a0]
  03144c  cmp word ptr [0x12bf], 7
  031454  ja 0x314c3
  031456  je 0x31473
  031458  cmp word ptr [0x12bf], 6
  031460  jl 0x314c3
  031462  movzx eax, word ptr [0x12ca]
  031469  and eax, 0x3f
  03146c  cmp eax, 0x20
  03146f  jl 0x314c3
  031471  jmp 0x31482
L31473:
  031473  movzx eax, word ptr [0x12ca]
  03147a  and eax, 0x3f
  03147d  cmp eax, 0x20
  031480  jg 0x314c3
L31482:
  031482  mov esi, dword ptr [0x2f0d4]
  031488  mov edi, dword ptr [0x466c]
  03148e  add esi, 0xd6
  031494  add edi, 0x716
  03149a  mov edx, 0xc3
L3149f:
  03149f  mov ecx, 0x6a
L314a4:
  0314a4  mov al, byte ptr [esi]
  0314a6  or al, al
  0314a8  je 0x314af
  0314aa  shl al, 2
  0314ad  mov byte ptr [edi], al
L314af:
  0314af  inc esi
  0314b0  inc edi
  0314b1  dec ecx
  0314b2  jne 0x314a4
  0314b4  add esi, 0xd6
  0314ba  add edi, 0xd6
  0314c0  dec edx
  0314c1  jne 0x3149f
L314c3:
  0314c3  cmp byte ptr [0x41cb], 1
  0314ca  jne 0x314de
  0314cc  fld qword ptr [0x4958]
  0314d2  fadd qword ptr [0x4950]
  0314d8  fstp qword ptr [0x4950]
L314de:
  0314de  cmp byte ptr [0x41cc], 1
  0314e5  jne 0x314fb
  0314e7  fld qword ptr [0x4958]
  0314ed  fchs 
  0314ef  fadd qword ptr [0x4950]
  0314f5  fstp qword ptr [0x4950]
L314fb:
  0314fb  in al, 0x60
  0314fd  cmp al, 1
  0314ff  jne 0x3150d
  031501  mov dword ptr [0x4aeb0], 1
  03150b  jmp 0x3151b
L3150d:
  03150d  cmp word ptr [0x12bf], 0xc
  031515  jl 0x305b8
