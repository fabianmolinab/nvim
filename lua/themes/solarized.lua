local globals = require('globals')
return {
  "ishan9299/nvim-solarized-lua",
  lazy = false,
  enabled = false,
  priority = 1000,
  config = function()
      vim.cmd('colorscheme solarized-flat')
      globals.opt.background = 'dark'
  end
}
