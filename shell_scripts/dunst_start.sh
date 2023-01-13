#!/bin/bash

MSG=$(dunst 2>&1 || exec dunst)

PID=$(echo $MSG | cut -d D -f 2 | cut -d "'" -f 2 | cut -d "'" -f 1)

kill $PID

exec dunst
