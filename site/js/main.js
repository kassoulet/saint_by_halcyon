// SAINT runner: S3M playback (libopenmpt via chiptune3) is the master clock; scenes are pure functions of music time.
import { ChiptuneJsPlayer } from '../vendor/chiptune3/chiptune3.js';
import { scenes, DURATION, MUSIC_END } from './scenes/index.js';

const W = 320, H = 200, SEEK = 5;
const cv = document.getElementById('screen'), ctx = cv.getContext('2d');
const img = ctx.createImageData(W, H), rgba = new Uint32Array(img.data.buffer);
const scr = { idx: new Uint8Array(W * H), pal: new Uint8Array(768) };   // 8-bit indexed + 6-bit-per-channel VGA palette, like the original
const hud = document.getElementById('hud-time'), hudScene = document.getElementById('hud-scene');

// CRT overlay (display only): scanline period = integer device px per source row, so no moire. Off by default.
const stage = document.getElementById('stage'), cb = document.getElementById('crt-cb');
try { cb.checked = localStorage.crt === '1'; } catch {}
function crtLayout() {
  const dpr = devicePixelRatio, fs = document.fullscreenElement === stage;
  const maxW = fs ? innerWidth : Math.min(960, document.body.clientWidth), maxH = fs ? innerHeight : Math.min(innerHeight - stage.offsetTop - 40, maxW * 3 / 4);   // 40 = room for the HUD line
  const k = Math.floor(Math.min(maxH, maxW * 3 / 4, fs ? innerWidth * 3 / 4 : 1e9) * dpr / H), ok = k >= 2;
  cb.disabled = !ok; cb.parentNode.title = ok ? '' : 'window too small for the CRT effect';
  const on = cb.checked && ok; stage.classList.toggle('crt', on);
  stage.style.height = on ? `${k * H / dpr}px` : ''; stage.style.width = on ? `${k * H * 4 / 3 / dpr}px` : '';
  stage.style.setProperty('--p', `${k / dpr}px`);
}
function crtSet() { try { localStorage.crt = cb.checked ? '1' : '0'; } catch {} crtLayout(); }
cb.addEventListener('change', crtSet);
addEventListener('resize', crtLayout); document.addEventListener('fullscreenchange', crtLayout);
matchMedia(`(resolution: ${devicePixelRatio}dppx)`).addEventListener?.('change', crtLayout);
crtLayout();

const STILL = new URLSearchParams(location.search).get('still');   // ?still=SECONDS renders one moment without audio (debug / screenshots)
let player, started = !!STILL, paused = false, tBase = 0, tCtx = 0;          // music time at audio-context time tCtx
const now = () => (player?.context.currentTime ?? 0);
const time = () => paused ? tBase : Math.min(DURATION, tBase + now() - tCtx);
function setTime(t) { tBase = Math.max(0, Math.min(DURATION - 0.1, t)); tCtx = now(); }

async function start() {
  document.getElementById('start').remove();
  player = new ChiptuneJsPlayer({ repeatCount: 0 });
  await new Promise(r => player.onInitialized(r));
  player.onProgress(m => { tBase = m.pos ?? tBase; tCtx = now(); });   // resync to the real playback position
  player.onEnded(() => { tBase = MUSIC_END; tCtx = now(); });   // the demo goes on for the silent final picture
  const buf = await (await fetch('assets/audio/saint.s3m')).arrayBuffer();
  player.play(buf); setTime(0); started = true;
}
function togglePause() { if (!started) return; if (paused) { setTime(tBase); player.unpause(); paused = false; } else { tBase = time(); player.pause(); paused = true; } }
function seek(d) { if (!started) return; const t = Math.max(0, time() + d); if (t < MUSIC_END) player.setPos(t); setTime(t); }

addEventListener('keydown', e => {
  if (e.code === 'Space' || e.code === 'KeyP') { e.preventDefault(); togglePause(); }
  else if (e.code === 'ArrowLeft') { e.preventDefault(); seek(-SEEK); }
  else if (e.code === 'ArrowRight') { e.preventDefault(); seek(SEEK); }
  else if (e.code === 'KeyF') (document.fullscreenElement ? document.exitFullscreen() : stage.requestFullscreen?.());
  else if (e.code === 'KeyC') { cb.checked = !cb.checked; crtSet(); }
});
if (STILL) document.getElementById('start').remove(); else document.getElementById('start').addEventListener('click', start);

const fmt = s => `${Math.floor(s / 60)}:${String(Math.floor(s % 60)).padStart(2, '0')}`;
function frame() {
  requestAnimationFrame(frame);
  if (!started) return;
  const t = STILL ? +STILL : time(), i = scenes.findIndex(s => t >= s.start && t < s.end), sc = i < 0 ? scenes[scenes.length - 1] : scenes[i];
  sc.prepare();                    // load + build the current scene (idempotent)
  scenes[i + 1]?.prepare();        // ... and warm the next one during this scene, so the boundary has no hitch
  sc.render(scr, t - sc.start, t);
  for (let i = 0; i < W * H; i++) { const p = scr.idx[i] * 3; const r = scr.pal[p], g = scr.pal[p + 1], b = scr.pal[p + 2];
    rgba[i] = 0xff000000 | ((b << 2 | b >> 4) << 16) | ((g << 2 | g >> 4) << 8) | (r << 2 | r >> 4); }
  ctx.putImageData(img, 0, 0);
  hud.textContent = `${fmt(t)} / ${fmt(DURATION)}${paused ? '  ⏸' : ''}`; hudScene.textContent = sc.name;
}
requestAnimationFrame(frame);
