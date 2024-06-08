local globals = require("globals")
return {
  "rose-pine/neovim", name = "rose-pine",
  enabled = false,
  config = function ()
      require("rose-pine").setup({
          variant = "dawn",
          styles = {
              bold = true,
              italic = true,
              transparency = false,
          },
      })
      globals.cmd("colorscheme rose-pine")
  end
}
