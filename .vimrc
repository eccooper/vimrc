set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'wting/rust.vim'

Plugin 'flazz/vim-colorschemes'

call vundle#end()

filetype plugin indent on

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

syntax on
set encoding=utf-8
set number

colorscheme molokai

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

let mapleader = "\<Space>"

inoremap jk <ESC>
nnoremap <Leader>w :w<CR>

