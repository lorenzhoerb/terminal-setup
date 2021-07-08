" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tmhedberg/matchit'
Plugin 'airblade/vim-gitgutter'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tomasiser/vim-code-dark'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'junegunn/goyo.vim'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-fugitive'
call vundle#end()

filetype plugin indent on

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" let g:pandoc#spell#enabled=0

set encoding=utf-8
syntax enable
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set conceallevel=0
" set formatoptions+=a

set laststatus=2

set number
set relativenumber

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" map paragraph jump to J and K
nnoremap J }
nnoremap K {

nnoremap j gj
nnoremap k gk

"colorscheme codedark
 colorscheme onedark

syntax on
set number
highlight Normal ctermbg=None

" visual to normal
set timeoutlen=1000 ttimeoutlen=0

" backspace
set backspace=indent,eol,start" >> ~/.vimrc

set spelllang=en_us,de_de

let mapleader = ","

let g:gitgutter_enabled=0
nmap <leader>d :GitGutterToggle<cr>

highlight LineNr ctermfg=darkgrey

" highlight current curser number
se cul
hi clear CursorLine
" hi cursorlinenr guifg=bold ctermfg=Yellow cterm=NONE

highlight Comment ctermfg=green

"new line in normal mode
map <Enter> o<ESC>
map <S-Enter> O<ESC>

"split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

noremap si <c-w>_ \| <c-w>\|
noremap so <c-w>=

"move in window
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-

"Move Window
map sH <C-w>H
map sJ <C-w>J
map sK <C-w>K
map sL <C-w>L

"Goyo
map <C-g> :Goyo<CR>

nnoremap <Leader><space> :noh<return>
nmap <Leader>n :NERDTreeToggle<CR>

"git
nmap <leader>gs :G<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
