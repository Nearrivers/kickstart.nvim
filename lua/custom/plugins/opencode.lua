vim.pack.add { 'https://github.com/saghen/blink.lib' }
vim.pack.add { 'https://github.com/folke/snacks.nvim' }
require('snacks').setup {
  opts = {
    input = {}, -- Enhances `ask()`
    picker = { -- Enhances `select()`
      actions = {
        opencode_send = function(...)
          return require('opencode').snacks_picker_send(...)
        end,
      },
      win = {
        input = {
          keys = {
            ['<a-a>'] = { 'opencode_send', mode = { 'n', 'i' } },
          },
        },
      },
    },
  },
}

vim.pack.add { 'https://github.com/nickjvandyke/opencode.nvim' }

local opencode = require 'opencode'

---@type opencode.Opts
vim.g.opencode_opts = {
  -- Your configuration, if any; goto definition on the type or field for details
}

vim.o.autoread = true -- Required for `opts.events.reload`

-- Recommended/example keymaps
vim.keymap.set({ 'n', 'x' }, '<leader>opa', function()
  opencode.ask('@this: ', { submit = true })
end, { desc = 'Ask opencode…' })
vim.keymap.set({ 'n', 'x' }, '<leader>opx', function()
  opencode.select()
end, { desc = 'Execute opencode action…' })
vim.keymap.set({ 'n', 't' }, '<leader>opt', function()
  opencode.toggle()
end, { desc = 'Toggle opencode' })

vim.keymap.set({ 'n', 'x' }, 'go', function()
  return opencode.operator '@this '
end, { desc = 'Add range to opencode', expr = true })
vim.keymap.set('n', 'goo', function()
  return opencode.operator '@this ' .. '_'
end, { desc = 'Add line to opencode', expr = true })

vim.keymap.set('n', '<S-C-k>', function()
  opencode.command 'session.half.page.up'
end, { desc = 'Scroll opencode up' })
vim.keymap.set('n', '<S-C-j>', function()
  opencode.command 'session.half.page.down'
end, { desc = 'Scroll opencode down' })

-- You may want these if you use the opinionated `<C-a>` and `<C-x>` keymaps above — otherwise consider `<leader>o…` (and remove terminal mode from the `toggle` keymap)
vim.keymap.set('n', '+', '<C-a>', { desc = 'Increment under cursor', noremap = true })
vim.keymap.set('n', '-', '<C-x>', { desc = 'Decrement under cursor', noremap = true })

