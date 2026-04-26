return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      opts.picker.sources = opts.picker.sources or {}
      opts.picker.sources.explorer = {
        hidden = false,
        exclude = { "__pycache__" },
        include = { ".python-version", ".venv", ".gitignore", ".env" },
        layout = {
          layout = {
            position = "right",
          },
        },
      }
      return opts
    end,
  },
}
