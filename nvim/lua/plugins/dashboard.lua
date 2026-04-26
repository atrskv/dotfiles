return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {

        header = [[
                                                                        
                                                                     
       ████ ██████           █████      ██                     
      ███████████             █████                             
      █████████ ███████████████████ ███   ███████████   
     █████████  ███    █████████████ █████ ██████████████   
    █████████ ██████████ █████████ █████ █████ ████ █████   
  ███████████ ███    ███ █████████ █████ █████ ████ █████  
 ██████  █████████████████████ ████ █████ █████ ████ ██████ 
                                                                        
]],

        sections = {
          { section = "header" },
          {
            section = "startup",
            buttons = {
              { desc = " Find File", icon = " ", key = "f", action = "lua LazyVim.pick()()" },
              { desc = " New File", icon = " ", key = "n", action = "ene | startinsert" },
              { desc = " Recent Files", icon = " ", key = "r", action = 'lua LazyVim.pick("oldfiles")()' },
              { desc = " Find Text", icon = " ", key = "g", action = 'lua LazyVim.pick("live_grep")()' },
              { desc = " Config", icon = " ", key = "c", action = "lua LazyVim.pick.config_files()()" },
              { desc = " Restore Session", icon = " ", key = "s", action = 'lua require("persistence").load()' },
              { desc = " Lazy Extras", icon = " ", key = "x", action = "LazyExtras" },
              { desc = " Lazy", icon = "󰒲 ", key = "l", action = "Lazy" },
              {
                desc = " Quit",
                icon = " ",
                key = "q",
                action = function()
                  vim.cmd("qa")
                end,
              },
            },
          },
        },
      },
    },
  },
}
