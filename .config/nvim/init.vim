" plugins
call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'savq/melange'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'urbit/hoon.vim'
Plug 'preservim/nerdtree'
call plug#end()

set termguicolors
colorscheme melange

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

" cursor line
set cursorline

" search settings
set ignorecase
set smartcase
set nohlsearch
set incsearch

" scroll offset
set scrolloff=8

" set leader key
let mapleader = " "

" Telescope
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-j> <cmd>Telescope live_grep<cr>
nnoremap <C-t> <cmd>Telescope buffers<cr>
"nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" nerdtree
nnoremap <C-n> :NERDTreeToggle<cr>
nnoremap <C-f> :NERDTreeFind<cr>

