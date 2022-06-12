call plug#begin('~/.local/share/nvim/plugged')

"themes
"Plug 'ayu-theme/ayu-vim'
"Plug 'kjwon15/vim-transparent'
"Plug 'wojciechkepka/bogster'
"Plug 'ntk148v/vim-horizon'
"Plug 'markvincze/panda-vim'
"Plug 'sonph/onehalf', { 'rtp': 'vim' }
"Plug 'arcticicestudio/nord-vim' , { 'on':  'NERDTreeToggle' }
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'morhetz/gruvbox'
"Plug 'Rigellute/shades-of-purple.vim'
"Plug 'joshdick/onedark.vim'
"Plug 'mhartington/oceanic-next'
"Plug 'franbach/miramare'
"Plug 'sainnhe/sonokai'
Plug 'sainnhe/gruvbox-material'


"visual
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lilydjwg/colorizer'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'ap/vim-buftabline'

"Programming tecnologies
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components'
Plug 'cakebaker/scss-syntax.vim'
Plug 'heavenshell/vim-jsdoc', {
      \'for':['javascript','javascript.jsx','typescript'],
      \'do':'make install'
\}

"Git integration
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
"Plug 'APZelos/blamer.nvim'
Plug 'rbong/vim-flog'

"Functionality
Plug 'preservim/tagbar'
"Plug 'junegunn/fzf.vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'jbgutierrez/vim-better-comments'

"tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"code modification
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
"Plug 'github/copilot.vim'

call plug#end()
