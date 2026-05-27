return {

    {
        "hiphish/rainbow-delimiters.nvim",
        event = "BufReadPost",
        config = function()
            local rainbow_delimiters = require("rainbow-delimiters")
            vim.g.rainbow_delimiters = {
                strategy = {
                    [""] = rainbow_delimiters.strategy["global"],
                    vim = rainbow_delimiters.strategy["local"],
                },
                query = {
                    [""] = "rainbow-delimiters",
                },
                highlight = {
                    "@annotation",     -- Red
                    "@attribute",      -- Yellow
                    "@markup.heading", -- Blue
                    "@boolean",        -- Orange
                    "@keyword",        -- Violet
                    "@markup",         -- Cyan
                    "@diff.plus",      -- Green
                },
            }
        end,
    },

    {
        'SmiteshP/nvim-navic',
        event = "LspAttach",
        dependencies = {
            "neovim/nvim-lspconfig",
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require('configs.navic')
        end,
    },

    {
        "OXY2DEV/helpview.nvim",
        ft = "help",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        opts = {},
    },
}
