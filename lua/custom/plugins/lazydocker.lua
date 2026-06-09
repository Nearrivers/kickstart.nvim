vim.pack.add { 'https://github.com/akinsho/toggleterm.nvim' }
vim.pack.add { 'https://github.com/mgierada/lazydocker.nvim' }

require('lazydocker').setup {
  border = 'curved',
}

vim.keymap.set('n', '<leader>ld', function()
  require('lazydocker').open()
end, { desc = 'Open lazydocker floating window' })
