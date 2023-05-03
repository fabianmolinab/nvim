return {
  "EdenEast/nightfox.nvim",
  lazy = false,
  enabled = true,
  priority = 1000,
  config = function()
    require('nightfox').setup({
      options = {
        compile_path = vim.fn.stdpath("cache") .. "/nightfox",
        compile_file_suffix = "_compiled",
        --transparent = true,    -- Disable setting background
        terminal_colors = true,
        dim_inactive = false,  -- Non focused panes set to alternative background
        module_default = true, -- Default enable value for modules
        styles = {
          comments = "italic",
          conditionals = "NONE",
          constants = "NONE",
          functions = "bold",
          keywords = "NONE",
          numbers = "NONE",
          operators = "bold",
          strings = "NONE",
          types = "italic",
          variables = "NONE",
        },
        inverse = {
          -- Inverse highlight for different types
          match_paren = false,
          visual = false,
          search = false,
        },
        modules = { -- List of various plugins and additional options
          -- ...
        },
      },
      palettes = {},
      specs = {},
      groups = {},
    })

    -- setup must be called before loading
    vim.cmd("colorscheme terafox")
  end
}
