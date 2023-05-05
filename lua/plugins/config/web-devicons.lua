return {
    'nvim-tree/nvim-web-devicons',
    config = function()
        if vim.g.loaded_devicons == nil then
            return
        end

        require 'nvim-web-devicons'.setup {
            override = {
            },
            default = true,
            color_icons = true
        }
    end
}
