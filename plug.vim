call plug#begin('~/.local/share/nvim/plugged')

"themes
"Plug 'ayu-theme/ayu-vim'
Plug 'kjwon15/vim-transparent'
"Plug 'wojciechkepka/bogster'
"Plug 'ntk148v/vim-horizon'
"Plug 'markvincze/panda-vim'
"Plug 'sonph/onehalf', { 'rtp': 'vim' }
"Plug 'arcticicestudio/nord-vim'
Plug 'drewtempelmeyer/palenight.vim'
"Plug 'morhetz/gruvbox'
"Plug 'Rigellute/shades-of-purple.vim'
"Plug 'joshdick/onedark.vim'

"visual
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'lilydjwg/colorizer'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript',
Plug 'peitalin/vim-jsx-typescript'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
"Plug 'nathanaelkane/vim-indent-guides'

"Git integration
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'lambdalisue/gina.vim'
Plug 'APZelos/blamer.nvim'

"Functionality
Plug 'preservim/tagbar'
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

"tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"code modification
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"--------------Style components---------------
Plug 'styled-components/vim-styled-components'

"------------- Format Code
Plug 'heavenshell/vim-jsdoc', {
      \'for':['javascript','javascript.jsx','typescript'],
      \'do':'make install'
\}


call plug#end()
