#!/bin/bash
sleep 2

# old HP
# id=$(xinput list | grep SynPS/2 | awk '{print $6}' | cut -d = -f 2)
# tap_id=$(xinput list-props $id | grep 'libinput Tapping Enabled (' | cut -d '(' -f 2 | cut -d ')' -f 1)
# speed_id=$(xinput list-props $id | grep 'libinput Accel Speed (' | cut -d '(' -f 2 | cut -d ')' -f 1)
# natural_scrolling_id=$(xinput list-props $id | grep 'libinput Natural Scrolling Enabled (' | cut -d '(' -f 2 | cut -d ')' -f 1)

# New HP
id=$(xinput list | grep "SYNA3071:00 06CB:82F1 Touchpad" | awk '{print $6}' | cut -d = -f 2)
tap_id=$(xinput list-props $id | grep 'libinput Tapping Enabled (' | cut -d '(' -f 2 | cut -d ')' -f 1)
speed_id=$(xinput list-props $id | grep 'libinput Accel Speed (' | cut -d '(' -f 2 | cut -d ')' -f 1)
natural_scrolling_id=$(xinput list-props $id | grep 'libinput Natural Scrolling Enabled (' | cut -d '(' -f 2 | cut -d ')' -f 1)

# external Mouse
ext_id=$(xinput list | grep "CX 2.4G Receiver Mouse" | awk '{print $7}' | cut -d = -f 2)
ext_speed_id=$(xinput list-props $ext_id | grep 'libinput Accel Speed (' | cut -d '(' -f 2 | cut -d ')' -f 1)
ext_natural_scrolling_id=$(xinput list-props $ext_id | grep 'libinput Natural Scrolling Enabled (' | cut -d '(' -f 2 | cut -d ')' -f 1)

xinput set-prop $id $tap_id 1
xinput set-prop $id $speed_id 0.4
xinput set-prop $id $natural_scrolling_id 1

xinput set-prop $ext_id $ext_speed_id 0.4
xinput set-prop $ext_id $ext_natural_scrolling_id 1


