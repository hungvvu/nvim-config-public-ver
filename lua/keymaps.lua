vim.g.mapleader = " "

vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap = true})
vim.api.nvim_set_keymap('n', '<A-t>', ':terminal<CR>', {noremap = true})

-- Cycling between buffers
vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<CR>', {noremap = true}) 
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprevious<CR>', {noremap = true}) 
vim.api.nvim_set_keymap('n', '<leader>bd', ':bdelete<CR>', {noremap = true}) 
vim.api.nvim_set_keymap('n', '<leader>bD', ':bdelete!<CR>', {noremap = true}) 


-- Moving between Tmux panes 
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')


-- File operations
--- Save/Write current file
vim.keymap.set('n', '<leader>wf', ':w<CR>')

--- Save selection to a file
function WriteSelectionToFile(file_path)
  -- Expand the '~' to the home directory
  if file_path:sub(1, 1) == '~' then
    local home = os.getenv('HOME')
    if home then
      file_path = home .. file_path:sub(2) -- Replace '~' in file_path with the path to the home directory
    end
  end
  
  vim.cmd('normal! y') -- Yank the current visual selection
  local selection = vim.fn.getreg('') -- Get the content of the unnamed register
  local file, err = io.open(file_path, 'w') -- Open the file in append mode

  
  -- Write the selection to the file and close it
  if not file then
    print(string.format("Error opening file '%s': ", file_path), err)
    return
  end
  file:write(selection)
  file:close()
end

--- Save selection to '~/clipboard.txt'
vim.keymap.set('v', '<leader>cs', '<cmd>lua WriteSelectionToFile("~/clipboard.txt")<CR>', {noremap = true})

--- Save the whole file to 
vim.keymap.set({'n', 'v'}, '<leader>cc', ':w! ~/clipboard.txt<CR>', {noremap = true})
