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

" File Browsing nerdtree filesystem view
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" vim airline theme
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"vim color schemes
Plugin 'flazz/vim-colorschemes'

" Simple Fold
Plugin 'tmhedberg/SimpylFold'

" Auto indentation
Plugin 'vim-scripts/indentpython.vim'

" You complete me
" After installed YouCompleteMe plugin,
" mac : brew install cmake, then go to YouCompleteMe folder
" ./install.py --clang-completer
Plugin 'Valloric/YouCompleteMe'

" Syntax Checking/Highlighting
Plugin 'scrooloose/syntastic'

" Super Searching
Plugin 'kien/ctrlp.vim'


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
let g:airline_powerline_fonts=1

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
" colorscheme solarized
"colorscheme molokai
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme molokai
endif

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

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding by za
set foldmethod=indent
set foldlevel=99

"Simple fold: enable docstring preview in fold text
let g:SimpylFold_docstring_preview = 1

"add the proper PEP8 indentation for python
au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
au BufNewFile,BufRead *.py set tabstop=2
au BufNewFile,BufRead *.py set softtabstop=2
au BufNewFile,BufRead *.py set shiftwidth=2

" YouCompleteMe customizations
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let python_highlight_all=1

" Ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']

" System clipboard
set clipboard=unnamed

" Ignore some folders and files for CtrlP indexing
" Toggle CrtlP =>  Ctrl + P
" Open a file in a new tap => Ctrl + t 
"
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.sass-cache$|\.hg$\|\.svn$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" Key Mapping
let mapleader=','

" NERDTree Toggle
" nmap <leader>ne :NERDTree<cr>
map <leader>n :NERDTreeTabsToggle<cr>

" CtrlP toggle
map <leader>p :CtrlP<cr>

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enter command mode by ; or :
nnoremap ; :

" Buffer switching
nnoremap <leader>b :bp<cr>
nnoremap <leader>f :bn<cr>
nnoremap <leader>g :e#<cr>
