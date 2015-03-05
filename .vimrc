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

" Default indentation and tabs
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

" Replace using current search term
map <leader>r :%s///g<left><left>

" Toggle search highlighting
map <leader>h :set hlsearch!<CR>

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

" File opening and writing stuff
set wildignore=*.o,*.png,*.jpg,*.pyc
set hidden
set nobackup
set nowritebackup
set noswapfile

" Split open vimrc
map <leader>v :vs ~/.vimrc<CR>

" Write with sudo using w!!
cmap w!! %!sudo tee > /dev/null %

" Return to old position when reopening files
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Protect large files from sourcing and other overhead.
" Files become read only
if !exists("my_auto_commands_loaded")
  let my_auto_commands_loaded = 1
  " Large files are > 10M
  " Set options:
  " eventignore+=FileType (no syntax highlighting etc
  " assumes FileType always on)
  " noswapfile (save copy of file)
  " bufhidden=unload (save memory when other file is viewed)
  " buftype=nowritefile (is read-only)
  " undolevels=-1 (no undo possible)
  let g:LargeFile = 1024 * 1024 * 10
  augroup LargeFile
    autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 | else | set eventignore-=FileType | endif
    augroup END
  endif

" Create dirs on save if required
function! s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

