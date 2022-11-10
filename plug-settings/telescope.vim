lua << EOF
require('telescope').setup {
  defaults = {
    layout_config = {
      vertical = { width = 0.5}
      }
  },
  pickers = {
    find_files = {
    },
    oldfiles = {
    },
    live_grep = {
    },
    git_commits = {
      theme = "ivy"
    }
  },
  extensions = {
  }
} 
EOF
