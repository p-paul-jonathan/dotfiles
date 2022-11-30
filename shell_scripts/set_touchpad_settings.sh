#!/bin/bash
sleep 2
id=$(xinput list | grep SynPS/2 | awk '{print $6}' | cut -d = -f 2)
tap_id=$(xinput list-props 13 | grep 'libinput Tapping Enabled (' | cut -d '(' -f 2 | cut -d ')' -f 1)
speed_id=$(xinput list-props 13 | grep 'libinput Accel Speed (' | cut -d '(' -f 2 | cut -d ')' -f 1)
xinput set-prop $id $tap_id 1
xinput set-prop $id $speed_id 0.4
