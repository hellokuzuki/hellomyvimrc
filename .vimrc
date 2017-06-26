set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须
"设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'

" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
"Plugin 'L9'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
Plugin 'git://git.wincent.com/command-t.git'
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
"Plugin 'file:///home/gmarik/path/to/plugin'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
"Plugin 'ascenator/L9', {'name': 'newL9'}


" YML Syntax
Plugin 'pearofducks/ansible-vim'

" Dockerfile Syntx
Plugin 'ekalinin/Dockerfile.vim'

" Incsearch tool
Plugin 'haya14busa/incsearch.vim'

" nerdtree filesystem view
Plugin 'scrooloose/nerdtree'

" vim airline theme
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"vim color schemes
Plugin 'flazz/vim-colorschemes'

"markdown .md file 
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" 你的所有插件需要在下面这行之前

call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 简要帮助文档
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后

syntax on
" Fix Delete key not working issue on MacOS
set backspace=indent,eol,start

" Enable highlight search
set hlsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

"Nerdtree arrows
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"Color scheme"
colorscheme molokai

"Markdown disable folding
let g:vim_markdown_folding_disabled = 1

" Airline themes setting
let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled = 1 "Enable Smarter tab line
let g:airline_powerline_fonts = 1

"source  $HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
"set guifont=Inconsolata\ for\ Powerline:h15
"let g:Powerline_symbols = 'fancy'
"set encoding=utf-8
set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
"set termencoding=utf-8
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '^V' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '^S' : 'S',
      \ }
autocmd BufNewFile,BufRead *.md set filetype=markdown
set cursorline
set number
