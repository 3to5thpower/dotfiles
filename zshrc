
setopt share_history

# �������
autoload -Uz colors ; colors

# ���ǥ�����vim������
export EDITOR=vim

# cd�����ݤΥǥ��쥯�ȥ��ǥ��쥯�ȥꥹ���å��ؼ�ư�ɲ�
setopt auto_pushd

# �ǥ��쥯�ȥꥹ���å��ؤ��ɲäκݤ˽�ʣ�����ʤ�
setopt pushd_ignore_dups

# �磻��ɥ�����Ÿ������Ѥ���
setopt extended_glob

# cd���ޥ�ɤ��ά���ơ��ǥ��쥯�ȥ�̾�Τߤ����Ϥǰ�ư
setopt auto_cd

# �ӡ��ײ����Ĥ餵�ʤ��褦�ˤ���
setopt no_beep

# bg�ץ����ξ����Ѳ���¨�����Τ餻��
setopt notify

# 8bitʸ����ͭ���ˤ���
setopt print_eight_bit

# ��λ���ơ�������0�ʳ��ξ��˥��ơ�������ɽ������
setopt print_exit_value

# �ե�����̾��Ÿ���ǥǥ��쥯�ȥ�˥ޥå�������� ������ / ���ղ�
setopt mark_dirs

# ���ޥ�ɤΥ��ڥ�����å��򤹤�
setopt correct

# ���ޥ�ɥ饤�����ƤΥ��ڥ�����å��򤹤�
setopt correct_all

# ��񤭥�����쥯�Ȥζػ�
setopt no_clobber

# sudo �θ��ǥ��ޥ��̾���䴰����
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# ps ���ޥ�ɤΥץ���̾�䴰
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

# �ѥ��κǸ�Υ���å���������ʤ�
setopt noautoremoveslash

# �ƥ��ޥ�ɤ��¹Ԥ����Ȥ��˥ѥ���ϥå���������
setopt hash_cmds

PROMPT='%F{cyan}%n@%m%f:%~# '

# ��ư�䴰��ͭ���ˤ���
autoload -Uz compinit ; compinit
setopt auto_list
setopt auto_menu
zstyle ':completion:*:default' menu select=1
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}


# ñ�����������Ǥ�Tab�䴰��ͭ����
setopt complete_in_word

# ���ޥ�ɥߥ�����
setopt correct

# �䴰�������ڤˤ���
zstyle ':completion:*' menu select

# �䴰�����Ǥ�������ͤ��ɽ������
setopt list_packed

# �䴰����˥ե�����μ����ɽ������
setopt list_types

# ��������
export LSCOLORS=Exfxcxdxbxegedabagacad

# �䴰���ο�����
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# ����å�������Ѥˤ���䴰�ι�®��
zstyle ':completion::complete:*' use-cache true

# �䴰����˿��Ĥ���
autoload -U colors ; colors ; zstyle ':completion:*' list-colors "${LS_COLORS}"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# ��ʸ������ʸ������̤��ʤ�(��ʸ�������Ϥ������϶��̤���)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# man���䴰�򥻥�������ֹ��̤�ɽ��������
zstyle ':completion:*:manuals' separate-sections true

# --prefix=/usr �ʤɤ� = �ʹߤǤ��䴰
setopt magic_equal_subst

HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=1000000

# �ҥ��ȥ꡼�˽�ʣ��ɽ�����ʤ�
setopt histignorealldups

# ¾�Υ����ߥʥ�ȥҥ��ȥ꡼��ͭ
setopt share_history

# ���Ǥ�history�ˤ��륳�ޥ�ɤϻĤ��ʤ�
setopt hist_ignore_all_dups

# history�����դ�ɽ��
alias h='fc -lt '%F %T' 1'

# �ҥ��ȥ����¸����Ȥ���;ʬ�ʥ��ڡ�����������
setopt hist_reduce_blanks

# ����򤹤����ɲä���
setopt inc_append_history

# �ҥ��ȥ��ƤӽФ��Ƥ���¹Ԥ���֤˰�ö�Խ��Ǥ�����֤ˤʤ�
setopt hist_verify


alias ls='exa'
alias la='exa -a'
alias ll='exa -ahl --git'
alias lt='exa -T --git-ignore'
export PATH=~/bin/:$PATH
alias atcoder='cargo atcoder'
