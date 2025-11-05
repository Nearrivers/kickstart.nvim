return {
  'epwalsh/obsidian.nvim',
  version = '*',
  lazy = true,
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
    'nvim-telescope/telescope.nvim',
  },
  cmd = {
    'ObsidianQuickSwitch',
    'ObsidianSearch',
    'ObsidianNew',
    'ObsidianBacklinks',
    'ObsidianToday',
    'ObsidianLinks',
  },
  opts = {
    workspaces = {
      {
        name = 'personnel',
        path = '/Users/antoine/Documents/Notes-perso',
      },
    },

    -- Intégration avec nvim-cmp
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },

    -- Configuration des notes
    notes_subdir = 'notes',
    new_notes_location = 'notes_subdir',

    -- Template pour nouvelles notes
    note_id_func = function(title)
      return title
    end,

    -- Désactiver le wiki links si vous préférez markdown standard
    -- preferred_link_style = "markdown",

    -- Mappings optionnels
    mappings = {
      -- Suivre un lien
      ['gd'] = {
        action = function()
          return require('obsidian').util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      -- Toggle checkbox
      ['<leader>ch'] = {
        action = function()
          return require('obsidian').util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
    },
  },
  -- Raccourcis claviers
  keys = {
    -- Recherche rapide de notes avec Telescope
    { '<leader>of', '<cmd>ObsidianQuickSwitch<cr>', desc = 'Obsidian Quick Switch' },
    { '<leader>os', '<cmd>ObsidianSearch<cr>', desc = 'Obsidian Search' },
    { '<leader>on', '<cmd>ObsidianNew<cr>', desc = 'Obsidian New Note' },
    { '<leader>oo', '<cmd>ObsidianOpen<cr>', desc = 'Obsidian Open in App' },
    { '<leader>ob', '<cmd>ObsidianBacklinks<cr>', desc = 'Obsidian Backlinks' },
    { '<leader>ot', '<cmd>ObsidianToday<cr>', desc = 'Obsidian Today' },
    { '<leader>ol', '<cmd>ObsidianLinks<cr>', desc = 'Obsidian Links' },
  },
}
