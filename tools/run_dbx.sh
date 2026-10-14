#!/bin/bash
# usage: run_dbx.sh <seconds>  (runs SAINT.EXE in DOSBox-X on a virtual X display)
export LD_LIBRARY_PATH=/tmp/dbx/root/usr/lib/x86_64-linux-gnu
cd "$(dirname "$0")"
Xvfb :99 -screen 0 1024x768x24 >/dev/null 2>&1 &
XV=$!; export DISPLAY=:99; sleep 1
/tmp/dbx/root/usr/bin/dosbox-x -conf dbx.conf -fastlaunch -nogui -nomenu -time-limit ${1:-30} >/tmp/dbx.log 2>&1 &
sleep ${2:-8}; import -window root /tmp/shot.png; kill $XV
