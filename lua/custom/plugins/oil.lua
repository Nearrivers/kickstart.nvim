return {
  {
    'stevearc/oil.nvim',
    config = function()
      require('oil').setup {
        columns = { 'icons' },
        keymaps = {
          ['<C-h>'] = false,
          ['<M-h>'] = 'actions.select_split',
        },
        view_options = {
          show_hidden = true,
        },
      }

      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Ouvre le répertoire parent' })
      vim.keymap.set('n', '<leader>-', require('oil').toggle_float, { desc = 'Ouvre le répertoire parent dans une fenêtre flottante' })
    end,
  },
}
