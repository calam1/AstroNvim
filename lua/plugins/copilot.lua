-- this is for a bug in copilot.vim, suggestions won't work w/o this
-- https://www.reddit.com/r/neovim/comments/wbx4r6/has_anyone_managed_to_use_github_copilot_in_nvchad/
-- vim.g.copilot_assume_mapped = true
-- vim.keymap.set("i", "<C-i>", "copilot#Complete()", {expr=true, silent=true})

local map = vim.keymap.set
map("i", "<C-i>", "copilot#Accept('<CR>')", {noremap = true, silent = true, expr=true, replace_keycodes = false })

vim.keymap.set("i", "<C-j>", "copilot#Next()", {expr=true, silent=true})
vim.keymap.set("i", "<C-k>", "copilot#Previous()", {expr=true, silent=true})

return {
  {
    "github/copilot.vim",
    event = "InsertEnter",
  },
}
