return {

  {
    'kevinhwang91/nvim-bqf',
    ft = 'qf',
    dependencies = { 'junegunn/fzf.vim', lazy = true },
    opts = {
      preview = {
        show_title = true,
        winblend = 0,
      },
    },
  },

  -- NvChad Plugins
  {
    'nvzone/minty',
    dependencies = { 'nvzone/volt' },
    cmd = { 'Shades', 'Huefy' },
  },

  {
    'nvzone/typr',
    dependencies = 'nvzone/volt',
    opts = {},
    cmd = { 'Typr', 'TyprStats' },
  },

  {
    'mikavilpas/yazi.nvim',
    version = '*',
    event = 'VeryLazy',
    dependencies = {
      { 'nvim-lua/plenary.nvim', lazy = true },
    },
    opts = {
      change_neovim_cwd_on_close = true,
      floating_window_scaling_factor = 0.75,
      yazi_floating_window_border = 'single',
    },
  },

  {
    'andymass/vim-matchup',
    lazy = false,
    opts = {},
  },

  {
    'MagicDuck/grug-far.nvim',
    opts = {},
  },

  {
    'brianhuster/live-preview.nvim',
    lazy = true,
    enabled = true,
    ft = { 'markdown', 'html' },
    cmd = { 'LivePreview' },
    config = function()
      require('configs.livepreview')
    end,
  },

  {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('configs.rendermd')
    end,
  },

  {
    'windwp/nvim-ts-autotag',
    event = 'BufReadPre',
    config = function()
      require('nvim-ts-autotag').setup({
        opts = {
          enable_close = true,
          enable_rename = true,
          enable_close_on_slash = false,
        },
      })
    end,
  },

  {
    'Fildo7525/pretty_hover',
    event = 'LspAttach',
    opts = {
      border = 'single',
      wrap = true,
    },
  },

  {
    'tpope/vim-sleuth',
  },

  {
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    cmd = 'ConformInfo',
    opts = require('configs.conform'),
  },

  {
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile', 'InsertLeave' },
    config = function()
      require('configs.linter')
    end,
  },

  {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      require('configs.lspconfig')
    end,
  },

  {
    'mason-org/mason.nvim',
    cmd = { 'Mason', 'MasonInstall', 'MasonUpdate' },
    dependencies = { 'b0o/schemastore.nvim' },
    opts = {
      PATH = 'skip',

      ui = {
        icons = {
          package_pending = ' ',
          package_installed = ' ',
          package_uninstalled = ' ',
        },
      },

      max_concurrent_installers = 10,
    },
  },

  {
    'mason-org/mason-lspconfig.nvim',
    event = 'VeryLazy',
    dependencies = { 'nvim-lspconfig' },
    config = function()
      require('configs.mason-lspconfig')
    end,
  },

  {
    'whoissethdaniel/mason-tool-installer.nvim',
  },

  {
    'nvim-treesitter/nvim-treesitter',
    event = { 'BufReadPre' },
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
      branch = 'main',
    },
    config = function()
      require('configs.treesitter')
    end,
  },

  { 'bezhermoso/tree-sitter-ghostty', build = 'make nvim_install' },

  {
    'VyLowry7337/lemon.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = 'LspAttach',
    opts = {
      scope = {
        biscuit = { enabled = true, visible_mode = 'hover' },
      },

      inlay_hint = {
        enabled = false,
        param_icon = true,
        hide_in_insert = false,
        type_icon = true,
        type_text = true,
        fn_icon = true,
        fn_return_text = false,
        generic_text = true,
        object_threshold = 3,
      },

      signature_help = { auto = false },
      hover = {
        border = 'rounded',
        scroll_indicator = false,
        show_filetype = false,
        show_server = false,
        show_symbol = true,
        show_kind_prefix = true,
        footer = { enabled = false },
      },
      diagnostic = {
        border = 'rounded',
        scroll_indicator = false,
        show_filetype = false,
        show_server = false,
        show_symbol = false,
        hide_diagnostic = true,
        footer = {
          enabled = false,
        },
      },
      diagnostic_list = {
        layout = 'split',
        height = 10,
        border = 'single',
        max_height = 0.4,
        max_width = 0.8,
        pad_right = 4,
        scroll_indicator = false,
        close_events = {},
        close_key = 'q',
        confirm_key = '<CR>',
        scope = 'workspace',
        scope_toggle_key = 's',
        show_server = true,
        show_filetype = true,
        hide_diagnostic = false,
        footer = { enabled = true, show_desc = true },
      },
      code_action = {
        border = 'rounded',
        footer = {
          enabled = false,
        },
      },
    },
  },
}
