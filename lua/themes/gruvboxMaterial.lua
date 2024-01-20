return {
    "sainnhe/gruvbox-material",
    lazy = false,
    enabled = true,
    priority = 1000,
    config = function()
        vim.g.gruvbox_material_background = 'hard'
        vim.g.gruvbox_material_enable_bold = true
        vim.g.gruvbox_material_enable_italic = true
        vim.g.gruvbox_material_transparent_background = false

        vim.cmd('colorscheme gruvbox-material')
    end
}
