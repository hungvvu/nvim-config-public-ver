return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  { 
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',  
    dependencies = {
      'hrsh7th/cmp-nvim-lsp', 
      'hrsh7th/cmp-path',    
    },
    config = function()
      local cmp = require('cmp')
      require("luasnip.loaders.from_vscode").lazy_load()
      cmp.setup {
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-n>'] = cmp.mapping.select_next_item(),  -- Next in completion menu
          ['<C-p>'] = cmp.mapping.select_prev_item(),  -- Previouss completion menu
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),     -- Scroll docs in completion menu
          ['<C-f>'] = cmp.mapping.scroll_docs(4),      -- Scroll docs in completion menu
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirm selection
          ['<C-]>'] = cmp.mapping.complete(),      -- Manually trigger completion (not really necessary because nvim-cmp will auto display completion on its own)
          ['<leader><C-]>'] = cmp.mapping.abort(),    -- Close the completion menu
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },  -- Source: Neovim LSP
          { name = 'path' },       -- Source: Path completions
          { name = "luasnip" },
        },
        {
          { name = "buffer" },
        }),
      }
    end,
  },
}
