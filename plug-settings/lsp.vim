lua << EOF
--LSP Instaler
local nvim_lsp = require('lspconfig')

-- Set up completion using nvim_cmp with LSP source
local capabilities = require('cmp_nvim_lsp').update_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

capabilities.textDocument.completion.completionItem.snippetSupport = true

require("mason").setup()
require("mason-lspconfig").setup( {
   automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
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
    vim.keymap.set('n', '<leader>le', vim.diagnostic.setloclist, bufopts)
    vim.keymap.set('n', '<leader>er', vim.diagnostic.open_float, bufopts)
  end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

--Config Servers
--Typescript, Javascript, JSX, TSX 

require('lspconfig')['tsserver'].setup{
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
}

--Astro server
require('lspconfig')['astro'].setup {
  capabilities = capabilities,
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

require('lspconfig')['sumneko_lua'].setup{}

--ESLINT Server Config
require('lspconfig')['eslint'].setup{
    capabilities = capabilities,
    handlers = handlers,
    filetypes = { 'javascript', 'javascriptreact', 'json', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'pandoc', 'astro' },
    on_attach = on_attach,
    settings = {
    codeAction = {
      disableRuleComment = {
        enable = true,
        location = "separateLine"
      },
      showDocumentation = {
        enable = true
      }
    },
    codeActionOnSave = {
      enable = true,
      mode = "all"
    },
    format = true,
    nodePath = "",
    onIgnoredFiles = "off",
    packageManager = "npm",
    quiet = false,
    rulesCustomizations = {},
    run = "onType",
    useESLintClass = false,
    validate = "on",
    workingDirectory = {
      mode = "location"
    }
  }
}

--- StyleLint Config
require('lspconfig')['stylelint_lsp'].setup{

  filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'css', 'scss', 'less','astro'},
  capabilities = capabilities,
  handlers = handlers,
  on_attach = on_attach, 
  settings = {
      autoFixOnSave = true,
      autoFixOnFormat = true,
      validateOnType = true      
      -- other settings...
    }
}

--JSON Lenguaje
require('lspconfig')['jsonls'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

--LSP Colors
require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})

---Signos de diagnostico
local protocol = require'vim.lsp.protocol'
  --protocol.SymbolKind = { }
  protocol.CompletionItemKind = {
    '', -- Text
    '', -- Method
    '', -- Function
    '', -- Constructor
    '', -- Field
    '', -- Variable
    '', -- Class
    'ﰮ', -- Interface
    '', -- Module
    '', -- Property
    '', -- Unit
    '', -- Value
    '', -- Enum
    '', -- Keyword
    '﬌', -- Snippet
    '', -- Color
    '', -- File
    '', -- Reference
    '', -- Folder
    '', -- EnumMember
    '', -- Constant
    '', -- Struct
    '', -- Event
    'ﬦ', -- Operator
    '', -- TypeParameter
  }

-- Errors hover LSP
vim.diagnostic.config({
  underline = true,
  virtual_text = false,
  update_in_insert = false
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
--vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

-- Signos de errores 
--[[
  local signs = { Error = "●", Warn = "●", Info = "●", Hint = "●" }

  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type

    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
  end

  local vim_diagnostic = vim.diagnostic

  vim_diagnostic.config({
    virtual_text = { prefix = "▎" },
    float = {
      header = {
        "Diagnostics",
        "Title",
      },
      source = "always",
      border = "single",
    },
    update_in_insert = false,
    severity_sort = true,
  })
  ]]

EOF
