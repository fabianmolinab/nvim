return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-tree/nvim-web-devicons" },
  },
  keys = {
    { "<leader>f",  function() require("telescope.builtin").find_files() end },
    { "<leader>a",  function() require("telescope.builtin").live_grep() end },
    { "<leader>mf", function() require("telescope.builtin").marks() end },
    { "<leader>ls", function() require("telescope.builtin").git_commits() end },
    { "<leader>ag", function() require("telescope.builtin").git_files() end },
    { "<leader>of", function() require("telescope.builtin").oldfiles() end },
    { "<leader>b",  function() require("telescope.builtin").buffers() end },
  },
  config = function()
    require('telescope').setup {
      initial_mode = "insert",
      defaults = {
        layout_config = {
          vertical = { width = 0.5 }
        },
        file_ignore_patterns = { "node_modules", ".git" }
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
  end
}
