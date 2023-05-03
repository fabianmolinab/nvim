return {
  {
    "hrsh7th/nvim-cmp",
    lazy = true,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "onsails/lspkind.nvim"
    },

    config = function()
      vim.o.completeopt = "menu,menuone,noselect"

      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      local cmp = require 'cmp'
      local lspkind = require 'lspkind'
      local luasnip = require 'luasnip'
      local cmp_buffer = require 'cmp_buffer'

      local cmp_autopairs = require 'nvim-autopairs.completion.cmp'

      cmp.setup({
        performance = { debounce = 300, throttle = 40 },
        mapping = {
          ['<C-b>'] = cmp.mapping.scroll_docs( -4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = false }),

          --- Tab tigger seleccion
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            elseif has_words_before() then
              cmp.complete()
            else
              fallback()
            end
          end, { 'i', 'c' }),

          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable( -1) then
              luasnip.jump( -1)
            else
              fallback()
            end
          end, { 'i', 'c' }),
        },
        snippet = {
          expand = function(args)
            if package.loaded["luasnip"] then
              require("luasnip").lsp_expand(args.body)
            else
              error("snippet engine is not configured.")
            end
          end,
        },
        completion = { keyword_length = 1 },
        formatting = {
          fields = { "abbr", "kind" },
          format = lspkind.cmp_format({
            mode = "symbol_text",
          }),
        },
        sources = {
          { name = 'path',     keyword_length = 1, priority = 6 },
          { name = 'nvim_lsp', keyword_length = 3, priority = 3 },
          {
            name = 'buffer',
            keyword_length = 3,
            priority = 1,
            option = {
              get_bufnrs = function()
                local bufs = {}
                for _, win in ipairs(vim.api.nvim_list_wins()) do
                  local bufnr = vim.api.nvim_win_get_buf(win)
                  if vim.api.nvim_buf_get_option(bufnr, 'buftype') ~= 'terminal' then
                    bufs[bufnr] = true
                  end
                end
                return vim.tbl_keys(bufs)
              end,
            },
          },
          { name = 'luasnip',     keyword_length = 3, priority = 4 },
          { name = 'cmp_tabnine', keyword_length = 3, priority = 2 },
        },
        window = {
          documentation = cmp.config.window.bordered(),
        },
        experimental = { ghost_text = true },
      })

      -- Set configuration for specific filetype.
      cmp.setup.filetype('gitcommit', {
        sources = cmp.config.sources({
          { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
        }, {
          { name = 'buffer' },
          { max_item_count = 10 },
        })
      })

      -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline('/', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = 'buffer' }
        }
      })

      -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = 'path' }
        }, {
          { name = 'cmdline' }
        })
      })

      --Autopairs
      cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
      )

      vim.cmd [[highlight! default link CmpItemKind CmpItemMenuDefault]]
    end,
  },
  { "hrsh7th/cmp-buffer", event = "InsertEnter", dependencies = "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-path",   event = "InsertEnter", dependencies = "hrsh7th/nvim-cmp" },
  {
    "hrsh7th/cmp-cmdline",
    event = "CmdlineEnter",
    dependencies = { "hrsh7th/nvim-cmp", "hrsh7th/cmp-buffer", "hrsh7th/cmp-path" },
    config = function()
      require("cmp").setup.cmdline({ "/", "?" }, {
        mapping = require("cmp").mapping.preset.cmdline(),
        sources = require("cmp").config.sources({
          { name = "buffer", option = { indexing_interval = 284 }, keyword_length = 1, priority = 1 },
        }),
      })

      require("cmp").setup.cmdline(":", {
        mapping = require("cmp").mapping.preset.cmdline(),
        sources = require("cmp").config.sources({
          { name = "path", keyword_length = 1, priority = 2 },
        }, {
          { name = "cmdline", keyword_length = 1, priority = 1 },
        }),
      })
    end,
  },
  {
    "hrsh7th/cmp-nvim-lsp",
    event = "LspAttach",
    dependencies = { "hrsh7th/nvim-cmp", "L3MON4D3/LuaSnip" }
  },
  {
    "saadparwaiz1/cmp_luasnip",
    event = "InsertEnter",
    dependencies = { "hrsh7th/nvim-cmp", "L3MON4D3/LuaSnip" }
  },
  {
    "jackieaskins/cmp-emmet",
    build = "npm run release",
    event = "InsertEnter",
    dependencies = "hrsh7th/nvim-cmp"
  },
  {
    "rcarriga/cmp-dap",
    ft = { "dap-repl", "dapui_watches", "dapui_hover" },
    dependencies = "hrsh7th/nvim-cmp",
    config = function()
      require("cmp").setup.filetype(
        { "dap-repl", "dapui_watches", "dapui_hover" },
        { sources = require("cmp").config.sources({ { name = "dap", keyword_lenght = 1 } }) }
      )
    end,
  },
}
