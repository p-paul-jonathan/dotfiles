# Created by newuser for 5.9
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/paul/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Paul's changes
clear
source ~/bash_scripts/aliases.sh
source ~/bash_scripts/bash_name.sh
source ~/bash_scripts/bashrc_themes.sh
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='
(zsh) %F{green}%n@%m %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f
$ '

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
bindkey  "^[[5~"   beginning-of-line
bindkey  "^[[6~"   end-of-line
zstyle ':completion:*' insert-tab false
# end of Paul's changes
