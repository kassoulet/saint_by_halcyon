  04bd60  inc esi
  04bd61  add byte ptr [eax], al
  04bd63  add byte ptr [eax], al
  04bd65  add byte ptr [eax], al
  04bd67  add byte ptr [edi - 0x78247825], al
  04bd6d  fild dword ptr [edi - 0x22649f25]
  04bd73  xor eax, 0x4ad0c
  04bd78  cmp byte ptr [0x496da], 3
  04bd7f  je 0x4bd8d
  04bd81  mov eax, 4
  04bd86  call 0x25c4
  04bd8b  jmp 0x4bdc4
L4bd8d:
  04bd8d  inc byte ptr [0x496d9]
  04bd93  cmp byte ptr [0x496d9], 7
  04bd9a  jl 0x4bdc4
  04bd9c  mov byte ptr [0x496d9], 0
  04bda3  inc word ptr [0x12ca]
  04bdaa  cmp word ptr [0x12ca], 0x40
  04bdb2  jl 0x4bdc4
  04bdb4  inc word ptr [0x12bf]
  04bdbb  mov word ptr [0x12ca], 0
L4bdc4:
  04bdc4  inc dword ptr [0x49910]
  04bdca  cmp byte ptr [0x41d1], 1
  04bdd1  je 0x4c002
  04bdd7  mov edi, dword ptr [0x49bac]
  04bddd  mov edi, dword ptr [edi*4 + 0x49fb0]
  04bde4  mov ebp, dword ptr [0x49ba8]
  04bdea  mov ebp, dword ptr ds:[ebp*4 + 0x49bb0]
  04bdf2  cmp word ptr [0x12bf], 2
  04bdfa  jl 0x4be61
  04bdfc  movzx eax, word ptr [0x12ca]
  04be03  and eax, 0x3f
  04be06  cmp eax, 0x30
  04be09  jl 0x4be61
  04be0b  movzx eax, word ptr [0x12ca]
  04be12  and eax, 0x3f
  04be15  cmp eax, 0x3c
  04be18  jg 0x4be61
  04be1a  movzx ebp, word ptr [0x12ca]
  04be21  and ebp, 0x3f
  04be24  cmp dword ptr [0x49928], ebp
  04be2a  je 0x4be4c
  04be2c  mov dword ptr [0x49928], ebp
  04be32  neg ebp
  04be34  add ebp, 0x40
  04be37  shl ebp, 6
  04be3a  pushal 
  04be3b  mov edi, 0x4a9b0
  04be40  mov al, 0x3f
  04be42  mov ecx, 0x300
  04be47  rep stosb byte ptr es:[edi], al
  04be49  popal 
  04be4a  jmp 0x4be61
L4be4c:
  04be4c  mov ebp, 0x3ff
  04be51  pushal 
  04be52  mov edi, 0x4a9b0
  04be57  xor eax, eax
  04be59  mov ecx, 0xc0
  04be5e  rep stosd dword ptr es:[edi], eax
  04be60  popal 
L4be61:
  04be61  mov edx, 0x3c8
  04be66  xor eax, eax
  04be68  out dx, al
  04be69  inc edx
  04be6a  mov esi, 0xfffffd00
  04be6f  nop 
L4be70:
  04be70  xor eax, eax
  04be72  xor ebx, ebx
  04be74  xor ecx, ecx
  04be76  mov al, byte ptr [esi + 0x4a6b0]
  04be7c  mov bl, byte ptr [esi + 0x4a9b0]
  04be82  mov cl, byte ptr [esi + 0x4acb0]
  04be88  sub eax, ebx
  04be8a  imul eax, edi
  04be8d  sar eax, 0xa
  04be90  add eax, ebx
  04be92  sub eax, ecx
  04be94  imul eax, ebp
  04be97  sar eax, 0xa
  04be9a  add eax, ecx
  04be9c  out dx, al
  04be9d  inc esi
  04be9e  jne 0x4be70
  04bea0  add dword ptr [0x49ba8], 2
  04bea7  cmp dword ptr [0x49ba8], 0x7f
  04beae  jl 0x4beba
  04beb0  mov dword ptr [0x49ba8], 0x7f
L4beba:
  04beba  cmp word ptr [0x12bf], 2
  04bec2  jne 0x4beed
  04bec4  movzx eax, word ptr [0x12ca]
  04becb  and eax, 0x3f
  04bece  cmp eax, 0x3c
  04bed1  jne 0x4beed
  04bed3  pushal 
  04bed4  mov edi, 0x4a9b0
  04bed9  mov al, 0x3f
  04bedb  mov ecx, 0x300
  04bee0  rep stosb byte ptr es:[edi], al
  04bee2  mov dword ptr [0x49ba8], 0
  04beec  popal 
L4beed:
  04beed  cmp word ptr [0x12bf], 1
  04bef5  jne 0x4bf10
  04bef7  movzx eax, word ptr [0x12ca]
  04befe  and eax, 0x3f
  04bf01  cmp eax, 0x3c
  04bf04  jne 0x4bf10
  04bf06  mov dword ptr [0x49ba8], 0
L4bf10:
  04bf10  cmp word ptr [0x12bf], 2
  04bf18  jne 0x4bf33
  04bf1a  movzx eax, word ptr [0x12ca]
  04bf21  and eax, 0x3f
  04bf24  cmp eax, 0x3c
  04bf27  jne 0x4bf33
  04bf29  mov dword ptr [0x49ba8], 0
L4bf33:
  04bf33  cmp word ptr [0x12bf], 1
  04bf3b  jne 0x4bf91
  04bf3d  fild dword ptr [0x49b90]
  04bf43  fdiv dword ptr [0x4acf4]
  04bf49  fmul dword ptr [0x4ad04]
  04bf4f  fsin 
  04bf51  fild dword ptr [0x49b8c]
  04bf57  fdiv dword ptr [0x4acf4]
  04bf5d  fmul dword ptr [0x4ad04]
  04bf63  fcos 
  04bf65  fmulp st(1)
  04bf67  fsin 
  04bf69  mov dword ptr [0x4bd60], 0x46
  04bf73  fild dword ptr [0x4bd60]
  04bf79  fmulp st(1)
  04bf7b  fistp dword ptr [0x49bac]
  04bf81  add dword ptr [0x49bac], 0x40
  04bf88  and dword ptr [0x49bac], 0x7f
  04bf8f  jmp 0x4bf9b
L4bf91:
  04bf91  mov dword ptr [0x49bac], 0x7f
L4bf9b:
  04bf9b  add dword ptr [0x49b8c], 0x78
  04bfa2  add dword ptr [0x49b90], 0xa0
  04bfac  mov eax, dword ptr [0x4acf0]
  04bfb1  add dword ptr [0x4acec], eax
  04bfb7  add eax, 0x40
  04bfba  mov dword ptr [0x4acf0], eax
  04bfbf  cmp dword ptr [0x4ace8], 0
  04bfc6  jne 0x4c002
  04bfc8  inc dword ptr [0x49950]
  04bfce  mov eax, dword ptr [0x4aeac]
  04bfd3  cmp dword ptr [0x49950], eax
  04bfd9  jl 0x4c002
  04bfdb  mov dword ptr [0x49950], 0
  04bfe5  inc dword ptr [0x49948]
  04bfeb  mov eax, dword ptr [0x4994c]
  04bff0  cmp dword ptr [0x49948], eax
  04bff6  jl 0x4c002
  04bff8  mov dword ptr [0x49948], 0
L4c002:
  04c002  wait 
  04c003  frstor dword ptr [0x4ad0c]
  04c009  popal 
  04c00a  ret 
  04c00b  add byte ptr [eax], al
  04c00d  add byte ptr [eax], al
  04c00f  add byte ptr [eax], al
  04c011  add byte ptr [eax], al
  04c013  add byte ptr [eax], al
  04c015  add byte ptr [eax], al
  04c017  add byte ptr [eax], al
  04c019  add byte ptr [eax], al
  04c01b  add byte ptr [eax], al
  04c01d  add byte ptr [eax], al
  04c01f  add byte ptr [eax], al
  04c021  add byte ptr [eax], al
  04c023  add byte ptr [eax], al
  04c025  add byte ptr [eax], al
  04c027  add byte ptr [eax], al
  04c029  add byte ptr [eax], al
  04c02b  add byte ptr [eax], al
  04c02d  add byte ptr [eax], al
  04c02f  add byte ptr [eax], al
  04c031  add byte ptr [eax], al
  04c033  add byte ptr [eax], al
  04c035  add byte ptr [eax], al
  04c037  add byte ptr [eax], al
  04c039  add byte ptr [eax], al
  04c03b  add byte ptr [eax], al
  04c03d  add byte ptr [eax], al
  04c03f  add byte ptr [eax], al
  04c041  add byte ptr [eax], al
  04c043  add byte ptr [eax], al
  04c045  add byte ptr [eax], al
  04c047  add byte ptr [eax], al
  04c049  add byte ptr [eax], al
  04c04b  add byte ptr [eax], al
  04c04d  add byte ptr [eax], al
  04c04f  add byte ptr [eax], al
  04c051  add byte ptr [eax], al
  04c053  add byte ptr [eax], al
  04c055  add byte ptr [eax], al
  04c057  add byte ptr [eax], al
  04c059  add byte ptr [eax], al
  04c05b  add byte ptr [eax], al
  04c05d  add byte ptr [eax], al
  04c05f  add byte ptr [eax], al
  04c061  add byte ptr [eax], al
  04c063  add byte ptr [eax], al
  04c065  add byte ptr [eax], al
  04c067  add byte ptr [eax], al
  04c069  add byte ptr [eax], al
  04c06b  add byte ptr [eax], al
  04c06d  add byte ptr [eax], al
  04c06f  add byte ptr [eax], al
  04c071  add byte ptr [eax], al
  04c073  add byte ptr [eax], al
  04c075  add byte ptr [eax], al
  04c077  add byte ptr [eax], al
  04c079  add byte ptr [eax], al
  04c07b  add byte ptr [eax], al
  04c07d  add byte ptr [eax], al
  04c07f  add byte ptr [eax], al
  04c081  add byte ptr [eax], al
  04c083  add byte ptr [eax], al
  04c085  add byte ptr [eax], al
  04c087  add byte ptr [eax], al
  04c089  add byte ptr [eax], al
  04c08b  add byte ptr [eax], al
  04c08d  add byte ptr [eax], al
  04c08f  add byte ptr [eax], al
  04c091  add byte ptr [eax], al
  04c093  add byte ptr [eax], al
  04c095  add byte ptr [eax], al
  04c097  add byte ptr [eax], al
  04c099  add byte ptr [eax], al
  04c09b  add byte ptr [eax], al
  04c09d  add byte ptr [eax], al
  04c09f  add byte ptr [eax], al
  04c0a1  add byte ptr [eax], al
  04c0a3  add byte ptr [eax], al
  04c0a5  add byte ptr [eax], al
  04c0a7  add byte ptr [eax], al
  04c0a9  add byte ptr [eax], al
  04c0ab  add byte ptr [eax], al
  04c0ad  add byte ptr [eax], al
  04c0af  add byte ptr [eax], al
  04c0b1  add byte ptr [eax], al
  04c0b3  add byte ptr [eax], al
  04c0b5  add byte ptr [eax], al
  04c0b7  add byte ptr [eax], al
  04c0b9  add byte ptr [eax], al
  04c0bb  add byte ptr [eax], al
  04c0bd  add byte ptr [eax], al
  04c0bf  add byte ptr [eax], al
  04c0c1  add byte ptr [eax], al
  04c0c3  add byte ptr [eax], al
  04c0c5  add byte ptr [eax], al
  04c0c7  add byte ptr [eax], al
  04c0c9  add byte ptr [eax], al
  04c0cb  add byte ptr [eax], al
  04c0cd  add byte ptr [eax], al
  04c0cf  add byte ptr [eax], al
  04c0d1  add byte ptr [eax], al
  04c0d3  add byte ptr [eax], al
  04c0d5  add byte ptr [eax], al
  04c0d7  add byte ptr [eax], al
  04c0d9  add byte ptr [eax], al
  04c0db  add byte ptr [eax], al
  04c0dd  add byte ptr [eax], al
  04c0df  add byte ptr [eax], al
  04c0e1  add byte ptr [eax], al
  04c0e3  add byte ptr [eax], al
  04c0e5  add byte ptr [eax], al
  04c0e7  add byte ptr [eax], al
  04c0e9  add byte ptr [eax], al
  04c0eb  add byte ptr [eax], al
  04c0ed  add byte ptr [eax], al
  04c0ef  add byte ptr [eax], al
  04c0f1  add byte ptr [eax], al
  04c0f3  add byte ptr [eax], al
  04c0f5  add byte ptr [eax], al
  04c0f7  add byte ptr [eax], al
  04c0f9  add byte ptr [eax], al
  04c0fb  add byte ptr [eax], al
  04c0fd  add byte ptr [eax], al
  04c0ff  add byte ptr [eax], al
  04c101  add byte ptr [eax], al
  04c103  add byte ptr [eax], al
  04c105  add byte ptr [eax], al
  04c107  add byte ptr [eax], al
  04c109  add byte ptr [eax], al
  04c10b  add byte ptr [eax], al
  04c10d  add byte ptr [eax], al
  04c10f  add byte ptr [eax], al
  04c111  add byte ptr [eax], al
  04c113  add byte ptr [eax], al
  04c115  add byte ptr [eax], al
  04c117  add byte ptr [eax], al
  04c119  add byte ptr [eax], al
  04c11b  add byte ptr [eax], al
  04c11d  add byte ptr [eax], al
  04c11f  add byte ptr [eax], al
  04c121  add byte ptr [eax], al
  04c123  add byte ptr [eax], al
  04c125  add byte ptr [eax], al
  04c127  add byte ptr [eax], al
  04c129  add byte ptr [eax], al
  04c12b  add byte ptr [eax], al
  04c12d  add byte ptr [eax], al
  04c12f  add byte ptr [eax], al
  04c131  add byte ptr [eax], al
  04c133  add byte ptr [eax], al
  04c135  add byte ptr [eax], al
  04c137  add byte ptr [eax], al
  04c139  add byte ptr [eax], al
  04c13b  add byte ptr [eax], al
  04c13d  add byte ptr [eax], al
  04c13f  add byte ptr [eax], al
  04c141  add byte ptr [eax], al
  04c143  add byte ptr [eax], al
  04c145  add byte ptr [eax], al
  04c147  add byte ptr [eax], al
  04c149  add byte ptr [eax], al
  04c14b  add byte ptr [eax], al
  04c14d  add byte ptr [eax], al
  04c14f  add byte ptr [eax], al
  04c151  add byte ptr [eax], al
  04c153  add byte ptr [eax], al
  04c155  add byte ptr [eax], al
  04c157  add byte ptr [eax], al
  04c159  add byte ptr [eax], al
  04c15b  add byte ptr [eax], al
  04c15d  add byte ptr [eax], al
  04c15f  add byte ptr [eax], al
  04c161  add byte ptr [eax], al
  04c163  add byte ptr [eax], al
  04c165  add byte ptr [eax], al
  04c167  add byte ptr [eax], al
  04c169  add byte ptr [eax], al
  04c16b  add byte ptr [eax], al
  04c16d  add byte ptr [eax], al
  04c16f  add byte ptr [eax], al
  04c171  add byte ptr [eax], al
  04c173  add byte ptr [eax], al
  04c175  add byte ptr [eax], al
  04c177  add byte ptr [eax], al
  04c179  add byte ptr [eax], al
  04c17b  add byte ptr [eax], al
  04c17d  add byte ptr [eax], al
  04c17f  add byte ptr [eax], al
  04c181  add byte ptr [eax], al
  04c183  add byte ptr [eax], al
  04c185  add byte ptr [eax], al
  04c187  add byte ptr [eax], al
  04c189  add byte ptr [eax], al
  04c18b  add byte ptr [eax], al
  04c18d  add byte ptr [eax], al
  04c18f  add byte ptr [eax], al
  04c191  add byte ptr [eax], al
  04c193  add byte ptr [eax], al
  04c195  add byte ptr [eax], al
  04c197  add byte ptr [eax], al
  04c199  add byte ptr [eax], al
  04c19b  add byte ptr [eax], al
  04c19d  add byte ptr [eax], al
  04c19f  add byte ptr [eax], al
  04c1a1  add byte ptr [eax], al
  04c1a3  add byte ptr [eax], al
  04c1a5  add byte ptr [eax], al
  04c1a7  add byte ptr [eax], al
  04c1a9  add byte ptr [eax], al
  04c1ab  add byte ptr [eax], al
  04c1ad  add byte ptr [eax], al
  04c1af  add byte ptr [eax], al
  04c1b1  add byte ptr [eax], al
  04c1b3  add byte ptr [eax], al
  04c1b5  add byte ptr [eax], al
  04c1b7  add byte ptr [eax], al
  04c1b9  add byte ptr [eax], al
  04c1bb  add byte ptr [eax], al
  04c1bd  add byte ptr [eax], al
  04c1bf  add byte ptr [eax], al
  04c1c1  add byte ptr [eax], al
  04c1c3  add byte ptr [eax], al
  04c1c5  add byte ptr [eax], al
  04c1c7  add byte ptr [eax], al
  04c1c9  add byte ptr [eax], al
  04c1cb  add byte ptr [eax], al
  04c1cd  add byte ptr [eax], al
  04c1cf  add byte ptr [eax], al
  04c1d1  add byte ptr [eax], al
  04c1d3  add byte ptr [eax], al
  04c1d5  add byte ptr [eax], al
  04c1d7  add byte ptr [eax], al
  04c1d9  add byte ptr [eax], al
  04c1db  add byte ptr [eax], al
  04c1dd  add byte ptr [eax], al
  04c1df  add byte ptr [eax], al
  04c1e1  add byte ptr [eax], al
  04c1e3  add byte ptr [eax], al
  04c1e5  add byte ptr [eax], al
  04c1e7  add byte ptr [eax], al
  04c1e9  add byte ptr [eax], al
  04c1eb  add byte ptr [eax], al
  04c1ed  add byte ptr [eax], al
  04c1ef  add byte ptr [eax], al
  04c1f1  add byte ptr [eax], al
  04c1f3  add byte ptr [eax], al
  04c1f5  add byte ptr [eax], al
  04c1f7  add byte ptr [eax], al
  04c1f9  add byte ptr [eax], al
  04c1fb  add byte ptr [eax], al
  04c1fd  add byte ptr [eax], al
  04c1ff  db 0x00
