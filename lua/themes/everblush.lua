require('everblush').setup({
    -- Default options
    override = {},
    transparent_background = false,
    nvim_tree = {
        contrast = false,
    },
})
vim.cmd('colorscheme everblush')
