#!/bin/bash

maxb=$(cat /sys/class/backlight/intel_backlight/max_brightness)
actb=$(cat /sys/class/backlight/intel_backlight/brightness)

echo 100*$actb/$maxb | bc
