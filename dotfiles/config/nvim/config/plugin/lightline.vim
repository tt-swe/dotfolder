" variables

let g:lightline = {
  \ 'colorscheme': 'apprentice',
  \ 'active': {
  \   'left': [['mode', 'paste'],
  \            ['gitbranch', 'filename', 'readonly', 'modified'],
  \            ['coc_error', 'coc_warning']],
  \   'right': [['lineinfo'],
  \             ['percent'],
  \             ['filetype', 'fileencoding', 'fileformat']],
  \ },
  \ 'component_function': {
  \   'gitbranch': 'gitbranch#name',
  \ },
  \ 'component_expand': {
  \   'coc_error': 'LightlineCocErrors',
  \   'coc_warning': 'LightlineCocWarnings',
  \ },
  \ 'component_type': {
  \   'coc_error': 'error',
  \   'coc_warning': 'warning',
  \ },
  \ }

function! s:lightline_coc_diagnostic(kind, sign) abort
  let info = get(b:, 'coc_diagnostic_info', 0)
  if empty(info) || get(info, a:kind, 0) == 0
    return ''
  endif
  return printf('%s %d', a:sign, info[a:kind])
endfunction

function! LightlineCocErrors() abort
  return s:lightline_coc_diagnostic('error', 'E')
endfunction

function! LightlineCocWarnings() abort
  return s:lightline_coc_diagnostic('warning', 'W')
endfunction

" commands

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
