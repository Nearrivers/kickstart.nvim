return {
  'rasulomaroff/cursor.nvim',
  event = 'VeryLazy',
  config = function()
    require('cursor').setup {
      cursors = {
        blink = 500,
      },
    }
  end,
}
