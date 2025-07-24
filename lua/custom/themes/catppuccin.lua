return {
  'catppuccin/nvim',
  name = 'catppuccin-mocha',
  priority = 1000, -- make sure to load this before all the other start plugins.
  init = function()
    require('catppuccin').setup {
      transparent_background = true, -- disables setting the background color.
    }
    vim.cmd 'colorscheme catppuccin-mocha'
  end,
}
