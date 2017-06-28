" 1. Install vim plugin management tool Vundle
"    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" 2. Configurate .vimrc

set nocompatible              " be iMproved, required 
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"call vundle#begin('~/some/path/here')

"==== ==== PLUGINS START ========

" Vundle vim plugin management tool
Plugin 'VundleVim/Vundle.vim'

" Fugitive plugin fro git commands 
Plugin 'tpope/vim-fugitive'

" YML Syntax
Plugin 'pearofducks/ansible-vim'

" Dockerfile Syntx
Plugin 'ekalinin/Dockerfile.vim'

" Incsearch tool
"Plugin 'haya14busa/incsearch.vim'

" nerdtree filesystem view
"Plugin 'scrooloose/nerdtree'

" vim airline theme
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"vim color schemes
Plugin 'flazz/vim-colorschemes'

" ======== PLUGINS END ========

call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on 

" User Customize Settings

" Display Syntax
syntax on

" Fix Delete key not working issue on MacOS
set backspace=indent,eol,start

" Show line number
set number

" Enable highlight search
set hlsearch

" Airline plugin related settings
    " Show airline status bar
set laststatus=2
    " Powerline fonts settings: 
        " If the powerline font symbols are not showing up, 
        " Need to install powerline-fonts from https://github.com/powerline/fonts.git
        " Then go to preference page of Terminal and set font to any power line fonts
        " i.e. inconsolata
let g:airline_powerline_fonts = 1


    " AirLine Theme setting
let g:airline_theme='bubblegum'

    " Enable Smarter tab line
let g:airline#extensions#tabline#enabled=1 

" Enable air-line colors in Putty on Windows
set t_Co=256

" Show cursorline
set cursorline

" Color Scheme
colorscheme molokai

"set encoding=utf-8
