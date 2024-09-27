local M = {}


M.default_servers = {
    "html",
    "cssls",
    "ts_ls",
    --"vuels",
    "eslint",
    "biome",
    "lua_ls",
    "volar",
    "gopls",
    "tailwindcss",
    "astro"
}

local server_settings = {
    --vuels = require("plugins.config.lsp.servers.vuels"),
    ts_ls = require("plugins.config.lsp.servers.ts_ls"),
    eslint = require("plugins.config.lsp.servers.eslint"),
    volar = require("plugins.config.lsp.servers.volar"),
    biome = require("plugins.config.lsp.servers.biome"),
    gopls = require("plugins.config.lsp.servers.go_pls"),
    tailwindcss = require("plugins.config.lsp.servers.tailwindcss"),
    astro = require("plugins.config.lsp.servers.astro")
}

-- easily disable lsps in .neoconf.json like this
    M.is_disabled = function(client)
        return require("neoconf").get(client .. ".disable")
    end

    local get_server_settings = function(server_name)
        -- don't add ts to volar filetypes if tsserver is not explicitly disabled
        if server_name == "volar" then
            if not M.is_disabled("ts_ls") then
                return {}
            end
        end
        -- return standard server settings in all other cases
        return server_settings[server_name] or {}
    end

    -- server_settings.setup()
    M.setup = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
        capabilities.textDocument.completion.completionItem.snippetSupport = true

        -- Mappings.
        -- See `:help vim.diagnostic.*` for documentation on any of the below functions
        local opts = {noremap = true, silent = true}
        vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)

        local lsp_attach = function(client, bufnr)
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
        M.get_config = function(server_name)
            return vim.tbl_extend("keep", get_server_settings(server_name), {
                on_attach = lsp_attach,
                capabilities = capabilities,
                lsp_flags = lsp_flags
            })
        end

    end

    return M
