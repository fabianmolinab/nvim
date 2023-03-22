lua << EOF
--LSP Instaler
local nvim_lsp = require('lspconfig')

-- Set up completion using nvim_cmp with LSP source
local capabilities = require('cmp_nvim_lsp').default_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

capabilities.textDocument.completion.completionItem.snippetSupport = true

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
    vim.keymap.set('n', '<leader>el', vim.diagnostic.setloclist, bufopts)
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

--Go Server
 require'lspconfig'.gopls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  flags = lsp_flags,
  settings = {
    gopls = {
      analyses = {
        assign = true,
        atomic = true,
        bools = true,
        composites = true,
        copylocks = true,
        deepequalerrors = true,
        embed = true,
        errorsas = true,
        fieldalignment = true,
        httpresponse = true,
        ifaceassert = true,
        loopclosure = true,
        lostcancel = true,
        nilfunc = true,
        nilness = true,
        nonewvars = true,
        printf = true,
        shadow = true,
        shift = true,
        simplifycompositelit = true,
        simplifyrange = true,
        simplifyslice = true,
        sortslice = true,
        stdmethods = true,
        stringintconv = true,
        structtag = true,
        testinggoroutine = true,
        tests = true,
        timeformat = true,
        unmarshal = true,
        unreachable = true,
        unsafeptr = true,
        unusedparams = true,
        unusedresult = true,
        unusedvariable = true,
        unusedwrite = true,
        useany = true,
      },
      hoverKind = "FullDocumentation",
      linkTarget = "pkg.go.dev",
      usePlaceholders = true,
      vulncheck = "Imports",
    }
  }
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

require('lspconfig')['lua_ls'].setup{}

--ESLINT Server Config
require("lspconfig").eslint.setup({
    on_attach = on_attach,
    flags = lsp_flags,
    settings = { format = false },
})

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

-- Tailwind 
 require("lspconfig").tailwindcss.setup({
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
 })

--LSP Colors
require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})

-- Errors hover LSP
vim.diagnostic.config({
  underline = true,
  virtual_text = false,
  update_in_insert = false
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250

EOF
