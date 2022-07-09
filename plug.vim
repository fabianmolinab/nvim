call plug#begin('~/.local/share/nvim/plugged')

"themes
Plug 'kjwon15/vim-transparent'
"Plug 'ayu-theme/ayu-vim'
"Plug 'markvincze/panda-vim'
"Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'arcticicestudio/nord-vim' , { 'on':  'NERDTreeToggle' }
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'morhetz/gruvbox'
"Plug 'joshdick/onedark.vim'
"Plug 'franbach/miramare'
"Plug 'sainnhe/sonokai'
"Plug 'sainnhe/gruvbox-material'
"Plug 'catppuccin/nvim', {'as': 'catppuccin'}

"visual
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lilydjwg/colorizer'
Plug 'sheerun/vim-polyglot' "Paquetes de coloración de sintaxis de lenguajes

" Web developer sintax
Plug 'cakebaker/scss-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
"Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'
"Plug 'heavenshell/vim-jsdoc', {
"      \'for':['javascript','javascript.jsx','typescript'],
"      \'do':'make install'
"\}
Plug 'styled-components/vim-styled-components'

"Git integration
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
"Plug 'APZelos/blamer.nvim'
Plug 'rbong/vim-flog'  "Git Log 

"Functionality
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ap/vim-buftabline'
Plug 'preservim/tagbar'
Plug 'nvim-telescope/telescope.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'jbgutierrez/vim-better-comments' "Resaltado de better comments

"tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"code modification
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale' "Configuración de ESLINT

call plug#end()
