return {
  "Wansmer/langmapper.nvim",
  lazy = false,
  priority = 1,
  config = function()
    require("langmapper").setup({})
    vim.api.nvim_create_autocmd("User", {
      pattern = "VeryLazy",
      callback = function()
        require("langmapper").automapping({ global = true, buffer = true })
      end,
    })
  end,
}
