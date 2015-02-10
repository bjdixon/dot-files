filetype indent on
filetype on
:set nu
syntax on

" setup indentation
set autoindent
filetype plugin indent on
filetype plugin on

" default indentaion and tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set backspace=2

" javascript indentation
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2
