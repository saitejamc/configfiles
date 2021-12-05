autocmd Vimenter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")
      \ && b:NERDTree.isTabTree()) | q | endif
set nocompatible
filetype on
syntax on
filetype plugin indent on
set modelines=0
set number
set ruler
set visualbell
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim
nnoremap j gj
nnoremap k gk
set hidden
set ttyfast
set laststatus=2
set showmode
set showcmd
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search
nnoremap <C-Tab> Ctrl+WW
