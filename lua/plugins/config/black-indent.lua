local open_file_event = { "BufNewFile", "BufRead", "BufAdd", "SessionLoadPost" }
local globals = require('globals')
return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl", opts = {},
  depedencies = "nvim-treesitter/nvim-treesitter",
  event = open_file_event,
  config = function()
    --vim.cmd [[highlight IndentBlanklineIndent guifg=#22262F ]]
    globals.opt.list = true
    --vim.opt.listchars:append "trail:●"
    --vim.opt.listchars:append "space:·"
    --vim.opt.listchars:append "eol:↓"

    require("ibl").setup({
      use_treesitter = true,
      show_current_context = true,
      show_current_context_start = true,
      show_trailing_blankline_indent = false,
      show_end_of_line = true,
      space_char_blankline = " ",
      buftype_exclude = {
        "help",
        "loclist",
        "nofile",
        "prompt",
        "quickfix",
        "terminal",
      },
      filetype_exclude = { "list" },
    })
  end
}
