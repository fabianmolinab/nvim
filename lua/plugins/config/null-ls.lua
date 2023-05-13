-- Este plugin permite el auto save con Prettier y Eslint
-- FIX: Comprobar cuando cargar el plugin si al iniciar o con un key
return {
  "jose-elias-alvarez/null-ls.nvim",
  event = { "BufNewFile", "BufRead", "BufAdd" },
 dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "jay-babu/mason-null-ls.nvim",
        dependencies = "williamboman/mason.nvim",
        config = function()
          require("mason-null-ls").setup({
            ensure_installed = { "jsonlint",  "prettierd", "gofumpt", "goimports", "selene"  },
          })
        end,
      },
    },
  config = function()
    local null_ls = require("null-ls")

    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    null_ls.setup({
      update_in_insert = vim.diagnostic.config().update_in_insert,
      debounce = 300,
      on_attach = function(client, bufnr)
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
        null_ls.builtins.diagnostics.jsonlint,
        null_ls.builtins.diagnostics.selene,
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.goimports,
        --require("null-ls").builtins.diagnostics.markdownlint,
        null_ls.builtins.formatting.prettierd.with({
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
  end,
}
