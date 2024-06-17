local globals = require('globals')

return {
    "adigitoleo/vim-mellow",
    enabled = false,
    config = function ()
        globals.opt.background = 'light'
        globals.cmd [[colorscheme mellow]]
    end

}
