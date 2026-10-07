local gh = require('bhugo.utils').gh

vim.pack.add({
	gh('nvim-tree/nvim-web-devicons'),
	gh('stevearc/oil.nvim'),
})

require('oil').setup({
	keymaps = {
		['<C-l>'] = 'actions.select',
		['<C-h>'] = 'actions.parent',
		['<C-v>'] = 'actions.select_vsplit',
		['<C-s>'] = 'actions.select_split',
	}
})

-- overwrite Ex with Oil
vim.api.nvim_create_user_command('Explore', 'Oil', { desc = 'launch Oil' })
