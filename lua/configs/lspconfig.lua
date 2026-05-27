local on_attach = require('configs.lsp').on_attach
local on_init = require('configs.lsp').on_init
local capabilities = require('configs.lsp').capabilities

local lspconfig = require('configs.lsp')

local sev = vim.diagnostic.severity
local signs = {
  Error = ' ',
  Warn = ' ',
  Hint = ' ',
  Info = ' ',
}
vim.diagnostic.config({
  virtual_text = false,
  update_in_insert = false,
  severity_sort = true,
  underline = false,
  signs = {
    severity = { min = vim.diagnostic.severity.ERROR },
    text = {
      [sev.ERROR] = signs.Error,
      [sev.WARN] = signs.Warn,
      [sev.HINT] = signs.Hint,
      [sev.INFO] = signs.Info,
    },
  },
})

lspconfig.servers = {
  'vtsls',
  'lua_ls',
  'ty',
  'ruff',
  'bashls',
  'cssls',
  'fish_lsp',
  'html',
  'jsonls',
  'tombi',
  'yamlls',
}

for _, lspconfig.servers in ipairs(lspconfig.servers) do
  vim.lsp.enable(servers)
end

vim.lsp.config('lua_ls', {
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
          vim.fn.expand('$VIMRUNTIME/lua'),
          vim.fn.expand('$VIMRUNTIME/lua/vim/lsp'),
          vim.fn.stdpath('data') .. '/lazy/ui/nvchad_types',
          vim.fn.stdpath('data') .. '/lazy/lazy.nvim/lua/lazy',
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
})

vim.lsp.config('vtsls', {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  filetypes = { 'typescript', 'javascript' },

  settings = {
    vtsls = {
      diagnostics = {
        enable = true,
      },

      workspace = {
        library = {
          vim.fn.expand('$VIMRUNTIME/lua'),
          vim.fn.expand('$VIMRUNTIME/lua/vim/lsp'),
          vim.fn.stdpath('data') .. '/lazy/ui/nvchad_types',
          vim.fn.stdpath('data') .. '/lazy/lazy.nvim/lua/lazy',
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
})

vim.lsp.config('ty', {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,

  settings = {
    ty = {
      configurationFile = '/Users/dom/.config/lsp/ty/ty.toml',
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

vim.lsp.config('jsonls', {
  settings = {
    schemas = require('schemastore').json.schemas(),
    validate = { enable = true },
  },
})

vim.lsp.config('yamlls', {
  settings = {
    yaml = {
      schemaStore = {
        enable = false,
        url = '',
      },
      schemas = require('schemastore').yaml.schemas(),
    },
  },
})

vim.lsp.config('html', {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,

  filetypes = {
    'html',
    'htmldjango',
    'templ',
  },

  init_options = {
    provideFormatter = true,
  },

  settings = {
    html = {
      format = {
        wrapLineLength = 120,
        unformatted = 'code,pre,em,strong,span',
      },

      hover = {
        documentation = true,
        references = true,
      },
    },
  },
})
