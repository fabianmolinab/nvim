require("mason").setup()
require("mason-lspconfig").setup( {
   automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
  })

