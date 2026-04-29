---@type ChadrcConfig
local M = {}
local highlights = require("ui.highlightOverrides")

M.base46 = {

    theme = "catppuccin",
    theme_toggle = { "catppuccin", "onedark" },
    transparency = false,
    integrations = {
        "render-markdown",
        "blink",
        "blink-pair",
        "devicons",
        "flash",
        "nvcheatsheet",
        "lsp",
        "whichkey",
        "mason",
        "navic",
        "rainbowdelimiters",
        "semantic_tokens",
        "tiny-inline-diagnostic",
        "trouble",
        "todo",
        "syntax",
    },
    hl_override = highlights.override,
}

M.nvdash = {
    header = require("ui.nvDashAscii"),
    buttons = require("ui.nvdash"),
    load_on_startup = true,
}

M.cheatsheet = {
    theme = "grid",
}

M.lsp = {
    signature = false,
}

M.ui = {
    cmp = {
        style = "flat_dark",
    },
    tabufline = {
        lazyload = false,
    },
    statusline = {
        enabled = true,
        theme = "default",
        separator_style = "default",
    },
}

M.term = {
    startinsert = true,
    base46_colors = true,
    winopts = { number = false, relativenumber = false },
    sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
    float = {
        relative = "editor",
        row = 0.3,
        col = 0.25,
        width = 0.5,
        height = 0.4,
        border = "single",
    },
}

return M
