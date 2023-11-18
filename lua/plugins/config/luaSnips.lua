return {
  "L3MON4D3/LuaSnip",
  build = "make install_jsregexp",
  keys = {
    {
      "<Tab>",
      function()
        return require("luasnip").expand_or_jumpable() and
            "<Plug>luasnip-expand-or-jump" or "<Tab>"
      end,
      expr = true,
      mode = "i"
    }, { "<Tab>", function() require("luasnip").jump(1) end, mode = "s" },
    {
      "<S-Tab>",
      function() require("luasnip").jump(-1) end,
      mode = { "i", "s" }
    }
  },
  dependencies = {
    {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end
    }, "saadparwaiz1/cmp_luasnip"
  },
  config = function()
    require("luasnip").setup({
      history = true,
      region_check_events = { "CursorMoved", "CursorMovedI" },
      delete_check_events = { "TextChanged", "TextChangedI" }
    })
  end
}
