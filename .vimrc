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
set nowritebackup
set signcolumn=yes
set nowb
set noswapfile
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set encoding=UTF-8
set t_Co=256
syntax on

call plug#begin('~/.vim/plugged')
	Plug 'tpope/vim-fugitive'
	Plug 'vim-airline/vim-airline'
	Plug 'kien/ctrlp.vim'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'scrooloose/nerdtree'
	Plug 'ayu-theme/ayu-vim'
	Plug 'jiangmiao/auto-pairs'
	Plug 'mattn/emmet-vim'
	Plug 'tpope/vim-commentary'
	Plug 'airblade/vim-gitgutter'
	Plug 'neoclide/coc.nvim'
	Plug 'ryanoasis/vim-devicons'
call plug#end()

set termguicolors
let ayucolor="dark"
colorscheme ayu

let g:AirlineTheme='simple'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:NERDTreeWinPos = "right"
inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-f> <Esc>:NERDTreeFind<cr>


function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

