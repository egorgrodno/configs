let g:asyncomplete_remove_duplicates=1

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

call asyncomplete#register_source(asyncomplete#sources#tscompletejob#get_source_options({
\ 'name': 'tscompletejob',
\ 'whitelist': ['typescript', 'typescript.tsx'],
\ 'completor': function('asyncomplete#sources#tscompletejob#completor'),
\}))

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
