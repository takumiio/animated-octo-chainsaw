" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'othree/html5.vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'christoomey/vim-tmux-navigator'

NeoBundle 'tpope/vim-surround'
NeoBundle 'hail2u/vim-css3-syntax'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/vimshell.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


syntax on

colorscheme jellybeans
set t_Co=256

set ignorecase
set smartcase
set hlsearch
nnoremap <Esc><Esc> :noh<CR>

set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

source $VIMRUNTIME/macros/matchit.vim

set noswapfile
set nobackup

set undofile
set undodir=~/.vim/undofiles

set nowrap

nnoremap <Right> <C-w>5><CR>
nnoremap <Left> <C-w>5<<CR>



if has('gui_macvim')
    set guifont=Ricty-RegularForPowerline:h14
endif

let g:unite_enable_start_insert = 1
nnoremap <C-u> :Unite<Space>file<CR>

set shiftwidth=2 
set tabstop=2 
set softtabstop=2


set foldmethod=marker
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L


set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,mac,dos
let g:vimshell_interactive_encodings = {
\'/':'utf-8-mac',
\}
let g:vimshell_user_prompt = 'iconv(fnamemodify(getcwd(), ":~"), "utf-8-mac", "char")'


set ambiwidth=double
