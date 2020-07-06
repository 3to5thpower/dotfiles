
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
xinput set-button-map "TPPS/2 Elan TrackPoint" 1 0 3 4 5 6 7

export GOPATH=$HOME/go
export PATH="$GOPATH/bin/":$PATH
export PATH="$HOME/.local/bin/":$PATH

# fzf's config

function cdworktree() {
    # カレントディレクトリがGitリポジトリ上かどうか
    git rev-parse &>/dev/null
    if [ $? -ne 0 ]; then
        echo fatal: Not a git repository.
        return
    fi

    local selectedWorkTreeDir=`git worktree list | fzf | awk '{print $1}'`

    if [ "$selectedWorkTreeDir" = "" ]; then
        # Ctrl-C.
        return
    fi

    cd ${selectedWorkTreeDir}
}

function fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

function select-history() {
  BUFFER=$(history -n -r 1 | fzf --no-sort +m --query "$LBUFFER" --prompt="History > ")
  CURSOR=$#BUFFER
}
zle -N select-history
bindkey '^r' select-history

