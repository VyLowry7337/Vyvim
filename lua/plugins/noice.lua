return {
    'folke/noice.nvim',
    event = "VeryLazy",
    opts = {
        lsp = {
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = false,
                ["vim.lsp.util.stylize_markdown"] = false,
                ["cmp.entry.get_documentation"] = false,
            },

            hover = {
                enabled = false,
                silent = true,
            },
          signature = { enabled = false },
        },
        routes = {
          {
            filter = {
              event = "notify",
              find = "Toggling hidden files",
            },
            opts = {
              skip = true,
            },
          },
          {
            filter = {
              event = "notify",
              find = "No information available",
            },
            opts = {
              skip = true,
            },
          },
          {
            filter = {
              event = "msg_show",
              any = {
                { find = "%d+L, %d+B" },
                { find = "; after #%d+" },
                { find = "; before #%d+" },
              },
            },
            view = "mini",
          },
        },
        messages = {
          view_search = false,
        },
        presets = {
          bottom_search = false,
          command_palette = true,
          long_message_to_split = true,
          lsp_doc_border = false,
        },

        views = {
          -- cmdline_popup = {
          --   border = {
          --     style = "rounded",
          --     padding = { 1, 1 },
          --   },
          --   filter_options = {},
          --   win_options = {
          --     winhighlight = "NormalFloat:NormalFloat:FloatBorder:FloatBorder",
          --   },
          -- },
        },
      },
    }


