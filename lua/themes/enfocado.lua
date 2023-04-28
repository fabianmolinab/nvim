--vim.g.enfocado_style = 'neon'
local enfocado_plugins = {
  'aerial',
  'bufferline',
  'cmp',
  'dap-ui',
  'gitsigns',
  'illuminate',
  'indent-blankline',
  'lazy',
  'lspconfig',
  'matchup',
  'neo-tree',
  'noice',
  'null-ls',
  'smoothcursor',
  'substitute',
  'surround',
  'telescope',
  'treesitter',
  'ts-rainbow2',
  'visual-multi',
  'yanky'
}

vim.cmd('augroup enfocado_customization')
vim.cmd('autocmd!')
vim.cmd('" your other autocmds...')
vim.cmd('autocmd ColorScheme enfocado ++nested highlight Type cterm=NONE gui=NONE')
vim.cmd('autocmd ColorScheme enfocado ++nested highlight TypeBuiltin cterm=NONE gui=NONE')
-- vim.cmd('autocmd ColorScheme enfocado ++nested hi @type guifg=#F09383')
-- vim.cmd('autocmd ColorScheme enfocado ++nested hi @variable guifg=#AA554D')
-- vim.cmd('autocmd ColorScheme enfocado ++nested hi @function guifg=#DB635D')
-- vim.cmd('autocmd ColorScheme enfocado ++nested hi @function guifg=#DB635D')
vim.cmd('augroup END')

vim.cmd('colorscheme enfocado')
