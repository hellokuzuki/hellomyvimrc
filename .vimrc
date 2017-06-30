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
let g:solarized_termcolors=256
colorscheme solarized
"colorscheme molokai 

" No backup files
set nobackup

" No write backup
set nowritebackup

" No swap file
set noswapfile

" Show incomplete commadns
set showcmd

" Incremental searching
set incsearch

" Ignore case in search
set smartcase

" Make sure any searches /searchPhrase doesn't need the \c escape character
set ignorecase

" Convert tabs to spaces
set expandtab

" Set tab size in spaces (this is for manual indenting)
set tabstop=4

" The number of spaces inserted for a tab (used for auto indenting)
set shiftwidth=4

" Highlight tailing whitespace
set list listchars=tab:\ \ ,trail:·

" Get rid of the delay when pressing O (for example)
" http://stackoverflow.com/questions/2158516/vim-delay-before-o-opens-a-new-line
set timeout timeoutlen=1000 ttimeoutlen=100

" UTF encoding
set encoding=utf-8

" Autoload files that have changed outside of vim
set autoread

" Better splits (new windows appear below and to the right)
set splitbelow
set splitright

" Ensure Vim doesn't beep at you every time you make a mistype
set visualbell

" Visual autocomplete for command menu (e.g. :e ~/path/to/file)
set wildmenu

" Redraw only when we need to (i.e. don't redraw when executing a macro)
set lazyredraw

" Highlight a matching [{()}] when cursor is placed on start/end character
set showmatch

" <C-x><C-k> for word autocomplete
set dictionary=/usr/share/dict/words


