local M = {}
  local globals = require('globals')
  M.capabilities = require('cmp_nvim_lsp').default_capabilities(
    globals.lsp.protocol.make_client_capabilities()
  )
  M.on_attach = function(bufnr)

    globals.a.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    globals.key.set('n', 'gD', globals.v.lsp.buf.declaration, bufopts)
    globals.key.set('n', 'gd', globals.lsp.buf.definition, bufopts)
    globals.keymap.set('n', 'K', globals.lsp.buf.hover, bufopts)
    globals.keymap.set('n', '<leader>el', globals.v.diagnostic.setloclist, bufopts)
    globals.keymap.set('n', '<leader>er', globals.v.diagnostic.open_float, bufopts)
  end

  M.lsp_flags = {
    debounce_text_changes = 150,
  }
return M
