return {
  "iamcco/markdown-preview.nvim",
  build = "cd app && npm install",
  ft = "markdown",
  init = function()
    vim.api.nvim_set_var("mkdp_auto_close", 0)
    vim.api.nvim_set_var("mkdp_refresh_slow", 1)
    vim.api.nvim_set_var("mkdp_browser", "firefox")
    vim.api.nvim_set_var("mkdp_echo_preview_url", 1)
    vim.api.nvim_set_var("mkdp_theme", "dark")
  end,
}
