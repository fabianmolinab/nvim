require('lualine').setup {
options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = '|',
    section_separators = { left = '', right = '' },
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 1 },
    },
    lualine_b = {'branch', 'filename'},
    lualine_c = {'diff','diagnostics'},
    lualine_x = {},
    lualine_y = {{ 'location', separator = { left = '', right = '' } },},
    lualine_z = {'progress'},
  },
  inactive_sections = {
    lualine_a = {
      { 'filename', separator = { left = '' }, right_padding = 1 },
    },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 1 },
    },
  },
  tabline = {},
  extensions = {},
}
