#!/bin/bash

# add subtitles to a video for specified durations

# check if the correct number of arguments were provided
if [ "$#" -ne 1 ]; then
    echo "Usage: ./subtitle.sh <video_file> <subtitle_file> <start_time> <end_time>"
    exit 1
fi

# assign the arguments to variables
video_file=$1


# ffmpeg command to add subtitle to a video
# Add Hello world subtitle to the video from 5s to 10s
# Add Hello India subtitle to the video from 1s to 5s
# Add This is last subtitle to video from 10s to 15s

# use draw text to add subtitles to the video

ffmpeg -i $video_file -vf "drawtext=fontfile=/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf: text='Hello world': fontcolor=white: fontsize=24: box=1: boxcolor=black@0.5: boxborderw=5: x=(w-text_w)/2: y=h-100: enable='between(t,5,10)', drawtext=fontfile=/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf: text='Hello India': fontcolor=white: fontsize=24: box=1: boxcolor=black@0.5: boxborderw=5: x=(w-text_w)/2: y=h-100: enable='between(t,1,5)', drawtext=fontfile=/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf: text='This is last subtitle': fontcolor=white: fontsize=24: box=1: boxcolor=black@0.5: boxborderw=5: x=(w-text_w)/2: y=h-100: enable='between(t,10,15)'" output_with_subtitle_may1.mp4


# example usage: ./scripts/subtitle.sh ./output/may1.mp4