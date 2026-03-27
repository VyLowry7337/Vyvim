return {
    {
        "saghen/blink.cmp",
        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            keymap = {
                preset = "super-tab",
                ["<Tab>"] = {
                    function(cmp)
                        if cmp.snippet_active() then
                            return cmp.accept()
                        else
                            return cmp.select_and_accept()
                        end
                    end,
                    "snippet_forward",
                    "fallback",
                },
                ["<S-TAB"] = { "snippet_backward", "fallback" },
                ["<CR>"] = false,
                ["<C-k>"] = false,
            },
            signature = {
                enabled = true,
                window = {
                    show_documentation = true,
                    treesitter_highlighting = true,
                    border = "single",
                },
                trigger = {
                    enabled = false,
                },
            },
            completion = {
                documentation = {
                    auto_show = false,
                },
                trigger = {
                    show_in_snippet = false,
                },
                menu = {
                    draw = {
                        treesitter = { "lsp" },
                    },
                },
            },
            fuzzy = {
                implementation = "prefer_rust",
            },
        },
    },

    {
        "saghen/blink.pairs",
        version = "*",
        dependencies = "saghen/blink.download",
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
                matchparen = {
                    enabled = false,
                    cmdline = false,
                },
            },

            mappings = {
                enabled = true,
                cmdline = true,
                pairs = {},
            },
        },
    },
}
