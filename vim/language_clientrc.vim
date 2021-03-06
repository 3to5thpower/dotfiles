set hidden

" 言語ごとに設定する
let g:LanguageClient_serverCommands = {
            \ 'cpp': ['~/dotfiles/vim/clangd_c++17.sh'],
            \ 'c': ['clangd'],
            \ 'rust': ['rls'],
            \ 'python':['pyls'],
            \ 'go':['gopls'],
            \ 'haskell':['hie'],
            \ }

augroup LanguageClient_config
    autocmd!
    autocmd User LanguageClientStarted setlocal signcolumn=yes
    autocmd User LanguageClientStopped setlocal signcolumn=auto
augroup END

let g:LanguageClient_autoStart = 1
nnoremap <Leader>lh :call LanguageClient_textDocument_hover()<CR>
nnoremap <Leader>ld :call LanguageClient_textDocument_definition()<CR>
nnoremap <Leader>lr :call LanguageClient_textDocument_rename()<CR>
nnoremap <Leader>lf :call LanguageClient_textDocument_formatting()<CR>

