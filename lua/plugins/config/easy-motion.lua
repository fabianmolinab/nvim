local globals = require('globals')
return {
  "easymotion/vim-easymotion",
  lazy = true,
  keys = {
    { "f", "<Plug>(easymotion-s2)", desc = "easymotion" }
  },
  config = function()
    globals.g.EasyMotion_smartcase = 1
  end
}
