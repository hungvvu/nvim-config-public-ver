vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true})
vim.api.nvim_set_keymap('n', '<A-t>', ':terminal<CR>', {noremap = true})

-- Cycling between buffers
vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<CR>', {noremap = true}) 
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprevious<CR>', {noremap = true}) 
vim.api.nvim_set_keymap('n', '<leader>bd', ':bdelete<CR>', {noremap = true}) 
vim.api.nvim_set_keymap('n', '<leader>bD', ':bdelete!<CR>', {noremap = true}) 


-- Moving between panes
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
