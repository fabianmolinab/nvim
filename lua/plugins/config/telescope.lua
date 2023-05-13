return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-tree/nvim-web-devicons" },
    {"nvim-telescope/telescope-file-browser.nvim"}
  },
  config = function()
    local fb_actions = require("telescope._extensions.file_browser.actions")
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
          initial_mode = "normal",
          ignore_current_buffer = true,
          sort_mru = true,
          theme = "dropdown"
        }
      },
      extensions = {
        file_browser = {
          initial_mode = "normal",
          defaults = {
            layout_config = {
              vertical = { width = 0.5 }
            },
            file_ignore_patterns = { "node_modules", ".git" }
          },
          theme = "dropdown",
          cwd_to_path = true,
          grouped = true,
          hidden = true,
          display_stat = {
            date = false, mode = false
          },
          mappings = {
            ["n"] = {
              ["a"] = fb_actions.create,
              ["c"] = fb_actions.copy,
              ["x"] = fb_actions.remove,
            }
          }
        },
      }
    }
    require("telescope").load_extension "file_browser"
    vim.cmd("autocmd VimEnter * :Telescope file_browser")
  end
}
