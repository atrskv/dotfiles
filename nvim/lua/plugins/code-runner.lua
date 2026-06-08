return {
  {
    "CRAG666/code_runner.nvim",
    opts = {
      mode = "term",
      filetype = {
        python = "python3 -u '$file' ; read",
        typescript = "node '$file' ; read",
      },
    },
  },
  {
    "folke/edgy.nvim",
    opts = function(_, opts)
      opts.bottom = vim.list_extend(opts.bottom or {}, {
        { title = "CodeRunner", ft = "crunner", size = { height = 0.25 } },
      })
    end,
  },
}
