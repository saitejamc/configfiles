set nocompatible
" Initialisation de pathogen
call pathogen#infect()
call pathogen#helptags()

set number
syntax on
filetype plugin indent on
syntax on
runtime! config/**/*.vim
autocmd Vimenter * NERDTree

filetype plugin on
set path+=**
set wildmenu

imap jj <Esc>

set ts=2 sw=2
