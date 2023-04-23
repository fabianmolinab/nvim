-- Deshabilita la navegación con las flechas
vim.api.nvim_set_keymap('n', '<up>', '<nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<down>', '<nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<left>', '<nop>', { noremap = true })
vim.api.nvim_set_keymap('n', '<right>', '<nop>', { noremap = true })

-- Las flechas reasignan el ancho y alto de la ventana
vim.api.nvim_set_keymap('n', '<right>', ':vertical resize +5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<left>', ':vertical resize -5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<up>', ':resize +5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<down>', ':resize -5<CR>', { noremap = true, silent = true })

-- Configuración archivos
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>q', ':q<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>Q', ':q!<CR>', { noremap = true })

-- Salir del modo Insert
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true })

-- Salir del modo terminal
vim.api.nvim_set_keymap('t', '<esc>', '<C-\\><C-n>', { noremap = true })

-- NERDTree
vim.api.nvim_set_keymap('n', '<c-t>', '<Plug>(NERDTermToggle)', { noremap = true })
vim.api.nvim_set_keymap('t', '<c-t>', '<Plug>(NERDTermToggle)', { noremap = true })

-- Easy Motion
vim.api.nvim_set_keymap('n', 'f', '<Plug>(easymotion-s2)', {})

-- Navegación con Tmux
vim.api.nvim_set_keymap('n', '<C-h>', ':TmuxNavigateLeft<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':TmuxNavigateDown<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':TmuxNavigateUp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':TmuxNavigateRight<CR>', { noremap = true, silent = true })

-- Navegación entre buffers
vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', {noremap = true})

-- Cerrar buffer y cerrar buffer sin guardar
vim.api.nvim_set_keymap('n', '<leader>qq', ':bdelete<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>qb', ':bdelete!<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>t', ':tabe<CR>', {noremap = true})

-- Vertical split
vim.api.nvim_set_keymap('n', '<leader>vs', ':vsp<CR>', {noremap = true})
-- Horizontal split
vim.api.nvim_set_keymap('n', '<leader>sp', ':sp<CR>', {noremap = true})

-- Limpiar los resultados de búsqueda
vim.api.nvim_set_keymap('n', '//', ':noh<CR>', {silent = true})

-- Telescope
-- Buscar archivos
vim.api.nvim_set_keymap('n', '<Leader>f', '<cmd>lua require(\'telescope.builtin\').find_files()<cr>', {noremap = true})
-- Buscar dentro del proyecto cualquier palabra
vim.api.nvim_set_keymap('n', '<Leader>a', '<cmd>lua require(\'telescope.builtin\').live_grep()<cr>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>mf', '<cmd>lua require(\'telescope.builtin\').marks()<cr>', {noremap = true})
-- Lista de commits
vim.api.nvim_set_keymap('n', '<Leader>ls', '<cmd>lua require(\'telescope.builtin\').git_commits()<cr>', {noremap = true})
-- Buscar archivos de git
vim.api.nvim_set_keymap('n', '<Leader>ag', '<cmd>lua require(\'telescope.builtin\').git_files()<cr>', {noremap = true})
-- Lista los archivos o ventanas cerradas
vim.api.nvim_set_keymap('n', '<Leader>of', '<cmd>lua require(\'telescope.builtin\').oldfiles()<cr>', {noremap = true})
-- Lista buffers o pestañas abiertos
vim.api.nvim_set_keymap('n', '<Leader>b', '<cmd>lua require(\'telescope.builtin\').buffers()<cr>', {noremap = true})

-- Todo Busqueda telescope
vim.api.nvim_set_keymap('n', '<leader>td', ':TodoTelescope<CR>', {})

-- Modo Visual indent
vim.api.nvim_set_keymap('v', '<', '<gv', {silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {silent = true})

-- Git Diff View
vim.api.nvim_set_keymap('n', '<leader>df', ':DiffviewOpen<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>dx', ':DiffviewClose<CR>', {noremap = true})

-- Git Stage hunk: Para agregar a stage lineas de cambios individuales o al contrario
vim.api.nvim_set_keymap('n', '<leader>hs', ':Gitsigns stage_hunk<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>hu', ':Gitsigns undo_stage_hunk<CR>', { noremap = true })

-- Git Stage lines
vim.api.nvim_set_keymap('v', '<leader>hs', ':Gitsigns stage_hunk<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>hu', ':Gitsigns undo_stage_hunk<CR>', { noremap = true })

-- GitSigns Preview: "Muestra una previsualización de los cambios entre lineas
vim.api.nvim_set_keymap('n', '<leader>hj', ':Gitsigns preview_hunk<CR>', { noremap = true })

-- Debuger
vim.api.nvim_set_keymap('n', '<leader>db', ':DapToggleBreakpoint<CR>', { noremap = true })    -- Punto de espera
vim.api.nvim_set_keymap('n', '<leader>dc', ':DapContinue<CR>', { noremap = true })  -- Lanzar debugger
vim.api.nvim_set_keymap('n', '<leader>ds', ':DapTerminate<CR>', { noremap = true }) -- Detener debuger

-- Lanzar y cierra interfaz debugger
vim.api.nvim_set_keymap('n', '<leader>du', ':lua require("dapui").toggle()<CR>', { noremap = true })

-- Neotree
vim.api.nvim_set_keymap('n', '<leader>p', ':NeoTreeFocusToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>g', ':NeoTreeFocusToggle git_status<CR>', { noremap = true })
