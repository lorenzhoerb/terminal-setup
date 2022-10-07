set nocompatible
filetype on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'junegunn/goyo.vim'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/syntastic'
Plugin 'alvan/vim-closetag'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-commentary'


" Code Format

Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'

Plugin 'google/vim-glaive'

call vundle#end()

syntax on

set cursorline

set relativenumber

" set shif with 4 tabs
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Use highlighting when doing a search.
set hlsearch

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Set the backslash as the leader key.
let mapleader = ","

" Code Format

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
  autocmd FileType swift AutoFormatBuffer swift-format
augroup END


" ### KEY Bindings ### {

nnoremap <Leader><space> :noh<return>

nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>m :NERDTreeFocus<CR>

"new line in normal mode
map <Enter> o<ESC>

" }

let g:molokai_original = 1
colorscheme molokai
