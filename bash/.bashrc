#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/git/git-prompt.sh
source ~/bashrc_themes.sh
source ~/bash_name.sh
alias ls='ls --color=auto'
alias listeners='lsof -i | grep LISTEN'
alias desktop='startx /bin/gnome-session'
alias wm='startx /bin/i3'

PS1='\n\u@\h \w $(__git_ps1)\n\$ '
export TerminalEmulator=alacritty

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
