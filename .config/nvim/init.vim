" .vimc

let mapleader =","

" Basics
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set number

set splitbelow splitright

" Copy paste
vnoremap <C-c> "*y :let @+=@*<CR>
map <C-p> "+P

" Navigating with guides
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
map <leader><leader> <Esc>/<++><Enter>"_c4l