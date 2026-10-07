-- Code formatter plugins
local gh = require('bhugo.utils').gh

vim.pack.add({ gh('mhartington/formatter.nvim') })

--overrides lsp.format with prettier for some filetypes
local prettier = function()
	return {
		exe = "prettier",
		args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
		try_node_modules = true,
		stdin = true
	}
end

require('formatter').setup({
	logging = true,
	filetype = {
		typescriptreact = { prettier },
		typescript = { prettier },
		javascript = { prettier },
		javascriptreact = { prettier },
		json = { prettier }
	}
})
