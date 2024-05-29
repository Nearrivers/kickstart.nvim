-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

local harpoon = require 'harpoon'

harpoon:setup {}

vim.keymap.set('n', '<leader>a', function()
  harpoon:list():add()
end)

vim.keymap.set('n', '<C-e>', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set('n', '<leader>p', function()
  harpoon:list():prev()
end)

vim.keymap.set('n', '<leader>n', function()
  harpoon:list():next()
end)

return {}
