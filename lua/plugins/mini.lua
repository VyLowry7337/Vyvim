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
  }

 }
