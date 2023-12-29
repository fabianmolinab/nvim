local globals = require('globals')
return {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        globals.opt.termguicolors = true

        require("bufferline").setup({
            options = {
                buffer_close_icon = '',
                indicator = {icon = '▎', style = 'icon'},
                show_close_icon = false,
                separator_style = {"", "▎"},
                max_name_length = 16,
                max_prefix_length = 16,
                tab_size = 14,
                diagnostics = 'nvim_lsp',
                diagnostics_update_in_insert = false
            }
        })
    end
}
