# SAINT — JavaScript port

A faithful, effect-by-effect port of **SAINT.EXE**, the DOS demo by
**Halcyon & Da Jormas** (ASM 1997, final version), to plain JavaScript running in the browser.

- Code: blitz · Graphics: shrine, placidity, croaker · Meshes: ren
- Music: naks, pam, vesuri (Da Jormas) · Player: asmu · PMODE: tran

The original files (`SAINT.EXE`, `README.1ST`, `FILE_ID.DIZ`) are kept untouched in the repo root.

## Run it

The site is static, no build step:

```sh
python3 -m http.server -d site
```

Then open <http://localhost:8000/>. It has a landing page, the demo runner
(`demo.html`: Space/P = pause, ←/→ = ∓5 s) and a write-up (`writeup.html`).
Pushes to `main` deploy `site/` to GitHub Pages (`.github/workflows`).

To run the original: `dosbox-x -conf dosbox.conf` (or any DOS box with a Sound Blaster and 8 MB RAM).

## Layout

| Path | Content |
|------|---------|
| `site/` | The port: `js/parts` and `js/scenes` (one module per demo part), `js/engine`, audio and assets |
| `tools/` | Reverse-engineering helpers: Unicorn/Capstone oracle, DOSBox-X capture scripts, data exporters |
| `tools/tests/` | Frame-by-frame comparisons of the JS parts against the emulated original |
| `work/` | Scratch data from the reverse |
| `docs/PROCESS.md` | Full log of how the demo was reverse engineered |

## Status

All parts are ported. Compared with the original running under a CPU emulator, most parts
match pixel for pixel; a few differ slightly (texture mapper rounding, x87 extended precision).
Details are in `docs/PROCESS.md`.

## Credits and rights

All demo content belongs to its original authors. This repo is a preservation/educational port.
