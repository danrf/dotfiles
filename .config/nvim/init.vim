let g:polyglot_disabled = ['rust']

" plugins
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-fugitive'
Plug 'rktjmp/lush.nvim'
Plug 'ellisonleao/gruvbox.nvim'
call plug#end()

" colors
set nocompatible
set termguicolors
set background=dark
colorscheme gruvbox

syntax enable
filetype plugin indent on

" tabs
set tabstop=4
set shiftwidth=4

" line numbers
set number
set relativenumber

" search settings
set ignorecase
set smartcase

" set leader key
let mapleader = " "

" esc remap
inoremap jj <C-c>

" windows
nnoremap <leader>q :wincmd q<CR>
nnoremap <leader>v :wincmd v<CR>
nnoremap <leader>s :wincmd s<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>n :bnext<CR>
nnoremap <leader>p :bprevious<CR>

" registers
nnoremap <leader>r :reg<CR>

" buffers
nnoremap <leader>t :ls<CR>

" word wrap
set nowrap
nnoremap <leader>w :set wrap!<CR>

