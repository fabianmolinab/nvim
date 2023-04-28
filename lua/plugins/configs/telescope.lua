require('telescope').setup {
  initial_mode = "insert",
  defaults = {
    layout_config = {
      vertical = { width = 0.5}
    },
    file_ignore_patterns = {"node_modules", ".git"}
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      hidden = true
    },
    oldfiles = {
      theme = "ivy"
    },
    live_grep = {
    },
    git_commits = {
      theme = "ivy"
    },
    buffers = {
      ignore_current_buffer = true,
      sort_mru = true,
      theme = "dropdown"
    }
  },
  extensions = {
  }
}
