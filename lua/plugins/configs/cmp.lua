vim.o.completeopt = "menu,menuone,noselect"

local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

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
    {name= 'cmp_tabnine'},
  },
  mapping = {
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), 

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
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else 
        fallback()
      end
    end, { 'i', 'c' }),
  },
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

