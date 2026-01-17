local open_file_event = {"BufNewFile", "BufRead", "BufAdd", "SessionLoadPost"}
return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        event = { "BufReadPre", "BufNewFile" },
        cmd = {"TSUpdate", "TSInstall"},
        config = function()

            local configs = require("nvim-treesitter.config")
            configs.setup {
                ensure_installed = {"lua", "astro", "html", "java"},
                sync_install = false,
                auto_install = true,
                ignore_install = {""},
                highlight = {
                    enable = true,
                    --additional_vim_regex_highlighting = true
                },
                indent = {
                    enable = true
                }
            }
        end
    }, {
        "HiPhish/rainbow-delimiters.nvim",
        event = "FileType",
        dependencies = "nvim-treesitter/nvim-treesitter",
    }, {
        "windwp/nvim-ts-autotag",
        dependencies = "nvim-treesitter/nvim-treesitter",
        opts = {
            autotag = {
                enable = true,
                filetypes = { "html", "javascript", "javascriptreact", "typescriptreact", "markdown", "astro"},
            },
        },
    }, {
        "danymat/neogen",
        cmd = "Neogen",
        dependencies = {"nvim-treesitter/nvim-treesitter", "L3MON4D3/LuaSnip"},
        config = function()
            require("neogen").setup({snippet_engine = "luasnip"})
        end
    }
}
