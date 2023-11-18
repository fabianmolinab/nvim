return {
  "kvrohit/mellow.nvim",
  lazy = false,
  enabled = false,
  priority = 1000,
  config = function()
    -- vim.g.mellow_italic_functions = true
    -- vim.g.mellow_bold_functions = true
    -- vim.g.mellow_bold_variables = true
    vim.g.mellow_italic_keywords = true
    vim.g.mellow_bold_keywords = true
    vim.g.mellow_transparent = true

    vim.cmd [[colorscheme mellow]]
  end
}
