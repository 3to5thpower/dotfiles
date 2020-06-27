
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
autoload -Uz promptinit
promptinit
prompt agnoster

autoload -Uz add-zsh-hook
autoload -U colors && colors

autoload -U compinit
compinit -u

export PATH="$HOME/.cargo/bin/":$PATH
export PATH="$HOME/.roswell/bin/":$PATH

alias acc="cargo atcoder"
alias ls="exa"
alias la="exa -a"
alias ll="exa -al"
alias docker="sudo docker"

xmodmap ~/dotfiles/Xmodmap

#trackpoint setting
#test `xinput list-props 14 | grep 318 | awk '{print $8}'` -eq 0; 
xinput set-prop 14 318 -0.2

export GOPATH=$HOME/go
export PATH="$GOPATH/bin/":$PATH
