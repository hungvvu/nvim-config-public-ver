return {
  "alexghergh/nvim-tmux-navigation",
  event = "VeryLazy",
  config = function()
    local nvim_tmux_nav = require("nvim-tmux-navigation")
        
    vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft, { noremap = true })
    vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown, { noremap = true })
    vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp, { noremap = true })
    vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight, { noremap = true })
    vim.keymap.set('n', "<C-\\>", nvim_tmux_nav.NvimTmuxNavigateLastActive, { noremap = true })
    vim.keymap.set('n', "<C-Space>", nvim_tmux_nav.NvimTmuxNavigateNext, { noremap = true })
  end,
}
