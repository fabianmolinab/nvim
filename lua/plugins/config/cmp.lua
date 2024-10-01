local globals = require('globals')
local vim = globals.vim

return {
    {
        "hrsh7th/nvim-cmp",
        lazy = true,
        dependencies = {
            "nvim-treesitter/nvim-treesitter", "onsails/lspkind.nvim"
        },
        config = function()
            globals.opt.completeopt = "menu,menuone,noselect"

            local has_words_before = function()
                unpack = unpack or table.unpack
                local line, col = unpack(globals.a.nvim_win_get_cursor(0))
                return col ~= 0 and
                    globals.a.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(
                        col, col):match("%s") == nil
            end

            local cmp = require 'cmp'
            local lspkind = require 'lspkind'
            local luasnip = require 'luasnip'
            local cmp_buffer = require 'cmp_buffer'

            cmp.setup({
                performance = {
                    debounce = 42,
                    throttle = 42,
                    fetching_time = 300
                },
                mapping = {
                    ["<C-k>"] = cmp.mapping.select_prev_item(),
                    ["<C-j>"] = cmp.mapping.select_next_item(),
                    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),

                    ['<CR>'] = cmp.mapping.confirm({ select = true }),

                    --- Tab tigger seleccion
                    ['<Tab>'] = cmp.mapping(function(fallback)
                        if luasnip.expand_or_jumpable() then
                            luasnip.expand_or_jump()
                        elseif cmp.visible() then
                            cmp.confirm({ select = true })
                        elseif has_words_before() then
                            cmp.complete()
                        else
                            fallback()
                        end
                    end, { 'i', 'c' }),

                    ['<S-Tab>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.select_prev_item()
                        elseif luasnip.jumpable(-1) then
                            luasnip.jump(-1)
                        else
                            fallback()
                        end
                    end, { 'i', 'c' })
                },
                snippet = {
                    expand = function(args)
                        if package.loaded["luasnip"] then
                            require("luasnip").lsp_expand(args.body)
                        else
                            error("snippet engine is not configured.")
                        end
                    end
                },
                formatting = {
                    fields = { "abbr", "kind" },
                    format = lspkind.cmp_format({ mode = "symbol_text" })
                },
                sources = {
                    { name = 'path' }, { name = 'nvim_lsp', keyword_length = 1 }, {
                        name = 'buffer',
                        keyword_length = 2,
                        option = {
                            get_bufnrs = function()
                                local bufs = {}
                                for _, win in ipairs(globals.a.nvim_list_wins()) do
                                    local bufnr = globals.a
                                    .nvim_win_get_buf(win)
                                    if globals.a.nvim_buf_get_option(bufnr,
                                        'buftype') ~=
                                        'terminal' then
                                        bufs[bufnr] = true
                                    end
                                end
                                return vim.tbl_keys(bufs)
                            end
                        }
                    }, { name = 'luasnip',  keyword_length = 1, priority = 1 },
                    { name = 'cmp_tabnine', keyword_length = 1, priority = 2 },
                    { name = 'emmet',       keyword_length = 1, priority = 5 }
                },
                window = { documentation = cmp.config.window.bordered() },
                experimental = { ghost_text = false }
            })

            -- Set configuration for specific filetype.
            cmp.setup.filetype('gitcommit', {
                sources = cmp.config.sources({
                    { name = 'cmp_git' }         -- You can specify the `cmp_git` source if you were installed it.
                }, { { name = 'buffer' }, { max_item_count = 10 } })
            })
            -- Configuración de altura de ventanas flotantes
            globals.opt.pumheight = 10
            globals.opt.cmdwinheight = 10

            globals.cmd [[highlight! default link CmpItemKind CmpItemMenuDefault]]
        end
    }, {
        "hrsh7th/cmp-buffer",
        event = "InsertEnter",
        dependencies = "hrsh7th/nvim-cmp"
    }, {
        "jackieaskins/cmp-emmet",
        build = "npm run release",
        dependencies = { "hrsh7th/nvim-cmp", dependencies = "L3MON4D3/LuaSnip" },
        lazy = true,
        init = function()
            vim.api.nvim_create_autocmd("FileType", {
                pattern = "css,sass,scss,less,xml,html,javascriptreact,typescriptreact,astro",
                callback = function(ev)
                    vim.api.nvim_buf_set_keymap(ev.buf, "i", "<M-e>", "", {
                        callback = function()
                            if not package.loaded["cmp-emmet"] then
                                require("lazy").load({ plugins = { "cmp-emmet" } })
                            end

                            require("cmp").complete({
                                config = { sources = { { name = "emmet" } } }
                            })
                        end
                    })
                end
            })
        end
    },
    {
        "hrsh7th/cmp-path",
        event = "InsertEnter",
        dependencies = "hrsh7th/nvim-cmp"
    }, {
        "hrsh7th/cmp-cmdline",
        event = "CmdlineEnter",
        dependencies = "hrsh7th/nvim-cmp",
        config = function()
            require("cmp").setup.cmdline({ "/", "?" }, {
                mapping = require("cmp").mapping.preset.cmdline(),
                sources = {
                    {
                        name = "buffer",
                        option = { indexing_interval = 171 },
                        keyword_length = 1
                    }
                }
            })

            require("cmp").setup.cmdline(":", {
                mapping = require("cmp").mapping.preset.cmdline(),
                sources = require("cmp").config.sources({
                    { name = "path", keyword_length = 1, priority = 2 }
                }, { { name = "cmdline", keyword_length = 1, priority = 1 } })
            })
        end
    }, {
        "hrsh7th/cmp-nvim-lsp",
        dependencies = { "hrsh7th/nvim-cmp", dependencies = "L3MON4D3/LuaSnip" },
        lazy = true,
        init = function()
            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("load_cmp_nvim_lsp",
                    { clear = false }),
                callback = function(ev)
                    if package.loaded["cmp_nvim_lsp"] then
                        vim.api.nvim_clear_autocmds({ group = ev.group })
                        return true
                    end

                    vim.api.nvim_create_autocmd("InsertEnter", {
                        buffer = ev.buf,
                        group = ev.group,
                        callback = function()
                            vim.api.nvim_clear_autocmds({ group = ev.group })
                            require("lazy").load({ plugins = { "cmp-nvim-lsp" } })
                        end
                    })
                end
            })
        end
    }, {
        "saadparwaiz1/cmp_luasnip",
        event = "InsertEnter",
        dependencies = {
            { "hrsh7th/nvim-cmp", dependencies = "L3MON4D3/LuaSnip" },
            "L3MON4D3/LuaSnip"
        }
    }, {
        "rcarriga/cmp-dap",
        dependencies = "hrsh7th/nvim-cmp",
        event = [[InsertEnter *dap-repl*,DAP\ Watches,DAP\ Hover]],
        config = function()
            require("cmp").setup.filetype({
                "dap-repl", "dapui_watches", "dapui_hover"
            }, { sources = { name = "dap" } })
        end
    }
}
