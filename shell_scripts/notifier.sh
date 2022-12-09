#!/bin/bash
pavolume=$(pamixer --get-volume-human)
echo $pavolume
if [ $pavolume = "muted" ];
then
	volnoti-show -m
else
	volnoti-show $pavolume
fi
