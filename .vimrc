" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin 'ryanoasis/vim-devicons'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'alvan/vim-closetag'
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
Plugin 'AutoComplPop'
Plugin 'natebosch/vim-lsc'
Plugin 'prettier/vim-prettier'
Plugin 'joshdick/onedark.vim'
call vundle#end()

let g:lsc_server_commands = {'dart': 'dart_language_server'}

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

" zoom vim pane / window
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
map - :vertical resize -20<CR>
map + :vertical resize +20<CR>
" map * :resize +5<CR>
" map _ :resize -5<CR>

"Move Window
map sH <C-w>H
map sJ <C-w>J
map sK <C-w>K
map sL <C-w>L

"Move Lines

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

"Goyo
map <C-g> :Goyo<CR>

nnoremap <Leader><space> :noh<return>
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>m :NERDTreeFocus<CR>

"git
nmap <leader>gs :G<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>

"auto line break
autocmd BufRead,BufNewFile *.txt set wrap linebreak
autocmd BufRead,BufNewFile *.md set wrap linebreak
autocmd BufRead,BufNewFile *.markdown set wrap linebreak

" exports markdown to pdf and opens it
nmap <C-s> :w<CR>:!pandoc %:t -o %:r.pdf;open %:r.pdf &<CR><CR>

" Enable CursorLine
set cursorline
" Default Colors for CursorLine
highlight  CursorLine ctermbg=235 ctermfg=None

set showcmd

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>


" Auto TAG CLOSE

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

