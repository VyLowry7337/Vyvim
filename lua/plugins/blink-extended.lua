return {
  {
      'saghen/blink.cmp',
      ---@module 'blink.cmp'
      ---@type blink.cmp.Config
      opts = {
        fuzzy = {
            implementation = 'prefer_rust',
        },
      },
  },

  {
  'saghen/blink.pairs',
  version = '*',
  dependencies = 'saghen/blink.download',
  --- @module 'blink.pairs'
  --- @type blink.pairs.Config
  opts = {
    highlights = {
        enabled = true,
        groups = {
            "BlinkPairsRed",
            "BlinkPairsOrange",
            "BlinkPairsYellow",
            "BlinkPairsGreen",
            "BlinkPairsCyan",
            "BlinkPairsBlue",
            "BlinkPairsViolet",
        },
    },

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
