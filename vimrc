set nu " Line numbers
set showmatch " Show matching braces
set ruler " Show position
set nohls " No all-highlight search ._.

syntax enable

" Fix backups
set backspace=indent,eol,start

" No backups, no swp files pls
set nobackup
set nowb
set noswapfile


" 1 tab = 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

set expandtab " Use spaces instead of tabs
set smarttab  " smart tabs

" Linebreak on 80 characters
set lbr
set tw=500

" Move around long lines as though separate lines
map j gj
map k gk

set ai " Auto indent
set si " Smart indent
set wrap " Wrap lines

" Tab control
map <C-t> :tabnew<CR>
imap <C-t> <ESC><C-t>i

map <C-k> :tabp<CR>
imap <C-k> <ESC><C-k>i

map <C-l> :tabn<CR>
imap <C-l> <ESC><C-l>i

" See Vundle's github page
set nocompatible " vi -IMPROVED :D
filetype off

let mapleader = ","

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'wting/rust.vim'

" Command T needs vim compiled with ruby support :c
" Plugin 'wincent/command-t'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

map so :CommandT<CR>
map st <C-t>so

map <C-w>n :vsplit<CR>

syntax enable
