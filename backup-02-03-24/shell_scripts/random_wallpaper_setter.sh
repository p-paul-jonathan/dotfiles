#!/bin/bash

# shell script to set random wallpaper from directory given in arumgument
# uses feh to set wallpaper

files=($1*)
len=${#files[@]}

index=$(echo $(shuf -i 0-$len -n 1) - 1 | bc)

feh --bg-fill ${files[$index]}
