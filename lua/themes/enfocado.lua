return {
  "wuelnerdotexe/vim-enfocado",
  lazy = true,
  enabled = false,
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
      callback = function() vim.api.nvim_command("highlight NormalNC guibg=#1e1e1e") end,
    })
  end,
          config = function() vim.api.nvim_command("colorscheme enfocado") end,
}
