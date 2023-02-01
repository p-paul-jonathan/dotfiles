#!/bin/bash
# Theme to toggle between light mode and dark mode

if [ ! -f ~/.paul_theme ]; then
	echo 0 > ~/.paul_theme
fi



curr_col=$(cat ~/.paul_theme)
curr_theme=$(readlink -f ~/.config/i3/config | cut -d / -f 6 | cut -d - -f 1)

if [ "$1" = '-t' ]; then
	if [ $curr_col -eq 0 ]; then
		echo 1 > ~/.paul_theme
	else
		echo 0 > ~/.paul_theme
	fi
	exit 0
fi

case $curr_theme in
	purple)
		if [ $curr_col -eq 0 ]; then
			feh --bg-fill ~/backgrounds/purple.jpg
		else
			feh --bg-fill ~/backgrounds/purple-light.jpg
		fi
		;;
	*)
		if [ $curr_col -eq 0 ]; then
			feh --bg-fill ~/backgrounds/nord.png
		else
			feh --bg-fill ~/backgrounds/nord-light.jpg
		fi
		;;
esac

