#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias listeners='lsof -i | grep LISTEN'
alias desktop='startx /bin/icewm-session'

pfetch

PS1='\n\u@\h \w $(__git_ps1)\n\$ '
