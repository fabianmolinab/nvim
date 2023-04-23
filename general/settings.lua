-- Establece el map leader
vim.g.mapleader = " "

-- Configuraciones generales
vim.o.encoding = "utf-8"
vim.o.mouse = ""
vim.o.clipboard = "unnamedplus"
vim.o.errorbells = false
vim.o.list = false
vim.o.cmdheight = 1
vim.o.sw = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.breakindent = true
vim.o.number = true
vim.o.rnu = true
vim.o.numberwidth = 2
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = "~/.config/nvim/.undodir/"
vim.o.undofile = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.cursorline = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.showmode = false

-- Configuración para archivos JSX grandes
vim.api.nvim_command('autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart')
vim.api.nvim_command('autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear')

-- Configuración para formatear con Eslint
vim.api.nvim_command('autocmd BufRead,BufNewFile *.astro set filetype=astro')
vim.api.nvim_command('autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.astro EslintFixAll')

-- Configuración de altura de ventanas flotantes
vim.o.pumheight = 6
vim.o.cmdwinheight = 6
