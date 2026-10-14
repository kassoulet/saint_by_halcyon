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
  049055  ret 
  049056  xchg ebx, ebx
  049058  xchg ebx, ebx
  04905a  xchg ebx, ebx
  04905c  xchg ebx, ebx
  04905e  xchg ebx, ebx
  049060  sub al, 1
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
