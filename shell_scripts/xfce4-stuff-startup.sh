#!/bin/bash

# kill running applications
killall xfce4-panel
killall xfce4-power-manager
killall /usr/lib/xfce4/notifyd/xfce4-notifyd

# start them again

xfce4-panel &
xfce4-power-manager &
/usr/lib/xfce4/notifyd/xfce4-notifyd
