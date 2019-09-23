set number
set list
set listchars=tab:>-,trail:*
set smartindent
set autoindent
set mouse=a

filetype plugin on
filetype indent on

set noerrorbells

"set termguicolors
"Colorscheme読み込み時の背景の透過設定
augroup TransparentBG
  autocmd!
  autocmd Colorscheme * highlight Normal ctermbg=none "テキスト
  autocmd Colorscheme * highlight NonText ctermbg=none "テキスト下の余白
  autocmd Colorscheme * highlight LineNr ctermbg=none "行番号
  autocmd Colorscheme * highlight Folded ctermbg=none "コマンド折りたたみ
  autocmd Colorscheme * highlight EndOfBuffer ctermbg=none "ファイル終わり以降の空白
augroup END

"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Right> <Nop>
"noremap <Left> <Nop>


" 関数を定義
function Indent()
  let save_cursor = getcurpos()
  execute "normal " . "gg=G"
  call setpos('.', save_cursor)
endfunction
command -nargs=0 Indent call Indent()

set expandtab
set tabstop=2
set shiftwidth=2

set fenc=utf-8
set encoding=utf-8
set noswapfile
set hidden
set clipboard+=unnamedplus
"set visualbell

inoremap <silent> jj <ESC><Right>
"inoremap <C-m> <CR>
"inoremap <C-n> <C-u>
"inoremap <c-b> <backspace>



if has('nvim')
  " Neovim specific commands------------------------------------------------

  "dein Scripts-----------------------------
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/sagoj0_/.cache/dein/repos/github.com/Shougo/dein.vim

  " Required:
  if dein#load_state('/home/sagoj0_/.cache/dein')

    " Let dein manage dein
    let s:dein_dir = expand('~/.config/nvim/dein')
    " Required:
    call dein#add('/home/sagoj0_/.cache/dein/repos/github.com/Shougo/dein.vim')


    let s:toml_file = '~/.config/nvim/dein.toml'
    let s:toml_lazy_file ='~/.config/nvim/dein_lazy.toml'

    call dein#begin(s:dein_dir)
    call dein#load_toml(s:toml_file)
    call dein#load_toml(s:toml_lazy_file, {'lazy': 1})
    " Add or remove your plugins here like this:
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')

    " Required:
    call dein#end()
    call dein#save_state()
  endif

  " Required:
  filetype plugin indent on
  syntax enable

  " If you want to install not installed plugins on startup.
  if dein#check_install()
    call dein#install()
  endif
  "End dein Scripts-------------------------

  "colorscheme candid
  "let g:lightline = { 'colorscheme': 'candid' }
  set ttimeoutlen=50
else
  " Standard vim specific commands
  syntax enable
endif
  
