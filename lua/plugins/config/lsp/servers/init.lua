local M = {}


M.default_servers = {
    "html",
    "cssls",
    "ts_ls",
    "vuels",
    "eslint",
    "biome",
    "lua_ls",
    --"volar",
    "gopls",
    "tailwindcss",
    "astro",
}

local server_settings = {
    vuels = require("plugins.config.lsp.servers.vuels"),
    gopls = require("plugins.config.lsp.servers.go_pls"),
    ts_ls = require("plugins.config.lsp.servers.ts_ls"),
    eslint = require("plugins.config.lsp.servers.eslint"),
    --volar = require("plugins.config.lsp.servers.volar"),
    biome = require("plugins.config.lsp.servers.biome"),
    tailwindcss = require("plugins.config.lsp.servers.tailwindcss"),
    astro = require("plugins.config.lsp.servers.astro"),
}

M.is_disabled = function(client)
    return require("neoconf").get(client .. ".disable")
end

local get_server_settings = function(server_name)
    if server_name == "volar" then
        if not M.is_disabled("ts_ls") then
            return {}
        end
    end
    return server_settings[server_name] or {}
end

M.setup = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    -- Mappings.
    local opts = {noremap = true, silent = true}
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

    local lsp_attach = function(client, bufnr)
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
    M.get_config = function(server_name)
        return vim.tbl_extend("keep", get_server_settings(server_name), {
            on_attach = lsp_attach,
            capabilities = capabilities,
            lsp_flags = lsp_flags
        })
    end

end
return M
