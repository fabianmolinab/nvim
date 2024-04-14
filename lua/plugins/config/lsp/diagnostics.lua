local M = {}
M.setup = function ()

    vim.fn.sign_define(
    "DiagnosticSignError",
    { text = " ", texthl = "DiagnosticSignError" }
    )
    vim.fn.sign_define(
    "DiagnosticSignWarn",
    { text = " ", texthl = "DiagnosticSignWarn" }
    )
    vim.fn.sign_define(
    "DiagnosticSignInfo",
    { text = " ", texthl = "DiagnosticSignInfo" }
    )
    vim.fn.sign_define(
    "DiagnosticSignHint",
    { text = "󰌵", texthl = "DiagnosticSignHint" }
    )

    vim.diagnostic.config({
        underline = true,
        virtual_text = false,
        update_in_insert = false,
        severity_sort = false,
        float = {border = 'rounded', source = 'always'}
    })

    -- Show line diagnostics automatically in hover window
    vim.o.updatetime = 200
end
return M
