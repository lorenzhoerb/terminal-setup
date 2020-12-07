" set the runtime path to include Vundle and initialize
"
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
Plugin 'frazrepo/vim-rainbow'
Plugin 'vim-scripts/indentpython.vim'


call vundle#end()
filetype plugin indent on

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Activate Rainbow Brackets
let g:rainbow_active = 1

set encoding=utf-8
syntax enable
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

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

colorscheme onedark
syntax on
set number
highlight Normal ctermbg=None

" visual to normal
set timeoutlen=1000 ttimeoutlen=0


let mapleader = ","

let g:gitgutter_enabled=0
nmap <leader>d :GitGutterToggle<cr>

highlight LineNr ctermfg=darkgrey

" highlight current curser number
se cul
hi clear CursorLine
hi cursorlinenr guifg=bold ctermfg=Yellow

"new line in normal mode
map <Enter> o<ESC>
map <S-Enter> O<ESC>

"split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w

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

nnoremap <Leader><space> :noh<return>
nmap <Leader>n :NERDTreeToggle<CR>


nmap <C-r> :w<CR>:!python3 %<CR>
