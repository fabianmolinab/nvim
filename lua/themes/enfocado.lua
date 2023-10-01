local globals = require('globals')
return {
  "wuelnerdotexe/vim-enfocado",
  lazy = false,
  enabled = false,
  priority = 1000,
  init = function()
    globals.a.nvim_set_var("enfocado_plugins", {
      "aerial",
      "bufferline",
      "cmp",
      "dap-ui",
      "gitsigns",
      "illuminate",
      "indent-blankline",
      "lazy",
      "lspconfig",
      "matchup",
      "neo-tree",
      "noice",
      "null-ls",
      "smoothcursor",
      "substitute",
      "surround",
      "telescope",
      "treesitter",
      "ts-rainbow2",
      "visual-multi",
      "yanky",
    })
    globals.a.nvim_create_autocmd("ColorScheme", {
      pattern = "enfocado",
      callback = function()
          globals.a.nvim_command("highlight Type cterm=NONE gui=NONE")
          globals.a.nvim_command("highlight TypeBuiltin cterm=NONE gui=NONE")
      end,
    })
  end,
  config = function()
    globals.g.enfocado_style = 'neon'
    globals.a.nvim_command("colorscheme enfocado") 
  end,
}
