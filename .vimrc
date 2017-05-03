"===== VUNDLE STUFF =====
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" autocomplete
let g:ycm_confirm_extra_conf = 0
Plugin 'Valloric/YouCompleteMe'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



" ====== SYNTAX ======
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set smartcase
set number
filetype plugin indent on     " enable loading indent file for filetype

" === Folding ===
set foldmethod=indent       " allow us to fold on indents
set foldlevel=99            " don't fold by default

" ==== Searching and Patterns ====
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set smarttab                " Handle tabs more intelligently
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex

" ====== OTHER =======
set confirm " Instead of typing q! it will just ask you Y/N/C?

" ==== CUSTOM ME =====
let mapleader=","

" jk as escape
inoremap jk <Esc>

" toggle paste for pasting from outside
set pastetoggle=<F9>


" Get rid of whitespace
autocmd BufWritePre * :%s/\s\+$//e

autocmd FileType html,xhtml,xml,css,js setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
au FileType python setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,>
