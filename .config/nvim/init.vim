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
set softtabstop=4
set expandtab
set smartindent

" word wrap
set nowrap
nnoremap <leader>w :set wrap!<CR>

" swap/undo file
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

" file behaviour
set hidden

" turn off error bell
set noerrorbells

" line numbers
set number
set relativenumber

" search settings
set ignorecase
set smartcase
set nohlsearch
set incsearch

" color column
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=grey

" scroll offset
set scrolloff=8

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

