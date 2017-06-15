""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" simple .vimrc configuration
"
" Name -> Saikat Ray Tapu
" GitHub -> srt-git
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible                " set not compatible with vi
set history=1000                " lines for vim to remember

" load filetype-specific indent files
filetype on
filetype indent on
filetype plugin on

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Installed Plugins 
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'whatyouhide/vim-gotham'
Plug 'trevordmiller/nova-vim'

" Initialize plugin system
call plug#end()

" set to auto read when a file is changed from the outside
set autoread

let mapleader = "\<Space>"      " set mapleader

nmap <leader>w :w!<cr>          " fast saving

" reload vimrc
"nnoremap <leader>sr :source $MYVIMRC<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""

set showmode                    " show current mode
set ruler                       " display cursor position
set number                      " show line numbers

" turn on the wild menu
set wildmenu

" ignore compiled files
set wildignore=*.o,*~,*.pyc
set wildignore+=.git\*,.hg\*,.svn\*

" highlight current line
" set cursorline

set showmatch                   " highlight matching
set incsearch                   " search as chars are entered
set hlsearch                    " highlight matches
set ignorecase                  " ignore case while searching
set smartcase                   " smart about case while searching
set showcmd                     " show command in bottom bar
set hidden                      " buffer is hidden when abandoned

" allow backspacing over everything in insert mode
"set backspace=eol,start,indent
set bs=2

set gcr=a:blinkon0              " disable cursor blink    

" keep at least 5 lines above/below
set scrolloff=5

" keep at least 5 lines left/right
set sidescrolloff=5

set guioptions-=T               " disable toolbar
set guioptions-=e               " get terminal-like tab

" disable scrollbar on the right
set guioptions-=r
set guioptions-=R

" disable scrollbar on the left
set guioptions-=l
set guioptions-=L

" no annoying sound of errors
set noerrorbells
set novisualbell
set t_vb=
set timeout timeoutlen=200 ttimeoutlen=100

" in many terminal emulators the mouse works just fine, thus enable it
set mouse=a

" y and d put stuff into system clipboard
set clipboard=unnamed,unnamedplus

" <F12> toggles paste mode
set pastetoggle=<F12>


""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set encoding=utf8
set guifont=iosevka\ term\ Medium\ 13 

" colorscheme
if has("gui_running")
    set t_Co=256
    colorscheme nova
    "colorscheme gotham
    "set background=light
    "colorschem solarized
endif

" space between lines in pixel
set linespace=4


""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""
" turn backup off
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""
" => text, tap and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                   " space instead of tab
set smarttab                    " be smart when using tabs

set shiftwidth=4                " shift width 4 spaces
set tabstop=4                   " visual spaces per tab
set softtabstop=4               " number of spaces in tab

set autoindent
set smartindent
set wrap
set textwidth=79

"-------------- Split Management -----------"
set splitbelow
set splitright

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => remapped keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" semi-colon is colon
nnoremap ; :

" jj is escape
inoremap jj <esc>

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" split window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" tab nevigation
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
nnoremap tn :tabnew<CR>
nnoremap to :tabclose<CR>

" THE END
