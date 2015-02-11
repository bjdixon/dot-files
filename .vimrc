filetype on
:set nu
syntax on

" Setup indentation
set autoindent
filetype plugin indent on
filetype plugin on

" Default indentaion and tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set backspace=2

" JavaScript indentation
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2

" Searching
set incsearch
set ignorecase
set smartcase
