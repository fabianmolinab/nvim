return {
   "williamboman/mason.nvim",
   lazy = true,
   config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
         automatic_installation = true,
         ensure_installed = {
            "cssls",
            "eslint",
            "html",
            "jsonls",
            "tsserver",
         },
      })
   end,
}
