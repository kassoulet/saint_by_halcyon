// Placeholder scene until the effect is ported: scrolling gradient.
export const placeholder = { render(scr, lt) { for (let i = 0; i < 64000; i++) scr.idx[i] = ((i % 320) + (i / 320 | 0) + (lt * 40 | 0)) & 255;
  for (let i = 0; i < 256; i++) { scr.pal[i*3] = i >> 2; scr.pal[i*3+1] = (i >> 3); scr.pal[i*3+2] = 63 - (i >> 2); } } };
