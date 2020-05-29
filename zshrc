
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

alias acc="cargo-atcoder"
alias ls="exa"
alias la="exa -a"
alias ll="exa -al"

xmodmap ~/dotfiles/Xmodmap
