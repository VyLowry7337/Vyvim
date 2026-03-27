local M = {}

M.override = {
    Comment = { italic = true },

    ["@type"] = { italic = true },
    ["@type.builtin"] = { italic = true },

    ["@keyword"] = { italic = true },
    ["@keyword.repeat"] = { italic = true },
    ["@keyword.return"] = { italic = true },
    ["@keyword.storage"] = { italic = true },
    ["@keyword.function"] = { italic = true },
    ["@keyword.operator"] = { italic = true },
    ["@keyword.directive"] = { italic = true },
    ["@keyword.exception"] = { italic = true },
    ["@keyword.conditional"] = { italic = true },
    ["@keyword.directive.define"] = { italic = true },
    ["@keyword.conditional.ternary"] = { italic = true },

    ["@variable"] = { fg = "NONE" },
    ["@variable.parameter"] = { fg = "NONE" },

    ["@function"] = { fg = "NONE" },
    Function = { fg = "NONE" },
}

return M
