return {
  {
    'tpope/vim-sleuth',
    opts = {},
  },

  { import = 'nvchad.blink.lazyspec' },

  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

}
