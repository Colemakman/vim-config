set number

color desert

syntax on

filetype plugin indent on
set tabstop=4
set shiftwidth=4

set cursorline

set ignorecase
set smartcase

set showmatch

set hlsearch

set history=1000

set noswapfile

set backspace=indent,eol,start


" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()

" Plugins go here

call plug#end()
