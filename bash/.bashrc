#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/git/git-prompt.sh

alias ls='ls --color=auto'
alias listeners='lsof -i | grep LISTEN'
alias desktop='startx /bin/gnome-session'
alias twm='startx /bin/i3'
alias swm='startx /bin/icewm-session'

PS1='\n\u@\h \w $(__git_ps1)\n\$ '
export TerminalEmulator=alacritty

if [ "$TERM" = "linux" ]; then
	echo -en "\e]P0000000" #black
	echo -en "\e]P1B33B00" #red
	echo -en "\e]P2CC4400" #green
	echo -en "\e]P3E64C00" #yellow
	echo -en "\e]P4FF5500" #blue
	echo -en "\e]P5FF661A" #magenta
	echo -en "\e]P6FF7733" #cyan
	echo -en "\e]P7FF884D" #white
#bright colors
	echo -en "\e]P8222222" #black
	echo -en "\e]P9B33B00" #red
	echo -en "\e]PACC4400" #green
	echo -en "\e]PBE64C00" #yellow
	echo -en "\e]PCFF5500" #blue
	echo -en "\e]PDFF661A" #magenta
	echo -en "\e]PEFF7733" #cyan
	echo -en "\e]PFFF884D" #white
	clear #for background artifacting
fi

