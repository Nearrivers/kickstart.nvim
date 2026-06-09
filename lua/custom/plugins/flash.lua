vim.pack.add { 'https://github.com/folke/flash.nvim' }

local flash = require 'flash'

vim.keymap.set({ 'n', 'x', 'o' }, '<leader>fs', function()
  flash.jump()
end, { desc = 'Flash' })
vim.keymap.set({ 'n', 'x', 'o' }, '<leader>fS', function()
  flash.treesitter()
end, { desc = 'Flash' })

