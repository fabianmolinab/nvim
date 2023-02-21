-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  --disable_netrw = true, 
  --hijack_netrw = true,
  --open_on_setup_file = true,
  diagnostics = {
    enable = true,
    icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
  },
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    highlight_opened_files = "none",
    highlight_git = true,
    icons = {
      webdev_colors = true,
      git_placement = 'before',
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
         git = {
           unstaged = "M",
           staged = "A",
           unmerged = "",
           renamed = "R",
           untracked = "U",
           deleted = "D",
           ignored = "◌",
        },
      }
    }
  },
  actions = {
    open_file = {
      quit_on_open = true,
    }
  }
})

