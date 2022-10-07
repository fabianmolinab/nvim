call plug#begin('~/.local/share/nvim/plugged')

"themes
"Plug 'kjwon15/vim-transparent'
"Plug 'ntk148v/vim-horizon'
"Plug 'ayu-theme/ayu-vim'
"Plug 'markvincze/panda-vim'
"Plug 'sonph/onehalf', { 'rtp': 'vim' }
"Plug 'arcticicestudio/nord-vim' , { 'on':  'NERDTreeToggle' }
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'morhetz/gruvbox'
"Plug 'joshdick/onedark.vim'
"Plug 'franbach/miramare'
"Plug 'sainnhe/sonokai'
"Plug 'sainnhe/gruvbox-material'
"Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'wuelnerdotexe/vim-enfocado'

"visual
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lilydjwg/colorizer'

" Web developer sintax
Plug 'cakebaker/scss-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components'

"Git integration
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'APZelos/blamer.nvim'
Plug 'rbong/vim-flog'  "Git Log 
Plug 'sindrets/diffview.nvim' "Git Diff

"Tabs
Plug 'akinsho/bufferline.nvim', {'tags': 'v2.*'}
Plug 'nvim-lualine/lualine.nvim'

"Functionality
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ap/vim-buftabline' "BufferLinne
Plug 'preservim/tagbar'
Plug 'nvim-telescope/telescope.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'folke/todo-comments.nvim' "Todo comments

"tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"code modification
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
"Plug 'dense-analysis/ale' "Configuración de ESLINT

"LSP 
if has("nvim")
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer' "Instalador sencillo de servers
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


call plug#end()
