" pum (popup menu)

" set <TAB> to navigate forward
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ "\<TAB>"

" set <S-TAB> to navigate backward
inoremap <silent><expr> <S-TAB>
  \ pumvisible() ? "\<C-p>" :
  \ "\<C-h>"

" set <cr> to confirm
inoremap <silent><expr> <cr>
  \ pumvisible() ? "\<C-y>" :
  \ "\<CR>"
