-- Diagnostics, LSP references, LSP implementations, LSP definitions, LSP type definitions
return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/lsp-colors.nvim" },
  opts = {},
  config = function()
    local trouble = require 'trouble'

    trouble.setup({
      signs = {
        -- icons / text used for a diagnostic
        error = "",
        warning = "",
        hint = "",
        information = "",
        other = ""
      },
      use_diagnostic_signs = true
    })
  end
}
