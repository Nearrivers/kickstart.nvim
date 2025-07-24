return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  init = function()
    require('tokyonight').setup {
      transparent_background = true,
    }

    -- vim.cmd 'colorscheme tokyonight'
  end,
}
