#!/bin/zsh

## convert a provided image and mp3 file to a video file

# check if the correct number of arguments were provided
if [ "$#" -ne 3 ]; then
    echo "Usage: ./image_mp3.sh <image_file> <mp3_file> <output_file>"
    exit 1
fi

# assign the arguments to variables
image_file=$1
mp3_file=$2
output_file=$3


# use FFmpeg to convert the image and mp3 file to a video file
ffmpeg -loop 1 -i $image_file -i $mp3_file -c:v libx264 -tune stillimage -c:a aac -b:a 192k -pix_fmt yuv420p -shortest $output_file

# Example usage: ./scripts/image_mp3.sh ./data/images/1.webp  ./data/mp3/3.mp3 ./output/may1.mp4