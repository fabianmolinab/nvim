local globals = require('globals')
return {
    "lifepillar/vim-solarized8",
    lazy = false,
    enabled = false,
    priority = 1000,
    config = function()
        globals.cmd('colorscheme solarized8_low')
        globals.opt.background = 'light'

        --Colors cursor
        vim.cmd [[highlight Cursor guibg=#4ca69c]]
        vim.cmd [[highlight iCursor guibg=#4ca69c]]
        vim.opt.guicursor = "n-v-c:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor"
        vim.cmd [[autocmd ColorScheme * highlight Cursor guibg=#4ca69c]]
        vim.cmd [[autocmd ColorScheme * highlight iCursor guibg=#4ca69c]]
    end
}
