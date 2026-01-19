return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons"
    },
    cmd = "Neotree",
    deactivate = function()
        require("neo-tree.command").execute({ action = "close" })
    end,
    lazy = true,
    init = function()
        vim.opt.listchars:append({ precedes = "…", extends = "…" })
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
    end,
    config = function()
        local show_path = function(state)
            local node = state.tree:get_node()
            if node then
                vim.notify(node.path, vim.log.levels.INFO)
            end
        end

        require("neo-tree").setup({
            enable_diagnostics = true,
            hide_root_node = true,
            resize_timer_interval = 42,
            popup_border_style = "rounded",
            use_default_mappings = false,

            source_selector = {
                winbar = true,
                content_layout = "center",
                separator = "",
                separator_active = { left = "▎", right = "" },
                show_separator_on_edge = true
            },

            default_component_configs = {
                container = { right_padding = 1 },
                indent = {
                    with_expanders = true,  -- Clave para el efecto VSCode
                    expander_collapsed = "",
                    expander_expanded = "",
                    expander_highlight = "NeoTreeExpander"
                },
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
                width = 30,
                height = 50,
                mapping_options = { noremap = true, nowait = true },
                mappings = {
                    ["<CR>"] = "open",
                    ["<2-LeftMouse>"] = "open",
                    ["l"] = "open",           -- Nueva navegación estilo VSCode
                    ["h"] = "close_node",     -- Cierra nodos con 'h'
                    ["<C-s>"] = "open_split",
                    ["<C-v>"] = "open_vsplit",
                    ["<C-t>"] = "open_tabnew",
                    ["<F5>"] = "refresh",
                    ["a"] =  "add",
                    ["d"] = "delete",
                    ["r"] = "rename",
                    ["y"] = "copy_to_clipboard",
                    ["x"] = "cut_to_clipboard",
                    ["p"] = "paste_from_clipboard",
                    ["c"] =  "copy",
                    ["m"] =  "move" ,
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
                group_empty_dirs = true,  -- Agrupa directorios vacíos
                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    never_show = {
                        ".classpath",
                        ".project",
                        ".settings",
                        "target",
                        "build",
                        "bin",
                        "node_modules"
                    }
                },
                follow_current_file = {
                    enabled = false,
                    leave_dirs_open = false
                },
                nest = {  -- Compacta la estructura de directorios
                    { 
                        name = "compact_dirs",
                        prefix = "",
                        sep = "/",
                        criteria = {
                            type = "directory",
                            is_empty = false,
                            has_children = true
                        }
                    }
                }
            },

            event_handlers = {
                {
                    event = "file_opened",
                    handler = function()
                        require("neo-tree.command").execute({ action = "close" })
                    end
                },
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

        -- Autocomando para proyectos Java
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "java",
            callback = function()
                vim.keymap.set("n", "<leader>jf", function()
                    require("neo-tree.command").execute({
                        action = "focus",
                        source = "filesystem",
                        dir = vim.fn.expand("%:p:h")
                    })
                end, { desc = "Focus current Java file" })
            end
        })
    end
}
