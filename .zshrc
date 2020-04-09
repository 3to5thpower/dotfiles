autoload -U compinit promptinit
compinit
promptinit

autoload -Uz colors 
colors
zstyle ':completion:*' list-colors "${LS_COLORS}"
zstyle ':completion:*:default' menu select=1
zstyle ':completion::complete:*' use-cache true
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
setopt list_packed
setopt list_types

PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%1~ %{$reset_color%}%#"
RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt auto_cd
setopt share_history
setopt hist_ignore_all_dups
setopt correct
setopt complete_in_word
setopt notify

alias ls="exa"
alias la="ls -a"
alias ll="exa -ahl --git"
alias lt="exa -T --git-ignore"

export EDITOR=vim
export PATH=~/.local/bin/:$PATH

#powerline-daemon -q
#. ~/.local/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh
