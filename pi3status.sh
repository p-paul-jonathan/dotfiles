#!/bin/bash

i3status | while :
do
	read line
	echo "| BRT "$(~/brightness.sh)"% | VOL "$(pamixer --get-volume-human)" | $line" || exit 1
done


