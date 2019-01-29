#!/bin/bash

#simple script for resizing images in all class directories
#also reformats everything from whatever to png


if [ `ls CIFAR/*/*/*.png 2> /dev/null | wc -l ` -gt 0 ]; then
  echo hi
  for file in CIFAR/*/*/*.png; do
    convert "$file" -resize 128x128\! "${file%.*}.png"
    file "$file" #uncomment for testing
  done
fi

