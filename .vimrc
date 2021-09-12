"===============================================================================
"__     _____ __  __ ____   ____
"\ \   / /_ _|  \/  |  _ \ / ___|
" \ \ / / | || |\/| | |_) | |
"  \ V /  | || |  | |  _ <| |___
"   \_/  |___|_|  |_|_| \_\\____|
"
"===============================================================================
syntax enable
filetype plugin on
"===============================================================================
"          _
" ___  ___| |_ ___
"/ __|/ _ \ __/ __|
"\__ \  __/ |_\__ \
"|___/\___|\__|___/
"
"===============================================================================
set encoding=UTF-8
set nocompatible
set number
set relativenumber
set noerrorbells
set ts=4 sts=4 sw=4
set expandtab "Converts Tabs to Spaces"
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
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar
set termguicolors
set bg=dark
set splitbelow splitright
set wildmode=longest,list,full
set wildmenu
set clipboard+=unnamedplus
set cursorline
set omnifunc=syntaxcomplete#Complete
set spell
set spelllang=en_au
set colorcolumn=80
set scrolloff=20
"===============================================================================
"       _             _
" _ __ | |_   _  __ _(_)_ __  ___
"| '_ \| | | | |/ _` | | '_ \/ __|
"| |_) | | |_| | (_| | | | | \__ \
"| .__/|_|\__,_|\__, |_|_| |_|___/
"|_|            |___/
"
"===============================================================================
"Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')
    Plug 'fladson/vim-kitty'
    Plug 'mattn/emmet-vim'
    Plug 'mbbill/undotree'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'airblade/vim-gitgutter'
    Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'edkolev/tmuxline.vim'
    Plug 'junegunn/fzf.vim'
    Plug 'ledger/vim-ledger'
    Plug 'lervag/vimtex'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'morhetz/gruvbox'
    "Plug 'ycm-core/YouCompleteMe'
    Plug 'othree/html5.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'gorodinskiy/vim-coloresque'
    Plug 'ervandew/supertab'
    Plug 'turbio/bracey.vim'
    Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}


call plug#end()

"===============================================================================
"===============================================================================
"===============================================================================

let g:airline_theme='gruvbox'
colorscheme gruvbox
highlight clear SignColumn

autocmd BufWritePre * :%s/\s\+$//e

let g:indent_guides_enable_on_vim_startup = 1
let g:undotree_WindowLayout = 1

"===============================================================================
" _ __ ___ _ __ ___   __ _ _ __  ___
"| '__/ _ \ '_ ` _ \ / _` | '_ \/ __|
"| | |  __/ | | | | | (_| | |_) \__ \
"|_|  \___|_| |_| |_|\__,_| .__/|___/
"                         |_|
"
"===============================================================================
let mapleader = " "
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap Y y$

noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

map <left> h
map <down> j
map <up> k
map <right> l

inoremap , ,<c-g>u
inoremap . .<c-g>u

nnoremap <Leader><Space> :
nnoremap <leader>g :G
imap ,, <C-y>,

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
