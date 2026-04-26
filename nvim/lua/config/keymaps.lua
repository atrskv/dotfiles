local map = vim.keymap.set

map("n", "<leader>cR", "<cmd>RunCode<cr>", { desc = "Run code" })

-- Opencode
local wk = require("which-key")

wk.add({
  { "<leader>o", group = "Opencode", icon = "", mode = "n" },
  { "<leader>o", group = "Opencode", icon = "", mode = "v" },
})

local function ask(prompt)
  return function()
    require("opencode").ask(prompt, { submit = true })
  end
end

map("n", "<leader>oa", ask("@this: "), { desc = "AI Ask" })
map("n", "<leader>oo", function()
  require("opencode").toggle()
end, { desc = "Toggle Opencode" })

map("v", "<leader>oa", ask("@this: "), { desc = "AI Ask" })
map("v", "<leader>oe", ask("@this: Explain this code"), { desc = "Explain" })
map("v", "<leader>or", ask("@this: Review this code"), { desc = "Review" })
map("v", "<leader>of", ask("@this: Fix this code"), { desc = "Fix" })
map("v", "<leader>oR", ask("@this: Refactor this code"), { desc = "Refactor" })
map("v", "<leader>oo", function()
  require("opencode").toggle()
end, { desc = "Toggle Opencode" })
