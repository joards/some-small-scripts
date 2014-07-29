#!/bin/bash
#converts all files ending with .mkv in the folder to mp4 encapsulation in a dedicated mp4 folder.
#needs ffmpeg installed
#does not convert, only copies h264 and x264 from mkv to mp4 file format

if [ ! -d mp4 ]
then
    mkdir mp4
fi
for a in *.mkv;
do 
    if [ -f mp4/${a%.mkv}.mp4 ]
    then
	continue
    else
	ffmpeg -i $a -codec copy mp4/${a%.mkv}.mp4
    fi
done