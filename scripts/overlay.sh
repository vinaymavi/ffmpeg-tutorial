#!/bin/zsh

input_file=$1
input_file2=$2
output_file=$3

ffmpeg -i $input_file -i $input_file2 -filter_complex "overlay=370:260:" $output_file