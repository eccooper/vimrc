set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'flazz/vim-colorschemes'

call vundle#end()

filetype plugin indent on
syntax on
set encoding=utf-8

inoremap jk <ESC>
let mapleader = "\<Space>"

colorscheme molokai
