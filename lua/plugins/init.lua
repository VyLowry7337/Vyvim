return {
    {
        "brianhuster/live-preview.nvim",
        lazy = true,
        enabled = true,
        ft = { "markdown", "html" },
        cmd = { "LivePreview" },
        config = function()
            require("configs.livepreview")
        end,
    },

    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
        config = function()
            require('configs.rendermd')
        end,
    },

    {
        "nvzone/floaterm",
        dependencies = "nvzone/volt",
        opts = {
            border = true,
            size = { h = 60, w = 70 },
        },
        cmd = "FloatermToggle",
    },

    {
        "Fildo7525/pretty_hover",
        event = "LspAttach",
        opts = {
            border = "single",
        },
    },

    {
        "tpope/vim-sleuth",
    },

    { import = "nvchad.blink.lazyspec" },

    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        cmd = "ConformInfo",
        opts = require("configs.conform"),
    },

    {
        "mfussenegger/nvim-lint",
        event = { "BufReadPre", "BufNewFile", "InsertLeave" },
        config = function()
            require("configs.linter")
        end,
    },

    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require("configs.lspconfig")
        end,
    },

    {
        "mason-org/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-lspconfig" },
        config = function()
            require("configs.mason-lspconfig")
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
            branch = "main",
        },
        config = function()
            require("configs.treesitter")
        end,
    },
}
