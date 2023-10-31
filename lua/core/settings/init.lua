local opt = vim.opt
local g = vim.g
local a = vim.api

-- Establece el map leader
g.mapleader = " "

-- Configuraciones generales
opt.encoding = "utf-8"
opt.mouse = ""
opt.clipboard = "unnamedplus"
-- Copiar y pegar en WSL 
--require('core.settings.clipwsl')

opt.errorbells = false
opt.list = false
opt.cmdheight = 1
opt.sw = 2
opt.expandtab = true
opt.smartindent = true
opt.breakindent = true
opt.number = true
opt.rnu = true
opt.numberwidth = 2
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.incsearch = true
opt.ignorecase = true
opt.cursorline = true
opt.splitbelow = true
opt.splitright = true
opt.showmode = false

--TODO: Cambiar las siguientes configuraciones a un nuevo archivo

-- Configuración para archivos JSX grandes
a.nvim_command('autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart')
a.nvim_command('autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear')

