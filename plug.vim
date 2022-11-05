call plug#begin('~/.local/share/nvim/plugged')

"Temas
"Plug 'kjwon15/vim-transparent'
"Plug 'ntk148v/vim-horizon'
"Plug 'ayu-theme/ayu-vim'
"Plug 'markvincze/panda-vim'
"Plug 'arcticicestudio/nord-vim' , { 'on':  'NERDTreeToggle' }
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'morhetz/gruvbox'
"Plug 'joshdick/onedark.vim'
"Plug 'franbach/miramare'
"Plug 'sainnhe/sonokai'
"Plug 'sainnhe/gruvbox-material'
"Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'wuelnerdotexe/vim-enfocado'
"Plug 'rose-pine/neovim', {'as': 'rose-pine'}

"Visual
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lilydjwg/colorizer' "Codigo de colores 
Plug 'lukas-reineke/indent-blankline.nvim'

"Web developer sintaxis
"Plug 'cakebaker/scss-syntax.vim'
"Plug 'pangloss/vim-javascript'
"Plug 'HerringtonDarkholme/yats.vim'
"Plug 'maxmellon/vim-jsx-pretty'
"Plug 'styled-components/vim-styled-components'

"Git integracion

Plug 'lewis6991/gitsigns.nvim' "Cambios de git al archivo de lado
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
"Plug 'APZelos/blamer.nvim' "

"Tabs
Plug 'akinsho/bufferline.nvim', {'tags': 'v2.*'}
Plug 'nvim-lualine/lualine.nvim'

"Functionality
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-telescope/telescope.nvim' "Plugin de busqueda
Plug 'easymotion/vim-easymotion' 
Plug 'tpope/vim-surround' 
Plug 'folke/todo-comments.nvim' "Todo comments
Plug 'matze/vim-move' "Mover texto

"tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"code modification
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'windwp/nvim-autopairs' "auto parentesis y corchetes
Plug 'mattn/emmet-vim'
Plug 'jose-elias-alvarez/null-ls.nvim' "Prettier modification

"LSP 
if has("nvim")
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim'
  "Plug 'williamboman/nvim-lsp-installer' "Instalador sencillo de servers
  Plug 'hrsh7th/cmp-nvim-lsp' "AutoSugerencias
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'onsails/lspkind-nvim' "Menu customizado de sugerencias cmp-lsp con iconos
  Plug 'folke/lsp-colors.nvim' " Colores para LSP

  " For luasnip users.
  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'

endif

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "Sintaxis de arbol para los lenguajes 

Plug 'windwp/nvim-ts-autotag' "auto tag para html

"Debug
Plug 'mfussenegger/nvim-dap'


call plug#end()
