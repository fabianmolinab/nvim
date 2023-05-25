return {
    'Everblush/nvim',
    name = "everblush",
    lazy = false,
    enabled = false,
    priority = 1000,
    config = function()
        require('everblush').setup({
            -- Default options
            override = {},
            transparent_background = true,
            nvim_tree = {
                contrast = false,
            },
        })
        vim.cmd('colorscheme everblush')
    end
}
