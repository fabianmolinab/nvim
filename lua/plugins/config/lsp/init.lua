return {
    "neovim/nvim-lspconfig",
    dependencies = {
        {
            "williamboman/mason-lspconfig.nvim",
            dependencies = "williamboman/mason.nvim",
            cmd = {"LspInstall", "LspUninstall"},
            config = function()
                require("mason-lspconfig").setup({
                    ensure_installed = {
                        "cssls", "eslint", "jsonls", "tsserver", "gopls"
                    }
                })
            end
        }, "hrsh7th/cmp-nvim-lsp"
    },
    cmd = {"LspInfo", "LspLog", "LspRestart", "LspStart", "LspStop"},
    event = {"BufReadPost", "FileType"},
    config = function() require("plugins.config.lsp.config_lsp") end
}
