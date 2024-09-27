return {
  "shaunsingh/nord.nvim",
  lazy = false,
  enabled = true,
  priority = 1000,
  config = function()
    vim.g.nord_italic = false
    vim.g.nord_italic_comments = false
    vim.g.nord_bold = false
    vim.g.nord_underline = true
    vim.g.nord_uniform_diff_background = true

    vim.cmd [[
      augroup nord_customization
      autocmd!
      "your other autocmds...
      autocmd ColorScheme nord ++nested hi Normal guibg=#242933
      augroup END
    ]]
    vim.cmd('colorscheme nord')
  end
}
