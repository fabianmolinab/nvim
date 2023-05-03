return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "kyazdani42/nvim-web-devicons" },
  config = function()
    require('lualine').setup {
      options = {
        { icons_enabled = true },
        { theme = "auto" },
        section_separators = '',
        component_separators = '',
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },
      sections = {
        lualine_a = {
          { 'mode' },
        },
        lualine_b = {
          {
            'filename',
            path = 1,
            symbols = {
              modified = '[+]',
              readonly = '[-]',
              unnamed = '[No Name]',
              newfile = '[New]',
            },
          },
        },
        lualine_c = {
          { 'diff' }, { 'diagnostics' }
        },
        lualine_x = { 'branch' },
        lualine_y = { 'location' },
        lualine_z = { 'progress' },
      },
    }
  end
}
