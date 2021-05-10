" variables

let g:coc_global_extensions = ['coc-html', 'coc-emmet', 'coc-css', 'coc-tsserver', 'coc-eslint', 'coc-prettier', 'coc-clangd', 'coc-pyright', 'coc-json', 'coc-yaml']

" key bindings

" set <leader>rn to trigger rename
nmap <leader>rn <Plug>(coc-rename)

" set <leader>ca to trigger code action
nmap <leader>ca <Plug>(coc-codeaction)

" set <c-space> to trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

" set <C-f> to navigate floating window forward
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
" set <C-b> to navigate floating window backward
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

" set ]g to navigate diagnostics forward
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" set [g to navigate diagnostics backward
nmap <silent> [g <Plug>(coc-diagnostic-prev)

" set gd to GoTo definition
nmap <silent> gd <Plug>(coc-definition)
" set gt to GoTo type definition
nmap <silent> gt <Plug>(coc-type-definition)
" set gi to GoTo implementation
nmap <silent> gi <Plug>(coc-implementation)
" set gr to GoTo references
nmap <silent> gr <Plug>(coc-references)

" set K to show documentation
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim', 'help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" commands

" highlight symbol on hover
autocmd CursorHold * silent call CocActionAsync('highlight')

" aliases

" add :Format alias for formatting code
command! -nargs=0 Format :call CocAction('format')

" add :Prettier alias for prettifying code
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" add :Organize alias for organizing imports
command! -nargs=0 Organize :call CocAction('runCommand', 'editor.action.organizeImport')
