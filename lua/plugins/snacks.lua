local pad = { " ", " ", " ", " ", " ", " ", " ", " " }

local main_layout = {
    layout = {
        box = "horizontal",
        backdrop = false,
        width = 0.8,
        height = 0.8,
        border = "single",
        {
            box = "vertical",
            { win = "list", border = pad },
            { win = "input", height = 1, border = pad, title = "{title} {flags}", title_pos = "center" },
        },
        { win = "preview", title = " Preview", title_pos = "center", border = pad, width = 0.5 },
    },
}

local exclude_patterns = {
    "node_modules",
    ".git",
    ".DS_Store",
    "*.png",
    "*.svg",
    "*.mp4",
    "*.jpg",
    "*.jpeg",
    "*.bundle.js",
    "*.mjs",
    "*.cjs",
}

local sources = {
    files = {
        title = " Files",
        hidden = false,
        ignored = false,
        exclude = exclude_patterns,
    },
    grep = {
        title = " Grep",
        hidden = false,
        ignored = false,
        regex = false,
        exclude = exclude_patterns,
    },
    recent = { title = "󰋚 Recent" },
    buffers = { title = "󰈚 Buffers" },
    help = { title = "󰛵 Help" },
    lines = { title = "󰗈 Lines" },
    git_status = { title = " Git Status" },
    git_branches = { title = " Branches" },
    git_log = { title = " Git Log" },
    qflist = { title = " Quickfix" },
    projects = { title = " Projects" },
    commands = { title = " Commands" },
    keymaps = { title = "󰌌 Keymaps" },
    diagnostics = { title = " Diagnostics" },
    lsp_references = { title = " References" },
    lsp_definitions = { title = " Definitions" },
    lsp_implementations = { title = " Implementations" },
    lsp_type_definitions = { title = "󰊄 Type Definitions" },
    lsp_symbols = { title = " Symbols" },
    lsp_workspace_symbols = { title = " Workspace Symbols" },
    marks = { title = "󰃀 Marks" },
    registers = { title = " Registers" },
    colorschemes = { title = " Colorschemes" },
    highlights = { title = "󰸱 Highlights" },
    git_diff = { title = " Git Diff" },
    git_stash = { title = "󰏗 Git Stash" },
    resume = { title = "󰁯 Resume" },
    undo = { title = "󰕌 Undo" },
    notifications = { title = "󰂚 Notifications" },
    pickers = { title = " Pickers" },
}

for _, source in pairs(sources) do
    source.layout = main_layout
end

sources.explorer = {
    prompt = " ",
    -- prompt = "  ",
    hidden = true,
    ignored = true,
    filter = {
        filter = function(item, filter)
            if item.ignored and not filter:is_empty() then
                return false
            end
            return true
        end,
    },
    format = function(item, picker)
        local ret = Snacks.picker.format.file(item, picker)
        if not item.parent and item.dir then
            for i, entry in ipairs(ret) do
                if entry.virtual then
                    ret[i][1] = Snacks.picker.util.align("", picker.opts.formatters.file.icon_width or 2)
                    ret[i][2] = "SnacksPickerRoot"
                    break
                end
            end
        end
        return ret
    end,
    layout = {
        preview = "main",
        layout = {
            backdrop = false,
            width = 30,
            min_width = 20,
            height = 0,
            position = "right",
            border = "none",
            box = "vertical",
            { win = "input", height = 1, border = "none" },
            { win = "list", border = "none" },
        },
    },
    icons = {
        files = {
            enabled = true,
            dir = "󰉋 ",
            dir_open = "󰝰 ",
            file = "󰈔 ",
        },
        git = {
            enabled = true,
            staged = "",
            added = "",
            deleted = "",
            ignored = "",
            modified = "",
            renamed = "",
            unmerged = "",
            untracked = "",
            commit = "󰜘",
        },
        tree = {
            vertical = " ", -- vertical = "│ ",
            middle = " ", -- middle = "├╴",
            last = " ", -- last = "└╴",
        },
    },
    win = {
        input = {
            wo = { winbar = "" },
            keys = {
                ["<Esc>"] = { "focus_list", mode = { "n", "i" } },
            },
        },
        list = {
            wo = { number = false, relativenumber = false, winbar = "" },
            keys = {
                ["<C-n>"] = "close",
                ["<c-t>"] = false,
            },
        },
    },
}

local config = {
    image = { enabled = true },
    toggle = { enabled = true },
    dim = { enabled = true },
    scope = { enabled = true },
    indent = {
        enabled = true,
        indent = {},

        animate = {
            enabled = true,
            style = "up_down",
            duration = {
                step = 50,
                total = 1000,
            },
        },

        scope = {
            enabled = true,
            underline = false,
        },

        chunk = {
            enabled = true,
        },
    },
    input = {
        enabled = true,
        win = {
            keys = {
                i_esc = { "<esc>", { "cmp_close", "cancel" }, mode = "i", expr = true },
            },
        },
    },
    terminal = {
        win = {
            wo = { number = false, relativenumber = false },
        },
    },
    explorer = {
        replace_netrw = true,
    },
    picker = {
        previewers = {
            diff = {
                style = "terminal",
            },
        },
        win = {
            preview = {
                wo = { fillchars = "eob: ", wrap = false, winbar = " " },
            },
            input = {
                keys = {
                    ["<Esc>"] = { "close", mode = { "n", "i" } },
                },
            },
        },
        sources = sources,
    },

    lazygit = {
        configure = true,
    },
}

return {
    "folke/snacks.nvim",
    lazy = false,
    config = function()
        require("snacks").setup(config)
        local original_icon = Snacks.util.icon
        Snacks.util.icon = function(name, cat, icon_opts)
            if cat == "file" and name then
                name = vim.fs.basename(name)
            end
            return original_icon(name, cat, icon_opts)
        end
    end,
}
