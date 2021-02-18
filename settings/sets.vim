" general sets
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8
syntax enable

set noshowmode
set noswapfile
set tabstop=4
set softtabstop=4
set shiftwidth=4
set wrap

" tab handling
set expandtab
set smarttab
set autoindent
set smartindent
set backspace=indent,eol,start

" mouse support
" set mouse=a

" support system clipboard
set clipboard+=unnamedplus

" decor
set relativenumber
set scrolloff=3
set sidescrolloff=5
set cursorline

" insensitive search
set ignorecase

" ctrl + s == save
nmap <C-s> :w<cr>
vmap <C-s> <esc>:w<cr>
imap <C-s> <esc>:w<cr>

" Highlight search dissapeared
nnoremap <silent><esc> <esc>:noh<cr>

" new line in insert mode
imap <A-m> <esc>o


