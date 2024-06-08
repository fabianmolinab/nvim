return {
  "mrjones2014/smart-splits.nvim",
  optional = true,
  opts = function(_, opts)
    opts.ignored_filetypes = vim.list_extend(
      opts.ignored_filetypes or {}, { "mason" })
  end
}

