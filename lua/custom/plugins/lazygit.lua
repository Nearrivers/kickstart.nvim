vim.pack.add { 'https://github.com/nvim-lua/plenary.nvim' }
vim.pack.add { 'https://github.com/kdheepak/lazygit.nvim' }

vim.keymap.set("n", "<leader>lg", function()
  vim.cmd 'LazyGit'
end, { desc = "Open LazyGit floating window" })
