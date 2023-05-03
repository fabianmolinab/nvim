return {
  "sainnhe/sonokai",
  lazy = false,
  enabled = false,
  priority = 1000,
  config = function()
    if vim.fn.has('termguicolors') == 1 then
      vim.o.termguicolors = true
    end

    vim.g.sonokai_style = 'andromeda'
    vim.g.sonokai_better_performance = 1
    vim.g.sonokai_enable_italic = 1
    vim.g.sonokai_current_word = 'bold'
    vim.g.sonokai_transparent_background = 1
    -- vim.g.sonokai_diagnostic_text_highlight = 1
    -- vim.g.sonokai_diagnostic_line_highlight = 1

    vim.cmd('colorscheme sonokai')
  end
}
