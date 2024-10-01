-- Plugin for configuring the java language server for us
return {
    "mfussenegger/nvim-jdtls",
    lazy = true,
    dependencies = {
            "mfussenegger/nvim-dap",
    }
}
