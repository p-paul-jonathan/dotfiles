#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/git/git-prompt.sh
source ~/bash_scripts/bashrc_themes.sh
source ~/bash_scripts/bash_name.sh
source ~/bash_scripts/aliases.sh

PS1='\n\[\033[32m\]\u@\h\[\033[34m\] \w \[\033[31m\]$(__git_ps1)\n\[\033[37m\]\$ '
export TerminalEmulator=alacritty

bind '"\e[Z":menu-complete'


export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
