return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  init = function()
    require('tokyonight').setup {
      transparent = true,
    }

    vim.cmd 'colorscheme tokyonight-night'
  end,
}
