inoremap <silent><expr> <TAB>
      \ pumvisible() ? '<C-n>' :
      \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
      \ '<TAB>' : ddc#manual_complete()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

call ddc#custom#patch_global('sources', ['nvimlsp', 'buffer', 'around', 'vsnip', 'file', 'dictionary', 'zsh'])
call ddc#custom#patch_global('sourceOptions', {
        \ '_': {
        \   'matchers': ['matcher_fuzzy'],
        \   'sorters': ['sorter_rank'],
        \   'converters': ['converter_remove_overlap', 'converter_truncate'],
        \ },
        \ 'around': {'mark': 'around'},
        \ 'dictionary': {'matchers': ['matcher_editdistance'], 'sorters': [], 'maxCandidates': 6, 'mark': 'D', 'minAutoCompleteLength': 3},
        \ 'necovim': {'mark': 'vim'},
        \ 'nvimlsp': {'mark': 'lsp', 'forceCompletionPattern': "\\.|:\\s*|->"},
        \ 'buffer': {'mark': 'buffer'},
        \ 'file': {'mark': 'File', 'forceCompletionPattern': "/"},
        \ 'zsh': {'mark': 'zsh'},
        \ })

call ddc#custom#patch_global('sourceParams', {
      \ 'around': {'maxSize': 500},
      \ 'buffer': {'forceCollect': v:true},
      \ 'nvimlsp': {'useIcon': v:true},
      \ 'dictionary': {'smartCase': v:true},
      \ })
call ddc#custom#patch_global('filterParams', {
      \ 'matcher_fuzzy': {'camelcase': v:true},
      \ 'converter_truncate': {'maxAbbrWidth': 60, 'maxInfo': 500, 'ellipsis': '...'},
      \ })

call ddc#custom#patch_filetype(['vim', 'toml'], {
      \ 'sources': ['necovim', 'buffer', 'around', 'vsnip', 'dictionary'],
      \ })
call ddc#custom#patch_filetype(
      \ ['zsh'], 'sources', ['zsh']
      \ )
call ddc#custom#patch_filetype(['zsh'], 'sourceOptions', {
      \ 'zsh': {'mark': 'Z'},
      \ })

call ddc#custom#patch_global({
    \ 'keywordPattern': '[a-zA-Z_]\w*',
    \ 'smartCase': v:true,
    \ })

call ddc#custom#patch_filetype(
    \ ['c', 'cpp'],
    \ 'sources',
    \ ['nvimlsp', 'tabnine','around','dictionary', 'buffer', 'file'])

call ddc#custom#patch_filetype(
    \ ['rust'],
    \ 'sources',
    \ ['nvimlsp', 'tabnine','around','dictionary', 'buffer', 'file'])

" inline suggestion
inoremap <expr><C-t>       ddc#insert_candidate(0)
call ddc#custom#patch_global('completionMode', 'inline')

call ddc#enable()

