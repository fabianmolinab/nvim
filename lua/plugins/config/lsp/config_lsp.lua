-- Variables globales
local globals = require('globals')
local vim = globals.vim

-- LSP Instaler
local nvim_lsp = require('lspconfig')

-- Set up completion using nvim_cmp with LSP source
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = {noremap = true, silent = true}
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local bufopts = {noremap = true, silent = true, buffer = bufnr}
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<leader>el', vim.diagnostic.setloclist, bufopts)
    vim.keymap.set('n', '<leader>er', vim.diagnostic.open_float, bufopts)
end

local lsp_flags = {debounce_text_changes = 150}

-- Config Servers
-- Typescript, Javascript, JSX, TSX
nvim_lsp.tsserver.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags
}

--Vue config
nvim_lsp.volar.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = {'vue'},
    flags = lsp_flags
}

-- Go Server
nvim_lsp.gopls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = lsp_flags,
    cmd = {"gopls"},
    filetypes = {"go", "gomod", "gowork", "gotmpl"},
    dap_debug = true,
    dap_debug_gui = true
}
-- Java Server
nvim_lsp.jdtls.setup {capabilities = capabilities, on_attach = on_attach}

-- Astro server
nvim_lsp.astro.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags
}

nvim_lsp.cssls.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    filetypes = {"css", "scss", "less"},
    settings = {
        css = {validate = true},
        less = {validate = true},
        scss = {validate = true}
    },
    single_file_support = true
}

-- Html Server
nvim_lsp.html.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    embeddedLanguages = {css = true, javascript = true},
    providerFormatter = true,
    single_file_support = true
}

nvim_lsp.lua_ls.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    format = {enable = false}
}

-- ESLINT Server Config
nvim_lsp.eslint.setup({
    on_attach = on_attach,
    flags = lsp_flags,
    settings = {format = false}
})

nvim_lsp.biome.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    flags = lsp_flags,
    filetypes = {
        "javascript", "javascriptreact", "typescript", "typescript.tsx",
        "typescriptreact", "vue"
    },
    single_file_support = false
})

-- JSON Lenguaje
nvim_lsp.jsonls.setup {on_attach = on_attach, flags = lsp_flags}

local signs = {Error = "", Warn = "", Hint = "", Info = ""}
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end

vim.diagnostic.config({
    underline = true,
    virtual_text = false,
    update_in_insert = false,
    severity_sort = false,
    float = {border = 'rounded', source = 'always'}
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
