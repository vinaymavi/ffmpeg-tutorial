#!/bin/bash
#mp3
mp31=$1
mp32=$2
#image
img1=$3
#output
out1=$4
ffmpeg   -i $mp31 -i $mp32   -i $img1 \
-filter_complex "amix=inputs=2:duration=shortest:weights=0.25 1 [out]" \
-map '[out]' -map 2:v    $out1
