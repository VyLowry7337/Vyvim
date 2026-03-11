local options = {
	default_format_opts = {
		timeout_ms = 5000,
		async = false,
		quiet = false,
		lsp_format = "fallback",
	},
	formatters_by_ft = {
		zsh = { "shfmt" },
		json = { "prettierd" },
		lua = { "stylua" },
		css = { "prettier" },
		html = { "prettier" },
		yaml = { "yamlfmt" },
		python = { 'black' },
	},

	formatters = {
		black = {
			prepend_args = { "--fast" },
		},
		injected = { options = { ignore_errors = true } },
		isort = {
			prepend_args = { "--profile", "black" },
		},
	},
}

return options
