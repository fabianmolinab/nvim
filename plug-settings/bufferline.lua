vim.opt.termguicolors = true
require("bufferline").setup({
   options = {
      buffer_close_icon = '',
      indicator = { icon = '▊', style = 'icon' },
      offsets = {
        {
          filetype = 'fern',
          text = 'FILE EXPLORER',
          highlight = 'Title',
          separator = false
        }
      },
      separator_style = 'thick'
    }
})
