local open_file_event = {"BufNewFile", "BufRead", "BufAdd", "SessionLoadPost"}
return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        --event = { "BufReadPost", "BufNewFile" },
        lazy = false,
        priority = 1000,
        config = function()
           local status, configs = pcall(require, "nvim-treesitter.configs")
    
            if not status then
                print("Treesitter no cargo") 
                return
            end

            configs.setup {
                ensure_installed = {"lua", "astro", "html", "java","go","gomod","gosum"},
                sync_install = false,
                auto_install = true,
                ignore_install = {""},
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false 
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
