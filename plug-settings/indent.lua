vim.cmd [[highlight IndentBlanklineIndent guifg=#2e3440 gui=nocombine]]

require("indent_blankline").setup({
    use_treesitter = false,
    show_current_context = true,
    show_trailing_blankline_indent = false,
    space_char_blankline = " ",
    char_highlight_list = {
      "IndentBlanklineIndent"
    },
    buftype_exclude = {
      "help",
      "loclist",
      "nofile",
      "prompt",
      "quickfix",
      "terminal",
    },
    filetype_exclude = { "fugitive", "fugitiveblame", "list" },
})
