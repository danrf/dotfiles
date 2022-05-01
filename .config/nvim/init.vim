" plugins
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'neovim/nvim-lspconfig'
call plug#end()

" colors
if (has('termguicolors'))
  set termguicolors
endif

syntax on
set background=dark
let g:tokyonight_italic_functions = 1
colorscheme tokyonight

" lualine
lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
END

" language servers
lua << END
require('lspconfig').rls.setup{}
require('lspconfig').pylsp.setup{}
require('lspconfig').clangd.setup{}
END


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

