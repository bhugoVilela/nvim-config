-- Plugins that are related to code editting
local gh = require('bhugo.utils').gh

vim.pack.add({
	-- multi cursors
	-- TODO: multicursor.nvim seems more promising
	gh('mg979/vim-visual-multi'),
	gh('nvim-lua/plenary.nvim'),
	gh('tpope/vim-fugitive'),
	gh('tpope/vim-sleuth'),
	{ src = gh('kylechui/nvim-surround'), version = vim.version.range('*') },
	gh('windwp/nvim-autopairs'),
})

require('nvim-surround').setup({})
require('nvim-autopairs').setup({})

-- [[ Big files: skip treesitter and expensive options on files over 1.5MB ]]
vim.api.nvim_create_autocmd('BufReadPre', {
	group = vim.api.nvim_create_augroup('my.bigfile', { clear = true }),
	callback = function(ev)
		local ok, stat = pcall(vim.uv.fs_stat, ev.match)
		if not ok or not stat or stat.size < 1.5 * 1024 * 1024 then return end
		vim.b[ev.buf].bigfile = true
		vim.opt_local.foldmethod = 'manual'
		vim.opt_local.undolevels = -1
		vim.opt_local.swapfile = false
	end,
})
