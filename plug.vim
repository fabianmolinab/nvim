call plug#begin('~/.local/share/nvim/plugged')

"Temas
"Plug 'kjwon15/vim-transparent'
"Plug 'morhetz/gruvbox'
"Plug 'joshdick/onedark.vim'
"Plug 'sainnhe/sonokai'
"Plug 'sainnhe/gruvbox-material'
"Plug 'catppuccin/nvim', {'as': 'catppuccin'}
"Plug 'wuelnerdotexe/vim-enfocado'
"Plug 'shaunsingh/nord.nvim'
"Plug 'lunarvim/horizon.nvim' #1
"Plug 'EdenEast/nightfox.nvim' "#2 
"Plug 'mcchrish/zenbones.nvim'
"Plug 'rktjmp/lush.nvim'"require zenbones
Plug 'kvrohit/mellow.nvim'
"Plug 'projekt0n/github-nvim-theme', { 'tag': 'v0.0.7' }

"Visual
Plug 'kyazdani42/nvim-web-devicons' "Iconos
Plug 'lilydjwg/colorizer' "Codigo de colores 

"Sintaxis de Lenguajes de la web
Plug 'cakebaker/scss-syntax.vim'
"Plug 'pangloss/vim-javascript'
"Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components'
"Plug 'wuelnerdotexe/vim-astro'

"Git integracion

Plug 'lewis6991/gitsigns.nvim' "Cambios de git al archivo de lado
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'sindrets/diffview.nvim'
"Plug 'APZelos/blamer.nvim' "

"Tabs
"Plug 'akinsho/bufferline.nvim', {'tags': 'v3.*'}
Plug 'nvim-lualine/lualine.nvim'

"Functionality
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
Plug 'mattn/emmet-vim'
Plug 'jose-elias-alvarez/null-ls.nvim' "Config Prettier 

"LSP 
if has("nvim")
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim' "Instalador de servidores de LSP
  Plug 'hrsh7th/cmp-nvim-lsp' "AutoSugerencias
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'onsails/lspkind-nvim' "Iconos del CMP
  Plug 'folke/lsp-colors.nvim' "Colores para LSP
  "Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' } "AutoCompletado Tabnine
  
  "Snipets con LuaSnip
  Plug 'L3MON4D3/LuaSnip', {'tag': 'v<CurrentMajor>.*'}
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'rafamadriz/friendly-snippets'

  "Funcionalidades de editor
  Plug 'nvim-tree/nvim-tree.lua' "Menu lateral de carpetas y directorios
  Plug 'lukas-reineke/indent-blankline.nvim' "Indentacion
  Plug 'windwp/nvim-autopairs' "auto parentesis y corchetes
  Plug 'windwp/nvim-ts-autotag' "auto tag para html
  Plug 'mrjones2014/nvim-ts-rainbow'

  "Sintaxis
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "Sintaxis de arbol para los lenguajes 

  "Discord
  "Plug 'andweeb/presence.nvim' "Mostrar actividad en Discord

  "Debuger
  Plug 'mfussenegger/nvim-dap'
  Plug 'rcarriga/nvim-dap-ui' 
  "debuger go 
  Plug 'leoluz/nvim-dap-go'
endif

"Terminal 
Plug 'wuelnerdotexe/nerdterm'

call plug#end()
