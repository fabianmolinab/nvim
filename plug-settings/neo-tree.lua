require("neo-tree").setup({
  enable_diagnostics = true,
  hide_root_node = true,
  resize_timer_interval = 42,
  use_default_mappings = false,
  source_selector = {
    winbar = true,
    tab_labels = { filesystem = " 󰉓 Folders ", git_status = "  Git Control " },
    content_layout = "center",
    separator = "",
    separator_active = { left = "▎", right = "" },
    show_separator_on_edge = true,
  },
  default_component_configs = {
    container = { right_padding = 1 },
    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "",
      folder_empty_open = "",
      default = "",
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
        conflict = "C",
      },
    },
    diagnostics = {
      symbols = {
        hint = "",
        info = "",
        warn = "",
        error = "",
      },
    },
  },
  window = {
    position = "left",
    width = 30,
    mapping_options = {
      noremap = true,
      nowait = true,
    },
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
      ["<S-PageUp>"] = "prev_source",
    }
  },
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
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
        ["p"] = "git_push",
      },
    },
  },
})
