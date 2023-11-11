-- this is for a bug in copilot.vim, suggestions won't work w/o this
-- https://www.reddit.com/r/neovim/comments/wbx4r6/has_anyone_managed_to_use_github_copilot_in_nvchad/
vim.g.copilot_assume_mapped = true

return {
  {
    "github/copilot.vim",
    event = "InsertEnter",
  },
}
