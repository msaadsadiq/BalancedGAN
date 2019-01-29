#!/bin/bash

#simple script for resizing images in all class directories
#also reformats everything from whatever to png


if [ `ls dataset/Flood_final/*/*/*.png 2> /dev/null | wc -l ` -gt 0 ]; then
  echo hi
  for file in dataset/Flood_final/*/*/*.png; do
    convert "$file" -resize 128x128\! "${file%.*}.png"
    file "$file" #uncomment for testing
  done
fi

