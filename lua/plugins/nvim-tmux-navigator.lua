return {
  "alexghergh/nvim-tmux-navigation",
  config = function()
    require('nvim-tmux-navigation').setup({})
    vim.keymap.set("n", "<C-y>", ":NvimTmuxNavigateLeft<CR>", { noremap = true })
    vim.keymap.set("n", "<C-u>", ":NvimTmuxNavigateDown<CR>", { noremap = true })
    vim.keymap.set("n", "<C-i>", ":NvimTmuxNavigateUp<CR>", { noremap = true })
    vim.keymap.set("n", "<C-o>", ":NvimTmuxNavigateRight<CR>", { noremap = true })
  end,
}
