--Plugin de CMP para tabnine
return {
  {
    "tzachar/cmp-tabnine",
    --lazy = true,
    dependencies = "hrsh7th/nvim-cmp",
    --build = "./install.sh",
    --init = function()
      --vim.api.nvim_create_autocmd("BufRead", {
        --callback = function() require("cmp_tabnine"):prefetch(vim.api.nvim_call_function("expand", { "%:p" })) end,
      --})
    --end,
    config = function()
      require("cmp_tabnine.config").setup({
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
          ["packer"] = true,
          ["qf"] = true,
          ["TelescopePrompt"] = true,
        },
      })
    end
  },
}
