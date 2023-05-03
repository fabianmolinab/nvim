local opt = vim.opt

-- Configurar termguicolors y background
opt.termguicolors = true
opt.background = "dark"

-- Configurar cursorline y cursorlineopt
opt.cursorline = true
opt.cursorlineopt = 'number'

-- Configurar menú de autocompletado a trasparente
vim.cmd('highlight Pmenu guifg=#dee1e4 guibg=none')
