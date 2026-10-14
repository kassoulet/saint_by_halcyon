#!/bin/bash
# usage: cap.sh <seconds-of-demo-to-record> : records AVI(ZMBV, emulated-time exact) + WAV via DOSBox-X hotkeys
export LD_LIBRARY_PATH=/tmp/dbx/root/usr/lib/x86_64-linux-gnu
cd "$(dirname "$0")"; D=:$((100+RANDOM%800))
Xvfb $D -screen 0 1024x768x24 >/dev/null 2>&1 & XV=$!; export DISPLAY=$D; sleep 1
/tmp/dbx/root/usr/bin/dosbox-x -conf dbx.conf -fastlaunch -nogui -nomenu -set "dosbox captures=/tmp/dbx/cap" -time-limit $(( $1 + 40 )) >/tmp/dbx.log 2>&1 & DB=$!
sleep 4
W=$(xdotool search --onlyvisible --name . | tail -1); xdotool windowfocus $W 2>/dev/null; xdotool mousemove 100 100; xdotool click 1; sleep 1
xdotool key ctrl+alt+F5; xdotool key ctrl+F6
sleep $1
xdotool key ctrl+alt+F5; xdotool key ctrl+F6
sleep 3; kill $DB $XV
