# Created by newuser for 5.9
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1="%B%F{green}[%F{cyan}%n@%m %1d%F{green}]%#%k%f"
eval "$(zoxide init zsh)"

alias ls='ls --color=auto'
alias grep='rg --color=auto'

alias vim="nvim"
alias cd="z"
eval $(thefuck --alias)
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  startx
fi
