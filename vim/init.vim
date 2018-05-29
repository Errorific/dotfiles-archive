call plug#begin('~/.config/nvim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-grepper'
Plug 'scrooloose/nerdtree'
Plug 'benekastah/neomake'
Plug 'bling/vim-airline'
Plug 'derekwyatt/vim-scala'
Plug 'geoffharcourt/one-dark.vim'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdcommenter'
Plug 'nblock/vim-dokuwiki'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-markdown'
Plug 'cakebaker/scss-syntax.vim'
Plug 'nblock/vim-dokuwiki'
Plug 'eagletmt/neco-ghc'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'antlypls/vim-colors-codeschool'
Plug 'vim-scripts/lilypink'
" Plug 'jlund3/colorschemer'
Plug 'MPiccinato/wombat256'
Plug 'raichoo/purescript-vim'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

filetype plugin indent on
set hidden 
set history=1000
set number
syntax on
syntax enable
set t_Co=256
colorscheme onedark
let g:airline_theme='molokai'
set clipboard=unnamed
set nospell

set encoding=utf-8              " standard encoding
set number                      " Its nice to see line numbers
set backspace=indent,eol,start  " Allow backspace in insert mode
set autoread                    " Reload files changed outside vim
set hidden                      " Buffers can exist in the background
set history=1000                " Store lots of :cmdline history (its not 1990)
set shellpipe=2>/dev/null>
set re=1                        "Use a non-broken regex engine for syntax highlighting

let mapleader = "\<Space>"               " I just use the default Leader
set showcmd                     " Show incomplete cmds down the bottom
set gcr=a:blinkon0              " Disable cursor blink
set laststatus=2                " Always show status line
set splitright                  " Opens vertical split right of current window
set splitbelow                  " Opens horizontal split below current window
set shortmess=filnxtToOI        " see :help shortmess
set shell=zsh

set ttyfast

set incsearch        " Find the next match as we type the search
set hlsearch         " Highlight searches by default
set viminfo='100,f1  " Save up to 100 marks, enable capital marks

set noswapfile
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set list listchars=tab:\ \ ,trail:·   " Display tabs and trailing spaces visually
set nowrap                            " Don't wrap lines

let g:airline_powerline_fonts = 1
set noshowmode " Let airline handle the mode display

autocmd! BufWritePost * Neomake

map <leader>t :NERDTreeToggle<CR>

map <leader>ff :CtrlP<CR>
map <leader>fe :e 
map <leader>fg :Grepper! -tool ag  -open -switch<CR>

map <leader>wh :wincmd h<CR>
map <leader>wl :wincmd l<CR>
map <leader>wj :wincmd j<CR>
map <leader>wk :wincmd k<CR>
map <leader>ws :sp<CR>
map <leader>wv :vs<CR>

map <leader>gs :Gstatus<CR>
map <leader>gf :Git pull<CR>
map <leader>gc :Gcommit<CR>
map <leader>gp :Git push<CR>
map <leader>gb :Gblame<CR>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

let g:user_emmet_expandabbr_key = '<tab>'
