# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/paul/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

bindkey '^[[Z' reverse-menu-complete
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word



autoload -Uz vcs_info

precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST

PROMPT='
%F{green}%n@%m%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f
$ '

alias ls="ls --color=auto"
alias la="ls -A"
alias grep="grep --color=auto"

export LANGUAGE="en_IN:en"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LANG="en_US.UTF-8"

