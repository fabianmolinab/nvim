local globals = require('globals')
return {
  "lukas-reineke/indent-blankline.nvim",
  cmd = { "IBLDisable", "IBLEnable", "IBLToggle", "IBLDisableScope", "IBLEnableScope", "IBLToggleScope" },
  main = "ibl", opts = {},
  depedencies = "nvim-treesitter/nvim-treesitter",
  event = "FileType",
  config = function()
    globals.opt.list = true
    require("ibl").setup({
        debounce = globals.a.nvim_get_option_value("updatetime", { scope = "global" }),
        scope = { enabled = false },
        exclude = {
          filetypes = { "list", "netrw", "" },
          buftypes = { "help", "loclist", "nofile", "prompt", "quickfix", "terminal" },
        },
    })
  end
}
