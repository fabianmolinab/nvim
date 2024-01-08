return {
    "mcchrish/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    enabled = true,
    priority = 1000,
    config = function()
        vim.cmd 'set background=dark'

        -- vim.g.zenbones = { transparent_background = true }
        -- vim.cmd "colorscheme zenbones"
        -- vim.g.zenwritten = { transparent_background = true }
        vim.cmd "colorscheme zenwritten"

        -- vim.cmd "colorscheme rosebones"
        -- vim.g.rosebones = {transparent_background = true}

        -- vim.g.nordbones = {
        -- transparent_background = true,
        -- italic_comments = false
        -- }
        -- vim.cmd "colorscheme nordbones"

        -- vim.cmd "colorscheme neobones"
        -- vim.cmd "colorscheme tokyobones"
        -- vim.cmd "colorscheme kanagawabones"
        -- vim.cmd "colorscheme randombones"
    end
}
