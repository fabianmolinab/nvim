vim.opt.termguicolors = true
require("bufferline").setup({
   options = {
      buffer_close_icon = '',
      indicator = { icon = '', style = 'icon' },
      separator_style = 'thick',
      max_name_length = 13,
      max_prefix_length = 13,
      tab_size = 15,
      diagnostics = 'nvim_lsp',
      diagnostics_update_in_insert = false,
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
          return "("..count..")"
       end,
  }
})
