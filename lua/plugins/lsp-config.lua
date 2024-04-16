return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "sourcery", "pyright", "biome" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        pip = {
          upgrade_pip = true,
        }
      })

      vim.keymap.set('n', 'H', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

      lspconfig.pyright.setup({
        root_dir = lspconfig.util.root_pattern('.git');
      })
      
      lspconfig.eslint.setup({
        root_dir = lspconfig.util.root_pattern('.git');
      })
      -- lspconfig.biome.setup({
      -- })
    end
  }

}
