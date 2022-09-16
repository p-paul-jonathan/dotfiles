#!/bin/bash
sleep 2
id=$(xinput list | grep SynPS/2 | awk '{print $6}' | cut -d = -f 2)
xinput set-prop $id 309 1
xinput set-prop $id 329 0.4
