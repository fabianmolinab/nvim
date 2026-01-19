local M = {}
M.setup = function ()

    vim.diagnostic.config({
        signs = {
            text = {
                [vim.diagnostic.severity.ERROR] = " ",
                [vim.diagnostic.severity.WARN] = " ",
                [vim.diagnostic.severity.INFO] = " ",
                [vim.diagnostic.severity.HINT] = "󰌵",
            },
        },
        underline = true,
        virtual_text = false,
        update_in_insert = false,
        severity_sort = false,
        float = {border = 'rounded', source = 'always'}
    })

    vim.o.updatetime = 200
end
return M
