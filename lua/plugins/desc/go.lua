return {
  'ray-x/go.nvim',
  dependencies = {
    "ray-x/guihua.lua", "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter"
  },
  lazy = true,
  event = { "CmdlineEnter" },
  build = ':lua require("go.install").update_all_sync()',
  ft = { "go", 'gomod' },
  config = function()
    require('go').setup({
      disable_defaults = false,
      diagnostic = {
        hdlr = false,
        underline = true,
        virtual_text = false,
        signs = true,
        update_in_insert = false,
        float = { border = 'rounded', source = 'always' }
      }
    })
  end
}
