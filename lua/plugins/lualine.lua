return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        theme = 'catppuccin'
      },
      sections = {
        lualine_a = {
          {
            'buffers',
          }
        }
      }
    })
  end
}
