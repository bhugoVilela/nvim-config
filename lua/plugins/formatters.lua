-- Code formatter plugins

return {
	{ --overrides lsp.format with prettier for some filetypes
		'mhartington/formatter.nvim',
		ft = {
			"typescriptreact",
			"typescript",
			"javascript",
			"javascriptreact",
			"json"
		},

		opts = (function()
			local prettier = function()
				return {
					exe = "prettier",
					args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
					try_node_modules = true,
					stdin = true
				}
			end

			return {
				logging = true,
				filetype = {
					typescriptreact = { prettier },
					typescript = { prettier },
					javascript = { prettier },
					javascriptreact = { prettier },
					json = { prettier }
				}
			}
		end)()
	}
}
