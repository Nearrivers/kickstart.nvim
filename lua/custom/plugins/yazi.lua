return {
  'mikavilpas/yazi.nvim',
  event = 'VeryLazy',
  keys = {
    {
      '<leader>-',
      mode = { 'n', 'v' },
      '<cmd>Yazi<cr>',
      desc = 'Open yazi at the current file',
    },
    {
      '<leader>cw',
      '<cmd>Yazi cwd<cr>',
      desc = 'Open yazi inside the current working directory',
    },
    {
      '<c-up>',
      '<cmd>Yazi toggle<cr>',
      desc = 'Resume last yazi session',
    },
  },
  opts = {
    open_for_directories = true,
    keymaps = {
      show_help = '<f1>',
    },
  },
}
