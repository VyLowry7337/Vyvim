return {
  {
      'saghen/blink.cmp',
      ---@module 'blink.cmp'
      ---@type blink.cmp.Config
      opts = {
        keymap = { preset = 'super-tab' },
      }
  },

  {
  'saghen/blink.pairs',
  version = '*',
  dependencies = 'saghen/blink.download',
  --- @module 'blink.pairs'
  --- @type blink.pairs.Config
  opts = {
    mappings = {
      enabled = true,
      cmdline = true,
      pairs = {},
    },

    matchparen = {
      enabled = false,
      cmdline = false,
    },
  },
  },
}
