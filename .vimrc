set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim.git'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'csexton/trailertrash.vim'

Plugin 'Blackrush/vim-gocode'
Plugin 'dleonard0/pony-vim-syntax'
" Bundle 'andviro/flake8-vim'
Plugin 'othree/html5.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'vim-airline/vim-airline'
Plugin 'leafgarland/typescript-vim'

call vundle#end()
filetype plugin indent on

""" General
set number
"set visualbell
set autoread
set hidden
set encoding=utf8
set mouse=a

"""Appearance
syntax enable
set t_Co=16 	" 16 colors
set background=dark
colorscheme solarized

""" Formatting
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround
set smarttab
set autoindent
set copyindent
set smartindent
set wrap 	" Enable soft wrapping
set linebreak 	" Wrap at acceptable points
set nolist 	" Disable inserting of newlines

""" Performance
"set lazyredraw
set noswapfile
set nobackup
set nowb

" set guifont=Input:h11:cANSI
set guifont=Cascadia\ Mono\ PL\ Regular\ 14
let g:airline_powerline_fonts=1

""" GVIM
if has("gui_running")
    set guioptions-=T
    set guioptions-=m
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif


""" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

""" Always run go fmt when saving go files
autocmd FileType go autocmd BufWritePre <buffer> Fmt

""" Turn off BELL
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
