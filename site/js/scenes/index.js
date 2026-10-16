// Scene timeline in music time (s). The demo's order counter [12bf] = S3M order + 1 (measured with tools/poll_ram.py); parts return on these boundaries:
// intro ends at S3M order 1 row 60 (footage 0-141), P1 from order 2 (after ~0.4 s of loading) to order 4 row 60, P2 -order 11, P3 -21, D -23, A -25, B -27, intro again 27-29, E 29-34, F 34-38, C 38-end, then the final picture.
import { partI } from './partI.js';
import { part1 } from './part1.js';
import { part2 } from './part2.js';
import { part3 } from './part3.js';
import { partD } from './partD.js';
import { partA } from './partA.js';
import { partB } from './partB.js';
import { partI2 } from './partI2.js';
import { partE } from './partE.js';
import { partF } from './partF.js';
import { partC, partFinal } from './partC.js';
export const MUSIC_END = 262.3;     // S3M orders 0-44; the order-45 marker ends the module
export const DURATION = MUSIC_END + 10;   // ... followed by the 700-tick final picture
export const scenes = [partI, part1,
  part2, part3, partD, partA, partB, partI2, partE, partF, partC, partFinal];
