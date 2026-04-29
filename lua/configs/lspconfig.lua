local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require("nvchad.configs.lspconfig")

local sev = vim.diagnostic.severity
local signs = {
    Error = " ",
    Warn = " ",
    Hint = " ",
    Info = " ",
}
vim.diagnostic.config({
    virtual_text = false,
    update_in_insert = false,
    underline = false,
    severity_sort = false,
    signs = {
        text = {
            [sev.ERROR] = signs.Error,
            [sev.WARN] = signs.Warn,
            [sev.HINT] = signs.Hint,
            [sev.INFO] = signs.Info,
        },
    },
})

lspconfig.servers = {
    "vtsls",
    "lua_ls",
    "ty",
    "ruff",
    "bashls",
    "cssls",
    "fish_lsp",
    "html",
    "jsonls",
    "tombi",
    "yamlls",
}

vim.lsp.config("lua_ls", {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,

    settings = {
        Lua = {
            diagnostics = {
                enable = true,
            },

            workspace = {
                library = {
                    vim.fn.expand("$VIMRUNTIME/lua"),
                    vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
                    vim.fn.stdpath("data") .. "/lazy/ui/nvchad_types",
                    vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
                },
                maxPreload = 100000,
                preloadFileSize = 10000,
            },
        },
    },
})

vim.lsp.config("vtsls", {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
    filetypes = { "typescript", "javascript" },

    settings = {
        vtsls = {
            diagnostics = {
                enable = true,
            },

            workspace = {
                library = {
                    vim.fn.expand("$VIMRUNTIME/lua"),
                    vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
                    vim.fn.stdpath("data") .. "/lazy/ui/nvchad_types",
                    vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
                },
                maxPreload = 100000,
                preloadFileSize = 10000,
            },
        },
    },
})

vim.lsp.config("ty", {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,

    settings = {
        ty = {
            configurationFile = "/Users/dom/.config/lsp/ty/ty.toml",
            showSyntaxErrors = false,
            inlayHints = {
                variableTypes = false,
                callArgumentNames = false,
            },
            completions = {
                autoImport = false,
            },
        },
    },
})

vim.lsp.config("ruff", {
    settings = {
        logLevel = "error",
        lineLength = 88,
        logFile = "/Users/dom/.local/state/ruff/ruff.log",
    },
})

vim.lsp.config("jsonls", {
    settings = {
        schemas = require("schemastore").json.schemas(),
        validate = { enable = true },
    },
})

vim.lsp.config("yamlls", {
    settings = {
        yaml = {
            schemaStore = {
                enable = false,
                url = "",
            },
            schemas = require("schemastore").yaml.schemas(),
        },
    },
})
