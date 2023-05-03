return {
  'folke/todo-comments.nvim', 
  dependencies = {
    "nvim-telescope/telescope.nvim", 
    "nvim-lua/plenary.nvim",
    {    
      "folke/trouble.nvim",
      dependencies = "kyazdani42/nvim-web-devicons",
    }
  },
  keys = {
    {'<leader>td', ':TodoTelescope<CR>'}
  },
  config = function ()
    require("todo-comments").setup {
      signs = true, -- show icons in the signs column
      keywords = {
        FIX = {
          icon = " ",
          color = "error",
          alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
          signs = false,
        },
        TODO = { icon = " ", color = "info" },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" }},
      },
      colors = {
        error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
        warning = { "DiagnosticWarning", "WarningMsg", "#FBBF24" },
        info = { "DiagnosticInfo", "#2563EB" },
        hint = { "DiagnosticHint", "#10B981" },
        default = { "Identifier", "#7C3AED" },
        test = { "Identifier", "#FF00FF" }
      },
    }
  end
}


