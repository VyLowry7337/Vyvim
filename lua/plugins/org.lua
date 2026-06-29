return {
  'nvim-neorg/neorg',
  lazy = false,
  version = '*',
  dependencies = {
    'benlubas/neorg-interim-ls',
    'nvim-neorg/tree-sitter-norg',
    'nvim-neorg/tree-sitter-norg-meta',
  },
  config = function()
    require('neorg').setup({
      load = {
        ['core.defaults'] = {},
        ['core.keybinds'] = {
          config = {
            defaults = true,
            neorg_leader = '<localleader>o',
          },
        },
        ['core.concealer'] = {
          config = {
            icon_preset = 'varied',
          },
        },
        ['core.dirman'] = {
          config = {
            workspaces = {
              gtd = '~/Documents/Neorg/GTD/',
            },
          },
        },
        ['core.gtd.base'] = {
          config = {
            workspace = 'gtd',
          },
        },
        ['core.dirman.utils'] = {},
        ['core.completion'] = {
          config = { engine = { module_name = 'external.lsp-completion' } },
        },
        ['core.text-objects'] = {},
        ['external.interim-ls'] = {
          config = {
            completion_provider = {
              enable = true,
            },
          },
        },
      },
    })
  end,
}
