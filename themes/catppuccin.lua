vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
  transparent_background = false,
  cmp = true,
  integrations = { 
    treesitter = true,  
}
})

vim.cmd [[colorscheme catppuccin]]
