set nocompatible
filetype off
let mapleader=","
set nu
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

" Automatically insert closing brace after pressing enter
inoremap {<CR> {<CR>}<Esc>O
inoremap (<CR> (<CR><CR>)<Esc>ki
inoremap (<space> ()<Esc>i

" Create window splits easier
nnoremap <silent>vv :vsp<CR>
nnoremap <silent>ss :sp<CR>

" Easier moving around panes
nnoremap <C-j> <C-w><C-j>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
