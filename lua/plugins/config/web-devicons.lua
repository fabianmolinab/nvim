local globals = require('globals')

return {
    'nvim-tree/nvim-web-devicons',
    config = function()
        if globals.g.loaded_devicons == nil then
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
