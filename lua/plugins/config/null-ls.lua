-- Este plugin permite el auto save con Prettier y Eslint
local globals = require('globals')
local vim = globals.vim

return {
    "nvimtools/none-ls.nvim",
    event = {"BufNewFile", "BufRead", "BufAdd"},
    dependencies = {
        "nvim-lua/plenary.nvim", {
            "jay-babu/mason-null-ls.nvim",
            dependencies = "williamboman/mason.nvim",
            config = function()
                require("mason-null-ls").setup({
                    ensure_installed = {
                         "prettierd", "selene", "biome"
                    },
                    automatic_installation = true
                })
            end
        }
    },
    config = function()
        local null_ls = require("null-ls")

        local augroup = globals.a.nvim_create_augroup("LspFormatting", {})

        null_ls.setup({
            update_in_insert = vim.diagnostic.config().update_in_insert,
            debounce = 300,
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    globals.a.nvim_clear_autocmds({
                        group = augroup,
                        buffer = bufnr
                    })
                    globals.a.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            globals.lsp.buf.format({bufnr = bufnr})
                            require("luasnip").session.current_nodes[bufnr] =
                                nil
                        end
                    })
                end
            end,
            sources = {
                --null_ls.builtins.diagnostics.jsonlint,
                -- null_ls.builtins.diagnostics.selene,
                null_ls.builtins.formatting.gofumpt,
                null_ls.builtins.formatting.goimports_reviser,
                --null_ls.builtins.formatting.lua_format,
                -- require("null-ls").builtins.diagnostics.markdownlint,
                -- null_ls.builtins.diagnostics.eslint_d,
                null_ls.builtins.formatting.biome.with({
                    filetypes = {
                        "javascript", "javascriptreact", "typescript",
                        "typescript.tsx", "typescriptreact", "vue","astro"
                    },
                    condition = function(utils)
                        return utils.root_has_file({"biome.json"})
                    end

                }), null_ls.builtins.formatting.prettierd.with({
                    condition = function(utils)
                        return utils.root_has_file({
                            ".prettierrc", ".prettierrc.json",
                            ".prettierrc.yaml", ".prettierrc.yml",
                            ".prettierrc.json5", ".prettierrc.js",
                            ".prettierrc.cjs", "prettier.config.js",
                            "prettier.config.cjs", ".prettierrc.toml"
                        })
                    end
                })
            }
        })
    end
}
