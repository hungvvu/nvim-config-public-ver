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
        ensure_installed = { "lua_ls", "sourcery", "pyright", "biome", "tsserver", "html"  }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      -- Set up 
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        pip = {
          upgrade_pip = true,
        },
        capabilities = capabilities,
      })
      
      lspconfig.pyright.setup({
        root_dir = lspconfig.util.root_pattern('.git'),
        capabilities = capabilities,
      })
      
      lspconfig.eslint.setup({
        root_dir = lspconfig.util.root_pattern('.git'),
        capabilities = capabilities,
      })

      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      
      lspconfig.html.setup({
        capabilities = capabilities
      })

      vim.keymap.set('n', 'H', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

      -- lspconfig.biome.setup({
      -- })
    end
  }

}
