return {
    "anAcc22/sakura.nvim",
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    enabled = true,
    priority = 1000,
    config = function()
        vim.cmd('colorscheme sakura')
    end
}
