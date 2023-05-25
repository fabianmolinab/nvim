return {
  "catppuccin/nvim",
  lazy = false,
  enabled = false,
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = false,
      highlight_overrides = {},
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = { "italic" },
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = { "italic" },
        operators = {},
      },
      color_overrides = {
        mocha = {
          base = '#060C11',
          mantle = '#060C11',
          crust = '#060C11'
        }
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = false,
        telescope = true,
        treesitter = true,
        indent_blankline = {
          enabled = true,
          colored_indent_levels = true,
        },
      },
    })
    vim.cmd.colorscheme "catppuccin"
  end,
}
