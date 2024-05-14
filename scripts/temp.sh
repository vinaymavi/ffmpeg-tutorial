#!/bin/bash

ffmpeg  -f mp4 -r 25 -i /Users/vinaymavi/quiz-project-content/JfAJBiRcuE3b8XugGQnr/video-files/c1b60b67-e2c4-4190-baaa-ba4e8d112131.mp3.mp4 -y -filter_complex "\
[0:v]drawtext=text='The Golden Temple is more than just a place of':fontcolor=white:fontsize=24:box=1:boxcolor=black@0.5:boxborderw=5:x=(w-text_w)/2:y=(h-text_h)/2:enable='between(t,0,3.3936)',\
#drawtext=text='worship. It is a beacon of hope and a source':fontcolor=white:fontsize=24:box=1:boxcolor=black@0.5:boxborderw=5:x=(w-text_w)/2:y=(h-text_h)/2:enable='between(t,3.3936,6.7872)',\
#drawtext=text='of solace for many. Its teachings of compassion equality and':fontcolor=white:fontsize=24:box=1:boxcolor=black@0.5:boxborderw=5:x=(w-text_w)/2:y=(h-text_h)/2:enable='between(t,6.7872,10.1808)',\
#drawtext=text='togetherness resonate with people across the globe making it a':fontcolor=white:fontsize=24:box=1:boxcolor=black@0.5:boxborderw=5:x=(w-text_w)/2:y=(h-text_h)/2:enable='between(t,10.1808,13.5744)'[v],\
" -map "[v]" -map 0:a -vcodec libx264 -acodec aac /Users/vinaymavi/quiz-project-content/JfAJBiRcuE3b8XugGQnr/video-files/c1b60b67-e2c4-4190-baaa-ba4e8d112131.mp3-draw-text.mp4
