// Scene timeline in music time (s), from the demo's own order counter [0x12bf] (S3M order starts, see tools/s3m_timeline.py):
// intro = orders 0-2, P1 = 3-5, P2 = 6-11, P3 = 12-21, D 22-23, A 24-25, B 26-27, E 28-34, F 35-38, C 39-44, then the final picture.
import { partI } from './partI.js';
import { part1 } from './part1.js';
import { part2 } from './part2.js';
import { part3 } from './part3.js';
import { partD } from './partD.js';
import { partA } from './partA.js';
import { partB } from './partB.js';
import { partE } from './partE.js';
import { partF } from './partF.js';
import { partC, partFinal } from './partC.js';
export const MUSIC_END = 262.3;     // S3M orders 0-44; the order-45 marker ends the module
export const DURATION = MUSIC_END + 10;   // ... followed by the 700-tick final picture
export const scenes = [partI, part1,
  part2, part3, partD, partA, partB, partE, partF, partC, partFinal];
