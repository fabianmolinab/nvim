
lua << EOF
require("nvim-lsp-installer").setup( {
   automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗"
        }
    }
  })

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

--Typescript, Javascript, JSX, TSX 
require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

--Astro server
require('lspconfig')['astro'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
}

---CSS Modules
require('lspconfig')['cssmodules_ls'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  filetypes = {
    "javascript", "javascriptreact", "typescript", "typescriptreact"
  }    
}

require('lspconfig')['cssls'].setup {
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
require('lspconfig')['html'].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  embeddedLanguages = {
    css = true,
    javascript = true
  },
  single_file_support = true,
}

--Vim Server
require('lspconfig')['vimls'].setup{}

local lspconfig = require("lspconfig")
EOF
