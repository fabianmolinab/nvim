return {
  "wuelnerdotexe/vim-enfocado",
  lazy = false,
  enabled = true,
  priority = 1000,
  init = function()
    vim.api.nvim_set_var("enfocado_plugins", {
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

    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "enfocado",
      callback = function()
          vim.api.nvim_command("highlight Type cterm=NONE gui=NONE")
          vim.api.nvim_command("highlight TypeBuiltin cterm=NONE gui=NONE")
      end,
    })
  end,
  config = function()
    vim.api.nvim_command("colorscheme enfocado") 

  end,
}
