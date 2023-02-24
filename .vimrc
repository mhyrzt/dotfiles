set noerrorbells
set tabstop=4
set number
set wrap
set incsearch
set hlsearch
set ai
set si
set smarttab
set showmatch
set nobackup
set nowb
set noswapfile
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set encoding=UTF-8
syntax on
set t_Co=256

call plug#begin('~/.vim/plugged')
	Plug 'tpope/vim-fugitive'
	Plug 'vim-airline/vim-airline'
	Plug 'kien/ctrlp.vim'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'scrooloose/nerdtree'
	Plug 'ayu-theme/ayu-vim'
	Plug 'tmsvg/pear-tree'	
	Plug 'mattn/emmet-vim'
	Plug 'tpope/vim-commentary'
	Plug 'airblade/vim-gitgutter'
	Plug 'valloric/youcompleteme'
	Plug 'ryanoasis/vim-devicons'
call plug#end()

set termguicolors
let ayucolor="dark"
colorscheme ayu

let g:AirlineTheme='simple'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:pear_tree_repeatable_expand = 0

let g:NERDTreeWinPos = "right"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
