return {
  'donus3/mongo.nvim',
  dependencies = {
    'ibhagwan/fzf-lua',
  },
  config = function()
    require('mongo').setup {
      default_url = 'mongodb://localhost:27017',
      mongo_binary_path = nil,
      mongosh_binary_path = 'mongosh',
      find_on_collection_selected = false,
      batch_size = 100,
    }
  end,
}
