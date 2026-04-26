return {
  {
    "vimpostor/vim-tpipeline",
    lazy = false,
    dependencies = { "nvim-lualine/lualine.nvim" },
    config = function()
      vim.g.tpipeline_autoembed = 1
      vim.opt.termguicolors = true
      if vim.env.TMUX then
        vim.g.tpipeline_passthrough = 1
      end
    end,
  },
}
