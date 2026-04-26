return {
  {
    "CRAG666/code_runner.nvim",
    opts = {
      mode = "float",
      filetype = {
        python = "python3 -u",
        typescript = "node run",
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
