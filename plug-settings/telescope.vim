lua << EOF
require('telescope').setup {
  defaults = {
    layout_config = {
      vertical = { width = 0.5}
      }
  },
  pickers = {
    find_files = {
      theme = "dropdown"
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
      theme = "dropdown"
    }
  },
  extensions = {
  }
} 
EOF
