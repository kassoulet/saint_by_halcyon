# Saint (Halcyon & Da Jormas, Assembly 1997): the assembly tricks

Notes on the inner loops of `SAINT.EXE`, found by disassembling the 32-bit flat program (capstone) and checked against the raw EXE bytes. Addresses are **program offsets** (the Blinker BL20 stub is followed by an uncompressed PMODE flat program: file offset = `0x1d45 + program offset`, guest RAM = `0xb9c0 + offset`). The disassemblies are in `work/*.asm`. Every snippet below was re-read from the EXE; nothing was run on the original except where a section says "model".

The recurring idea: **never build an index with shifts and masks when a register half can be loaded directly**. The 64 KB-aligned tables (texture + shade table, filter table) let the code assemble a 16-bit table index with `mov al/ah/ax`, and the CPU does the rest.

## 1. The tunnel pixel loop: an index built from register moves (0x2cddc..0x2cfc5)

Each 8x8 block of the 320x200 tunnel is interpolated bilinearly in 16.16 fixed point, then every pixel does two table lookups, `shade[z][tex[v][u]]`:

```
mov  eax,[0x4670]        ; texture base, 64K aligned: the high half stays constant
...
mov  ax,si               ; fill the low 16 bits from the interpolators
mov  al,ch               ; (the later byte moves overwrite al/ah)
mov  al,[eax]            ; texel = tex[v][u]
mov  ah,dh               ; ah = shade level (z)
mov  bl,[eax+0x10000]    ; shade table lives 64K after the texture
...
mov  [edi],bx            ; two pixels per store
add  edi,0x138           ; next row of the block (320-8)
```

Why it is clever: there is no `and`, no `shl`, no `or`. The texture is 256x256 = 64 KB and 64 KB-aligned, so `eax`'s low 16 bits form the table index once `al` and `ah` are filled from the high bytes of the interpolators, with no masking. The shade table sits at `tex+0x10000`, so the second lookup reuses the same `eax` with only `ah` replaced by the level. Pixels are paired in `bx` (`bl`, `bh`) for one 16-bit store. Rows per block are counted in `[0x2be98]` (8), the per-row step count is `(R-L)>>11` with `sar 8` on the accumulators.

## 2. Perspective-correct textured triangles with a carry chain (0x20679, `tmap.asm`)

```
mov  eax,[0x1f928]       ; constant: texture base, 64K aligned
mov  ah,ch               ; v
mov  bh,dl               ; high byte of the third index
inc  edi
add  ecx,[0x1fa28]       ; du  (low part)
mov  al,[ebx]
adc  edx,[0x1fa2c]       ; dv, carry from the previous add
mov  al,[eax]            ; shade / texel lookup
adc  bl,[0x1fa30]        ; third accumulator, carry from the second
mov  [edi],al
```

Why it is clever: three accumulators (`ecx`, `edx`, `bl`) are updated with an `add` / `adc` / `adc` chain, so the fractional overflow of one is the carry into the next. That is a multi-word fixed-point DDA with no extra instructions for carries. The loop is unrolled, with one real division every 16 pixels (the usual perspective-correct scheme). `engine/texmap.js` reproduces the carry chain exactly, so the JS and the EXE agree on the rounding of every texel step.

## 3. The remap loop for translucent triangles and glows (0x1fddb..0x1fde4)

```
mov  al,[edi]            ; current framebuffer pixel
inc  edi
dec  ecx
mov  al,[eax]            ; filter[level][pixel]
mov  [edi-1],al
```

with `eax = [0x48bc]` (the 64 KB-aligned filter table, 64 levels x 256 pixels) and the level made by `mov ah,cl; shr ah,2` (0..63). The "translucent" crystals of part 1 are therefore not an alpha blend at all: the screen byte is looked up in a pre-computed palette-to-palette table, which is only possible because the palette is the same for all pixels. The triangle setup is just as lean: vertex sort by three compare/`xchg` pairs (0x1fc7b), and the side of the long edge is chosen by `test [0x48d0],0x80000000` followed by one `xchg ecx,edx`.

## 4. The anti-aliased line drawer with self-modified immediates (0x293a4..0x295e3, x-major 0x295e6..0x2967e)

On entry the drawer patches the filter-table address into the code:

```
mov  ecx,0x12345678      ; imm32 patched at 0x295d8 / 0x29670  (= [0x48bc])
mov  dl,[edx+0x12345678] ; imm32 patched at 0x295c2 / 0x29654  (= [0x48bc] + 0x1f)
```

Absolute values come from `cdq / xor / sub`. The 16.16 coordinate gives a 5-bit fraction with `shr edx,0xb; and edx,0x1f`. Then:

```
sub  ecx,edx             ; 31-frac
mov  ch,[pix]            ; ... build (31-frac)<<8 | pixel with a byte move
xchg ch,cl
mov  dh,[pix+1]          ; build frac<<8 | pixel for the neighbour
xchg dh,dl
```

The two neighbouring pixels are each remapped through a filter-table row (`31-frac` and `frac`) and written back additively, which is exactly the two-pixel coverage split of a Wu line. The table does the intensity maths; the loop contains no multiply. Patching immediates instead of keeping the table pointer in a register frees `ebx`/`esi` for the DDA, and `engine/lines.js` mirrors the same arithmetic.

## 5. Two-pass radix sort of 8-byte records (0x170f7..0x171ee)

The depth sort of the object list is a counting sort on a 16-bit key, 8 bits at a time, ping-ponging between two buffers (`[0x16634]` and `[0x16638]`):

- histogram at `0x16a44`, prefix offsets at `0x16644` (`shl edx,3`: records are 8 bytes, so the offset is premultiplied),
- pass 1 keys on the low byte (`dl = al`), pass 2 on the next byte (`mov dl,ah`, with `inc esi` in the histogram loop).

It is stable and O(n) with no comparisons. The JS port uses a stable sort on the 16-bit key, which gives the same order.

## 6. Fast 1/sqrt with a generated table (0x29343, generator 0x29300)

The face normal of every triangle is normalised with a table lookup instead of `fsqrt`/`fdiv`. The generator (`esi=0`, 0x2000 entries at 0x21300) fills

```
table[k] = (bits(1/sqrt(float((k<<11) | 0x3f000000))) + 0x200) & 0x7ff800
```

and the function does

```
ecx = 0x5f000000 - ((x>>1) & 0x3fc00000)      ; halve the exponent, negate
ecx &= 0xff800000
ecx |= table[(x>>9) & 0x7ffc]                 ; mantissa from the table
```

The result is used at 0x17329 to normalise the cross product, then scaled by 63 (0x1725c) to give the 0..63 shade level of the flat-shaded faces.

**This is a model, not a run on the original.** In a simulation of the formula, the maximum relative error is 1.8e-4 over 300k log-uniform inputs. The exception is the rare bins whose left-edge value is an exact power of two (x in [4^n, 4^n(1+2^-11)) come out at half the value, e.g. x = 1.0 gives 0.5), about 0.02% of the inputs. The exponent trick and the table are the verified parts (read from the bytes); the error figures are from the model.

## 7. Frame start: copy and clear in the same loop (0x2c8ac)

```
mov  eax,[esi]           ; background
mov  [esi],ebp           ; ebp = 0: clear the source
mov  [edi],eax           ; copy to the frame
```

8 bytes per iteration, `0x1f40` iterations = 64000 bytes. One pass over memory copies one buffer (`[esi]`) to the other (`[edi]`) and zeroes the source with `ebp`.

## 8. The ISR palette blend: three palettes, one multiply per channel step (0x42240)

The retrace ISR (part C shown; every part has the same scheme) walks the 768 DAC values with a negative index that doubles as the loop test:

```
esi runs from 0xfffffd00 up to 0 (768 entries); inc esi / jne
mov  al,[esi+0x3f6e0]    ; palette A
mov  bl,[esi+0x3f9e0]    ; palette B
mov  cl,[esi+0x3fce0]    ; palette C
sub  eax,ebx ; imul eax,edi ; sar eax,0xa ; add eax,ebx    ; lerp(A,B, edi/1024)
sub  eax,ecx ; imul eax,ebp ; sar eax,0xa ; add eax,ecx    ; lerp(.,C, ebp/1024)
out  dx,al               ; DAC data port 0x3c9
```

Why it is clever: `x = b + ((a-b)*t >> 10)` is one `sub`, one `imul`, one `sar`, one `add` per lerp, and the blend is evaluated per tick, so fades, the white flash and the A/B pulse are all just two numbers (`edi`, `ebp`, range 0..1023) changed by the tick code. The loop index counts up to zero, so `jne` is free after `inc`. The JS port replicates it in `palette()`; the palettes were found equal in all the checked frames.

## 9. The intro: smear filters with interleaved tables (0x4ba97..)

The intro (footage frame = floor(tick/7) mod 142) is stored as nibble RLE (escape `0xf0`, decoder at 0x4bb88), upsampled 2x with `shl 3` and shift-averages (0x4bbd7), then smoothed by two passes (0x4bc98 and 0x4bcd4):

```
mov  cl,[esi-0x13e]      ; pixel above-left
mov  ch,[edi]            ; ...
mov  dl,[esi]
mov  dh,ch
mov  ah,ch
mov  ebx,[ecx*8+IMM]     ; T0/T1 interleaved, stride 8 (IMM patched at 0x4bca9, 0x4bcb1, ...)
add  ebx,[edx*8+IMM]
mov  dl,bh               ; bh = sum>>8 for free
mov  ebx,[eax*8+IMM]
add  ebx,[edx*8+IMM]
mov  al,bh
mov  [esi-1],bh
```

The tables are `T0[h][l] = h*l` (0 for h=255) and `T1[h][l] = (255-h)*l`: a multiply by a weight and by its complement, so each lookup yields a partial product and the `add` of two lookups is a blend. Interleaving T0 and T1 at stride 8 lets one scaled index (`ecx*8`) address both in one dword read, and `bh` holds the sum divided by 256 without any shift. The second pass runs backwards (`+0x13e`), so the smear propagates in both directions.

## What was not verified

- Cycle counts: none measured; the claims are about instruction structure, not speed.
- The rsqrt error figures (section 6) come from a model.
- The self-modified addresses were read from the EXE bytes, not observed at run time.
