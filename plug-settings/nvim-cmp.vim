set completeopt=menu,menuone,noselect

lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'
  local lspkind = require'lspkind'
  local luasnip = require'luasnip'
  local cmp_buffer = require'cmp_buffer'

  cmp.setup({
    performance = { debounce = 300, throttle = 40 },
    snippet = {
      expand = function(args)
         require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
     end,
    },
    window = {
      documentation = cmp.config.window.bordered(),
    },
    completion = { keyword_length = 1 },
    formatting = {
      fields = { "abbr", "kind" },
      format = require("lspkind").cmp_format({
        mode = "symbol_text",
      }),
    },
    sources = {
      {name = 'path'},
      {name = 'nvim_lsp' },
      {name = 'buffer' },
      {name = 'luasnip'},
     -- {name= 'cmp_tabnine'},
    },
   mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), 

      --- Tab tigger seleccion 
      ['<Tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        return
      end
         fallback()
      end, { 'i', 'c' }),

      ['<S-Tab>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        return
      end
        fallback()
      end
      , { 'i', 'c' }),
    }),
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

  vim.cmd [[highlight! default link CmpItemKind CmpItemMenuDefault]]
EOF

