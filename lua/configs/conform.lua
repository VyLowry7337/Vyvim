---@module "conform"
---@type conform.setupOpts
local options = {
    formatters_by_ft = {
        markdown = { "prettier" },
        zsh = { "shfmt" },
        json = { "prettier" },
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        yaml = { "yamlfmt" },
        python = {
            "ruff_fix",
            "ruff_format",
            "ruff_organize_imports",
        },
    },

    default_format_opts = {
        lsp_format = "fallback",
    },

    format_on_save = {
        timeout_ms = 1500,
    },

    formatters = {},
}

return options
