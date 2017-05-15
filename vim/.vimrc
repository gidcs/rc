"vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

set encoding=utf-8
set nocompatible
set backspace=indent,eol,start
set number
set cursorline
set cursorcolumn
hi CursorLine cterm=bold ctermbg=darkgrey ctermfg=NONE guibg=darkgrey guifg=NONE
hi CursorColumn cterm=bold ctermbg=darkgrey ctermfg=NONE guibg=darkgrey guifg=NONE
syntax on
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set smartindent
set incsearch
set hlsearch
set autoindent
set filetype=html
"paste mode
set pastetoggle=<F2>
set showmode
set splitbelow
set splitright
"mouse on
set mouse=a
"vim-airline status bar on
set laststatus=2
"colorcolumn
set colorcolumn=76
hi ColorColumn ctermbg=gray
"pass drag signal to vim
set ttymouse=sgr
"show all when using tab
set wildmenu
set wildmode=list:longest
