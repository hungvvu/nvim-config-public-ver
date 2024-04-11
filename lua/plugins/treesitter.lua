return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            highlight = { enable = true },
            indent = { enable = true },
            ensure_installed = { 'c', 'cpp', 'go', 'lua', 'python', 'yaml', 'rust', 'typescript', 'vimdoc', 'cmake' }
        })
        end
}
