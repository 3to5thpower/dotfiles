#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias la='ls -a'

export PATH=$PATH:~/bin/

if [ $TERM = "rxvt-unicode-256color" ]; then
  fish
fi
