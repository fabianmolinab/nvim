-- Plugin de CMP para tabnine
return {
  {
    "tzachar/cmp-tabnine",
    lazy = true,
    dependencies = "hrsh7th/nvim-cmp",
    build = "./install.sh",
    config = function()
      local tabnine = require('cmp_tabnine.config')
      tabnine.setup({
        ignored_file_types = {
          ["aerial"] = true,
          ["checkhealth"] = true,
          ["dap-repl"] = true,
          ["dapui_breakpoints"] = true,
          ["dapui_console"] = true,
          ["dapui_hover"] = true,
          ["dapui_scopes"] = true,
          ["dapui_stacks"] = true,
          ["dapui_watches"] = true,
          ["lspinfo"] = true,
          ["mason"] = true,
          ["nerdterm"] = true,
          ["noice"] = true,
          ["notify"] = true,
          ["null-ls-info"] = true,
          ["qf"] = true,
          ["TelescopePrompt"] = true
        }
      })
    end
  }
}
