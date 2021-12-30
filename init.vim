syntax on
set noerrorbells
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set modifiable
set showcmd
set ruler
set colorcolumn=80
set number
set incsearch
set nohlsearch
set hidden          "nav buffers better
set scrolloff=8
set undofile        "save undo history
set mouse=         "disable mouse support
set ignorecase      "case insensitive search unless cap letters are used
set smartcase
set t_Co=256
filetype plugin indent on

call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-fugitive'
"    Plug 'lewis6991/gitsigns.nvim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-telescope/telescope.nvim'            "fuzzy file finder
    Plug 'nvim-lua/plenary.nvim'                    "for telescope to work
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' } "^

    "Colorschemes
    Plug 'tomasiser/vim-code-dark'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'jaredgorski/SpaceCamp'

    "auto completion
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'onsails/lspkind-nvim'

    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'ryanoasis/vim-devicons'
    Plug 'kyazdani42/nvim-web-devicons'

    Plug 'windwp/nvim-autopairs'

call plug#end()

let mapleader = " "
nnoremap <leader>so :source $HOME/.config/nvim/init.vim
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <C-n> :Telescope find_files<CR>
let g:airline_theme = 'codedark'
let g:airline_powerline_fonts = 1
let g:webdevicons_enable_nerdtree = 1

" Only do this part when compiled with support for autocommands.
if has("autocmd")
    " Use filetype detection and file-based automatic indenting.
    filetype plugin indent on

    " Use actual tab chars in Makefiles.
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif

lua require('audendana')

"colorscheme papercolor 
"colorscheme codedark 
"colorscheme spacecamp
colorscheme vividchalk 
"colorscheme elflord 
set background=dark
set termguicolors
