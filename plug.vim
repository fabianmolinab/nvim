call plug#begin('~/.local/share/nvim/plugged')

"themes
Plug 'ayu-theme/ayu-vim'
Plug 'joshdick/onedark.vim'
Plug 'kjwon15/vim-transparent'
Plug 'wojciechkepka/bogster'
Plug 'ntk148v/vim-horizon'
Plug 'markvincze/panda-vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'arcticicestudio/nord-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'

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

"Git integration
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'


"Functionality
Plug 'preservim/tagbar'
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mbbill/undotree'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

"tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"code modification
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'sirver/ultisnips'
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

"------------ Eslint and Prettier
Plug 'w0rp/ale'

call plug#end()
