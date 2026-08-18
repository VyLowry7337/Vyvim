return {
  {
    'rachartier/tiny-inline-diagnostic.nvim',
    event = 'LspAttach', -- Or `LspAttach`
    priority = 1000,
    config = function()
      require('tiny-inline-diagnostic').setup({
        signs = {
          -- left = "",
          -- right = "",
          diag = '',
          arrow = '',
          up_arrow = '',
          vertical = ' ',
          vertical_end = ' ',
        },
        transparent_bg = true,
        transparent_cursorline = false,
        options = {
          use_icons_from_diagnostic = false,
          show_source = {
            enabled = false,
          },
          virt_texts = {
            priority = 5000,
          },
          override_open_float = true,
          add_messages = {
            display_count = true,
            show_multiple_glyphs = true,
          },
          multilines = {
            enabled = true,
            severity = {
              vim.diagnostic.severity.ERROR,
            },
          },

          show_diags_only_under_cursor = false,

          severity = {
            vim.diagnostic.severity.ERROR,
          },
        },
      })
    end,
  },

  {
    'rachartier/tiny-code-action.nvim',
    event = 'LspAttach',
    opts = {
      backend = 'delta',
      picker = 'buffer',
    },
  },
}
