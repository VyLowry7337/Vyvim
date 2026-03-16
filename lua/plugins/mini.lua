return {
  {
    'nvim-mini/mini.animate',
    event = 'VeryLazy',
    config = function()
      require('mini.animate').setup()
    end
  },

  {
      'nvim-mini/mini.ai',
      version = '*',
      opts = {
      }
  },

  {
    "nvim-mini/mini.splitjoin",
    version = "*",
    event = "BufEnter",
    config = true,
  },

  {
    "nvim-mini/mini.surround",
    opts = {
      mappings = {
        add = "gsa",
        delete = "gsd",
        find = "gsf",
        find_left = "gsF",
        highlight = "gsh",
        replace = "gsr",
        update_n_lines = "gsn",
      },
    },
  },
}

