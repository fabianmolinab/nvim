"set the map leader
let mapleader = " "

set encoding=utf-8
set mouse=a "this enable the mouse compatibility
set clipboard=unnamedplus "to set the main clipboard to vim. It needs xclip o xcel. Other value is unnamed
"set clipboard=unnamedplus 
set noerrorbells "this disable the error bells because is very annoying
set nolist
set cmdheight=1

"to set the tabs
set sw=2 "this se the tabs are 2 spaces
set expandtab
set smartindent "this saves work to you to indent your code
set breakindent 

"Shoe line numbers. When you enable the number line it have space at the left.
"I want the less space as possible.
set number
set rnu
set numberwidth=2
"I don't like the wrapped lines :v

"I HATE the f*cking swap files and I don't want the backup files
set noswapfile
set nobackup
set undodir=~/.config/nvim/.undodir/
set undofile

"set incremental search and ignore capital words
set incsearch
set ignorecase

"set the cursorline and a column
set cursorline

"this sets the directions of the splits
set splitbelow
set splitright

set noshowmode

"Habilita el Buffer para archivos grandes de JSX
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

