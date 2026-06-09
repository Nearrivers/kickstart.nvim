vim.pack.add { 'https://github.com/ibhagwan/fzf-lua' }
vim.pack.add { 'https://github.com/donus3/mongo.nvim' }
require('mongo').setup {
  default_url = 'mongodb://localhost:27017',
  mongo_binary_path = nil,
  mongosh_binary_path = 'mongosh',
  find_on_collection_selected = false,
  batch_size = 100,
  auto_install = true,
}

vim.keymap.set('n', '<leader>dbl', function()
  vim.cmd "lua require('mongo-nvim.telescope.pickers').database_picker()"
end, {desc = "List available databases"})

vim.keymap.set('n', '<leader>dbcl', function()
  vim.cmd "lua require('mongo-nvim.telescope.pickers').database_picker()"
end, {desc = "List collections in database (arg: database name)"})

vim.keymap.set('n', '<leader>dbdl', function()
  vim.cmd "lua require('mongo-nvim.telescope.pickers').database_picker()"
end, {desc = "List documents in a database's collection (arg: database name, collection name)"})

