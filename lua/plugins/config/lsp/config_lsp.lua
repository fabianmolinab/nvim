--LSP Instaler
-- Set up completion using nvim_cmp with LSP source
local capabilities = require('cmp_nvim_lsp').default_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

--Config Servers
require('plugins.config.lsp.servers_lsp')

-- Diagnosticos de LSP
vim.diagnostic.config({
  --underline = true,
  virtual_text     = false,
  update_in_insert = false,
  severity_sort    = false,
  float = {
    border = 'rounded',
    source = 'always',
  }
})

local signs = {
  Hint = "",
  Info = "",
  Warn = "",
  Error = "",
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
