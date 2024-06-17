return {
  "folke/tokyonight.nvim",
  lazy = false,
  enabled = false,
  priority = 1000,
  opts = {},
  config = function ()
    require("tokyonight").setup({
        --style = "day",
        --light_style = "day",
        trasparent = true,
    })
    vim.cmd("colorscheme tokyonight")
  end
}
