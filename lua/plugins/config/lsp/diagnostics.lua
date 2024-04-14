local M = {}
M.setup = function ()

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
end
return M
