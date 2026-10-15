# Reversing SAINT.EXE — process log

Goal: a JavaScript re-implementation of *SAINT* (halcyon & da jormas, Assembly 1997), documented. Work log, newest facts at the bottom of each section.

## 1. What the EXE is
* `SAINT.EXE` (2 583 609 B): a 2.6 KB real-mode **Blinker-style stub** (header tag `BL20`) + an overlay that is a **PMODE 32-bit program**. The stub opens `SAINT.EXE` itself, loads the overlay chunk by chunk, then PMODE switches to 32-bit protected mode (VCPI/XMS/DPMI probing, messages "386 or better not detected!!!"…).
* Almost everything after the stub is **stored uncompressed**: the flat program image is `EXE[0x1d45…]` ↔ guest RAM `0xb9c0 + offset` (PMODE DS/CS base = `0xb9c0`, found by scanning the GDT in a RAM dump). All the disassembly addresses in `work/*.asm` are *program offsets* (phys − 0xb9c0).
* Only `SAINT.EXE` is ever opened by the demo (DOSBox-X `files` log); names like `ratavek.juu`, `kakkakak.aaa` embedded in the code are decoys/placeholders.

## 2. Toolchain (all in `tools/`)
| tool | purpose |
|---|---|
| `dbx.conf`, `rec.sh` | run the demo in **DOSBox-X** (unpacked from the Ubuntu .deb, no root) on Xvfb; record video with ffmpeg x11grab and audio with `SDL_AUDIODRIVER=disk`. *Needs* `core=normal`, `cycles=200000`, `SDL_AUDIODRIVER=dummy|disk` or the demo freezes after ~1 min. |
| `grab.py` | dump the 32 MB guest RAM of the running DOSBox-X (via `/proc/PID/mem`, located by the BIOS data area COM ports). |
| `dis2.py`, `x87js.py` | Capstone flat disassembler with labels; x87 → JS pseudo-code translator (stack resolved to temporaries). |
| `oracle.py` | **Unicorn oracle**: loads a RAM snapshot rebased at 0 and runs the demo's own frame loop → exact reference frames, unit-test harness for ported functions. (`LOOP/WAIT/TICK` must match the *part* the snapshot is in.) |
| `extract_rix.py` | extracts all RIX3 images to PNG. |
| `s3m_timeline.py` | S3M order start times. |
| `emu1.py` | first (abandoned) attempt: emulating the real-mode unpacker stub in Unicorn. |

## 3. Assets
* **Images**: ColoRIX `RIX3` files: `'RIX3', w16, h16, 0xAF, storage byte (0), 768 B VGA palette (6-bit), w×h pixels`. 17 images extracted into `site/assets/img/` (logos, credits, 256×256 textures for the tunnels, the bull/sailor/8-ball sprites).
* **Music**: one **Scream Tracker 3 module** (`da tonemonob itch`, "3 tunes mixed to 1", 4 channels, 359 368 B) stored raw in the EXE at 0x115e03 → `site/assets/audio/saint.s3m`. Played in the browser with **libopenmpt** (chiptune3 AudioWorklet).

## 4. Program structure (findings)
* Engine banner: "halcyon super kolmedee enkine (tm)". Frame = 320×200×8bit (mode 13h), palette via DAC with a 3-palette fade performed in the timer ISR.
* Three "part" main loops: `P1` at `0x2c885`, `P2` at `0x305b8`, `P3` at `0x34761` (+ an intro that plays an animation). Each: wait for retrace tick → copy back buffer to VGA and clear it → compute camera (cubic spline `0x1f2c0` through key tables, 10 floats/key) → rotation matrix → **tunnel grid**: 41×26 vertices are transformed and passed to a *warp function* `[0x4c00]` (ray / cylinder intersection returning texture u, v and a depth shade) → 8×8-pixel bilinear interpolation of (u,v,shade) with two table lookups per pixel (`tex[v,u]`, `shade[z,tex]`) → depth-sorted object list (sprites, billboards, flat/textured meshes with clipping) → palette fade/flags → keyboard.
* Warp functions: `0x29d9a` (cylinder + wobble), `0x29f62` (same, no wobble), `0x2a0f5`, `0x2a22a`, `0x2a30b`. The hidden "try some keys" feature toggles these (`[0x41c4..c6]`) and palettes (`[0x419b..]`).
* Timer ISR (`0x35740` in P3) advances per-tick state and a row/order counter (`[0x12ca]`, `[0x12bf]`).

## 5. Open questions
* Mapping demo scenes ↔ music time (see `docs/timeline.md` once measured).

## 6. Part 1 port (done) — method and results
Method per component: (1) read the asm (`dis2.py`, `x87js.py`), (2) port to JS, (3) **unit-test against the Unicorn oracle** with test vectors exported by `tools/export_p1*.py` (needs a RAM snapshot from `grab.py` taken during part 1, e.g. at t=100 s of a DOSBox-X run). Tests live in `tools/tests/*.mjs` (they read `/tmp/p1test`).

| component (original address) | JS | validated |
|---|---|---|
| warp "plane" `0x2a0f5`, "cylinder" `0x29d9a` + 8×8 interpolation + 2 lookups | `engine/tunnel.js` | bit-exact (0 / 64000 px) |
| timer ISR `0x2d8d0` (palette fade, camera speed, wobble phases, warp morph) | `parts/p1_tick.js` | 700 ticks, exact |
| camera spline `0x1f2c0`, look-at `0x15d91` | `engine/camera.js` | exact (1e-14) |
| frustum cull + depth range `0x150d4`, object matrix `0x15f1b`, back-face `0x16100`, transform `0x16244`, project `0x162fd`, face list/keys `0x16ea7`, radix sort `0x170f7` | `engine/mesh.js` | flags, z-range, 195 list items, sorted keys, face visibility & levels all identical |
| clipper `0x14d54…`, "filter" triangle `0x1fc7b`, flare handler `0x2d417` + sprite blit `0x298b7` | `engine/mesh.js` | whole frame (tunnel + 33 crystals + 33 flares) identical to the oracle except 1 pixel |

Findings worth remembering
* The three part loops are **tick-driven**: all state advances in the 70 Hz retrace ISR; a frame just samples it. The JS keeps the same structure (`advance(ticks)` then `render`), which also makes seeking = replay.
* View space looks down −Z; the cull code negates positive x/y (both end ≤ 0) before `atan2`.
* The drawing stage runs with the FPU in **round-toward-zero** (`fldcw 0xC00`), the setup stage in round-to-nearest.
* The "crystals" are not shaded polygons: each pixel under a triangle is remapped through a 64×256 table (`table[level][pixel]`), so they brighten/tint the tunnel behind them ("filter" triangles). Flares are 256-wide glow sprites, mip-selected by distance, drawn through the same table.
* Objects are generated at load time (positions, crystal meshes); they are exported from the snapshot (`site/assets/p1/objects.json`) rather than re-generated. Rotation angles are plain per-tick accumulators; the cluster also spins about Z by `0x4d9/65536` rad per tick.
* Quantised texture/shading tables, the filter table and glow sprites are also load-time generated and exported (`tex.bin`, `shade.bin`, `filter.bin`, `sprites.bin`).

## 7. Part 2 port
* Same engine; differences: palette C starts as the *negative* of palette A (so the part fades in from an inverted image), tunnel warp = cylinder morphing into a **sphere** (`0x2a30b`), 50 dust glows generated by an LCG at init, one 105-vertex/206-face **star** whose vertices are `shapeA*w + shapeB*(1-w)` with `w = 4·sin(3·sin(a)·cos(b))` (not limited to 0..1, so it overshoots), vertex normals are averages of face normals (`0x1725c`, which uses a table-based fast 1/√x at `0x29343`), Gouraud intensity `I = 128·(d·N)/|d|²`, and a perspective-correct textured Gouraud rasteriser at `0x1fefc` (3 interpolants per pixel in a carry-chained 16.16 accumulator, divide every 16 pixels).
* Validation: tunnel (with warp blend) 8/64000 px different; visibility, depth range, list (94 items), vertex projection and lighting identical; star pixels approximate (own scanline implementation, `engine/mesh.js: texTri`).
* Quirk: the sphere warp's wobble reads a float (`[0x296b0]`) that is a leftover of part 1's last flare rectangle; reproduced as a constant (1042.643).

## 8. Part 3 port, and what comes after
* Part 3 (orders 12-21): sphere-warp tunnel as background (space texture), **one 1 232-vertex / 2 464-triangle flat-shaded girder mesh**, three **anti-aliased wire-frame tubes** (`'Line'` objects), 50 dust glows on spline paths (rates/start keys from the same LCG as part 2), two camera paths (A/B) that a **script table** cuts between (`[0x33c20]`, entries = order,row,overlay-mode), a warp morph, and overlay sprites ("8" ball / "chemical floors") copied from a 320×200 image at script times.
* Findings: (1) faces keep a per-face "glow level" `[+0x2c]` that decays 1/frame to a floor of 16 or 24 (parity of the face index), and in this part the level is *not* recomputed (`[0x4664]=0` while listing), the flat colour is `clamp((level + z·0.1) << 2)`; (2) faces crossing the near plane are clipped in 3-D (`0x1592e`/`0x15860`) into fans of new faces; (3) lines are drawn by `0x293a4`: two pixels per row/column through filter-table rows `31-frac` and `frac` — an anti-aliased *additive* line; (4) the x87 runs with **24-bit mantissa precision** (PMODE sets it), which is why speeds read back as float32 values.
* Validation: whole frame (tunnel + 986 front-facing / 216 listed triangles + lines + flares) **identical** to the oracle (0 / 64000 px); 900 ticks of the ISR identical (camera paths, script pointer, A/B cuts, warp morph, palette ramps).
* **The demo does not end at order 22**: P3's loop exits there but six more part loops follow (orders 22-45; loops at `0x3a0a2, 0x3d14e, 0x41220, 0x4500d, 0x4867a`, ISRs `0x3a9e0, 0x3dfd0, 0x421a0, 0x45a10, 0x49080`; the engine is reused: bull mesh with perspective texture mapping, textured sphere, grid floor, cave tunnel…). The demo's total length is therefore the whole module: orders 0-44 ≈ 262 s. The runner's duration was extended accordingly; those parts and the intro are placeholders.
* DOSBox-X note: with `cycles=40000` the emulation keeps (almost) real time, so snapshots can be taken at known music positions (`/tmp/snaps/guest_<s>.bin`, order ≈ seconds/7).

## 9. Map of the remaining parts (orders 22-44) — analysis only
Found by reading every `cmp word [0x12bf], n` in the ISRs after the player (`0x37e00`) and by running each candidate loop under the oracle on snapshots taken at the *start of each order* (`tools/grab_orders.py`, DOSBox-X at `cycles=40000`, ~real time; it reads guest RAM through `/proc/PID/mem` — open it with `buffering=0`, otherwise you read a stale page cache).

| part | loop head / wait / ISR | ends at order | what it shows (oracle frames) |
|---|---|---|---|
| A | `0x3a0a2` / `0x3a0ac` / `0x3a9e0` | 26 (runs 22-25) | no tunnel call: object-only scene, pink/brown horizon, line/flare/sprite handlers |
| B | `0x3d14e` / `0x3d158` / `0x3dfd0` | 28 (26-27) | grid-lined cone/tunnel with filter-lit shards |
| E | `0x4500d` / `0x45017` / `0x45a10` | 35 (28-34) | textured **bull** mesh on a grid floor, textured **sphere**, grid cage |
| F | `0x4867a` / `0x48684` / `0x49080` | 39 (35-38) | cave tunnel with a glowing star |
| C | `0x41220` / `0x4122a` / `0x421a0` | 45 (39-44) | orange scene with shards; the last stage shows a 320×200 picture for 700 ticks and exits |
Orders 0-2 (intro): the footage is decoded into a 320×200 buffer at `0x1e0000` from delta-coded planes (`0x52040…`, `0x53480…`); the loop that does it is not any of the loops above and is still unidentified.
Per-part porting recipe (as for parts 1-3): export assets + a mid-frame test vector with `export_pN.py`, port the ISR (`pN_tick.js`), port the loop (`pN.js`) reusing `engine/*`, validate against the oracle. New engine pieces needed: a bit-exact perspective-correct texture mapper (`0x1fefc`; currently approximate), the rotating-sprite handler `0x296d8`, grid/cage line objects.

## 10. Perspective texture mapper (`0x1fefc`) and parts A, B
* `engine/texmap.js` is a faithful port: per scanline the edge slopes of x, 1/z, u/z, v/z, I/z are stepped in float32 (the original stores them in memory), the left pixel's attributes come from the left edge + the x-gradient; each span is split into a remainder (n mod 16) and blocks of 16; exact division at the block ends, **carry-chained fixed-point stepping inside** (V fraction in ECX high, intensity in ECX low, U fraction in EDX high, V integer in DL, U integer in BL; carries from `add ecx` flow into `adc edx` / `adc bl`, so an intensity overflow bumps V's LSB). Validated per triangle against the oracle (`tools/cap_tmap.py`, `tools/tests/tmap.mjs`): 40/40 and 160/177 triangles identical, the other 17 differ by 1-3 pixels (extended-precision rounding of one intermediate).
* The back-end flat/dark special case: when the three vertex intensities sum to 0 the face is flat-filled with colour 0 (fast path).
* Part A (loop `0x3a0a2`): no tunnel; light constant `[0x4950]=192`; camera `t += 0.0173` per tick; palette `C` is black, `ebp` ramps 0→1023 by 16/tick and back down at order 25 row ≥ 32. Part B (loop `0x3d14e`): cylinder warp *without* wobble (`0x29f62`), grid cone made of `'Line'` objects, filter-triangle mesh with an extra `+0x80` base level, fade out at order 27 row ≥ 32; both share the ISR template of part A (`tools/tests/pa_*.mjs`, `pb_*`).
* Part E (loop `0x4500d`) mutates its mesh every frame (`0x14b00`: rotate the vertices by the object matrix, reset the rotation ints, clamp into a box of half-size `[0x48c4]` around `-pos`), so its shape is stateful and frame-rate dependent.


## 11. The remaining parts: D, E, F, C and the intro

**Corrected map.** The sequencer (`0x4b625…`, tail of the program) calls the part functions in this order: intro (`0x4ba97`, loop `0x4bab5`), P1 `0x2c7db`, P2 `0x302df`, P3 `0x343d7`, **D** `0x37777` (loop `0x377ac`, ISR `0x37e70`), A `0x39df0`, B, E, F, C. D was missed in section 9: P3 ends at order 22, D runs orders 22–23 and A only 24–25 (A's loop exits at `[12BFh] ≥ 0x1a`). A therefore starts at 124.444 s, not 117.333 s.

**Row clock.** `[12CAh]` is the S3M *row* and parts switch on `(order,row)` thresholds. The module changes speed (orders 12–27 have 64 rows of 55.6 ms, others about 110 ms), so a constant row duration is wrong; `tools/s3m_timeline.py` now also writes `row_times.json` (start time of every row, speed/tempo/jump/break aware) and `musicpos.js` uses it. All oracle frame dumps (`tools/export_e_frames.py`) are fed with the same clock.

**Reconstructing a part's first tick.** The DOSBox snapshots are taken at an order boundary, i.e. a few ticks after a part started. The state evolves by constant increments per tick, so the first tick is recovered by subtracting them, and the result is checked on exact figures: part F: `rot1 = 502656 = 528 × 0x3b8` and the spline phase `t = 0.9632 = 528 × 0.0094 − 4` (so it started at segment 21, t = 0); part C: `t = 0.095256 = Σ` of six eased steps (so it started at 0), shard rotations `= 6 × (−200, 412, −502)`; part D: counters `6200 = 10 × 0x26c`. `tools/patch_{f,c,d,i}_start.py` write the rewound snapshots.

**Validation of stateful parts.** Part E mutates its mesh every frame (rotate vertices, clamp into a box), so its frames depend on the whole history. `tools/export_e_frames.py snapshot part out t0 k1,k2…` runs the original loop for *k* frames (order/row fed from the real music clock) and saves frames *k*; `tools/tests/p{e,f,c,d,i}_frames.mjs` replays the JavaScript tick by tick and diffs the last one.

**Findings worth knowing**
* The per-object `+4` word is *only the frustum-cull result* (written by `0x150d4`); E starts with the sphere flagged hidden because the ISR clears its high word at order 0x1f.
* Line sort keys are masked by `[17024h]`; in E the mask is 0, so lines are drawn in index order, and lines cut by the near plane are appended *after* all others (this fixed ~300 pixels).
* Flare handler `0x455ac` takes its size from `[0xefe4]`, the *second* flare record, even when only one exists.
* Handler for textured faces: if the three vertex intensities sum to 0 the face is filled flat with colour 0 (this matters in F where `[4950h]` = 10 makes most vertices unlit).
* Part C warp `0x2a22a`: plane z = −300, `u,v = hit·[7F40h] + 128`, fog `63 − min(−600 t, 63)`; a second warp (the sphere) is cross-faded in when the spline index passes 0x410, by 1/1050 per tick. The directional sprite (`0x296d8`) picks one of 40 views of a sheet at `0x680000` from `atan2` of the camera direction.
* D builds its grid after the blit, so a frame shows the previous frame's grid; with that the part is pixel-exact for its 498 ticks (palette tables A/B/C = black / grey ramp / the real palette: the "flashes" are `ebp` jumping to 0 on rows 16 and 24 of every 32).
* Intro: the radial vignette in the smear is the table `T0[h][l] = h·l` (zero for h = 255) and `T1[h][l] = (255−h)·l`, so the two recursive passes are `out = (m·neighbour + (255−m)·pixel) >> 8` applied twice with the previous result carried along; the footage frame depends only on `floor(tick/7) mod 142`, so the intro is frame-rate independent.

**Results** (pixels differing from the original over a 64 000-pixel frame; palettes always equal): intro 0, D 0, E 40–80, F 270–1500 (texture mapper rounding, see §10), B 2, A ≈ 700. C 3–344 (nine frames from tick 0 to 3500, checked with the earlier constant-row feed; frames 0–900 also re-checked with the real row clock).

**What is not reproduced**: sub-tick effects of the real machine (the original loop's frame rate), and the ~0.4 s of silent loading between the intro and part 1.

## 12. Scene boundaries measured on the original
`tools/poll_ram.py SECONDS` runs SAINT.EXE in DOSBox-X and logs order `[12bf]`, row `[12ca]` and the sequencer's part index `[4af10]` (it increments when a part returns) every 10 ms; (order,row) → music time through `row_times.json`. Findings:
* **P1 ends at order 5 row 60** (42.222 s; its loop tests `row >= 0x3c`), not at order 6: P2 therefore starts at 42.222 s. All other parts return exactly on an order start.
* **The intro routine (`0x4ba97`) is called a second time between B and E** (`[4aea4]=0x1e` → it runs until order 30): the footage plays again during orders 28-29 (138.69-153.236 s) from frame 100, without logos, starting from `ba8=16, b8c=120240, b90=160320`, palette C all 0x3f (`scenes/partI2.js`). **E starts at order 30 (153.236 s)**, not 28; the earlier map was built from snapshots labelled by time and mislabelled E.
* Timeline now: intro 0-21.333, P1 -42.222, P2 -81.778, P3 -117.333, D -124.444, A -131.556, B -138.69, intro again -153.236, E -189.599, F -218.69, C -262.3, final picture.
* DOSBox-X at 40000 cycles/ms runs the frame loops slower than the target machine, so animation *rates* measured this way are not comparable with the port's 70.086 Hz tick; only the structure (exit tests, order/row of transitions, initial state) is.
