  036000  unpckhps xmm4, xmmword ptr [ecx]
  036003  adc ebx, dword ptr [eax]
  036005  sbb byte ptr [eax], bl
  036007  sbb ah, byte ptr [ebx]
  036009  adc ebx, dword ptr [ebx]
  03600b  and ebx, dword ptr [edx]
  03600d  sbb eax, 0x2b1d152a
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
  036211  db 0x0f
  036212  db 0x0f
  036213  movups xmm2, xmmword ptr [eax]
  036216  adc byte ptr [ecx], dl
  036218  adc dword ptr [ecx], edx
  03621a  adc dl, byte ptr [edx]
  03621c  adc dl, byte ptr [ebx]
  03621e  adc edx, dword ptr [ebx]
  036220  adc al, 0x14
  036222  adc al, 0x15
  036224  adc eax, 0x16161615
  036229  pop ss
  03622a  pop ss
  03622b  pop ss
  03622c  sbb byte ptr [eax], bl
  03622e  sbb byte ptr [ecx], bl
  036230  sbb dword ptr [ecx], ebx
  036232  sbb bl, byte ptr [edx]
  036234  sbb bl, byte ptr [ebx]
  036236  sbb ebx, dword ptr [ebx]
  036238  sbb al, 0x1c
  03623a  sbb al, 0x1d
  03623c  sbb eax, 0x1e1e1e1d
  036241  pop ds
  036242  pop ds
  036243  pop ds
  036244  and byte ptr [eax], ah
  036246  and byte ptr [ecx], ah
  036248  and dword ptr [ecx], esp
  03624a  and ah, byte ptr [edx]
  03624c  and ah, byte ptr [ebx]
  03624e  and esp, dword ptr [ebx]
  036250  and al, 0x24
  036252  and al, 0x25
  036254  and eax, 0x26262625
  036259  daa 
  03625a  daa 
  03625b  daa 
  03625c  sub byte ptr [eax], ch
  03625e  sub byte ptr [ecx], ch
  036260  sub dword ptr [ecx], ebp
  036262  sub ch, byte ptr [edx]
  036264  sub ch, byte ptr [ebx]
  036266  sub ebp, dword ptr [ebx]
  036268  sub al, 0x2c
  03626a  sub al, 0x2d
  03626c  sub eax, 0x2e2e2e2d
  036271  das 
  036272  das 
  036273  das 
  036274  xor byte ptr [eax], dh
  036276  xor byte ptr [ecx], dh
  036278  xor dword ptr [ecx], esi
  03627a  xor dh, byte ptr [edx]
  03627c  xor dh, byte ptr [ebx]
  03627e  xor esi, dword ptr [ebx]
  036280  xor al, 0x34
  036282  xor al, 0x35
  036284  xor eax, 0x36363635
  036289  aaa 
  03628a  aaa 
  03628b  aaa 
  03628c  cmp byte ptr [eax], bh
  03628e  cmp byte ptr [ecx], bh
  036290  cmp dword ptr [ecx], edi
  036292  cmp bh, byte ptr [edx]
  036294  cmp bh, byte ptr [ebx]
  036296  cmp edi, dword ptr [ebx]
  036298  cmp al, 0x3c
  03629a  cmp al, 0x3d
  03629c  cmp eax, 0x3e3e3e3d
  0362a1  aas 
  0362a2  aas 
  0362a3  aas 
  0362a4  inc eax
  0362a5  inc eax
  0362a6  inc eax
  0362a7  inc ecx
  0362a8  inc ecx
  0362a9  inc ecx
  0362aa  inc edx
  0362ab  inc edx
  0362ac  inc edx
  0362ad  inc ebx
  0362ae  inc ebx
  0362af  inc ebx
  0362b0  inc esp
  0362b1  inc esp
  0362b2  inc esp
  0362b3  inc ebp
  0362b4  inc ebp
  0362b5  inc ebp
  0362b6  inc esi
  0362b7  inc esi
  0362b8  inc esi
  0362b9  inc edi
  0362ba  inc edi
  0362bb  inc edi
  0362bc  dec eax
  0362bd  dec eax
  0362be  dec eax
  0362bf  dec ecx
  0362c0  dec ecx
  0362c1  dec ecx
  0362c2  dec edx
  0362c3  dec edx
  0362c4  dec edx
  0362c5  dec ebx
  0362c6  dec ebx
  0362c7  dec ebx
  0362c8  dec esp
  0362c9  dec esp
  0362ca  dec esp
  0362cb  dec ebp
  0362cc  dec ebp
  0362cd  dec ebp
  0362ce  dec esi
  0362cf  dec esi
  0362d0  dec esi
  0362d1  dec edi
  0362d2  dec edi
  0362d3  dec edi
  0362d4  push eax
  0362d5  push eax
  0362d6  push eax
  0362d7  push ecx
  0362d8  push ecx
  0362d9  push ecx
  0362da  push edx
  0362db  push edx
  0362dc  push edx
  0362dd  push ebx
  0362de  push ebx
  0362df  push ebx
  0362e0  push esp
  0362e1  push esp
  0362e2  push esp
  0362e3  push ebp
  0362e4  push ebp
  0362e5  push ebp
  0362e6  push esi
  0362e7  push esi
  0362e8  push esi
  0362e9  push edi
  0362ea  push edi
  0362eb  push edi
  0362ec  pop eax
  0362ed  pop eax
  0362ee  pop eax
  0362ef  pop ecx
  0362f0  pop ecx
  0362f1  pop ecx
  0362f2  pop edx
  0362f3  pop edx
  0362f4  pop edx
  0362f5  pop ebx
  0362f6  pop ebx
  0362f7  pop ebx
  0362f8  pop esp
  0362f9  pop esp
  0362fa  pop esp
  0362fb  pop ebp
  0362fc  pop ebp
  0362fd  pop ebp
  0362fe  pop esi
  0362ff  pop esi
  036300  pop esi
  036301  pop edi
  036302  pop edi
  036303  pop edi
  036304  pushal 
  036305  pushal 
  036306  pushal 
  036307  popal 
  036308  popal 
  036309  popal 
  03630a  bound esp, qword ptr [edx + 0x62]
  03630d  arpl word ptr [ebx + 0x63], sp
  036310  push 0x6868
  03631f  imul ebp, dword ptr [ecx + 0x69], 0x6b6a6a6a
  036326  imul ebp, dword ptr [ebx + 0x6c], 0x6c
  03632a  insb byte ptr es:[edi], dx
  03632b  insd dword ptr es:[edi], dx
  03632c  insd dword ptr es:[edi], dx
  03632d  insd dword ptr es:[edi], dx
  03632e  outsb dx, byte ptr [esi]
  03632f  outsb dx, byte ptr [esi]
  036330  outsb dx, byte ptr [esi]
  036331  outsd dx, dword ptr [esi]
  036332  outsd dx, dword ptr [esi]
  036333  outsd dx, dword ptr [esi]
  036334  jo 0x363a6
  036336  jo 0x363a9
  036338  jno 0x363ab
  03633a  jb 0x363ae
  03633c  jb 0x363b1
  03633e  jae 0x363b3
  036340  je 0x363b6
  036342  je 0x363b9
  036344  jne 0x363bb
  036346  jbe 0x363be
  036348  jbe 0x363c1
  03634a  ja 0x363c3
  03634c  js 0x363c6
  03634e  js 0x363c9
  036350  jns 0x363cb
  036352  jp 0x363ce
  036354  jp 0x363d1
  036356  jnp 0x363d3
  036358  jl 0x363d6
  03635a  jl 0x363d9
  03635c  jge 0x363db
  03635e  jle 0x363de
  036360  jle 0x363e1
  036362  jg 0x363e3
  036364  add byte ptr [eax - 0x7e7e7e80], 0x82
  03636b  add byte ptr [edx - 0x7b7c7c7d], 0x84
  036372  test byte ptr [ebp - 0x79797a7b], al
  036378  xchg byte ptr [edi - 0x77777879], al
  03637e  mov byte ptr [ecx - 0x75757677], cl
  036384  mov cl, byte ptr [ebx - 0x73737475]
  03638a  mov word ptr [ebp - 0x71717273], cs
  036390  mov cs, word ptr [edi - 0x6f6f7071]
  036396  nop 
  036397  xchg ecx, eax
  036398  xchg ecx, eax
  036399  xchg ecx, eax
  03639a  xchg edx, eax
  03639b  xchg edx, eax
  03639c  xchg edx, eax
  03639d  xchg ebx, eax
  03639e  xchg ebx, eax
  03639f  xchg ebx, eax
  0363a0  xchg esp, eax
  0363a1  xchg esp, eax
  0363a2  xchg esp, eax
  0363a3  xchg ebp, eax
  0363a4  xchg ebp, eax
  0363a5  xchg ebp, eax
L363a6:
  0363a6  xchg esi, eax
  0363a7  xchg esi, eax
  0363a8  xchg esi, eax
L363a9:
  0363a9  xchg edi, eax
  0363aa  xchg edi, eax
L363ab:
  0363ab  xchg edi, eax
  0363ac  cwde 
  0363ad  cwde 
L363ae:
  0363ae  cwde 
  0363af  cdq 
  0363b0  cdq 
L363b1:
  0363b1  cdq 
  0363b2  lcall 0x9c9b, 0x9b9b9a9a
L363b9:
  0363b9  pushfd 
  0363ba  pushfd 
L363bb:
  0363bb  popfd 
  0363bc  popfd 
  0363bd  popfd 
L363be:
  0363be  sahf 
  0363bf  sahf 
  0363c0  sahf 
L363c1:
  0363c1  lahf 
  0363c2  lahf 
L363c3:
  0363c3  lahf 
  0363c4  mov al, byte ptr [0xa1a1a0a0]
L363c9:
  0363c9  mov eax, dword ptr [0xa3a2a2a2]
L363ce:
  0363ce  mov dword ptr [0xa4a4a4a3], eax
L363d3:
  0363d3  movsd dword ptr es:[edi], dword ptr [esi]
  0363d4  movsd dword ptr es:[edi], dword ptr [esi]
  0363d5  movsd dword ptr es:[edi], dword ptr [esi]
L363d6:
  0363d6  cmpsb byte ptr [esi], byte ptr es:[edi]
  0363d7  cmpsb byte ptr [esi], byte ptr es:[edi]
  0363d8  cmpsb byte ptr [esi], byte ptr es:[edi]
L363d9:
  0363d9  cmpsd dword ptr [esi], dword ptr es:[edi]
  0363da  cmpsd dword ptr [esi], dword ptr es:[edi]
L363db:
  0363db  cmpsd dword ptr [esi], dword ptr es:[edi]
  0363dc  test al, 0xa8
L363de:
  0363de  test al, 0xa9
  0363e0  test eax, 0xaaaaaaa9
  0363e5  stosd dword ptr es:[edi], eax
  0363e6  stosd dword ptr es:[edi], eax
  0363e7  stosd dword ptr es:[edi], eax
  0363e8  lodsb al, byte ptr [esi]
  0363e9  lodsb al, byte ptr [esi]
  0363ea  lodsb al, byte ptr [esi]
  0363eb  lodsd eax, dword ptr [esi]
  0363ec  lodsd eax, dword ptr [esi]
  0363ed  lodsd eax, dword ptr [esi]
  0363ee  scasb al, byte ptr es:[edi]
  0363ef  scasb al, byte ptr es:[edi]
  0363f0  scasb al, byte ptr es:[edi]
  0363f1  scasd eax, dword ptr es:[edi]
  0363f2  scasd eax, dword ptr es:[edi]
  0363f3  scasd eax, dword ptr es:[edi]
  0363f4  mov al, 0xb0
  0363f6  mov al, 0xb1
  0363f8  mov cl, 0xb1
  0363fa  mov dl, 0xb2
  0363fc  mov dl, 0xb3
  0363fe  mov bl, 0xb3
  036400  mov ah, 0xb4
  036402  mov ah, 0xb5
  036404  mov ch, 0xb5
  036406  mov dh, 0xb6
  036408  mov dh, 0xb7
  03640a  mov bh, 0xb7
  03640c  mov eax, 0xb9b9b8b8
  036411  mov ecx, 0xbbbababa
  036416  mov ebx, 0xbcbcbcbb
  03641b  mov ebp, 0xbebebdbd
  036420  mov esi, 0xc0bfbfbf
  036425  rol al, 0xc1
  036428  rol ecx, 0xc2
  03642b  ret 0xc3c2
  03642e  ret 
  03642f  ret 
  036430  db 0xc4
  036431  db 0xc4
  036432  db 0xc4
  036433  db 0xc5
  036434  vshufpd ymm0, ymm7, ymm6, 0xc6
  036439  mov edi, 0xc8c8c8c7
  03643f  leave 
  036440  leave 
  036441  leave 
  036442  retf 0xcaca
  036445  retf 
  036446  retf 
  036447  retf 
  036448  int3 
  036449  int3 
  03644a  int3 
  03644b  int 0xcd
  03644d  int 0xce
  03644f  into 
  036450  into 
  036451  iretd 
  036452  iretd 
  036453  iretd 
  036454  rcl al, 1
  036456  rcl cl, 1
  036458  rcl ecx, 1
  03645a  rcl dl, cl
  03645c  rcl bl, cl
  03645e  rcl ebx, cl
  036460  aam 0xd4
  036462  aam 0xd5
  036464  aad 0xd5
  036466  salc 
L36467:
  036467  salc 
  036468  salc 
  036469  xlatb 
L3646a:
  03646a  xlatb 
  03646b  xlatb 
  03646c  fcomp st(0)
  03646e  fcomp st(1)
  036470  fstpnce st(1), st(0)
L36472:
  036472  fcmovu st(0), st(2)
  036474  fcmovu st(0), st(3)
  036476  fcmovnu st(0), st(3)
  036478  db 0xdc
  036479  db 0xdc
  03647a  db 0xdc
  03647b  fstp st(5)
  03647d  fstp st(6)
  03647f  db 0xde
  036480  db 0xde
  036481  db 0xdf
  036482  db 0xdf
  036483  fnstsw ax
  036485  loopne 0x36467
  036487  loope 0x3646a
  036489  loope 0x3646d
  03648b  loop 0x3646f
  03648d  jecxz 0x36472
  03648f  jecxz 0x36475
  036491  in al, 0xe4
  036493  in eax, 0xe5
  036495  in eax, 0xe6
  036497  out 0xe6, al
  036499  out 0xe7, eax
  03649b  out 0xe8, eax
  03649d  call 0xe9ed4e8a
  0364a2  ljmp 0xeceb:0xebebeaea
  0364a9  in al, dx
  0364aa  in al, dx
  0364ab  in eax, dx
  0364ac  in eax, dx
  0364ad  in eax, dx
  0364ae  out dx, al
  0364af  out dx, al
  0364b0  out dx, al
  0364b1  out dx, eax
  0364b2  out dx, eax
  0364b3  out dx, eax
  0364b4  db 0xf0
  0364b5  db 0xf0
  0364b6  db 0xf0
  0364b7  int1 
  0364b8  int1 
  0364b9  int1 
  0364ba  hlt 
  0364c1  hlt 
  0364c2  hlt 
  0364c3  cmc 
  0364c4  cmc 
  0364c5  cmc 
  0364c6  div dh
  0364c8  div bh
  0364ca  div edi
  0364cc  clc 
  0364cd  clc 
  0364ce  clc 
  0364cf  stc 
  0364d0  stc 
  0364d1  stc 
  0364d2  cli 
  0364d3  cli 
  0364d4  cli 
  0364d5  sti 
  0364d6  sti 
  0364d7  sti 
  0364d8  cld 
  0364d9  cld 
  0364da  cld 
  0364db  std 
  0364dc  std 
  0364dd  std 
  0364de  db 0xfe
  0364df  db 0xfe
  0364e0  db 0xfe
  0364e1  db 0xff
  0364e2  db 0xff
  0364e3  inc dword ptr [eax]
  0364e5  add byte ptr [eax], al
  0364e7  add byte ptr [eax], al
  0364e9  add byte ptr [eax], al
  0364eb  add byte ptr [eax], al
  0364ed  add byte ptr [eax], al
  0364ef  add byte ptr [eax], al
  0364f1  add byte ptr [eax], al
  0364f3  add byte ptr [eax], al
  0364f5  add byte ptr [eax], al
  0364f7  add byte ptr [eax], al
  0364f9  add byte ptr [eax], al
  0364fb  add byte ptr [eax], al
  0364fd  add byte ptr [eax], al
  0364ff  add byte ptr [eax], al
  036501  add byte ptr [eax], al
  036503  add byte ptr [eax], al
  036505  add byte ptr [eax], al
  036507  add byte ptr [eax], al
  036509  add byte ptr [eax], al
  03650b  add byte ptr [eax], al
  03650d  add byte ptr [eax], al
  03650f  add byte ptr [eax], al
  036511  add byte ptr [eax], al
  036513  add byte ptr [eax], al
  036515  add byte ptr [eax], al
  036517  add byte ptr [eax], al
  036519  add byte ptr [eax], al
  03651b  add byte ptr [eax], al
  03651d  add byte ptr [eax], al
  03651f  add byte ptr [eax], al
  036521  add byte ptr [eax], al
  036523  add byte ptr [eax], al
  036525  add byte ptr [eax], al
  036527  add byte ptr [eax], al
  036529  add byte ptr [eax], al
  03652b  add byte ptr [eax], al
  03652d  add byte ptr [eax], al
  03652f  add byte ptr [eax], al
  036531  add byte ptr [eax], al
  036533  add byte ptr [eax], al
  036535  add byte ptr [eax], al
  036537  add byte ptr [eax], al
  036539  add byte ptr [eax], al
  03653b  add byte ptr [eax], al
  03653d  add byte ptr [eax], al
  03653f  add byte ptr [eax], al
  036541  add byte ptr [eax], al
  036543  add byte ptr [eax], al
  036545  add byte ptr [eax], al
  036547  add byte ptr [eax], al
  036549  add byte ptr [eax], al
  03654b  add byte ptr [eax], al
  03654d  add byte ptr [eax], al
  03654f  add byte ptr [eax], al
  036551  add byte ptr [eax], al
  036553  add byte ptr [eax], al
  036555  add byte ptr [eax], al
  036557  add byte ptr [eax], al
  036559  add byte ptr [eax], al
  03655b  add byte ptr [eax], al
  03655d  add byte ptr [eax], al
  03655f  add byte ptr [eax], al
  036561  add byte ptr [eax], al
  036563  add byte ptr [eax], al
  036565  add byte ptr [eax], al
  036567  add byte ptr [eax], al
  036569  add byte ptr [eax], al
  03656b  add byte ptr [eax], al
  03656d  add byte ptr [eax], al
  03656f  add byte ptr [eax], al
  036571  add byte ptr [eax], al
  036573  add byte ptr [eax], al
  036575  add byte ptr [eax], al
  036577  add byte ptr [eax], al
  036579  add byte ptr [eax], al
  03657b  add byte ptr [eax], al
  03657d  add byte ptr [eax], al
  03657f  add byte ptr [eax], al
  036581  add byte ptr [eax], al
  036583  add byte ptr [eax], al
  036585  add byte ptr [eax], al
  036587  add byte ptr [eax], al
  036589  add byte ptr [eax], al
  03658b  add byte ptr [eax], al
  03658d  add byte ptr [eax], al
  03658f  add byte ptr [eax], al
  036591  add byte ptr [eax], al
  036593  add byte ptr [eax], al
  036595  add byte ptr [eax], al
  036597  add byte ptr [eax], al
  036599  add byte ptr [eax], al
  03659b  add byte ptr [eax], al
  03659d  add byte ptr [eax], al
  03659f  add byte ptr [eax], al
  0365a1  add byte ptr [eax], al
  0365a3  add byte ptr [eax], al
  0365a5  add byte ptr [eax], al
  0365a7  add byte ptr [eax], al
  0365a9  add byte ptr [eax], al
  0365ab  add byte ptr [eax], al
  0365ad  add byte ptr [eax], al
  0365af  add byte ptr [eax], al
  0365b1  add byte ptr [eax], al
  0365b3  add byte ptr [eax], al
  0365b5  add byte ptr [eax], al
  0365b7  add byte ptr [eax], al
  0365b9  add byte ptr [eax], al
  0365bb  add byte ptr [eax], al
  0365bd  add byte ptr [eax], al
  0365bf  add byte ptr [eax], al
  0365c1  add byte ptr [eax], al
  0365c3  add byte ptr [eax], al
  0365c5  add byte ptr [eax], al
  0365c7  add byte ptr [eax], al
  0365c9  add byte ptr [eax], al
  0365cb  add byte ptr [eax], al
  0365cd  add byte ptr [eax], al
  0365cf  add byte ptr [eax], al
  0365d1  add byte ptr [eax], al
  0365d3  add byte ptr [eax], al
  0365d5  add byte ptr [eax], al
  0365d7  add byte ptr [eax], al
  0365d9  add byte ptr [eax], al
  0365db  add byte ptr [eax], al
  0365dd  add byte ptr [eax], al
  0365df  add byte ptr [eax], al
  0365e1  add byte ptr [eax], al
  0365e3  add byte ptr [eax], al
  0365e5  add byte ptr [eax], al
  0365e7  add byte ptr [eax], al
  0365e9  add byte ptr [eax], al
  0365eb  add byte ptr [eax], al
  0365ed  add byte ptr [eax], al
  0365ef  add byte ptr [eax], al
  0365f1  add byte ptr [eax], al
  0365f3  add byte ptr [eax], al
  0365f5  add byte ptr [eax], al
  0365f7  add byte ptr [eax], al
  0365f9  add byte ptr [eax], al
  0365fb  add byte ptr [eax], al
  0365fd  add byte ptr [eax], al
  0365ff  add byte ptr [eax], al
  036601  add byte ptr [eax], al
  036603  add byte ptr [eax], al
  036605  add byte ptr [eax], al
  036607  add byte ptr [eax], al
  036609  add byte ptr [eax], al
  03660b  add byte ptr [eax], al
  03660d  add byte ptr [eax], al
  03660f  add byte ptr [eax], al
  036611  add byte ptr [eax], al
  036613  add byte ptr [eax], al
  036615  add byte ptr [eax], al
  036617  add byte ptr [eax], al
  036619  add byte ptr [eax], al
  03661b  add byte ptr [eax], al
  03661d  add byte ptr [eax], al
  03661f  add byte ptr [eax], al
  036621  add byte ptr [eax], al
  036623  add byte ptr [eax], al
  036625  add byte ptr [eax], al
  036627  add byte ptr [eax], al
  036629  add byte ptr [eax], al
  03662b  add byte ptr [eax], al
  03662d  add byte ptr [eax], al
  03662f  add byte ptr [eax], al
  036631  add byte ptr [eax], al
  036633  add byte ptr [eax], al
  036635  add byte ptr [eax], al
  036637  add byte ptr [eax], al
  036639  add byte ptr [eax], al
  03663b  add byte ptr [eax], al
  03663d  add byte ptr [eax], al
  03663f  add byte ptr [eax], al
  036641  add byte ptr [eax], al
  036643  add byte ptr [eax], al
  036645  add byte ptr [eax], al
  036647  add byte ptr [eax], al
  036649  add byte ptr [eax], al
  03664b  add byte ptr [eax], al
  03664d  add byte ptr [eax], al
  03664f  add byte ptr [eax], al
  036651  add byte ptr [eax], al
  036653  add byte ptr [eax], al
  036655  add byte ptr [eax], al
  036657  add byte ptr [eax], al
  036659  add byte ptr [eax], al
  03665b  add byte ptr [eax], al
  03665d  add byte ptr [eax], al
  03665f  add byte ptr [eax], al
  036661  add byte ptr [eax], al
  036663  add byte ptr [eax], al
  036665  add byte ptr [eax], al
  036667  add byte ptr [eax], al
  036669  add byte ptr [eax], al
  03666b  add byte ptr [eax], al
  03666d  add byte ptr [eax], al
  03666f  add byte ptr [eax], al
  036671  add byte ptr [eax], al
  036673  add byte ptr [eax], al
  036675  add byte ptr [eax], al
  036677  add byte ptr [eax], al
  036679  add byte ptr [eax], al
  03667b  add byte ptr [eax], al
  03667d  add byte ptr [eax], al
  03667f  add byte ptr [eax], al
  036681  add byte ptr [eax], al
  036683  add byte ptr [eax], al
  036685  add byte ptr [eax], al
  036687  add byte ptr [eax], al
  036689  add byte ptr [eax], al
  03668b  add byte ptr [eax], al
  03668d  add byte ptr [eax], al
  03668f  add byte ptr [eax], al
  036691  add byte ptr [eax], al
  036693  add byte ptr [eax], al
  036695  add byte ptr [eax], al
  036697  add byte ptr [eax], al
  036699  add byte ptr [eax], al
  03669b  add byte ptr [eax], al
  03669d  add byte ptr [eax], al
  03669f  add byte ptr [eax], al
  0366a1  add byte ptr [eax], al
  0366a3  add byte ptr [eax], al
  0366a5  add byte ptr [eax], al
  0366a7  add byte ptr [eax], al
  0366a9  add byte ptr [eax], al
  0366ab  add byte ptr [eax], al
  0366ad  add byte ptr [eax], al
  0366af  add byte ptr [eax], al
  0366b1  add byte ptr [eax], al
  0366b3  add byte ptr [eax], al
  0366b5  add byte ptr [eax], al
  0366b7  add byte ptr [eax], al
  0366b9  add byte ptr [eax], al
  0366bb  add byte ptr [eax], al
  0366bd  add byte ptr [eax], al
  0366bf  add byte ptr [eax], al
  0366c1  add byte ptr [eax], al
  0366c3  add byte ptr [eax], al
  0366c5  add byte ptr [eax], al
  0366c7  add byte ptr [eax], al
  0366c9  add byte ptr [eax], al
  0366cb  add byte ptr [eax], al
  0366cd  add byte ptr [eax], al
  0366cf  add byte ptr [eax], al
  0366d1  add byte ptr [eax], al
  0366d3  add byte ptr [eax], al
  0366d5  add byte ptr [eax], al
  0366d7  add byte ptr [eax], al
  0366d9  add byte ptr [eax], al
  0366db  add byte ptr [eax], al
  0366dd  add byte ptr [eax], al
  0366df  add byte ptr [eax], al
  0366e1  add byte ptr [eax], al
  0366e3  add byte ptr [eax], al
  0366e5  add byte ptr [eax], al
  0366e7  add byte ptr [eax], al
  0366e9  add byte ptr [eax], al
  0366eb  add byte ptr [eax], al
  0366ed  add byte ptr [eax], al
  0366ef  add byte ptr [eax], al
  0366f1  add byte ptr [eax], al
  0366f3  add byte ptr [eax], al
  0366f5  add byte ptr [eax], al
  0366f7  add byte ptr [eax], al
  0366f9  add byte ptr [eax], al
  0366fb  add byte ptr [eax], al
  0366fd  add byte ptr [eax], al
  0366ff  add byte ptr [eax], al
  036701  add byte ptr [eax], al
  036703  add byte ptr [eax], al
  036705  add byte ptr [eax], al
  036707  add byte ptr [eax], al
  036709  add byte ptr [eax], al
  03670b  add byte ptr [eax], al
  03670d  add byte ptr [eax], al
  03670f  add byte ptr [eax], al
  036711  add byte ptr [eax], al
  036713  add byte ptr [eax], al
  036715  add byte ptr [eax], al
  036717  add byte ptr [eax], al
  036719  add byte ptr [eax], al
  03671b  add byte ptr [eax], al
  03671d  add byte ptr [eax], al
  03671f  add byte ptr [eax], al
  036721  add byte ptr [eax], al
  036723  add byte ptr [eax], al
  036725  add byte ptr [eax], al
  036727  add byte ptr [eax], al
  036729  add byte ptr [eax], al
  03672b  add byte ptr [eax], al
  03672d  add byte ptr [eax], al
  03672f  add byte ptr [eax], al
  036731  add byte ptr [eax], al
  036733  add byte ptr [eax], al
  036735  add byte ptr [eax], al
  036737  add byte ptr [eax], al
  036739  add byte ptr [eax], al
  03673b  add byte ptr [eax], al
  03673d  add byte ptr [eax], al
  03673f  add byte ptr [eax], al
  036741  add byte ptr [eax], al
  036743  add byte ptr [eax], al
  036745  add byte ptr [eax], al
  036747  add byte ptr [eax], al
  036749  add byte ptr [eax], al
  03674b  add byte ptr [eax], al
  03674d  add byte ptr [eax], al
  03674f  add byte ptr [eax], al
  036751  add byte ptr [eax], al
  036753  add byte ptr [eax], al
  036755  add byte ptr [eax], al
  036757  add byte ptr [eax], al
  036759  add byte ptr [eax], al
  03675b  add byte ptr [eax], al
  03675d  add byte ptr [eax], al
  03675f  add byte ptr [eax], al
  036761  add byte ptr [eax], al
  036763  add byte ptr [eax], al
  036765  add byte ptr [eax], al
  036767  add byte ptr [eax], al
  036769  add byte ptr [eax], al
  03676b  add byte ptr [eax], al
  03676d  add byte ptr [eax], al
  03676f  add byte ptr [eax], al
  036771  add byte ptr [eax], al
  036773  add byte ptr [eax], al
  036775  add byte ptr [eax], al
  036777  add byte ptr [eax], al
  036779  add byte ptr [eax], al
  03677b  add byte ptr [eax], al
  03677d  add byte ptr [eax], al
  03677f  add byte ptr [eax], al
  036781  add byte ptr [eax], al
  036783  add byte ptr [eax], al
  036785  add byte ptr [eax], al
  036787  add byte ptr [eax], al
  036789  add byte ptr [eax], al
  03678b  add byte ptr [eax], al
  03678d  add byte ptr [eax], al
  03678f  add byte ptr [eax], al
  036791  add byte ptr [eax], al
  036793  add byte ptr [eax], al
  036795  add byte ptr [eax], al
  036797  add byte ptr [eax], al
  036799  add byte ptr [eax], al
  03679b  add byte ptr [eax], al
  03679d  add byte ptr [eax], al
  03679f  add byte ptr [eax], al
  0367a1  add byte ptr [eax], al
  0367a3  add byte ptr [eax], al
  0367a5  add byte ptr [eax], al
  0367a7  add byte ptr [eax], al
  0367a9  add byte ptr [eax], al
  0367ab  add byte ptr [eax], al
  0367ad  add byte ptr [eax], al
  0367af  add byte ptr [eax], al
  0367b1  add byte ptr [eax], al
  0367b3  add byte ptr [eax], al
  0367b5  add byte ptr [eax], al
  0367b7  add byte ptr [eax], al
  0367b9  add byte ptr [eax], al
  0367bb  add byte ptr [eax], al
  0367bd  add byte ptr [eax], al
  0367bf  add byte ptr [eax], al
  0367c1  add byte ptr [eax], al
  0367c3  add byte ptr [eax], al
  0367c5  add byte ptr [eax], al
  0367c7  add byte ptr [eax], al
  0367c9  add byte ptr [eax], al
  0367cb  add byte ptr [eax], al
  0367cd  add byte ptr [eax], al
  0367cf  add byte ptr [eax], al
  0367d1  add byte ptr [eax], al
  0367d3  add byte ptr [eax], al
  0367d5  add byte ptr [eax], al
  0367d7  add byte ptr [eax], al
  0367d9  add byte ptr [eax], al
  0367db  add byte ptr [eax], al
  0367dd  add byte ptr [eax], al
  0367df  add byte ptr [eax], al
  0367e1  add byte ptr [eax], al
  0367e3  add byte ptr [edi], bh
  0367e5  add byte ptr [eax], al
  0367e7  aas 
  0367e8  aas 
  0367e9  aas 
  0367ea  cmp edi, dword ptr [ebx]
  0367ec  cmp esi, dword ptr [edi]
  0367ee  aaa 
  0367ef  aaa 
  0367f0  xor esi, dword ptr [ebx]
  0367f2  xor ebp, dword ptr [edi]
  0367f4  das 
  0367f5  das 
  0367f6  sub ebp, dword ptr [ebx]
  0367f8  sub esp, dword ptr [edi]
  0367fa  daa 
  0367fb  daa 
  0367fc  and esp, dword ptr [ebx]
  0367fe  and esp, dword ptr [eax]
  036800  and byte ptr [eax], ah
  036802  pop ds
  036803  pop ds
  036804  pop ds
  036805  sbb al, 0x1c
  036807  sbb al, 0x18
  036809  sbb byte ptr [eax], bl
  03680b  adc al, 0x14
  03680d  adc al, 0x10
  03680f  adc byte ptr [eax], dl
  036811  or al, 0xc
  036813  or al, 8
  036815  or byte ptr [eax], cl
  036817  add al, 4
  036819  add al, 0
  03681b  add byte ptr [eax], al
  03681d  add byte ptr [edi], bh
  03681f  add byte ptr [eax], al
  036821  aas 
  036822  add byte ptr [eax], al
  036824  aas 
  036825  add byte ptr [eax], al
  036827  aas 
  036828  add byte ptr [eax], al
  03682a  aas 
  03682b  add byte ptr [eax], al
  03682d  aas 
  03682e  add byte ptr [eax], al
  036830  aas 
  036831  add byte ptr [eax], al
  036833  aas 
  036834  add byte ptr [eax], al
  036836  aas 
  036837  add byte ptr [eax], al
  036839  aas 
  03683a  add byte ptr [eax], al
  03683c  aas 
  03683d  add byte ptr [eax], al
  03683f  aas 
  036840  add byte ptr [eax], al
  036842  aas 
  036843  add byte ptr [eax], al
  036845  aas 
  036846  add byte ptr [eax], al
  036848  aas 
  036849  add byte ptr [eax], al
  03684b  aas 
  03684c  add byte ptr [eax], al
  03684e  aas 
  03684f  add byte ptr [eax], al
  036851  aas 
  036852  add byte ptr [eax], al
  036854  aas 
  036855  add byte ptr [eax], al
  036857  aas 
  036858  add byte ptr [eax], al
  03685a  aas 
  03685b  add byte ptr [eax], al
  03685d  aas 
  03685e  add byte ptr [eax], al
  036860  aas 
  036861  add byte ptr [eax], al
  036863  aas 
  036864  add byte ptr [eax], al
  036866  aas 
  036867  add byte ptr [eax], al
  036869  aas 
  03686a  add byte ptr [eax], al
  03686c  aas 
  03686d  add byte ptr [eax], al
  03686f  aas 
  036870  add byte ptr [eax], al
  036872  aas 
  036873  add byte ptr [eax], al
  036875  aas 
  036876  add byte ptr [eax], al
  036878  aas 
  036879  add byte ptr [eax], al
  03687b  aas 
  03687c  add byte ptr [eax], al
  03687e  aas 
  03687f  add byte ptr [eax], al
  036881  aas 
  036882  add byte ptr [eax], al
  036884  aas 
  036885  add byte ptr [eax], al
  036887  aas 
  036888  add byte ptr [eax], al
  03688a  aas 
  03688b  add byte ptr [eax], al
  03688d  aas 
  03688e  add byte ptr [eax], al
  036890  aas 
  036891  add byte ptr [eax], al
  036893  aas 
  036894  add byte ptr [eax], al
  036896  aas 
  036897  add byte ptr [eax], al
  036899  aas 
  03689a  add byte ptr [eax], al
  03689c  aas 
  03689d  add byte ptr [eax], al
  03689f  aas 
  0368a0  add byte ptr [eax], al
  0368a2  aas 
  0368a3  add byte ptr [eax], al
  0368a5  aas 
  0368a6  add byte ptr [eax], al
  0368a8  aas 
  0368a9  add byte ptr [eax], al
  0368ab  aas 
  0368ac  add byte ptr [eax], al
  0368ae  aas 
  0368af  add byte ptr [eax], al
  0368b1  aas 
  0368b2  add byte ptr [eax], al
  0368b4  aas 
  0368b5  add byte ptr [eax], al
  0368b7  aas 
  0368b8  add byte ptr [eax], al
  0368ba  aas 
  0368bb  add byte ptr [eax], al
  0368bd  aas 
  0368be  add byte ptr [eax], al
  0368c0  aas 
  0368c1  add byte ptr [eax], al
  0368c3  aas 
  0368c4  add byte ptr [eax], al
  0368c6  aas 
  0368c7  add byte ptr [eax], al
  0368c9  aas 
  0368ca  add byte ptr [eax], al
  0368cc  aas 
  0368cd  add byte ptr [eax], al
  0368cf  aas 
  0368d0  add byte ptr [eax], al
  0368d2  aas 
  0368d3  add byte ptr [eax], al
  0368d5  aas 
  0368d6  add byte ptr [eax], al
  0368d8  aas 
  0368d9  add byte ptr [eax], al
  0368db  aas 
  0368dc  add byte ptr [eax], al
  0368de  aas 
  0368df  add byte ptr [eax], al
  0368e1  aas 
  0368e2  add byte ptr [eax], al
  0368e4  aas 
  0368e5  add byte ptr [eax], al
  0368e7  aas 
  0368e8  add byte ptr [eax], al
  0368ea  aas 
  0368eb  add byte ptr [eax], al
  0368ed  aas 
  0368ee  add byte ptr [eax], al
  0368f0  aas 
  0368f1  add byte ptr [eax], al
  0368f3  aas 
  0368f4  add byte ptr [eax], al
  0368f6  aas 
  0368f7  add byte ptr [eax], al
  0368f9  aas 
  0368fa  add byte ptr [eax], al
  0368fc  aas 
  0368fd  add byte ptr [eax], al
  0368ff  aas 
  036900  add byte ptr [eax], al
  036902  aas 
  036903  add byte ptr [eax], al
  036905  aas 
  036906  add byte ptr [eax], al
  036908  aas 
  036909  add byte ptr [eax], al
  03690b  aas 
  03690c  add byte ptr [eax], al
  03690e  aas 
  03690f  add byte ptr [eax], al
  036911  aas 
  036912  add byte ptr [eax], al
  036914  aas 
  036915  add byte ptr [eax], al
  036917  aas 
  036918  add byte ptr [eax], al
  03691a  aas 
  03691b  add byte ptr [eax], al
  03691d  aas 
  03691e  add byte ptr [eax], al
  036920  aas 
  036921  add byte ptr [eax], al
  036923  aas 
  036924  add byte ptr [eax], al
  036926  aas 
  036927  add byte ptr [eax], al
  036929  aas 
  03692a  add byte ptr [eax], al
  03692c  aas 
  03692d  add byte ptr [eax], al
  03692f  aas 
  036930  add byte ptr [eax], al
  036932  aas 
  036933  add byte ptr [eax], al
  036935  aas 
  036936  add byte ptr [eax], al
  036938  aas 
  036939  add byte ptr [eax], al
  03693b  aas 
  03693c  add byte ptr [eax], al
  03693e  aas 
  03693f  add byte ptr [eax], al
  036941  aas 
  036942  add byte ptr [eax], al
  036944  aas 
  036945  add byte ptr [eax], al
  036947  aas 
  036948  add byte ptr [eax], al
  03694a  aas 
  03694b  add byte ptr [eax], al
  03694d  aas 
  03694e  add byte ptr [eax], al
  036950  aas 
  036951  add byte ptr [eax], al
  036953  aas 
  036954  add byte ptr [eax], al
  036956  aas 
  036957  add byte ptr [eax], al
  036959  aas 
  03695a  add byte ptr [eax], al
  03695c  aas 
  03695d  add byte ptr [eax], al
  03695f  aas 
  036960  add byte ptr [eax], al
  036962  aas 
  036963  add byte ptr [eax], al
  036965  aas 
  036966  add byte ptr [eax], al
  036968  aas 
  036969  add byte ptr [eax], al
  03696b  aas 
  03696c  add byte ptr [eax], al
  03696e  aas 
  03696f  add byte ptr [eax], al
  036971  aas 
  036972  add byte ptr [eax], al
  036974  aas 
  036975  add byte ptr [eax], al
  036977  aas 
  036978  add byte ptr [eax], al
  03697a  aas 
  03697b  add byte ptr [eax], al
  03697d  aas 
  03697e  add byte ptr [eax], al
  036980  aas 
  036981  add byte ptr [eax], al
  036983  aas 
  036984  add byte ptr [eax], al
  036986  aas 
  036987  add byte ptr [eax], al
  036989  aas 
  03698a  add byte ptr [eax], al
  03698c  aas 
  03698d  add byte ptr [eax], al
  03698f  aas 
  036990  add byte ptr [eax], al
  036992  aas 
  036993  add byte ptr [eax], al
  036995  aas 
  036996  add byte ptr [eax], al
  036998  aas 
  036999  add byte ptr [eax], al
  03699b  aas 
  03699c  add byte ptr [eax], al
  03699e  aas 
  03699f  add byte ptr [eax], al
  0369a1  aas 
  0369a2  add byte ptr [eax], al
  0369a4  aas 
  0369a5  add byte ptr [eax], al
  0369a7  aas 
  0369a8  add byte ptr [eax], al
  0369aa  aas 
  0369ab  add byte ptr [eax], al
  0369ad  aas 
  0369ae  add byte ptr [eax], al
  0369b0  aas 
  0369b1  add byte ptr [eax], al
  0369b3  aas 
  0369b4  add byte ptr [eax], al
  0369b6  aas 
  0369b7  add byte ptr [eax], al
  0369b9  aas 
  0369ba  add byte ptr [eax], al
  0369bc  aas 
  0369bd  add byte ptr [eax], al
  0369bf  aas 
  0369c0  add byte ptr [eax], al
  0369c2  aas 
  0369c3  add byte ptr [eax], al
  0369c5  aas 
  0369c6  add byte ptr [eax], al
  0369c8  aas 
  0369c9  add byte ptr [eax], al
  0369cb  aas 
  0369cc  add byte ptr [eax], al
  0369ce  aas 
  0369cf  add byte ptr [eax], al
  0369d1  aas 
  0369d2  add byte ptr [eax], al
  0369d4  aas 
  0369d5  add byte ptr [eax], al
  0369d7  aas 
  0369d8  add byte ptr [eax], al
  0369da  aas 
  0369db  add byte ptr [eax], al
  0369dd  aas 
  0369de  add byte ptr [eax], al
  0369e0  aas 
  0369e1  add byte ptr [eax], al
  0369e3  aas 
  0369e4  add byte ptr [eax], al
  0369e6  aas 
  0369e7  add byte ptr [eax], al
  0369e9  aas 
  0369ea  add byte ptr [eax], al
  0369ec  aas 
  0369ed  add byte ptr [eax], al
  0369ef  aas 
  0369f0  add byte ptr [eax], al
  0369f2  aas 
  0369f3  add byte ptr [eax], al
  0369f5  aas 
  0369f6  add byte ptr [eax], al
  0369f8  aas 
  0369f9  add byte ptr [eax], al
  0369fb  aas 
  0369fc  add byte ptr [eax], al
  0369fe  aas 
  0369ff  add byte ptr [eax], al
  036a01  aas 
  036a02  add byte ptr [eax], al
  036a04  aas 
  036a05  add byte ptr [eax], al
  036a07  aas 
  036a08  add byte ptr [eax], al
  036a0a  aas 
  036a0b  add byte ptr [eax], al
  036a0d  aas 
  036a0e  add byte ptr [eax], al
  036a10  aas 
  036a11  add byte ptr [eax], al
  036a13  aas 
  036a14  add byte ptr [eax], al
  036a16  aas 
  036a17  add byte ptr [eax], al
  036a19  aas 
  036a1a  add byte ptr [eax], al
  036a1c  aas 
  036a1d  add byte ptr [eax], al
  036a1f  aas 
  036a20  add byte ptr [eax], al
  036a22  aas 
  036a23  add byte ptr [eax], al
  036a25  aas 
  036a26  add byte ptr [eax], al
  036a28  aas 
  036a29  add byte ptr [eax], al
  036a2b  aas 
  036a2c  add byte ptr [eax], al
  036a2e  aas 
  036a2f  add byte ptr [eax], al
  036a31  aas 
  036a32  add byte ptr [eax], al
  036a34  aas 
  036a35  add byte ptr [eax], al
  036a37  aas 
  036a38  add byte ptr [eax], al
  036a3a  aas 
  036a3b  add byte ptr [eax], al
  036a3d  aas 
  036a3e  add byte ptr [eax], al
  036a40  aas 
  036a41  add byte ptr [eax], al
  036a43  aas 
  036a44  add byte ptr [eax], al
  036a46  aas 
  036a47  add byte ptr [eax], al
  036a49  aas 
  036a4a  add byte ptr [eax], al
  036a4c  aas 
  036a4d  add byte ptr [eax], al
  036a4f  aas 
  036a50  add byte ptr [eax], al
  036a52  aas 
  036a53  add byte ptr [eax], al
  036a55  aas 
  036a56  add byte ptr [eax], al
  036a58  aas 
  036a59  add byte ptr [eax], al
  036a5b  aas 
  036a5c  add byte ptr [eax], al
  036a5e  aas 
  036a5f  add byte ptr [eax], al
  036a61  aas 
  036a62  add byte ptr [eax], al
  036a64  aas 
  036a65  add byte ptr [eax], al
  036a67  aas 
  036a68  add byte ptr [eax], al
  036a6a  aas 
  036a6b  add byte ptr [eax], al
  036a6d  aas 
  036a6e  add byte ptr [eax], al
  036a70  aas 
  036a71  add byte ptr [eax], al
  036a73  aas 
  036a74  add byte ptr [eax], al
  036a76  aas 
  036a77  add byte ptr [eax], al
  036a79  aas 
  036a7a  add byte ptr [eax], al
  036a7c  aas 
  036a7d  add byte ptr [eax], al
  036a7f  aas 
  036a80  add byte ptr [eax], al
  036a82  aas 
  036a83  add byte ptr [eax], al
  036a85  aas 
  036a86  add byte ptr [eax], al
  036a88  aas 
  036a89  add byte ptr [eax], al
  036a8b  aas 
  036a8c  add byte ptr [eax], al
  036a8e  aas 
  036a8f  add byte ptr [eax], al
  036a91  aas 
  036a92  add byte ptr [eax], al
  036a94  aas 
  036a95  add byte ptr [eax], al
  036a97  aas 
  036a98  add byte ptr [eax], al
  036a9a  aas 
  036a9b  add byte ptr [eax], al
  036a9d  aas 
  036a9e  add byte ptr [eax], al
  036aa0  aas 
  036aa1  add byte ptr [eax], al
  036aa3  aas 
  036aa4  add byte ptr [eax], al
  036aa6  aas 
  036aa7  add byte ptr [eax], al
  036aa9  aas 
  036aaa  add byte ptr [eax], al
  036aac  aas 
  036aad  add byte ptr [eax], al
  036aaf  aas 
  036ab0  add byte ptr [eax], al
  036ab2  aas 
  036ab3  add byte ptr [eax], al
  036ab5  aas 
  036ab6  add byte ptr [eax], al
  036ab8  aas 
  036ab9  add byte ptr [eax], al
  036abb  aas 
  036abc  add byte ptr [eax], al
  036abe  aas 
  036abf  add byte ptr [eax], al
  036ac1  aas 
  036ac2  add byte ptr [eax], al
  036ac4  aas 
  036ac5  add byte ptr [eax], al
  036ac7  aas 
  036ac8  add byte ptr [eax], al
  036aca  aas 
  036acb  add byte ptr [eax], al
  036acd  aas 
  036ace  add byte ptr [eax], al
  036ad0  aas 
  036ad1  add byte ptr [eax], al
  036ad3  aas 
  036ad4  add byte ptr [eax], al
  036ad6  aas 
  036ad7  add byte ptr [eax], al
  036ad9  aas 
  036ada  add byte ptr [eax], al
  036adc  aas 
  036add  add byte ptr [eax], al
  036adf  aas 
  036ae0  add byte ptr [eax], al
  036ae2  aas 
  036ae3  add byte ptr [eax], al
  036ae5  add byte ptr [ecx], bl
  036ae8  inc eax
  036ae9  inc esi
  036aea  or dword ptr [eax], eax
  036aec  add byte ptr [eax], al
  036aee  push ecx
  036aef  add byte ptr [eax], al
  036af1  add byte ptr [edx], dl
  036af4  add byte ptr [eax], al
  036af6  push edi
  036af7  add byte ptr [eax], al
  036af9  add byte ptr [eax], bl
  036afc  add byte ptr [eax], al
  036afe  add byte ptr [eax], al
  036b00  add byte ptr [eax], al
  036b02  add byte ptr [eax], al
  036b04  add byte ptr [eax], al
  036b06  add byte ptr [eax], al
  036b08  inc dword ptr [ebx]
  036b0a  add byte ptr [eax], al
  036b0c  add byte ptr [eax], al
  036b0e  add byte ptr [eax], al
  036b10  add byte ptr [eax], al
  036b12  add byte ptr [eax], al
  036b14  or dword ptr [edi], 0xf040000
  036b1a  add byte ptr [eax], al
  036b1c  mov dword ptr [esi], ecx
  036b1e  add byte ptr [eax], al
  036b20  adc byte ptr [esi], cl
  036b22  add byte ptr [eax], al
  036b24  cdq 
  036b25  or eax, 0xd240000
  036b2a  add byte ptr [eax], al
  036b2c  mov cl, 0xc
  036b2e  add byte ptr [eax], al
  036b30  inc eax
  036b31  or al, 0
  036b33  add cl, dl
  036b35  or eax, dword ptr [eax]
  036b37  add byte ptr [ebx + ecx], ah
  036b3b  add cl, bh
  036b3d  or al, byte ptr [eax]
  036b3f  add byte ptr [eax + 0x2900000a], dl
  036b45  or al, byte ptr [eax]
  036b47  add ah, al
  036b49  or dword ptr [eax], eax
  036b4b  add byte ptr [ecx + 9], ah
  036b4e  add byte ptr [eax], al
  036b50  add byte ptr [ecx], cl
  036b52  add byte ptr [eax], al
  036b54  mov eax, dword ptr [0x44000008]
  036b59  or byte ptr [eax], al
  036b5b  add cl, ch
  036b5d  pop es
  036b5e  add byte ptr [eax], al
  036b60  nop 
  036b61  pop es
  036b62  add byte ptr [eax], al
  036b64  cmp dword ptr [edi], eax
  036b66  add byte ptr [eax], al
  036b68  in al, 6
  036b6a  add byte ptr [eax], al
  036b6c  xchg ecx, eax
  036b6d  push es
  036b6e  add byte ptr [eax], al
  036b70  inc eax
  036b71  push es
  036b72  add byte ptr [eax], al
  036b74  int1 
  036b75  add eax, 0x5a40000
  036b7a  add byte ptr [eax], al
  036b7c  pop ecx
  036b7d  add eax, 0x5100000
  036b82  add byte ptr [eax], al
  036b84  leave 
  036b85  add al, 0
  036b87  add byte ptr [esp + eax + 0x4410000], al
  036b8e  add byte ptr [eax], al
  036b90  add byte ptr [eax + eax], al
  036b93  add cl, al
  036b95  add eax, dword ptr [eax]
  036b97  add byte ptr [ebx + eax + 0x3490000], al
  036b9e  add byte ptr [eax], al
  036ba0  adc byte ptr [ebx], al
  036ba2  add byte ptr [eax], al
  036ba4  fld dword ptr [edx]
  036ba6  add byte ptr [eax], al
  036ba8  movsb byte ptr es:[edi], byte ptr [esi]
  036ba9  add al, byte ptr [eax]
  036bab  add byte ptr [ecx + 2], dh
  036bae  add byte ptr [eax], al
  036bb0  inc eax
  036bb1  add al, byte ptr [eax]
  036bb3  add byte ptr [ecx], dl
  036bb5  add al, byte ptr [eax]
  036bb7  add ah, ah
  036bb9  add dword ptr [eax], eax
  036bbb  add byte ptr [ecx - 0x6fffffff], bh
  036bc1  add dword ptr [eax], eax
  036bc3  add byte ptr [ecx + 1], ch
  036bc6  add byte ptr [eax], al
  036bc8  inc esp
  036bc9  add dword ptr [eax], eax
  036bcb  add byte ptr [ecx], ah
  036bcd  add dword ptr [eax], eax
  036bcf  add byte ptr [eax], al
  036bd1  add dword ptr [eax], eax
  036bd3  add cl, ah
  036bd5  add byte ptr [eax], al
  036bd7  add ah, al
  036bd9  add byte ptr [eax], al
  036bdb  add byte ptr [ecx - 0x70000000], ch
  036be1  add byte ptr [eax], al
  036be3  add byte ptr [ecx], bh
  036be6  add byte ptr [eax], al
  036be8  add byte ptr fs:[eax], al
  036beb  add byte ptr [ecx], dl
  036bee  add byte ptr [eax], al
  036bf0  inc eax
  036bf1  add byte ptr [eax], al
  036bf3  add byte ptr [ecx], dh
  036bf5  add byte ptr [eax], al
  036bf7  add byte ptr [eax + eax], ah
  036bfa  add byte ptr [eax], al
  036bfc  sbb dword ptr [eax], eax
  036bfe  add byte ptr [eax], al
  036c00  adc byte ptr [eax], al
  036c02  add byte ptr [eax], al
  036c04  or dword ptr [eax], eax
  036c06  add byte ptr [eax], al
  036c08  add al, 0
  036c0a  add byte ptr [eax], al
  036c0c  add dword ptr [eax], eax
  036c0e  add byte ptr [eax], al
  036c10  add byte ptr [eax], al
  036c12  add byte ptr [eax], al
  036c14  add dword ptr [eax], eax
  036c16  add byte ptr [eax], al
  036c18  add al, 0
  036c1a  add byte ptr [eax], al
  036c1c  or dword ptr [eax], eax
  036c1e  add byte ptr [eax], al
  036c20  adc byte ptr [eax], al
  036c22  add byte ptr [eax], al
  036c24  sbb dword ptr [eax], eax
  036c26  add byte ptr [eax], al
  036c28  and al, 0
  036c2a  add byte ptr [eax], al
  036c2c  xor dword ptr [eax], eax
  036c2e  add byte ptr [eax], al
  036c30  inc eax
  036c31  add byte ptr [eax], al
  036c33  add byte ptr [ecx], dl
  036c36  add byte ptr [eax], al
  036c38  add byte ptr fs:[eax], al
  036c3b  add byte ptr [ecx], bh
  036c3e  add byte ptr [eax], al
  036c40  nop 
  036c41  add byte ptr [eax], al
  036c43  add byte ptr [ecx - 0x3c000000], ch
  036c49  add byte ptr [eax], al
  036c4b  add cl, ah
  036c4d  add byte ptr [eax], al
  036c4f  add byte ptr [eax], al
  036c51  add dword ptr [eax], eax
  036c53  add byte ptr [ecx], ah
  036c55  add dword ptr [eax], eax
  036c57  add byte ptr [ecx + eax], al
  036c5b  add byte ptr [ecx + 1], ch
  036c5e  add byte ptr [eax], al
  036c60  nop 
  036c61  add dword ptr [eax], eax
  036c63  add byte ptr [ecx - 0x1bffffff], bh
  036c69  add dword ptr [eax], eax
  036c6b  add byte ptr [ecx], dl
  036c6d  add al, byte ptr [eax]
  036c6f  add byte ptr [eax + 2], al
  036c72  add byte ptr [eax], al
  036c74  jno 0x36c78
  036c76  add byte ptr [eax], al
L36c78:
  036c78  movsb byte ptr es:[edi], byte ptr [esi]
  036c79  add al, byte ptr [eax]
  036c7b  add cl, bl
  036c7d  add al, byte ptr [eax]
  036c7f  add byte ptr [eax], dl
  036c81  add eax, dword ptr [eax]
  036c83  add byte ptr [ecx + 3], cl
  036c86  add byte ptr [eax], al
  036c88  test byte ptr [ebx], al
  036c8a  add byte ptr [eax], al
  036c8c  rol dword ptr [ebx], 0
  036c8f  add byte ptr [eax], al
  036c91  add al, 0
  036c93  add byte ptr [ecx + 4], al
  036c96  add byte ptr [eax], al
  036c98  test byte ptr [eax + eax], al
  036c9b  add cl, cl
  036c9d  add al, 0
  036c9f  add byte ptr [eax], dl
  036ca1  add eax, 0x5590000
  036ca6  add byte ptr [eax], al
  036ca8  movsb byte ptr es:[edi], byte ptr [esi]
  036ca9  add eax, 0x5f10000
  036cae  add byte ptr [eax], al
  036cb0  inc eax
  036cb1  push es
  036cb2  add byte ptr [eax], al
  036cb4  xchg ecx, eax
  036cb5  push es
  036cb6  add byte ptr [eax], al
  036cb8  in al, 6
  036cba  add byte ptr [eax], al
  036cbc  cmp dword ptr [edi], eax
  036cbe  add byte ptr [eax], al
  036cc0  nop 
  036cc1  pop es
  036cc2  add byte ptr [eax], al
  036cc4  jmp 0x44036cd0
  036cc9  or byte ptr [eax], al
  036ccb  add byte ptr [ecx + 8], ah
  036cd1  or dword ptr [eax], eax
  036cd3  add byte ptr [ecx + 9], ah
  036cd6  add byte ptr [eax], al
  036cd8  les ecx, ptr [ecx]
  036cda  add byte ptr [eax], al
  036cdc  sub dword ptr [edx], ecx
  036cde  add byte ptr [eax], al
  036ce0  nop 
  036ce1  or al, byte ptr [eax]
  036ce3  add cl, bh
  036ce5  or al, byte ptr [eax]
  036ce7  add byte ptr [ebx + ecx], ah
  036ceb  add cl, dl
  036ced  or eax, dword ptr [eax]
  036cef  add byte ptr [eax + 0xc], al
  036cf2  add byte ptr [eax], al
  036cf4  mov cl, 0xc
  036cf6  add byte ptr [eax], al
  036cf8  and al, 0xd
  036cfa  add byte ptr [eax], al
  036cfc  cdq 
  036cfd  or eax, 0xe100000
  036d02  add byte ptr [eax], al
  036d04  mov dword ptr [esi], ecx
  036d06  add byte ptr [eax], al
  036d08  add al, 0xf
  036d0a  add byte ptr [eax], al
  036d0c  or dword ptr [edi], 0x10000000
  036d12  add byte ptr [eax], al
  036d14  add byte ptr [eax], al
  036d16  push esp
  036d17  add byte ptr [eax], al
  036d19  add byte ptr [ebx], dl
  036d1c  xchg ebx, ebx
  036d1e  xchg ebx, ebx
  036d20  add byte ptr [eax], al
  036d22  add byte ptr [eax], al
  036d24  add byte ptr [eax], al
  036d26  add byte ptr [eax], al
  036d28  add byte ptr [eax], al
  036d2a  add byte ptr [eax], al
  036d2c  add byte ptr [eax], al
  036d2e  add byte ptr [eax], al
  036d30  add byte ptr [eax], al
  036d32  add byte ptr [eax], al
  036d34  add byte ptr [eax], al
  036d36  add byte ptr [eax], al
  036d38  add byte ptr [eax], al
  036d3a  add byte ptr [eax], al
  036d3c  add byte ptr [eax], al
  036d3e  add byte ptr [eax], al
  036d40  add byte ptr [eax], al
  036d42  add byte ptr [eax], al
  036d44  add byte ptr [eax], al
  036d46  add byte ptr [eax], al
  036d48  add byte ptr [eax], al
  036d4a  add byte ptr [eax], al
  036d4c  add byte ptr [eax], al
  036d4e  add byte ptr [eax], al
  036d50  add byte ptr [eax], al
  036d52  add byte ptr [eax], al
  036d54  add byte ptr [eax], al
  036d56  add byte ptr [eax], al
  036d58  add byte ptr [eax], al
  036d5a  add byte ptr [eax], al
  036d5c  add byte ptr [eax], al
  036d5e  add byte ptr [eax], al
  036d60  add byte ptr [eax], al
  036d62  add byte ptr [eax], al
  036d64  db 0xff
  036d65  aas 
  036d66  push ebx
  036d67  add byte ptr [eax], al
  036d69  add byte ptr [eax], al
  036d6b  add byte ptr [eax], al
  036d6d  add byte ptr [eax], al
  036d6f  add byte ptr [eax], al
  036d71  add byte ptr [eax], al
  036d73  add byte ptr [eax], al
  036d75  add byte ptr [eax], al
  036d77  add byte ptr [eax], al
  036d79  add byte ptr [eax], al
  036d7b  add byte ptr [eax], al
  036d7d  add byte ptr [eax], al
  036d7f  add byte ptr [eax], al
  036d81  add byte ptr [eax], al
  036d83  add byte ptr [eax], al
  036d85  add byte ptr [eax], al
  036d87  add byte ptr [eax], al
  036d89  add byte ptr [eax], al
  036d8b  add byte ptr [eax], al
  036d8d  add byte ptr [eax], al
  036d8f  add byte ptr [eax], al
  036d91  add byte ptr [eax], al
  036d93  add byte ptr [eax], al
  036d95  add byte ptr [eax], al
  036d97  add byte ptr [eax], al
  036d99  add byte ptr [eax + 0x3f], ah
  036d9f  add byte ptr [eax], al
  036da1  add byte ptr [eax - 0x45d173c1], al
  036da7  cmp eax, 0
  036dac  loopne 0x36dad
  036dae  out dx, eax
  036daf  inc eax
  036db0  add byte ptr [eax], al
  036db2  add byte ptr [eax], al
  036db4  add byte ptr [eax], al
  036db6  db 0xf0
  036db7  inc eax
  036db8  add byte ptr [eax], al
  036dba  add byte ptr [eax], al
  036dbc  add byte ptr [eax], al
  036dbe  loopne 0x36dff
  036dc0  add byte ptr [eax], al
  036dc2  add byte ptr [eax], al
  036dc4  add byte ptr [eax], al
  036dc6  add byte ptr [eax], al
  036dc9  add byte ptr [eax], al
  036dcb  add byte ptr [eax], al
  036dcd  add byte ptr [eax], cl
  036dcf  inc eax
  036dd0  add byte ptr [eax], al
  036dd2  add byte ptr [eax], al
  036dd4  add byte ptr [eax], al
  036dd6  sbb byte ptr [eax + 0x62], al
  036dd9  xor eax, 0xaaaaaaaa
  036dde  ljmp 0:0x3f
  036de5  add byte ptr [eax], al
  036de7  add byte ptr [eax], al
  036de9  add byte ptr [eax], al
  036deb  add byte ptr [eax], al
  036ded  add byte ptr [eax], al
  036def  add byte ptr [eax], al
  036df1  add byte ptr [eax], al
  036df3  add byte ptr [eax], al
  036df5  add byte ptr [eax], al
  036df7  add byte ptr [eax], al
  036df9  add byte ptr [eax], al
  036dfb  add byte ptr [eax], al
  036dfd  add byte ptr [eax], al
L36dff:
  036dff  add byte ptr [eax], al
  036e01  add byte ptr [eax], al
  036e03  add byte ptr [eax], al
  036e05  add byte ptr [eax], al
  036e07  add byte ptr [eax], al
  036e09  add byte ptr [eax], al
  036e0b  add byte ptr [eax], al
  036e0d  add byte ptr [eax], al
  036e0f  add byte ptr [eax], al
  036e11  add byte ptr [eax], al
  036e13  add byte ptr [eax], al
  036e15  add byte ptr [eax], al
  036e17  add byte ptr [eax], al
  036e19  add byte ptr [eax], al
  036e1b  add byte ptr [eax], al
  036e1d  add byte ptr [eax], al
  036e1f  add byte ptr [eax], al
  036e21  add byte ptr [eax], al
  036e23  add byte ptr [eax], al
  036e25  add byte ptr [eax], al
  036e27  add byte ptr [eax], al
  036e29  add byte ptr [eax], al
  036e2b  add byte ptr [eax], al
  036e2d  add byte ptr [eax], al
  036e2f  add byte ptr [eax], al
  036e31  add byte ptr [eax], al
  036e33  add byte ptr [eax], al
  036e35  add byte ptr [eax], al
  036e37  add byte ptr [eax], al
  036e39  add byte ptr [eax], al
  036e3b  add byte ptr [eax], al
  036e3d  add byte ptr [eax], al
  036e3f  add byte ptr [eax], al
  036e41  add byte ptr [eax], al
  036e43  add byte ptr [eax], al
  036e45  add byte ptr [eax], al
  036e47  add byte ptr [eax], al
  036e49  add byte ptr [eax], al
  036e4b  add byte ptr [eax], al
  036e4d  add byte ptr [eax], al
  036e4f  add byte ptr [eax], al
  036e51  add byte ptr [eax], al
  036e53  add byte ptr [eax], al
  036e55  add byte ptr [eax], al
  036e57  add byte ptr [eax], al
  036e59  add byte ptr [eax], al
  036e5b  add byte ptr [eax], al
  036e5d  add byte ptr [eax], al
  036e5f  add byte ptr [eax], al
  036e61  add byte ptr [eax], al
  036e63  add byte ptr [eax], al
  036e65  add byte ptr [eax], al
  036e67  add byte ptr [eax], al
  036e69  add byte ptr [eax], al
  036e6b  add byte ptr [eax], al
  036e6d  add byte ptr [eax], al
  036e6f  add byte ptr [eax], al
  036e71  add byte ptr [eax], al
  036e73  add byte ptr [eax], al
  036e75  add byte ptr [eax], al
  036e77  add byte ptr [eax], al
  036e79  add byte ptr [eax], al
  036e7b  add byte ptr [eax], al
  036e7d  add byte ptr [eax], al
  036e7f  add byte ptr [eax], al
  036e81  add byte ptr [eax], al
  036e83  add byte ptr [eax], al
  036e85  add byte ptr [eax], al
  036e87  add byte ptr [eax], al
  036e89  add byte ptr [eax], al
  036e8b  add byte ptr [eax], al
  036e8d  add byte ptr [eax], al
  036e8f  add byte ptr [eax], al
  036e91  add byte ptr [eax], al
  036e93  add byte ptr [eax], al
  036e95  add byte ptr [eax], al
  036e97  add byte ptr [eax], al
  036e99  add byte ptr [eax], al
  036e9b  add byte ptr [eax], al
  036e9d  add byte ptr [eax], al
  036e9f  add byte ptr [eax], al
  036ea1  add byte ptr [eax], al
  036ea3  add byte ptr [eax], al
  036ea5  add byte ptr [eax], al
  036ea7  add byte ptr [eax], al
  036ea9  add byte ptr [eax], al
  036eab  add byte ptr [eax], al
  036ead  add byte ptr [eax], al
  036eaf  add byte ptr [eax], al
  036eb1  add byte ptr [eax], al
  036eb3  add byte ptr [eax], al
  036eb5  add byte ptr [eax], al
  036eb7  add byte ptr [eax], al
  036eb9  add byte ptr [eax], al
  036ebb  add byte ptr [eax], al
  036ebd  add byte ptr [eax], al
  036ebf  add byte ptr [eax], al
  036ec1  add byte ptr [eax], al
  036ec3  add byte ptr [eax], al
  036ec5  add byte ptr [eax], al
  036ec7  add byte ptr [eax], al
  036ec9  add byte ptr [eax], al
  036ecb  add byte ptr [eax], al
  036ecd  add byte ptr [eax], al
  036ecf  add byte ptr [eax], al
  036ed1  add byte ptr [eax], al
  036ed3  add byte ptr [eax], al
  036ed5  add byte ptr [eax], al
  036ed7  add byte ptr [eax], al
  036ed9  add byte ptr [eax], al
  036edb  add byte ptr [eax], al
  036edd  add byte ptr [eax], al
  036edf  add byte ptr [eax], al
  036ee1  add byte ptr [eax], al
  036ee3  add byte ptr [eax], al
  036ee5  add byte ptr [eax], al
  036ee7  add byte ptr [eax], al
  036ee9  add byte ptr [eax], al
  036eeb  add byte ptr [eax], al
  036eed  add byte ptr [eax], al
  036eef  add byte ptr [eax], al
  036ef1  add byte ptr [eax], al
  036ef3  add byte ptr [eax], al
  036ef5  add byte ptr [eax], al
  036ef7  add byte ptr [eax], al
  036ef9  add byte ptr [eax], al
  036efb  add byte ptr [eax], al
  036efd  add byte ptr [eax], al
  036eff  add byte ptr [eax], al
  036f01  add byte ptr [eax], al
  036f03  add byte ptr [eax], al
  036f05  add byte ptr [eax], al
  036f07  add byte ptr [eax], al
  036f09  add byte ptr [eax], al
  036f0b  add byte ptr [eax], al
  036f0d  add byte ptr [eax], al
  036f0f  add byte ptr [eax], al
  036f11  add byte ptr [eax], al
  036f13  add byte ptr [eax], al
  036f15  add byte ptr [eax], al
  036f17  add byte ptr [eax], al
  036f19  add byte ptr [eax], al
  036f1b  add byte ptr [eax], al
  036f1d  add byte ptr [eax], al
  036f1f  add byte ptr [eax], al
  036f21  add byte ptr [eax], al
  036f23  add byte ptr [eax], al
  036f25  add byte ptr [eax], al
  036f27  add byte ptr [eax], al
  036f29  add byte ptr [eax], al
  036f2b  add byte ptr [eax], al
  036f2d  add byte ptr [eax], al
  036f2f  add byte ptr [eax], al
  036f31  add byte ptr [eax], al
  036f33  add byte ptr [eax], al
  036f35  add byte ptr [eax], al
  036f37  add byte ptr [eax], al
  036f39  add byte ptr [eax], al
  036f3b  add byte ptr [eax], al
  036f3d  add byte ptr [eax], al
  036f3f  add byte ptr [eax], al
  036f41  add byte ptr [eax], al
  036f43  add byte ptr [eax], al
  036f45  add byte ptr [eax], al
  036f47  add byte ptr [eax], al
  036f49  add byte ptr [eax], al
  036f4b  add byte ptr [eax], al
  036f4d  add byte ptr [eax], al
  036f4f  add byte ptr [eax], al
  036f51  add byte ptr [eax], al
  036f53  add byte ptr [eax], al
  036f55  add byte ptr [eax], al
  036f57  add byte ptr [eax], al
  036f59  add byte ptr [eax], al
  036f5b  add byte ptr [eax], al
  036f5d  add byte ptr [eax], al
  036f5f  add byte ptr [eax], al
  036f61  add byte ptr [eax], al
  036f63  add byte ptr [eax], al
  036f65  add byte ptr [eax], al
  036f67  add byte ptr [eax], al
  036f69  add byte ptr [eax], al
  036f6b  add byte ptr [eax], al
  036f6d  add byte ptr [eax], al
  036f6f  add byte ptr [eax], al
  036f71  add byte ptr [eax], al
  036f73  add byte ptr [eax], al
  036f75  add byte ptr [eax], al
  036f77  add byte ptr [eax], al
  036f79  add byte ptr [eax], al
  036f7b  add byte ptr [eax], al
  036f7d  add byte ptr [eax], al
  036f7f  add byte ptr [eax], al
  036f81  add byte ptr [eax], al
  036f83  add byte ptr [eax], al
  036f85  add byte ptr [eax], al
  036f87  add byte ptr [eax], al
  036f89  add byte ptr [eax], al
  036f8b  add byte ptr [eax], al
  036f8d  add byte ptr [eax], al
  036f8f  add byte ptr [eax], al
  036f91  add byte ptr [eax], al
  036f93  add byte ptr [eax], al
  036f95  add byte ptr [eax], al
  036f97  add byte ptr [eax], al
  036f99  add byte ptr [eax], al
  036f9b  add byte ptr [eax], al
  036f9d  add byte ptr [eax], al
  036f9f  add byte ptr [eax], al
  036fa1  add byte ptr [eax], al
  036fa3  add byte ptr [eax], al
  036fa5  add byte ptr [eax], al
  036fa7  add byte ptr [eax], al
  036fa9  add byte ptr [eax], al
  036fab  add byte ptr [eax], al
  036fad  add byte ptr [eax], al
  036faf  add byte ptr [eax], al
  036fb1  add byte ptr [eax], al
  036fb3  add byte ptr [eax], al
  036fb5  add byte ptr [eax], al
  036fb7  add byte ptr [eax], al
  036fb9  add byte ptr [eax], al
  036fbb  add byte ptr [eax], al
  036fbd  add byte ptr [eax], al
  036fbf  add byte ptr [eax], al
  036fc1  add byte ptr [eax], al
  036fc3  add byte ptr [eax], al
  036fc5  add byte ptr [eax], al
  036fc7  add byte ptr [eax], al
  036fc9  add byte ptr [eax], al
  036fcb  add byte ptr [eax], al
  036fcd  add byte ptr [eax], al
  036fcf  add byte ptr [eax], al
  036fd1  add byte ptr [eax], al
  036fd3  add byte ptr [eax], al
  036fd5  add byte ptr [eax], al
  036fd7  add byte ptr [eax], al
  036fd9  add byte ptr [eax], al
  036fdb  add byte ptr [eax], al
  036fdd  add byte ptr [eax], al
  036fdf  add byte ptr [eax], al
  036fe1  add byte ptr [eax], al
  036fe3  add byte ptr [eax], al
  036fe5  add byte ptr [esi], dl
  036fe7  add byte ptr [eax], al
  036fe9  add byte ptr [edi], cl
  036feb  add byte ptr [eax], al
  036fed  add byte ptr [eax], al
  036fef  add byte ptr [eax], al
  036ff1  add byte ptr [eax], al
  036ff3  add byte ptr [eax], al
  036ff5  add byte ptr [ecx], ch
  036ff8  add byte ptr [eax], al
  036ffa  sub eax, 0x1e000000
  036fff  add byte ptr [eax], al
  037001  add byte ptr [esi], bl
  037003  add byte ptr [eax], al
  037005  add byte ptr [esi], dl
  037007  add byte ptr [eax], al
  037009  add byte ptr [edi], dl
  03700b  add byte ptr [eax], al
  03700d  add byte ptr [eax], al
  03700f  add byte ptr [eax], al
  037011  add byte ptr [eax], al
  037013  add byte ptr [eax], al
  037015  add byte ptr [ecx], ch
  037018  add byte ptr [eax], al
  03701a  sub eax, 0x1e000000
  03701f  add byte ptr [eax], al
  037021  add byte ptr [esi], bl
  037023  add byte ptr [eax], al
  037025  add byte ptr [esi], dl
  037027  add byte ptr [eax], al
  037029  add byte ptr [edi], ch
  03702b  add byte ptr [eax], al
  03702d  add byte ptr [eax], al
  03702f  add byte ptr [eax], al
  037031  add byte ptr [esi], ch
  037033  add byte ptr [eax], al
  037035  add byte ptr [ebp + 0x2d000000], dh
  03703b  add byte ptr [eax], al
  03703d  add byte ptr [eax], bh
  037040  add byte ptr [eax], al
  037042  add byte ptr [eax], 0
  037045  add byte ptr [esi], dl
  037047  add byte ptr [eax], al
  037049  add byte ptr [edi], dh
  03704b  add byte ptr [eax], al
  03704d  add byte ptr [eax], al
  03704f  add byte ptr [eax], al
  037051  add byte ptr [eax + eax], bl
  037055  add byte ptr [ebx + 0x2a000000], cl
  03705b  add byte ptr [eax], al
  03705d  add byte ptr [esi], bl
  03705f  add byte ptr [eax], al
  037061  add byte ptr [esi], bl
  037063  add byte ptr [eax], al
  037065  add byte ptr [edi], dl
  037067  add byte ptr [eax], al
  037069  add byte ptr [edi], cl
  03706b  add byte ptr [eax], al
  03706d  add byte ptr [eax], al
  03706f  add byte ptr [eax], al
  037071  add byte ptr [edi + 0x64000000], al
  037077  add byte ptr [eax], al
  037079  add byte ptr [eax], ch
  03707b  add byte ptr [eax], al
  03707d  add byte ptr [eax], bh
  037080  add byte ptr [eax], al
  037082  add byte ptr [eax], 0
  037085  add byte ptr [edi], dl
  037087  add byte ptr [eax], al
  037089  add byte ptr [edi], dl
  03708b  add byte ptr [eax], al
  03708d  add byte ptr [ebx], dh
  037090  add byte ptr [eax], al
  037092  cdq 
  037093  add byte ptr [eax], al
  037095  add byte ptr [ebx + 0x2a000000], cl
  03709b  add byte ptr [eax], al
  03709d  add byte ptr [esi], bl
  03709f  add byte ptr [eax], al
  0370a1  add byte ptr [esi], bl
  0370a3  add byte ptr [eax], al
  0370a5  add byte ptr [edi], dl
  0370a7  add byte ptr [eax], al
  0370a9  add byte ptr [edi], ch
  0370ab  add byte ptr [eax], al
  0370ad  add byte ptr [ecx], bh
  0370b3  add byte ptr [eax], al
  0370b5  add byte ptr [edx], dh
  0370b8  add byte ptr [eax], al
  0370ba  sub al, byte ptr [eax]
  0370bc  add byte ptr [eax], al
  0370be  js 0x370c0
L370c0:
  0370c0  add byte ptr [eax], al
  0370c2  add byte ptr [eax], 0
  0370c5  add byte ptr [edi], dl
  0370c7  add byte ptr [eax], al
  0370c9  add byte ptr [edi], dh
  0370cb  add byte ptr [eax], al
  0370cd  add byte ptr [ecx + 0x2b000000], bh
  0370d3  add byte ptr [eax], al
  0370d5  add byte ptr [ecx], ah
  0370d8  add byte ptr [eax], al
  0370da  sub al, byte ptr [eax]
  0370dc  add byte ptr [eax], al
  0370de  push ds
  0370df  add byte ptr [eax], al
  0370e1  add byte ptr [esi], bl
  0370e3  add byte ptr [eax], al
  0370e5  add byte ptr [eax], bl
  0370e7  add byte ptr [eax], al
  0370e9  add byte ptr [edi], cl
  0370eb  add byte ptr [eax], al
  0370ed  add byte ptr [eax + eax + 0x6a0000], dl
  0370f4  add byte ptr [eax], al
  0370f6  lea eax, [eax]
  0370f8  add byte ptr [eax], al
  0370fa  sub al, 0
  0370fc  add byte ptr [eax], al
  0370fe  js 0x37100
L37100:
  037100  add byte ptr [eax], al
  037102  add byte ptr [eax], 0
  037105  add byte ptr [ebx], ah
  037108  add byte ptr [eax], al
  03710a  bound eax, qword ptr [eax]
  03710c  add byte ptr [eax], al
  03710e  add byte ptr [eax], al
  037110  add byte ptr [eax], al
  037112  add byte ptr [eax], al
  037114  add byte ptr [eax], al
  037116  add dword ptr [eax], eax
  037118  add byte ptr [eax], al
  03711a  add dword ptr [eax], eax
  03711c  add byte ptr [eax], al
  03711e  add byte ptr [eax], al
  037120  add byte ptr [eax], al
  037122  add byte ptr [eax], al
  037124  add byte ptr [eax], al
  037126  mov edi, 0x36b14
  03712b  mov ecx, 0
L37130:
  037130  mov eax, ecx
  037132  sub eax, 0x3f
  037135  imul eax
  037137  mov dword ptr [edi], eax
  037139  add edi, 4
  03713c  inc ecx
  03713d  cmp ecx, 0x80
  037143  jne 0x37130
  037145  ret 
L37146:
  037146  mov dword ptr [0x3718a], ebp
  03714c  inc ebp
  03714d  mov dword ptr [0x37191], ebp
  037153  inc ebp
  037154  mov dword ptr [0x37198], ebp
  03715a  dec edi
  03715b  mov dword ptr [0x36d60], ecx
  037161  mov dword ptr [0x36d64], edi
L37167:
  037167  mov ebp, 0xffff0000
  03716c  inc dword ptr [0x36d64]
  037172  mov edi, 0xff
  037177  nop 
L37178:
  037178  mov eax, 0x3f
  03717d  mov ebx, 0x3f
  037182  mov ecx, 0x3f
  037187  add al, byte ptr [edi + edi*2 + 0x35ee4]
  03718e  add bl, byte ptr [edi + edi*2 + 0x35ee5]
  037195  add cl, byte ptr [edi + edi*2 + 0x35ee6]
  03719c  sub al, byte ptr [esi]
  03719e  sub bl, byte ptr [esi + 1]
  0371a1  sub cl, byte ptr [esi + 2]
  0371a4  mov eax, dword ptr [eax*4 + 0x36b14]
  0371ab  add eax, dword ptr [ebx*4 + 0x36b14]
  0371b2  add eax, dword ptr [ecx*4 + 0x36b14]
  0371b9  cmp eax, ebp
  0371bb  ja 0x371c5
  0371bd  mov edx, edi
  0371bf  mov ebp, eax
  0371c1  or eax, eax
  0371c3  je 0x371c8
L371c5:
  0371c5  dec edi
  0371c6  jns 0x37178
L371c8:
  0371c8  mov edi, dword ptr [0x36d64]
  0371ce  add esi, 3
  0371d1  dec dword ptr [0x36d60]
  0371d7  mov byte ptr [edi], dl
  0371d9  jne 0x37167
  0371db  ret 
  0371dc  add dword ptr [edx], eax
  0371de  add al, 8
  0371e0  adc byte ptr [eax], ah
  0371e2  inc eax
  0371e3  add bh, 0x69
  0371e6  pop edx
  0371e7  add bh, al
  0371e9  imul ebx, dword ptr [edx], 0x5a6a05
  0371f0  xchg edi, eax
  0371f1  jmp 0x3724d
  0371f3  add ch, dl
  0371f5  dec eax
  0371f6  pop ebx
  0371f7  add byte ptr [ebx - 0x21], bh
  0371fa  pop edx
  0371fb  add byte ptr [eax], al
  0371fd  add byte ptr [eax], al
  0371ff  add byte ptr [esi], al
  037201  add bl, bl
  037203  add byte ptr [eax], al
  037205  add byte ptr [edi], bh
  037207  aas 
  037208  aas 
  037209  add byte ptr [eax], al
  03720b  push esp
  03720c  add byte ptr [eax], al
  03720e  add byte ptr [ebx], dl
  037211  in al, 0x5e
  037213  add eax, dword ptr [eax]
L37215:
  037215  push esi
  037216  push edi
  037217  mov ecx, 6
  03721c  mov edi, 0x371e8
  037221  xor eax, eax
  037223  rep stosd dword ptr es:[edi], eax
  037225  mov word ptr [0x37200], 6
  03722e  mov dword ptr [0x37202], 0
  037238  mov ebx, ebp
  03723a  pop edi
  03723b  pop esi
  03723c  call 0x37242
  037241  ret 
L37242:
  037242  pushal 
  037243  push dword ptr [8]
  037249  mov dword ptr [0x37209], esi
  03724f  mov dword ptr [0x3720d], edi
  037255  mov dword ptr [0x37211], ebx
  03725b  xor eax, eax
  03725d  mov edi, 0x371e8
  037262  mov ecx, 6
  037267  rep stosd dword ptr es:[edi], eax
  037269  xor ebx, ebx
  03726b  call 0x373c1
  037270  mov dword ptr [0x371e4], edi
  037276  mov esi, 0x37206
  03727b  mov ebp, dword ptr [0x37209]
  037281  mov ecx, 0x4000
L37286:
  037286  push ecx
  037287  mov al, byte ptr [ebp]
  03728a  shr al, 2
  03728d  mov byte ptr [0x37206], al
  037292  mov al, byte ptr [ebp + 1]
  037295  shr al, 2
  037298  mov byte ptr [0x37207], al
  03729d  mov al, byte ptr [ebp + 2]
  0372a0  shr al, 2
  0372a3  mov byte ptr [0x37208], al
  0372a8  add ebp, 3
  0372ab  push ebp
  0372ac  mov ebp, 0x371e4
  0372b1  mov ebx, 0
  0372b6  call 0x37347
  0372bb  pop ebp
L372bc:
  0372bc  cmp dword ptr [0x37202], 0xe0
  0372c6  jbe 0x372cf
  0372c8  call 0x37445
  0372cd  jmp 0x372bc
L372cf:
  0372cf  pop ecx
  0372d0  dec ecx
  0372d1  jne 0x37286
  0372d3  mov esi, dword ptr [0x37211]
  0372d9  xor ebx, ebx
  0372db  mov edi, dword ptr [0x371e4]
  0372e1  call 0x3750a
  0372e6  mov ebp, dword ptr [0x3720d]
  0372ec  mov ebx, dword ptr [0x37209]
  0372f2  mov edx, 0x100
L372f7:
  0372f7  mov ecx, 0x40
L372fc:
  0372fc  mov al, byte ptr [ebx]
  0372fe  shr al, 2
  037301  mov byte ptr [0x37206], al
  037306  mov al, byte ptr [ebx + 1]
  037309  shr al, 2
  03730c  mov byte ptr [0x37207], al
  037311  mov al, byte ptr [ebx + 2]
  037314  shr al, 2
  037317  mov byte ptr [0x37208], al
  03731c  add ebx, 3
  03731f  push edx
  037320  push ecx
  037321  push ebx
  037322  mov edi, dword ptr [0x371e4]
  037328  mov esi, 0x37206
  03732d  call 0x3755d
  037332  mov byte ptr [ebp], bl
  037335  inc ebp
  037336  pop ebx
  037337  pop ecx
  037338  pop edx
  037339  dec ecx
  03733a  jne 0x372fc
  03733c  dec edx
  03733d  jne 0x372f7
  03733f  pop dword ptr [8]
  037345  popal 
  037346  ret 
L37347:
  037347  test edi, edi
  037349  jne 0x37350
  03734b  call 0x373c1
L37350:
  037350  mov dword ptr [ebp], edi
  037353  cmp byte ptr [edi + 2], 1
  037357  jne 0x37371
  037359  inc dword ptr [edi + 7]
  03735c  xor eax, eax
  03735e  mov al, byte ptr [esi]
  037360  add dword ptr [edi + 0xb], eax
  037363  mov al, byte ptr [esi + 1]
  037366  add dword ptr [edi + 0xf], eax
  037369  mov al, byte ptr [esi + 2]
  03736c  add dword ptr [edi + 0x13], eax
  03736f  jmp 0x37390
L37371:
  037371  push edi
  037372  push ebx
  037373  push ebp
  037374  mov ecx, 6
  037379  sub ecx, ebx
  03737b  call 0x37391
  037380  lea ebp, [edi + edx*4 + 0x1a]
  037384  mov edi, dword ptr [ebp]
  037387  inc ebx
  037388  call 0x37347
  03738d  pop ebp
  03738e  pop ebx
  03738f  pop edi
L37390:
  037390  ret 
L37391:
  037391  push eax
  037392  xor edx, edx
  037394  mov al, byte ptr [esi]
  037396  and al, byte ptr [ecx + 0x371dc]
  03739c  shr al, cl
  03739e  shl al, 2
  0373a1  mov dl, al
  0373a3  mov al, byte ptr [esi + 1]
  0373a6  and al, byte ptr [ecx + 0x371dc]
  0373ac  shr al, cl
  0373ae  shl al, 1
  0373b0  or dl, al
  0373b2  mov al, byte ptr [esi + 2]
  0373b5  and al, byte ptr [ecx + 0x371dc]
  0373bb  shr al, cl
  0373bd  or dl, al
  0373bf  pop eax
  0373c0  ret 
L373c1:
  0373c1  push eax
  0373c2  push ecx
  0373c3  mov eax, 0x3e
  0373c8  call 0x2ac
  0373cd  mov edi, eax
  0373cf  push edi
  0373d0  xor eax, eax
  0373d2  mov ecx, 0x3e
  0373d7  rep stosb byte ptr es:[edi], al
  0373d9  pop edi
  0373da  mov word ptr [edi], bx
  0373dd  cmp bx, word ptr [0x37200]
  0373e4  sete al
  0373e7  mov byte ptr [edi + 2], al
  0373ea  cmp al, 1
  0373ec  jne 0x373f6
  0373ee  inc dword ptr [0x37202]
  0373f4  jmp 0x373fb
L373f6:
  0373f6  call 0x37431
L373fb:
  0373fb  mov dword ptr [edi + 7], 0
  037402  mov dword ptr [edi + 3], 0
  037409  mov dword ptr [edi + 0xb], 0
  037410  mov dword ptr [edi + 0xf], 0
  037417  mov dword ptr [edi + 0x13], 0
  03741e  mov ecx, 7
L37423:
  037423  mov dword ptr [edi + ecx*4 + 0x1a], 0
  03742b  dec ecx
  03742c  jns 0x37423
  03742e  pop ecx
  03742f  pop eax
  037430  ret 
L37431:
  037431  push eax
  037432  mov eax, dword ptr [ebx*4 + 0x371e8]
  037439  mov dword ptr [edi + 0x3a], eax
  03743c  mov dword ptr [ebx*4 + 0x371e8], edi
  037443  pop eax
  037444  ret 
L37445:
  037445  pushal 
  037446  mov dword ptr [0x374d4], 0
  037450  mov dword ptr [0x374d8], 0
  03745a  mov dword ptr [0x374dc], 0
  037464  xor ebx, ebx
  037466  call 0x374e0
  03746b  mov ecx, 0
L37470:
  037470  cmp dword ptr [edi + ecx*4 + 0x1a], 0
  037475  je 0x374a9
  037477  inc ebx
  037478  mov edx, dword ptr [edi + ecx*4 + 0x1a]
  03747c  mov eax, dword ptr [edx + 0xb]
  03747f  add dword ptr [0x374d4], eax
  037485  mov edx, dword ptr [edi + ecx*4 + 0x1a]
  037489  mov eax, dword ptr [edx + 0xf]
  03748c  add dword ptr [0x374d8], eax
  037492  mov edx, dword ptr [edi + ecx*4 + 0x1a]
  037496  mov eax, dword ptr [edx + 0x13]
  037499  add dword ptr [0x374dc], eax
  03749f  mov edx, dword ptr [edi + ecx*4 + 0x1a]
  0374a3  mov eax, dword ptr [edx + 7]
  0374a6  add dword ptr [edi + 7], eax
L374a9:
  0374a9  inc ecx
  0374aa  cmp ecx, 8
  0374ad  jne 0x37470
  0374af  mov byte ptr [edi + 2], 1
  0374b3  mov eax, dword ptr [0x374d4]
  0374b8  mov dword ptr [edi + 0xb], eax
  0374bb  mov eax, dword ptr [0x374d8]
  0374c0  mov dword ptr [edi + 0xf], eax
  0374c3  mov eax, dword ptr [0x374dc]
  0374c8  mov dword ptr [edi + 0x13], eax
  0374cb  dec ebx
  0374cc  sub dword ptr [0x37202], ebx
  0374d2  popal 
  0374d3  ret 
  0374d4  adc al, byte ptr fs:[eax]
  0374d7  add al, dh
  0374d9  adc dword ptr [eax], eax
  0374db  add dl, dl
  0374dd  or al, byte ptr [eax]
  0374df  add byte ptr [eax + 0x53], dl
  0374e2  movzx ebx, word ptr [0x37200]
L374e9:
  0374e9  cmp dword ptr [ebx*4 + 0x371e4], 0
  0374f1  jne 0x374f6
  0374f3  dec ebx
  0374f4  jmp 0x374e9
L374f6:
  0374f6  mov edi, dword ptr [ebx*4 + 0x371e4]
  0374fd  mov eax, dword ptr [edi + 0x3a]
  037500  mov dword ptr [ebx*4 + 0x371e4], eax
  037507  pop ebx
  037508  pop eax
  037509  ret 
L3750a:
  03750a  cmp byte ptr [edi + 2], 1
  03750e  jne 0x37540
  037510  push ebp
  037511  push ebx
  037512  lea ebx, [ebx + ebx*2]
  037515  mov ebp, dword ptr [edi + 7]
  037518  xor edx, edx
  03751a  mov eax, dword ptr [edi + 0xb]
  03751d  div ebp
  03751f  mov byte ptr [esi + ebx], al
  037522  xor edx, edx
  037524  mov eax, dword ptr [edi + 0xf]
  037527  div ebp
  037529  mov byte ptr [esi + ebx + 1], al
  03752d  xor edx, edx
  03752f  mov eax, dword ptr [edi + 0x13]
  037532  div ebp
  037534  mov byte ptr [esi + ebx + 2], al
  037538  pop ebx
  037539  pop ebp
  03753a  mov dword ptr [edi + 3], ebx
  03753d  inc ebx
  03753e  jmp 0x3755c
L37540:
  037540  xor ecx, ecx
L37542:
  037542  cmp dword ptr [edi + ecx*4 + 0x1a], 0
  037547  je 0x37556
  037549  push ecx
  03754a  push edi
  03754b  mov edi, dword ptr [edi + ecx*4 + 0x1a]
  03754f  call 0x3750a
  037554  pop edi
  037555  pop ecx
L37556:
  037556  inc ecx
  037557  cmp ecx, 8
  03755a  jb 0x37542
L3755c:
  03755c  ret 
L3755d:
  03755d  cmp byte ptr [edi + 2], 1
  037561  jne 0x37568
  037563  mov ebx, dword ptr [edi + 3]
  037566  jmp 0x37582
L37568:
  037568  push ecx
  037569  mov ecx, 6
  03756e  sub cx, word ptr [edi]
  037571  call 0x37391
  037576  push edi
  037577  mov edi, dword ptr [edi + edx*4 + 0x1a]
  03757b  call 0x3755d
  037580  pop edi
  037581  pop ecx
L37582:
  037582  ret 
  037583  mov eax, 0xa0000
  037588  sub eax, dword ptr [0x18]
  03758e  mov dword ptr [0x36ae8], eax
  037593  mov eax, 0xa0000
  037598  push eax
  037599  call 0x2ac
  03759e  or eax, 0xffff
  0375a3  inc eax
  0375a4  mov dword ptr [0x36aec], eax
  0375a9  add eax, 0x10000
  0375ae  mov dword ptr [0x36af0], eax
  0375b3  add eax, 0x10000
  0375b8  mov dword ptr [0x36d18], eax
  0375bd  add eax, 0x10000
  0375c2  mov dword ptr [0x36d14], eax
  0375c7  add eax, 0x30000
  0375cc  mov dword ptr [0x36af4], eax
  0375d1  add eax, 0x10000
  0375d6  mov dword ptr [0x36af8], eax
  0375db  add eax, 0x10000
  0375e0  mov dword ptr [0x36ae4], eax
  0375e5  add eax, 0x10000
  0375ea  pop ecx
  0375eb  mov edi, dword ptr [0x36aec]
  0375f1  xor eax, eax
  0375f3  shr ecx, 2
  0375f6  rep stosd dword ptr es:[edi], eax
  0375f8  mov edx, 0x35ed6
  0375fd  call 0x3dcc
  037602  mov bl, 0
  037604  mov eax, 0xa
  037609  call 0x3e4a
  03760e  mov edx, 0x35ee4
  037613  mov ecx, 0x300
  037618  call 0x3eed
  03761d  mov edx, dword ptr [0x36af0]
  037623  mov ecx, 0x10000
  037628  call 0x3eed
  03762d  call 0x3e09
  037632  mov edx, 0x35ecc
  037637  call 0x3dcc
  03763c  mov bl, 0
  03763e  mov eax, 0xa
  037643  call 0x3e4a
  037648  mov edx, 0x367e4
  03764d  mov ecx, 0x300
  037652  call 0x3eed
  037657  mov edx, dword ptr [0x36ae4]
  03765d  mov ecx, 0xfa00
  037662  call 0x3eed
  037667  call 0x3e09
  03766c  mov edi, 0x36b14
  037671  mov ecx, 0
L37676:
  037676  mov eax, ecx
  037678  sub eax, 0x3f
  03767b  imul eax
  03767d  mov dword ptr [edi], eax
  03767f  add edi, 4
  037682  inc ecx
  037683  cmp ecx, 0x80
  037689  jne 0x37676
  03768b  mov edi, 0x361e4
  037690  xor eax, eax
  037692  xor ebx, ebx
  037694  mov ecx, 0x100
L37699:
  037699  stosb byte ptr es:[edi], al
  03769a  stosb byte ptr es:[edi], al
  03769b  stosb byte ptr es:[edi], al
  03769c  inc eax
  03769d  dec ecx
  03769e  jne 0x37699
  0376a0  mov edi, dword ptr [0x36d14]
  0376a6  mov esi, 0
L376ab:
  0376ab  mov ebp, 0
L376b0:
  0376b0  mov ecx, 3
L376b5:
  0376b5  movzx eax, byte ptr ds:[ebp + 0x35ee4]
  0376bd  movzx ebx, byte ptr [esi + 0x361e4]
  0376c4  sar ebx, 1
  0376c6  add ebx, 1
  0376c9  imul ebx
  0376cb  sar eax, 2
  0376ce  sar ebx, 0
  0376d1  add eax, ebx
  0376d3  cmp eax, 0
  0376d6  jg 0x376da
  0376d8  xor eax, eax
L376da:
  0376da  cmp eax, 0xff
  0376df  jl 0x376e6
  0376e1  mov eax, 0xff
L376e6:
  0376e6  mov byte ptr [edi], al
  0376e8  inc edi
  0376e9  inc ebp
  0376ea  inc esi
  0376eb  loop 0x376b5
  0376ed  sub esi, 3
  0376f0  cmp ebp, 0x300
  0376f6  jne 0x376b0
  0376f8  add esi, 3
  0376fb  cmp esi, 0x300
  037701  jne 0x376ab
  037703  mov esi, dword ptr [0x36d14]
  037709  mov edi, dword ptr [0x36d18]
  03770f  mov ebp, 0x35ee4
  037714  call 0x37215
  037719  xor eax, eax
  03771b  mov esi, 0x367e4
  037720  mov edi, 0x35ee4
  037725  mov ecx, 0x20
L3772a:
  03772a  movsb byte ptr es:[edi], byte ptr [esi]
  03772b  movsb byte ptr es:[edi], byte ptr [esi]
  03772c  movsb byte ptr es:[edi], byte ptr [esi]
  03772d  inc eax
  03772e  add edi, 0x15
  037731  dec ecx
  037732  jne 0x3772a
  037734  mov esi, dword ptr [0x36d14]
  03773a  mov ecx, 0xc000
L3773f:
  03773f  shr byte ptr [esi], 2
  037742  inc esi
  037743  dec ecx
  037744  jne 0x3773f
  037746  mov byte ptr [0x35ee4], 0x3f
  03774d  mov byte ptr [0x35ee5], 0x3f
  037754  mov byte ptr [0x35ee6], 0x3f
  03775b  mov esi, dword ptr [0x36d14]
  037761  mov edi, dword ptr [0x36d18]
  037767  mov ebp, 0x35ee4
  03776c  mov ecx, 0x4000
  037771  call 0x37146
  037776  ret 
  037777  mov esi, 0x35ee4
  03777c  mov edi, 0x364e4
  037781  mov ecx, 0x300
L37786:
  037786  mov al, byte ptr [esi]
  037788  neg al
  03778a  add al, 0x3f
  03778c  mov byte ptr [edi], al
  03778e  mov byte ptr [esi], 0
  037791  inc esi
  037792  inc edi
  037793  dec ecx
  037794  jne 0x37786
  037796  call 0x35d9c
  03779b  call 0x35e17
  0377a0  mov dword ptr [0x36b10], 1
  0377aa  xchg ebx, ebx
L377ac:
  0377ac  mov dword ptr [0x36b10], 0
L377b6:
  0377b6  cmp dword ptr [0x36b10], 1
  0377bd  jl 0x377b6
  0377bf  mov esi, dword ptr [0x36af4]
  0377c5  mov edi, dword ptr [0x36ae8]
  0377cb  mov ecx, 0x3e80
  0377d0  rep movsd dword ptr es:[edi], dword ptr [esi]
  0377d2  mov esi, dword ptr [0x36aec]
  0377d8  mov edi, dword ptr [0x36af4]
  0377de  sub edi, 2
  0377e1  mov dword ptr [0x36d64], 0x19
L377eb:
  0377eb  mov dword ptr [0x36d60], 0x28
L377f5:
  0377f5  push edi
  0377f6  mov edx, dword ptr [esi]
  0377f8  mov ebp, dword ptr [esi + 4]
  0377fb  mov edi, dword ptr [esi + 8]
  0377fe  mov eax, dword ptr [esi + 0x1ec]
  037804  mov ebx, dword ptr [esi + 0x1f0]
  03780a  mov ecx, dword ptr [esi + 0x1f4]
  037810  sub eax, edx
  037812  sub ebx, ebp
  037814  sub ecx, edi
  037816  mov dword ptr [0x36d20], edx
  03781c  mov dword ptr [0x36d24], ebp
  037822  mov dword ptr [0x36d28], edi
  037828  sar eax, 3
  03782b  sar ebx, 3
  03782e  sar ecx, 3
  037831  mov dword ptr [0x36d3c], eax
  037836  mov dword ptr [0x36d40], ebx
  03783c  mov dword ptr [0x36d44], ecx
  037842  mov edx, dword ptr [esi + 0xc]
  037845  mov ebp, dword ptr [esi + 0x10]
  037848  mov edi, dword ptr [esi + 0x14]
  03784b  mov eax, dword ptr [esi + 0x1f8]
  037851  mov ebx, dword ptr [esi + 0x1fc]
  037857  mov ecx, dword ptr [esi + 0x200]
  03785d  sub eax, edx
  03785f  sub ebx, ebp
  037861  sub ecx, edi
  037863  mov dword ptr [0x36d2c], edx
  037869  mov dword ptr [0x36d30], ebp
  03786f  mov dword ptr [0x36d34], edi
  037875  sar eax, 3
  037878  sar ebx, 3
  03787b  sar ecx, 3
  03787e  pop edi
  03787f  mov dword ptr [0x36d48], eax
  037884  mov dword ptr [0x36d4c], ebx
  03788a  mov dword ptr [0x36d50], ecx
  037890  push esi
  037891  mov dword ptr [0x36d38], 8
  03789b  nop 
L3789c:
  03789c  mov ebp, dword ptr [0x36d20]
  0378a2  mov esi, dword ptr [0x36d24]
  0378a8  mov edx, dword ptr [0x36d28]
  0378ae  mov eax, dword ptr [0x36d2c]
  0378b3  mov ebx, dword ptr [0x36d30]
  0378b9  mov ecx, dword ptr [0x36d34]
  0378bf  sub eax, ebp
  0378c1  sub ebx, esi
  0378c3  sub ecx, edx
  0378c5  sar eax, 0xb
  0378c8  sar ebx, 0xb
  0378cb  sar ecx, 0xb
  0378ce  mov dword ptr [0x36d54], eax
  0378d3  mov dword ptr [0x36d58], ebx
  0378d9  mov dword ptr [0x36d5c], ecx
  0378df  sar ebp, 8
  0378e2  sar esi, 8
  0378e5  sar edx, 8
  0378e8  mov ecx, ebp
  0378ea  mov eax, dword ptr [0x36af0]
  0378ef  mov ax, si
  0378f2  add edi, 2
  0378f5  mov al, ch
  0378f7  add ecx, dword ptr [0x36d54]
  0378fd  add esi, dword ptr [0x36d58]
  037903  mov al, byte ptr [eax]
  037905  mov ah, dh
  037907  add edx, dword ptr [0x36d5c]
  03790d  mov bl, byte ptr [eax + 0x10000]
  037913  mov ax, si
  037916  mov al, ch
  037918  add ecx, dword ptr [0x36d54]
  03791e  add esi, dword ptr [0x36d58]
  037924  mov al, byte ptr [eax]
  037926  mov ah, dh
  037928  add edx, dword ptr [0x36d5c]
  03792e  mov bh, byte ptr [eax + 0x10000]
  037934  mov word ptr [edi], bx
  037937  mov ax, si
  03793a  add edi, 2
  03793d  mov al, ch
  03793f  add ecx, dword ptr [0x36d54]
  037945  add esi, dword ptr [0x36d58]
  03794b  mov al, byte ptr [eax]
  03794d  mov ah, dh
  03794f  add edx, dword ptr [0x36d5c]
  037955  mov bl, byte ptr [eax + 0x10000]
  03795b  mov ax, si
  03795e  mov al, ch
  037960  add ecx, dword ptr [0x36d54]
  037966  add esi, dword ptr [0x36d58]
  03796c  mov al, byte ptr [eax]
  03796e  mov ah, dh
  037970  add edx, dword ptr [0x36d5c]
  037976  mov bh, byte ptr [eax + 0x10000]
  03797c  mov word ptr [edi], bx
  03797f  mov ax, si
  037982  add edi, 2
  037985  mov al, ch
  037987  add ecx, dword ptr [0x36d54]
  03798d  add esi, dword ptr [0x36d58]
  037993  mov al, byte ptr [eax]
  037995  mov ah, dh
  037997  add edx, dword ptr [0x36d5c]
  03799d  mov bl, byte ptr [eax + 0x10000]
  0379a3  mov ax, si
  0379a6  mov al, ch
  0379a8  add ecx, dword ptr [0x36d54]
  0379ae  add esi, dword ptr [0x36d58]
  0379b4  mov al, byte ptr [eax]
  0379b6  mov ah, dh
  0379b8  add edx, dword ptr [0x36d5c]
  0379be  mov bh, byte ptr [eax + 0x10000]
  0379c4  mov word ptr [edi], bx
  0379c7  mov ax, si
  0379ca  add edi, 2
  0379cd  mov al, ch
  0379cf  add ecx, dword ptr [0x36d54]
  0379d5  add esi, dword ptr [0x36d58]
  0379db  mov al, byte ptr [eax]
  0379dd  mov ah, dh
  0379df  add edx, dword ptr [0x36d5c]
  0379e5  mov bl, byte ptr [eax + 0x10000]
  0379eb  mov ax, si
  0379ee  mov al, ch
  0379f0  add ecx, dword ptr [0x36d54]
  0379f6  add esi, dword ptr [0x36d58]
  0379fc  mov al, byte ptr [eax]
  0379fe  mov ah, dh
  037a00  add edx, dword ptr [0x36d5c]
  037a06  mov bh, byte ptr [eax + 0x10000]
  037a0c  mov word ptr [edi], bx
  037a0f  mov eax, dword ptr [0x36d20]
  037a14  mov ebx, dword ptr [0x36d24]
  037a1a  mov ecx, dword ptr [0x36d28]
  037a20  mov edx, dword ptr [0x36d2c]
  037a26  mov esi, dword ptr [0x36d30]
  037a2c  mov ebp, dword ptr [0x36d34]
  037a32  add eax, dword ptr [0x36d3c]
  037a38  add ebx, dword ptr [0x36d40]
  037a3e  add ecx, dword ptr [0x36d44]
  037a44  add edx, dword ptr [0x36d48]
  037a4a  add esi, dword ptr [0x36d4c]
  037a50  add ebp, dword ptr [0x36d50]
  037a56  mov dword ptr [0x36d20], eax
  037a5b  mov dword ptr [0x36d24], ebx
  037a61  mov dword ptr [0x36d28], ecx
  037a67  mov dword ptr [0x36d2c], edx
  037a6d  mov dword ptr [0x36d30], esi
  037a73  mov dword ptr [0x36d34], ebp
  037a79  add edi, 0x138
  037a7f  dec dword ptr [0x36d38]
  037a85  jne 0x3789c
  037a8b  pop esi
  037a8c  add edi, 0xfffff608
  037a92  add esi, 0xc
  037a95  dec dword ptr [0x36d60]
  037a9b  jne 0x377f5
  037aa1  add edi, 0x8c0
  037aa7  add esi, 0xc
  037aaa  dec dword ptr [0x36d64]
  037ab0  jne 0x377eb
  037ab6  fild dword ptr [0x36d8c]
  037abc  fdiv qword ptr [0x36db0]
  037ac2  fsin 
  037ac4  fild dword ptr [0x36d88]
  037aca  fdiv qword ptr [0x36db0]
  037ad0  fcos 
  037ad2  faddp st(1)
  037ad4  fstp dword ptr [0x36d9c]
  037ada  fild dword ptr [0x36d84]
  037ae0  fdiv qword ptr [0x36db0]
  037ae6  fcos 
  037ae8  fdiv dword ptr [0x36d98]
  037aee  fadd dword ptr [0x36d98]
  037af4  fstp dword ptr [0x36da0]
  037afa  fild dword ptr [0x36d8c]
  037b00  fdiv qword ptr [0x36db0]
  037b06  fsin 
  037b08  fld1 
  037b0a  faddp st(1)
  037b0c  mov dword ptr [0x36afc], 0x14
  037b16  fild dword ptr [0x36afc]
  037b1c  fdivp st(1)
  037b1e  fstp dword ptr [0x36da4]
  037b24  mov dword ptr [0x36d2c], 0x14
  037b2e  mov dword ptr [0x36d30], 0xc
  037b38  fild dword ptr [0x36d80]
  037b3e  fdiv qword ptr [0x36db0]
  037b44  fcos 
  037b46  fimul dword ptr [0x36d2c]
  037b4c  fstp dword ptr [0x36d6c]
  037b52  fild dword ptr [0x36d7c]
  037b58  fdiv qword ptr [0x36db0]
  037b5e  fsin 
  037b60  fimul dword ptr [0x36d30]
  037b66  fstp dword ptr [0x36d70]
  037b6c  fild dword ptr [0x36d7c]
  037b72  fdiv qword ptr [0x36db0]
  037b78  fcos 
  037b7a  fsin 
  037b7c  fimul dword ptr [0x36d2c]
  037b82  fiadd dword ptr [0x36d2c]
  037b88  fstp dword ptr [0x36d74]
  037b8e  fild dword ptr [0x36d80]
  037b94  fdiv qword ptr [0x36db0]
  037b9a  fsin 
  037b9c  fimul dword ptr [0x36d30]
  037ba2  fiadd dword ptr [0x36d30]
  037ba8  fstp dword ptr [0x36d78]
  037bae  mov esi, dword ptr [0x36af8]
  037bb4  mov edi, dword ptr [0x36aec]
  037bba  mov dword ptr [0x36d64], 0xfffffff3
L37bc4:
  037bc4  mov dword ptr [0x36d60], 0xffffffec
L37bce:
  037bce  fild dword ptr [0x36d64]
  037bd4  fsub dword ptr [0x36d70]
  037bda  fmul st(0)
  037bdc  fild dword ptr [0x36d60]
  037be2  fsub dword ptr [0x36d6c]
  037be8  fmul st(0)
  037bea  faddp st(1)
  037bec  fsqrt 
  037bee  fild dword ptr [0x36d64]
  037bf4  fsub dword ptr [0x36d78]
  037bfa  fmul st(0)
  037bfc  fild dword ptr [0x36d60]
  037c02  fsub dword ptr [0x36d74]
  037c08  fmul st(0)
  037c0a  faddp st(1)
  037c0c  fsqrt 
  037c0e  faddp st(1)
  037c10  fmul dword ptr [0x36da4]
  037c16  fild dword ptr [0x36d80]
  037c1c  fdiv qword ptr [0x36db0]
  037c22  fadd st(1)
  037c24  fsin 
  037c26  fild dword ptr [0x36d7c]
  037c2c  fadd st(2)
  037c2e  fdiv qword ptr [0x36db0]
  037c34  fcos 
  037c36  fmulp st(1)
  037c38  fsin 
  037c3a  fld1 
  037c3c  faddp st(1)
  037c3e  fst dword ptr [0x36d34]
  037c44  fmul dword ptr [0x36da0]
  037c4a  fld st(0)
  037c4c  fld1 
  037c4e  fsubp st(1)
  037c50  fmul qword ptr [0x36db8]
  037c56  fadd dword ptr [0x36d9c]
  037c5c  fsincos 
  037c5e  fild dword ptr [0x36d60]
  037c64  fmul st(1)
  037c66  fild dword ptr [0x36d64]
  037c6c  fmul st(3)
  037c6e  fsubp st(1)
  037c70  fstp dword ptr [0x36d2c]
  037c76  fild dword ptr [0x36d64]
  037c7c  fmul st(1)
  037c7e  fild dword ptr [0x36d60]
  037c84  fmul st(3)
  037c86  faddp st(1)
  037c88  fstp dword ptr [0x36d30]
  037c8e  fcompp 
  037c90  fld1 
  037c92  fdivp st(1)
  037c94  fld dword ptr [0x36d30]
  037c9a  fmul st(1)
  037c9c  fmul qword ptr [0x36da8]
  037ca2  fmul qword ptr [0x36dd0]
  037ca8  fistp dword ptr [0x36d30]
  037cae  fld dword ptr [0x36d2c]
  037cb4  fmul st(1)
  037cb6  fmul qword ptr [0x36da8]
  037cbc  fmul qword ptr [0x36dd0]
  037cc2  fistp dword ptr [0x36d2c]
  037cc8  fcompp 
  037cca  mov dword ptr [0x36afc], 0x1f
  037cd4  fld dword ptr [0x36d34]
  037cda  fild dword ptr [0x36afc]
  037ce0  fmulp st(1)
  037ce2  fmul qword ptr [0x36da8]
  037ce8  fistp dword ptr [edi + 8]
  037ceb  mov eax, dword ptr [0x36d2c]
  037cf0  mov ebx, dword ptr [0x36d30]
  037cf6  add eax, 0x800000
  037cfb  add ebx, 0x800000
  037d01  mov dword ptr [edi], eax
  037d03  mov dword ptr [edi + 4], ebx
  037d06  add edi, 0xc
  037d09  inc dword ptr [0x36d60]
  037d0f  cmp dword ptr [0x36d60], 0x15
  037d16  jl 0x37bce
  037d1c  inc dword ptr [0x36d64]
  037d22  cmp dword ptr [0x36d64], 0xd
  037d29  jl 0x37bc4
  037d2f  mov ebp, dword ptr [0x36fe2]
  037d35  mov esi, dword ptr ds:[ebp + 0x36ff2]
  037d3c  lea esi, [esi + esi*4]
  037d3f  shl esi, 6
  037d42  add esi, dword ptr ds:[ebp + 0x36fee]
  037d49  add esi, dword ptr [0x36ae4]
  037d4f  mov edi, dword ptr ds:[ebp + 0x37002]
  037d56  lea edi, [edi + edi*4]
  037d59  shl edi, 6
  037d5c  add edi, dword ptr ds:[ebp + 0x36ffe]
  037d63  add edi, dword ptr [0x36af4]
  037d69  mov edx, dword ptr ds:[ebp + 0x36ffa]
L37d70:
  037d70  push esi
  037d71  push edi
  037d72  mov ecx, dword ptr ds:[ebp + 0x36ff6]
L37d79:
  037d79  mov al, byte ptr [esi]
  037d7b  or al, al
  037d7d  je 0x37d84
  037d7f  shl al, 3
  037d82  mov byte ptr [edi], al
L37d84:
  037d84  inc esi
  037d85  inc edi
  037d86  dec ecx
  037d87  jne 0x37d79
  037d89  pop edi
  037d8a  pop esi
  037d8b  add edi, 0x140
  037d91  add esi, 0x140
  037d97  dec edx
  037d98  jne 0x37d70
  037d9a  movzx eax, word ptr [0x12bf]
  037da1  cmp eax, dword ptr ds:[ebp + 0x36fe6]
  037da8  jl 0x37dc4
  037daa  movzx eax, word ptr [0x12ca]
  037db1  and eax, 0x3f
  037db4  cmp eax, dword ptr ds:[ebp + 0x36fea]
  037dbb  jl 0x37dc4
  037dbd  add dword ptr [0x36fe2], 0x20
L37dc4:
  037dc4  in al, 0x60
  037dc6  cmp al, 1
  037dc8  jne 0x37dd6
  037dca  mov dword ptr [0x4aeb0], 1
  037dd4  jmp 0x37de4
L37dd6:
  037dd6  cmp word ptr [0x12bf], 0x18
  037dde  jl 0x377ac
L37de4:
  037de4  call 0x35df0
  037de9  ret 
  037dea  xchg ebx, ebx
  037dec  xchg ebx, ebx
  037dee  xchg ebx, ebx
  037df0  add byte ptr [eax], al
  037df2  add byte ptr [eax], al
  037df4  xchg ebx, ebx
  037df6  xchg ebx, ebx
  037df8  xchg ebx, ebx
  037dfa  xchg ebx, ebx
  037dfc  xchg ebx, ebx
  037dfe  xchg ebx, ebx
