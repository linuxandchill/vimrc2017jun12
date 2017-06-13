set rtp+=~/.fzf
set nocompatible              " be iMproved, required
filetype off                  " required

" :set autoindent
:set cindent
:set number

set wildmenu
set wildmode=longest,list
:set mouse=a

let mapleader=" "
nnoremap <Leader>w :w<CR>
nnoremap <Leader>o :CtrlP<CR> 
nnoremap <Leader>q :wq<CR>
nnoremap <Leader>qq :q<CR>
nnoremap <Leader>f :FZF<CR>
nnoremap <Leader>sd :split<CR>  
nnoremap <Leader>vrr :vertical resize 30<CR>

" Avoids updating the screen before commands are completed
set lazyredraw

" Remap navigation commands to center view on cursor using zz
nnoremap <C-U> 11kzz
nnoremap <C-D> 11jzz
nnoremap j jzz
nnoremap k kzz
nnoremap # #zz
nnoremap * *zz
nnoremap n nzz
nnoremap N Nzz

set pastetoggle=<F2>


set splitbelow
set splitright
:set incsearch
:set hlsearch
" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/vundle

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'isRuslan/vim-es6'

Plugin 'NLKNguyen/papercolor-theme'

Plugin 'vim-airline/vim-airline'

Plugin 'pangloss/vim-javascript'

Plugin 'scrooloose/nerdtree'

Plugin 'zhaocai/GoldenView.Vim'

Plugin 'tomasr/molokai'

Plugin 'ninja/sky' 

Plugin 'mattn/emmet-vim'

Plugin 'nathanaelkane/vim-indent-guides' 

Plugin 'wincent/command-t'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'mxw/vim-jsx'

Plugin 'crusoexia/vim-monokai' 

Plugin 'slashmili/alchemist.vim'

Plugin 'git://github.com/jiangmiao/auto-pairs.git'

Plugin 'tpope/vim-ragtag'

Plugin 'Yggdroot/indentLine'

Plugin 'othree/yajs.vim'

Plugin 'slim-template/vim-slim.git'

Plugin 'elzr/vim-json'

Plugin 'fatih/vim-go'

Plugin 'elixir-lang/vim-elixir'


" Plugin 'ctrlpvim/ctrlp.vim' 

" All of your Plugins must be added before the following line
call vundle#end()            " required
syntax enable
filetype plugin indent on    " required
autocmd BufNewFile,BufRead *.slim set ft=slim

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"set background=dark
colorscheme getafe
set t_Co=256
"let g:molokai_original = 1


" Recommended: continuous vertical split line.
set fillchars=vert:\│

" Recommended: Set airline theme to sky.
let g:airline_theme='dark'

" Recommended: remove powerline separaters (text can't be transparent).
let g:airline_powerline_fonts = 1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#left_sep=''
let g:airline#extensions#tabline#left_alt_sep=''


cd ~/
map <F2> :NERDTreeToggle<CR>
" open Nerd Tree in folder of file in active buffer
map <Leader>nt :NERDTree %:p:h<CR>

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set backspace=2
" size of a hard tabstop
" set tabstop=4
"
""size of an indent"
" set shiftwidth=4
"
" " a combination of spaces and tabs are used to simulate tab stops at a width
" " other than the (hard)tabstop
" set softtabstop=4
:imap ii <Esc>


set runtimepath^=~/.vim/bundle/ctrlp.vim

:set formatoptions-=cro
set noswapfile
au BufNewFile,BufRead *.ejs set filetype=html
set conceallevel=0
let g:vim_json_syntax_conceal = 0
