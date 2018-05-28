
call plug#begin('~/.vim/bundle')

Plug 'Valloric/YouCompleteMe'

call plug#end()

set so=10
set number
syntax on
filetype on
filetype plugin on
filetype indent on

set completeopt=longest,menu

if has('mouse')
	set mouse=a
	set selectmode=mouse,key
	set nomousehide
endif

set autoindent
set modeline
"set cursorline
"set cursorcolumn

set shiftwidth=4
set tabstop=4
set softtabstop=4

set showmatch
set matchtime=0
set nobackup
set nowritebackup

set backspace=indent,eol,start

set fenc=utf-8
set fencs=utf-8,gbk,gb18030,gb2312,cp936,usc-bom,euc-jp
set enc=utf-8

set foldmethod=syntax
set foldcolumn=0
set foldlevel=100

nnoremap <space> @=((foldcolsed(line('.')) < 0  ) ? 'zc' : 'zo')<CR>


set smartcase
set ignorecase
set nohlsearch
set incsearch
set autochdir

vmap j gj
vmap k gk
nmap j gj
nmap k gk


nmap T :tabnew<cr>

au FileType c,cpp,h,java,css,js,nginx,scala,go inoremap <buffer> {<CR> {<CR>}<Esc>0




