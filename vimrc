set nu           " Line numbers
set showmatch    " Show matching braces
set ruler        " Show position
set laststatus=2 " Always display the status line
set nohls        " No all-highlight search

syntax enable

if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif

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

map <C-w>n :vsplit<CR>

if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
