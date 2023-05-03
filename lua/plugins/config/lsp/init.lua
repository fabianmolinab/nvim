return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
      dependencies = "williamboman/mason.nvim",
    },
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    require("plugins.config.lsp.config_lsp")
  end
}
