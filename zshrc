# Created by newuser for 5.7.1
autoload -U compinit promptinit colors
compinit
promptinit
colors

#コマンド補完
zstyle ':completion:*' menu select
setopt completealiases

#履歴に同じ行の重複を許可しない
setopt HIST_IGNORE_DUPS

#履歴検索キー
[[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"    history-beginning-search-backward
[[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}"  history-beginning-search-forward

# theme設定
prompt walters

export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'

#ls設定
case "${OSTYPE}" in
freebsd*|darwin*)
  alias ls="ls -GF"
  ;;
linux*)
  alias ls="ls -F --color"
  ;;
esac

alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'


#ディレクトリスタック設定
DIRSTACKFILE="$HOME/.cache/zsh/dirs"
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
  dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
  [[ -d $dirstack[1] ]] && cd $dirstack[1]
fi
chpwd() {
  print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
}

DIRSTACKSIZE=20

setopt autopushd pushdsilent pushdtohome auto_cd auto_pushd pushd_ignore_dups


## Remove duplicate entries
setopt pushdignoredups

## This reverts the +/- operators.
setopt pushdminus

#helpコマンド設定
autoload -U run-help
autoload run-help-git
autoload run-help-svn
autoload run-help-svk
unalias run-help
alias help=run-help

#シンタックスハイライト
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


#コマンド設定
# Ctrl+Dでログアウトしてしまうことを防ぐ
setopt IGNOREEOF

#delete-key
bindkey "^[[3~" delete-char

# 日本語を使用
export LANG=ja_JP.UTF-8

# パスを追加したい場合
export PATH="$HOME/nand2tetris/tools/:$PATH"
export PATH="$HOME/application/iron-linux-64/:$PATH"

#alias設定
alias la='ls -a'

RPROMPT='%B%F{green}[%d]%f%b'


#ビープ音を消す
setopt nobeep

# 補完で大文字にもマッチ
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# opam configuration
test -r /home/sagoj0_/.opam/opam-init/init.zsh && . /home/sagoj0_/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

#. /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
