#!/bin/bash

alias ls='ls --color=auto'
alias listeners='lsof -i | grep LISTEN'
alias desktop='startx /bin/gnome-session'
alias start_tor='~/tor-browser_en-US/Browser/start-tor-browser'

# wm aliases
alias wm='startx /bin/i3 -c /home/paul/.config/i3/config'
alias wm-neutral='startx /bin/i3 -c /home/paul/.config/i3/config'
alias wm-black-hole='startx /bin/i3 -c /home/paul/.config/i3/black-hole-config'
alias wm-purple='startx /bin/i3 -c /home/paul/.config/i3/purple-config'
