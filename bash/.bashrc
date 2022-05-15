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

# theme : Argonaut-vscode
if [ "$TERM" = "linux" ]; then
	echo -en "\e]P009001A"# black
	echo -en "\e]P1CD3131"# red
	echo -en "\e]P20DBC79"# green
	echo -en "\e]P3E5E510"# yellow
 	echo -en "\e]P42472C8"# blue
	echo -en "\e]P5BC3FBC"#magenta
	echo -en "\e]P611A8CD"# cyan
	echo -en "\e]P7E5E5E5"# white
	clear
fi
