#!/bin/bash

# read frame by frame details of a video file

# check if the correct number of arguments were provided
if [ "$#" -ne 2 ]; then
    echo "Usage: ./video_frame_details.sh <video_file> <output_file>"
    exit 1
fi

# assign the arguments to variables
video_file=$1
output_file=$2

ffprobe -show_frames -select_streams v:0 -print_format json -loglevel quiet $video_file > $output_file

# Example usage: ./scripts/video_frame_details.sh ./output/may18.mp4 ./frame_logs/may18_frames.json
# Example usage: ./scripts/video_frame_details.sh /Users/vinaymavi/quiz-project-content/bL0BbI1g3P8M9SemFgHe/video-files/25f17b7e-e3f6-486c-aabc-3bde0ff132b5.mp3.mp4 ./frame_logs/25f17b7e-e3f6-486c-aabc-3bde0ff132b5.json