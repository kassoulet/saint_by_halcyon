#!/bin/bash
# try.sh "<cpu core>" "<cputype>" "<cycles>" : 100s run, report whether frames at 90s/95s differ
cd "$(dirname "$0")"; cp dbx.conf /tmp/dbx.bak
sed -i "s/^core=.*/core=$1/; s/^cputype=.*/cputype=$2/; s/^cycles=.*/cycles=$3/" dbx.conf
pkill -x dosbox-x; pkill -x Xvfb; ./rec.sh 100 /tmp/t.mp4
for t in 90 95 99; do ffmpeg -loglevel error -y -ss $t -i /tmp/t.mp4 -frames:v 1 -vf scale=160:120 /tmp/t_$t.png; done
cmp -s /tmp/t_90.png /tmp/t_99.png && echo "$*: FROZEN" || echo "$*: RUNNING"
cp /tmp/dbx.bak dbx.conf
