set nocompatible
filetype off
let mapleader=","
set nu
syntax on

" Setup Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" Vundle bundles
Bundle 'gmarik/vundle'
Bundle 'ShowPairs'
Bundle 'repeat.vim'
Bundle 'surround.vim'
Bundle 'mhinz/vim-startify'
Bundle 'sukima/xmledit'
Bundle 'klen/python-mode'
Bundle 'kien/ctrlp.vim'

" XML edit (bundle options)
let xml_use_xhtml = 1

" Startify (bundle options)
let g:startify_bookmarks = [ '~/.vimrc' ]
let g:startify_show_files_number = 5

" Ctrl-P mapping
map <leader>t <C-p>

" Colour scheme
set background=dark
set t_Co=256
colorscheme solarized 

" Highlight current line
set cul
hi CursorLine term=none cterm=none ctermbg=236

" Always keep 5 lines from bottom/top
set scrolloff=5

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
