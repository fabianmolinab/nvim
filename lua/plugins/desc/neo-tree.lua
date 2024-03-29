return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
  cmd = "Neotree",
  deactivate = function()
    require("neo-tree.command").execute({ action = "close" })
  end,
  lazy = true,
  init = function()
    vim.opt.listchars:append({ precedes = "…", extends = "…" })
    vim.api.nvim_set_var("loaded_netrw", 1)
    vim.api.nvim_set_var("loaded_netrwPlugin", 1)
    vim.api.nvim_set_var("loaded_netrwSettings", 1)
    vim.api.nvim_set_var("loaded_netrwFileHandlers", 1)

    if not stat or stat.type ~= "directory" then return end

    require("lazy").load({ plugins = { "neo-tree.nvim" } })
  end,
  config = function()
    require("neo-tree").setup({
      enable_diagnostics = true,
      hide_root_node = true,
      resize_timer_interval = 42,
      -- auto_clean_after_session_restore = true,
      popup_bourder_style = "rounded",
      use_default_mappings = false,
      source_selector = {
        winbar = true,
        -- source = { { source = "filesystem",  display_name = " 󰉓 Folders "},{ source = "git_status", display_name = "  Git "} },
        content_layout = "center",
        separator = "",
        separator_active = { left = "▎", right = "" },
        show_separator_on_edge = true
      },
      default_component_configs = {
        container = { right_padding = 1 },
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "",
          folder_empty_open = "",
          default = ""
        },
        modified = { symbol = "●" },
        git_status = {
          symbols = {
            added = "A",
            deleted = "D",
            modified = "M",
            renamed = "R",
            untracked = "U",
            ignored = "!",
            conflict = "C"
          }
        },
        diagnostics = {
          symbols = {
            hint = "",
            info = "",
            warn = "",
            error = ""
          }
        }
      },
      window = {
        position = "right",
        -- popup = { size = { height = "20", width = "50" }, position = "50%" },
        width = 30,
        height = 50,
        mapping_options = { noremap = true, nowait = true },
        mappings = {
          ["<CR>"] = "open",
          ["<2-LeftMouse>"] = "open",
          ["<C-s>"] = "open_split",
          ["<C-v>"] = "open_vsplit",
          ["<C-t>"] = "open_tabnew",
          ["<F5>"] = "refresh",
          ["a"] = { "add", config = show_path },
          ["d"] = "delete",
          ["r"] = "rename",
          ["y"] = "copy_to_clipboard",
          ["x"] = "cut_to_clipboard",
          ["p"] = "paste_from_clipboard",
          ["c"] = { "copy", config = show_path },
          ["m"] = { "move", config = show_path },
          ["q"] = "close_window",
          ["?"] = "show_help",
          ["g?"] = "show_help",
          ["gb"] = "next_source",
          ["<S-PageDown>"] = "next_source",
          ["gB"] = "prev_source",
          ["<S-PageUp>"] = "prev_source"
        }
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false
        }
      },
      -- Cerra el archivo al abrirlo
      event_handlers = {
        {
          event = "file_opened",
          handler = function()
            -- auto close
            require("neo-tree.command").execute({ action = "close" })
          end
        }
      },
      git_status = {
        window = {
          mappings = {
            ["A"] = "git_add_all",
            ["u"] = "git_unstage_file",
            ["a"] = "git_add_file",
            ["r"] = "git_revert_file",
            ["c"] = "git_commit",
            ["p"] = "git_push"
          }
        }
      }
    })
  end
}
