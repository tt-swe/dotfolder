" general settings
set nocompatible        " disable compatibility with vi
set updatetime=500      " time to trigger cursor hold event
set hidden              " allow buffer change before writing
set nobackup            " do not create backup (for coc)
set nowritebackup       " do not create backup (for coc)

" graphical settings
set number              " show line numbers
set signcolumn=yes      " show sign column
set noshowmode          " do not show current mode
set noruler             " do not show current position
set wrap linebreak      " wrap line at word
syntax enable           " enable syntax highlighting
colorscheme apprentice  " apply colorscheme

" space/tab settings
set autoindent          " copy indentation from previous line
set smartindent         " auto indentation for c-like files
set smarttab            " use tab for indent, space for alignment
set shiftwidth=2        " number of spaces for auto indentation
set softtabstop=2       " number of spaces for tab keypress

" search settings
set hlsearch            " highlight search results
set ignorecase          " ignore case when searching
set smartcase           " tolerate uppercase in search string
set incsearch           " incrementally search as letter is typed
