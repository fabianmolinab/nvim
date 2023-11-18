return {
  "Shatur/neovim-ayu",
  lazy = false,
  enabled = false,
  priority = 1000,
  config = function()
    require("ayu").setup({
      overrides = function()
        if vim.o.background == "dark" then
          return { NormalNC = { bg = "#060C11", fg = "#808080" } }
        else
          return { NormalNC = { bg = "#f0f0f0", fg = "#808080" } }
        end
      end
    })
    require("ayu").colorscheme()
  end
}
