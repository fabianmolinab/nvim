lua << EOF
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "lua", "vim", "astro", "html",},
  sync_install = true,

  ignore_install = { "" },

  highlight = {
    enable = true,
    --disable = {},
    additional_vim_regex_highlighting = false,
  },
  autotag = {
    enable = true,
    filetypes = {
      'html', 'markdown', 'astro',
      'javascript', 'javascriptreact', 'tsx',
      'typescript', 'typescriptreact', 'jsx',
    }
  },
  rainbow = {
    enable = true,
    colors = {
      "#90b99f",
      "#e6b99d",
      "#ea83a5",
      "#aca1cf",
      "#f5a191",
      "#c1c0d4",
      "#f591b2"
      },
    extended_mode = true,
    max_file_line = nil
  }
}
EOF
