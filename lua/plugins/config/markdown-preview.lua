local globals = require('globals')
--vim.api
local vim = globals.a
return {
  "iamcco/markdown-preview.nvim",
  build = "cd app && npm install",
  ft = "markdown",
  init = function()
    vim.nvim_set_var("mkdp_auto_close", 0)
    vim.nvim_set_var("mkdp_refresh_slow", 1)
    vim.nvim_set_var("mkdp_browser", "firefox")
    vim.nvim_set_var("mkdp_echo_preview_url", 1)
    vim.nvim_set_var("mkdp_theme", "dark")
  end,
}
