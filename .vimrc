
filetype plugin on
"------------------------------------------------------------------------------"
set encoding=UTF-8
set nocompatible
set number
set relativenumber
set noerrorbells
set ts=4 sts=4 sw=4
set expandtab
set smartindent
set nowrap
set smartcase
set incsearch
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set laststatus=2
set noshowmode
set signcolumn=yes
set noshowcmd
set shortmess+=F
set termguicolors
set bg=dark
set splitbelow splitright
set wildmode=longest,list,full
set wildmenu
set clipboard+=unnamedplus
"set cursorline
"set cursorcolumn
set omnifunc=syntaxcomplete#Complete
set spell
set spelllang=en_au
set complete+=kspell
"set colorcolumn=80
set scrolloff=20
set timeoutlen=1000
set ttimeoutlen=5
"------------------------------------------------------------------------------"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')
    Plug 'mattn/emmet-vim'
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-repeat'
    Plug 'jiangmiao/auto-pairs'
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'cocopon/iceberg.vim'
    Plug 'junegunn/fzf.vim'
    Plug 'ledger/vim-ledger'
    Plug 'vim-ruby/vim-ruby'
    Plug 'lervag/vimtex'
    Plug 'instant-markdown/vim-instant-markdown',
    Plug 'turbio/bracey.vim'
    Plug 'preservim/nerdtree'
    Plug 'junegunn/goyo.vim'
call plug#end()
"------------------------------------------------------------------------------"
let g:airline_theme='jellybeans'
let g:airline_powerline_fonts = 1
colorscheme iceberg
highlight clear SignColumn
"------------------------------------------------------------------------------"
autocmd BufWritePre * :%s/\s\+$//e

let g:undotree_WindowLayout = 1
"------------------------------------------------------------------------------"
let mapleader = " "

"Plugin bindings
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>g :G<space>

nnoremap Y y$

"Splits navigation
noremap <C-left> <C-w>h
noremap <C-down> <C-w>j
noremap <C-up> <C-w>k
noremap <c-right> <C-w>l

"Fixing Keyboard layers
map <left> h
map <down> j
map <up> k
map <right> l

"Emmet
imap ,, <C-y>,

nnoremap n nzzzv
nnoremap N Nzzzv

imap jj <Esc>
"------------------------------------------------------------------------------"
"Abbreviations
iab Ydate <C-R>=strftime("%Y-%m-%d")<CR>

