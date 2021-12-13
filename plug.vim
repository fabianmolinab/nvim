call plug#begin('~/.local/share/nvim/plugged')

"themes
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'joshdick/onedark.vim'
Plug 'kjwon15/vim-transparent'
Plug 'AlessandroYorba/Despacio'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'mhartington/oceanic-next'
Plug 'wojciechkepka/bogster'
Plug 'franbach/miramare'
Plug 'ntk148v/vim-horizon'
Plug 'markvincze/panda-vim'

"visual
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'lilydjwg/colorizer'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript',
Plug 'peitalin/vim-jsx-typescript',
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'

"Git integration
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'


"Functionality
Plug 'preservim/tagbar'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
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
Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'

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
