require("nvchad.autocmds")

local cmd = vim.api.nvim_command
local aucmd = vim.api.nvim_create_autocmd

-- Disable Ruff's Hover
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client == nil then
            return
        end
        if client.name == "ruff" then
            client.server_capabilities.hoverProvider = false
        end
    end,
    desc = "LSP: Disable hover capability from Ruff",
})

-- Open NvDash if no buffers open
aucmd("BufDelete", {
    callback = function()
        local bufs = vim.t.bufs
        if #bufs == 1 and vim.api.nvim_buf_get_name(bufs[1]) == "" then
            vim.cmd("Nvdash")
        end
    end,
})

-- Disable auto-commenting on newlines for all file types
aucmd("FileType", {
    pattern = "*",
    desc = "Prevent comment continuation",
    callback = function()
        vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
    end,
})

-- Yank Highlight
aucmd("TextYankPost", {
    callback = function()
        (vim.hl or vim.highlight).on_yank()
    end,
})

-- Relative Numbers in [Normal]
aucmd({ "InsertEnter" }, {
    callback = function()
        local fname = vim.fn.bufname()
        if fname == "copilot-chat" or vim.bo.buftype == "nofile" then
            return
        end
        vim.opt_local.relativenumber = false
    end,
})

-- Absolute Numbers in [Insert]

aucmd({ "InsertLeave" }, {
    callback = function()
        local fname = vim.fn.bufname()
        if fname == "copilot-chat" or vim.bo.buftype == "nofile" then
            return
        end
        vim.opt_local.relativenumber = true
    end,
})

-- Close floats/specific windows with 'q'
aucmd("FileType", {
    desc = "Define windows to close with 'q'",
    pattern = {
        "gitcommit",
        "gitrebase",
        "dap-float",
        "gitconfig",
        "help",
        "startuptime",
        "qf",
        "lspinfo",
        "man",
        "checkhealth",
        "tsplayground",
        "dap-float",
        "empty",
        "noice",
        "neotest-output",
        "neotest-summary",
        "neotest-output-panel",
        "nvcheatsheet",
        "grug-far",
        "grug-far-history",
        "grug-far-help",
    },
    command = [[
            nnoremap <buffer><silent> q :close<CR>
            set nobuflisted
        ]],
})

-- Autosave after leaving insert mode in HTML docs
vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = "*.html",
    callback = function()
        -- Only run if the buffer's filetype is html
        if vim.bo.filetype == "html" then
            vim.cmd("silent! write")
        end
    end,
    desc = "Auto-save HTML on leaving insert mode for live preview",
})
