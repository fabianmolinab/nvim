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

"visual
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'lilydjwg/colorizer'
Plug 'leafgarland/typescript-vim'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'yggdroot/indentline'

"Git integration
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'

"Functionality
Plug 'preservim/tagbar'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'cespare/vim-toml'
Plug 'mbbill/undotree'
Plug 'puremourning/vimspector'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

"tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"code modification
Plug 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'

"----------------TSX---------------------------
Plug 'ianks/vim-tsx'

"-------Format code
Plug 'sbdchd/neoformat'

call plug#end()
