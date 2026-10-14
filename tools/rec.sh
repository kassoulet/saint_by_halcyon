#!/bin/bash
# usage: rec.sh <seconds> <out.mp4> : run SAINT.EXE in DOSBox-X on a virtual display and record it with ffmpeg x11grab (reference video)
export SDL_AUDIODRIVER=${SDL_AUDIODRIVER:-dummy}
export LD_LIBRARY_PATH=/tmp/dbx/root/usr/lib/x86_64-linux-gnu
cd "$(dirname "$0")"; D=:$((100+RANDOM%800))
Xvfb $D -screen 0 1024x768x24 >/dev/null 2>&1 & XV=$!; export DISPLAY=$D; sleep 1
/tmp/dbx/root/usr/bin/dosbox-x -conf dbx.conf -fastlaunch -nogui -nomenu -time-limit $(( $1 + 20 )) >/tmp/dbx.log 2>&1 & DB=$!
ffmpeg -loglevel error -y -f x11grab -framerate 25 -video_size 720x540 -i $D+152,114 -t $1 -c:v libx264 -preset ultrafast -crf 23 -pix_fmt yuv420p "$2"
kill $DB $XV
