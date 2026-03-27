local M = require("lint")

M.linters_by_ft = {
    python = { "ruff" },
    html = { "htmlhint" },
    css = { "stylelint" },
    lua = { "selene" },
    json = { "jsonlint" },
    toml = { "tombi" },
}
