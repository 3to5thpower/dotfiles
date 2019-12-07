#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
alias ls='exa -F'
alias la='exa -Fa'
alias ll='exa -Fla'

PS1='[\u@\h \W]\$ '

export PATH=$PATH:~/bin/

if [ $TERM = "rxvt-unicode-256color" ]; then
  fish
fi
