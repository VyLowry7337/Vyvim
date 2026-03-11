return {
{
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "LspAttach",
  priority = 1000,
  config = function()
    require("tiny-inline-diagnostic").setup {
      preset = "classic",
      hi = {
        error = "DiagnosticError",
        warn = "DiagnosticWarn",
        info = "DiagnosticInfo",
        hint = "DiagnosticHint",
      },
      transparent_bg = true,
      transparent_cursorline = false,
      options = {
        show_source = {
          enabled = false,
          if_many = false,
        },
        use_icons_from_diagnostic = false,
        set_arrow_to_diag_color = true,
        virt_text = {
            priority = 4999,
        },
        override_open_float = true,
        add_messages = {
            display_count = true,
            use_max_severity = true,
            show_multiple_glyphs = false,
        },
        -- severity = {
        --     vim.diagnostic.severity.ERROR,
        --     vim.diagnostic.severity.WARN,
        -- },
      },
    }
    vim.diagnostic.config( { signs = false, virtual_lines = false, virtual_text = false, } )
  end,
},

{
    "rachartier/tiny-code-action.nvim",
    dependencies = {
        {"nvim-lua/plenary.nvim"},
        {
          "folke/snacks.nvim",
          opts = {
            terminal = {},
          }
        }
    },
    event = "LspAttach",
    opts = {},
},


}
