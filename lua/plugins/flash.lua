return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  ---@type Flash.Config
  opts = {
    label = {
      style = 'overlay',
      -- rainbow = {
      --     enabled = true,
      --     shade = 2
      -- }
    },
    highlight = {
      backdrop = true,
    },
  },
  keys = {
    {
      's',
      mode = { 'n', 'x', 'o' },
      function()
        require('flash').jump()
      end,
      desc = 'Flash',
    },
    {
      'S',
      mode = { 'n', 'x', 'o' },
      function()
        require('flash').treesitter({
          actions = {
            [']'] = 'next',
            ['['] = 'prev',
          },
        })
      end,
      desc = 'Flash Treesitter',
    },
    {
      'r',
      mode = 'o',
      function()
        require('flash').remote()
      end,
      desc = 'Remote Flash',
    },
    {
      'R',
      mode = { 'o', 'x' },
      function()
        require('flash').treesitter_search()
      end,
      desc = 'Treesitter Search',
    },
  },
}
