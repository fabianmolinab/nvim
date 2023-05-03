local open_file_event = { "BufNewFile", "BufRead", "BufAdd", "SessionLoadPost" } 
return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    lazy = false,
    config = function()
      require 'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all"
        ensure_installed = { "lua", "astro", "html", },
        sync_install = true,

        ignore_install = { "" },

        highlight = {
          enable = true,
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
          --colors = {
            --"#90b99f",
            --"#e6b99d",
            --"#ea83a5",
            --"#aca1cf",
            --"#f5a191",
            --"#c1c0d4",
            --"#f591b2"
            --},
            --extended_mode = true,
            --max_file_line = nil
          }
        }
      end
    },
    {
      "HiPhish/nvim-ts-rainbow2",
      event = open_file_event,
      dependencies = "nvim-treesitter/nvim-treesitter",
    },
    {
      "windwp/nvim-ts-autotag",
      event = "InsertEnter",
      dependencies = "nvim-treesitter/nvim-treesitter",
    },
    {
      "danymat/neogen",
      cmd = "Neogen",
      dependencies = { "nvim-treesitter/nvim-treesitter", "L3MON4D3/LuaSnip" },
      config = function() require("neogen").setup({ snippet_engine = "luasnip" }) end,
    },
  }
