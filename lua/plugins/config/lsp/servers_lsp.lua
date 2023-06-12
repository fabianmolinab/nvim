
local nvim_lsp = require('lspconfig')

local capabilities, on_attach, lsp_flags = require('plugins.config.lsp.capabilities_lsp')

nvim_lsp['tsserver'].setup {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
}

--Go Server
--nvim_lsp.gopls.setup {
--  on_attach = on_attach,
--  capabilities = capabilities,
--  flags = lsp_flags,
--  dap_debug = true,
--  dap_debug_gui = true
--}

--Java Server
nvim_lsp['jdtls'].setup {
  capabilities = capabilities,
  on_attach = on_attach,
  cmd = { 'jdtls' }
}


--Astro server
nvim_lsp['astro'].setup {
  capabilities = capabilities,
  on_attach = on_attach,
  flags = lsp_flags,
}

---CSS Modules
nvim_lsp['cssmodules_ls'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  filetypes = {
    "javascript", "javascriptreact", "typescript", "typescriptreact"
  }
}

nvim_lsp['cssls'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  filetypes = {
    "css", "scss", "less"
  },
  settings = {
    css = {
      validate = true
    },
    less = {
      validate = true
    },
    scss = {
      validate = true
    }
  },
  single_file_support = true,
}

-- Html Server
nvim_lsp['html'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  embeddedLanguages = {
    css = true,
    javascript = true
  },
  providerFormatter = true,
  single_file_support = true,
}

--Vim Server
nvim_lsp['vimls'].setup {}

nvim_lsp['lua_ls'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  format = {enable = true}
}

--ESLINT Server Config
nvim_lsp.eslint.setup({
  on_attach = on_attach,
  flags = lsp_flags,
  settings = { format = false },
})

--- StyleLint Config
nvim_lsp['stylelint_lsp'].setup {
  filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'css', 'scss', 'less', 'astro' },
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    autoFixOnSave = true,
    autoFixOnFormat = true,
    validateOnType = true
    -- other settings...
  }
}

--JSON Lenguaje
nvim_lsp['jsonls'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
}

-- Tailwind
-- require("lspconfig").tailwindcss.setup({
--   on_attach = on_attach,
--  flags = lsp_flags,
-- capabilities = capabilities,
--})


