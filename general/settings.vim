"set the map leader
let mapleader = " "

set encoding=utf-8
set mouse= 
set clipboard=unnamedplus 
"set clipboard=unnamedplus 
set noerrorbells 
set nolist
set cmdheight=1
set sw=2 
set expandtab
set smartindent 
set breakindent 
set number
set rnu
set numberwidth=2
set noswapfile
set nobackup
set undodir=~/.config/nvim/.undodir/
set undofile
set incsearch
set ignorecase
set cursorline
set splitbelow
set splitright
set noshowmode

"Habilita el Buffer para archivos grandes de JSX
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

"autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

"---formatear con Eslint
  autocmd BufRead,BufNewFile *.astro set filetype=astro
  autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.astro EslintFixAll
"-----

"---formatear archivos de go con GoFmt al guardar
  augroup go
      autocmd!
      autocmd BufWritePre *.go :silent! GoFmt
      "Esta linea formatea los archivos de go con una identacion de 4 espacios
      "autocmd FileType go setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
  augroup END
"------

lua <<EOF
  local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
  vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
     require('go.format').goimport()
    end,
    group = format_sync_grp,
  })
EOF

" Configure pum/win height.
set pumheight=6 cmdwinheight=6
