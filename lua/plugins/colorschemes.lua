local gh = require('bhugo.utils').gh

vim.pack.add({
	gh('bettervim/yugen.nvim'),
	{ src = gh('rose-pine/neovim'), name = 'rose-pine' },
	gh('rmehri01/onenord.nvim'),
	gh('zenbones-theme/zenbones.nvim'),
})

vim.g.zenbones_compat = 1
vim.cmd.colorscheme('zenbones')
