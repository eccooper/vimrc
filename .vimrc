set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'leafgarland/typescript-vim'
Plugin 'wting/rust.vim'

Plugin 'flazz/vim-colorschemes'

call vundle#end()

filetype plugin indent on

"Ubuntu terminal needs some tweaking (in .bashrc as well)
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif


"Editor settings
syntax on
set encoding=utf-8
set number
set nowrap
set colorcolumn=80 


"NERDTree shows hidden files and starts open in a bare instance
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


"Default syntax theme
colorscheme molokai


"Make column and margin less bright
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight ColorColumn ctermbg=234 guibg=234


"Keybinds
let mapleader = "\<Space>"

inoremap jk <ESC>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>t :NERDTreeToggle<CR>
