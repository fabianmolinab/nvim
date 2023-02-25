local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

require("null-ls").setup({
  update_in_insert = vim.diagnostic.config().update_in_insert,
  debounce = 300,
  on_attach = function (client, bufnr)
    if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = augroup,
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format({ bufnr = bufnr })
            require("luasnip").session.current_nodes[bufnr] = nil
          end,
        })
    end
  end,

  sources = {
    require("null-ls").builtins.diagnostics.jsonlint,
    --require("null-ls").builtins.diagnostics.markdownlint,
    require("null-ls").builtins.formatting.prettierd.with({
      condition = function(utils)
        return utils.root_has_file({
          ".prettierrc",
          ".prettierrc.json",
          ".prettierrc.yaml",
          ".prettierrc.yml",
          ".prettierrc.json5",
          ".prettierrc.js",
          ".prettierrc.cjs",
          "prettier.config.js",
          "prettier.config.cjs",
          ".prettierrc.toml",
        })
      end,
    }),
  },
})
