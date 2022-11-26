--vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

require("catppuccin").setup {
    flavour = "mocha",
    transparent_background = true,
    highlight_overrides = {
    },
    styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {"italic"},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {"bold"},
        operators = {},
    },
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        --telescope = true,
        treesitter = true,
        indent_blankline = {
          enabled = true,
          colored_indent_levels = true,
        },
    },
}
vim.cmd [[colorscheme catppuccin]]
