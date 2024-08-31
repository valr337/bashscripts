#!/bin/bash
cd ~/Downloads
WD="videos/*"
ED="done/"

for filename in $WD
    do
    #remove extension
    x=${filename%.*}
    #remove path
    y=${x##*/}

    length=${#y}

    #remove video id from yt-dlp
    z=${y:0:$length-14}
    echo ${z}

    #convert to audio using ffmpeg
    ffmpeg -i "$filename" -q:a 0 -map a "${ED}${z}".mp3

    #do echo "$filename"
done