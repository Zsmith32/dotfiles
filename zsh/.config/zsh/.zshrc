# Created by newuser for 5.9
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#comment out to use default host 
export ZHOST="x220"
if [[ -z $ZHOST ]];then
  PS1="%B%F{green}[%F{cyan}%n@%m %1d%F{green}]%#%k%f"
else
  PS1="%B%F{green}[%F{cyan}%n@$ZHOST %1d%F{green}]%#%k%f"
fi
eval "$(zoxide init zsh)"

alias ls='ls --color=auto'
alias grep='rg --color=auto'

alias vim="nvim"
alias cd="z"
eval $(thefuck --alias)
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  startx
fi
