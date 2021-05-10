call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}         " intellisense for vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " fuzzy finder
Plug 'junegunn/fzf.vim'                                 " fuzzy finder for vim
Plug 'maxmellon/vim-jsx-pretty'                         " js syntax highlight (jsx)
Plug 'leafgarland/typescript-vim'                       " ts syntax highlight (tsx)
Plug 'itchyny/lightline.vim'                            " statusline for vim
Plug 'itchyny/vim-gitbranch'                            " git branch info
call plug#end()
