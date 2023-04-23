call plug#begin('~/.local/share/nvim/plugged')

"Temas
"Plug 'kjwon15/vim-transparent'
"Plug  'Shatur/neovim-ayu'
"Plug 'morhetz/gruvbox'
"Plug 'sainnhe/sonokai'
"Plug 'sainnhe/gruvbox-material'
"Plug 'catppuccin/nvim', {'as': 'catppuccin'}
"Plug 'wuelnerdotexe/vim-enfocado'
"Plug 'shaunsingh/nord.nvim'
"Plug 'EdenEast/nightfox.nvim' "#2 
Plug 'mcchrish/zenbones.nvim'
Plug 'rktjmp/lush.nvim'"require zenbones
"Plug 'kvrohit/mellow.nvim'
"Plug 'Everblush/nvim'
"Plug 'ishan9299/nvim-solarized-lua'

"---- Visual
Plug 'kyazdani42/nvim-web-devicons' "Iconos modernos
Plug 'lilydjwg/colorizer' "Coloreado de codigos exadecimales de colores
"---
"Sintaxis de Lenguajes 
"Plug 'cakebaker/scss-syntax.vim'
"Plug 'pangloss/vim-javascript'
"Plug 'HerringtonDarkholme/yats.vim'
"Plug 'maxmellon/vim-jsx-pretty'
"Plug 'styled-components/vim-styled-components'
"Plug 'wuelnerdotexe/vim-astro'

"------Git integracion
  "Marcado de los cambios al costado 
  Plug 'lewis6991/gitsigns.nvim'

  " Menu de cambios y de commits ':G'
  Plug 'tpope/vim-fugitive'
"--------

"------ Funcionalidades
  "Busqueda keys en modo NORMAL, se usa pulsando 'f'
  Plug 'easymotion/vim-easymotion'

  "Plugin de busqueda
  Plug 'nvim-telescope/telescope.nvim'

  Plug 'tpope/vim-surround'

  "Plugin para mover lineas en modo Normal o Visual, se usa con "ALT +{j,k}  
  Plug 'matze/vim-move'

  "Terminal integrada con 'CRTL + T'
  Plug 'wuelnerdotexe/nerdterm'

  "visual multiples lineas
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}

  "Comentar lineas de codigo en modo NORMAL
  Plug 'scrooloose/nerdcommenter'
"--------

"------Tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
"------
"
Plug 'godlygeek/tabular'

"---- Plugins de nvim
if has("nvim")
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/mason.nvim'
  Plug 'williamboman/mason-lspconfig.nvim' "Instalador de servidores de LSP
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'onsails/lspkind-nvim' "Iconos del CMP
  Plug 'folke/lsp-colors.nvim' "Colores para LSP
  Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' } "AutoCompletado Tabnine
  
  "---- Barras de estado y pestañas
    "Plug 'akinsho/bufferline.nvim', {'tags': 'v3.*'}
    Plug 'nvim-lualine/lualine.nvim'
  "----

  "Snipets con LuaSnip
  Plug 'L3MON4D3/LuaSnip' 
  Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'rafamadriz/friendly-snippets'

  "----- Funcionalidades de editor
    Plug 'nvim-lua/plenary.nvim'

    "Marcado de indentación
    Plug 'lukas-reineke/indent-blankline.nvim'

    "Auto parentesis y corchetes
    Plug 'windwp/nvim-autopairs'

    Plug 'MunifTanjim/nui.nvim' "Require neo-tree
    Plug 'nvim-neo-tree/neo-tree.nvim'

    "auto tag para html
    Plug 'windwp/nvim-ts-autotag'

    Plug 'mrjones2014/nvim-ts-rainbow'

    "Inspirado en Git Lens de VS Code
    "Plug "APZelos/blamer.nvim"

    "Colorea los comentarios en forma de TODO:
    Plug 'folke/todo-comments.nvim' 
  "------------
  
  "Sintaxis de arboles de lenguajes
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  "Config Prettier y Eslint
  Plug 'jose-elias-alvarez/null-ls.nvim' 

  "-------Debuger
    Plug 'mfussenegger/nvim-dap'
    Plug 'rcarriga/nvim-dap-ui' 
  "-----
  
  " Configuracion de lenguaje go para nvim
  Plug 'ray-x/go.nvim'
  Plug 'ray-x/guihua.lua'
  
  "debuger go
  "Plug 'leoluz/nvim-dap-go'
endif

call plug#end()
