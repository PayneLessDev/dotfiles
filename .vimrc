"===============================================================================
"__     _____ __  __ ____   ____
"\ \   / /_ _|  \/  |  _ \ / ___|
" \ \ / / | || |\/| | |_) | |
"  \ V /  | || |  | |  _ <| |___
"   \_/  |___|_|  |_|_| \_\\____|
"
"===============================================================================
syntax enable
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
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar
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
    Plug 'nanotech/jellybeans.vim'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'ervandew/supertab'
    Plug 'othree/html5.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'gorodinskiy/vim-coloresque'
call plug#end()

"===============================================================================
"===============================================================================
"===============================================================================

let g:airline_theme='jellybeans'
colorscheme jellybeans
highlight clear SignColumn

autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

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

imap ,, <C-y>,
