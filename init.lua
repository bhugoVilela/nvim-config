--[[
-- Kickstart.nvim
-- This is my version of kickstart.nvim
--]]

vim.g.mapleader = ' '
vim.g.maplocalleader = ','

local utils = require('bhugo.utils')

utils.installLazy()

require('lazy').setup({
	spec = { import = "plugins" },

	checker = { enabled = false },

	dev = {
		path = '~/code/nvim-plugins',
		---@type string[] plugins that match these patterns will use your local versions instead of being fetched from GitHub
		patterns = {}, -- For example {"folke"}
	},

})

-- [[ vim options ]]
vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.wrap = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.wo.signcolumn = "yes"
vim.opt.updatetime = 50
vim.g.mapleader = " "
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.mouse = ""
vim.opt.swapfile = false
vim.o.completeopt = 'menuone,noselect'
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldtext = "v:lua.vim.treesitter.foldtext()"
vim.opt.foldlevelstart = 9999
vim.api.nvim_create_user_command('W', ':w', {})
vim.g.netrw_banner = 0
vim.g.netrw_localcopydircmd = 'cp -r'
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.tildeop = true

-- [[vim keymaps]]
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex, { desc = 'open netrw' })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = 'Move lines down' })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = 'Move lines up' })
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = 'Paste without losing current clipboard' })
vim.keymap.set({ "n", "v" }, "<leader>y", "\"*y", { desc = 'Yank to system clipboard' })
vim.keymap.set("n", "<leader>Y", "\"*Y", { desc = 'Yank to system clipboard' })
vim.keymap.set("n", "<C-h>", "^", { desc = '^' })
vim.keymap.set("n", "<C-l>", "$", { desc = '^' })
vim.keymap.set("i", "<C-h>", "^", { desc = '^' })
vim.keymap.set("i", "<C-l>", "$", { desc = '^' })
vim.keymap.set("v", "<C-h>", "^", { desc = '^' })
vim.keymap.set("v", "<C-l>", "$", { desc = '^' })
-- map jk to escape; esc to NOOP
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "jk", "<C-\\><C-n>", { desc = 'escape' })
vim.keymap.set("i", "jk", "<Esc>", { desc = 'escape' })
vim.keymap.set("n", "<C-p>", "<C-^>", { desc = 'jump to alternate file' })
-- use . to apply latest normal cmd to selection
vim.keymap.set("x", ".", ":normal .<cr>", { desc = 'Apply . to selection' })
vim.keymap.set("n", "<leader>w", ":w<cr>")
vim.keymap.set("n", "<C-w>e", "20<C-w>>", { desc = 'expand window horizontaly' })
vim.keymap.set("n", "<C-w>E", "20<C-w><", { desc = 'shrink window horizontaly' })
vim.keymap.set("n", "<S-Q>", "") -- disable Ex mode
-- folds
vim.keymap.set("n", "zf1", ":set foldlevel=0<cr>")
vim.keymap.set("n", "zf2", ":set foldlevel=1<cr>")
vim.keymap.set("n", "zf3", ":set foldlevel=2<cr>")
vim.keymap.set("n", "zf4", ":set foldlevel=3<cr>")
-- diagnostic
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR }) end,
	{ desc = 'go to next error diagnostic' })
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR }) end,
	{ desc = 'go to prev error diagnostic' })
vim.keymap.set('n', '<leader>gl', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
vim.keymap.set("n", "-", vim.cmd.Ex)
vim.keymap.set("n", "<leader>nn", ":NvimTreeFocus<CR>", { desc = 'Focus Nvim Tree' })
vim.keymap.set("n", "<leader>nt", ":NvimTreeToggle<CR>", { desc = 'Toggle Nvim Tree' })
vim.keymap.set("n", "<leader>nf", ":NvimTreeFindFile<CR>", { desc = 'Find file on Nvim Tree' })
vim.keymap.set("n", "<S-Enter>", "<cmd>cn<cr>")


-- [[ Jump between related files, ie: .html <-> .css ]]
require('bhugo.Other')
vim.keymap.set("n", "<leader>,a", ":Other<CR>", { silent = true })
vim.keymap.set("n", "<leader>,A", ":OtherList<CR>", { silent = true })


-- [[ Highlight on yank ]]
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank({ timeout = 200 })
	end,
	group = highlight_group,
	pattern = '*',
})

-- [ Delete Hidden Buffers ]
function DeleteHiddenBuffers()
	local allbufs = vim.fn.getbufinfo()
	local bufs = {}
	for idx, buf in ipairs(allbufs) do
		local bufnr = buf.bufnr
		local isTerm = vim.api.nvim_buf_get_option(bufnr, 'buftype') == 'terminal'
		if buf.listed == 1 and buf.hidden == 1 and buf.loaded == 1 and buf.changed == 0 and not isTerm then
			table.insert(bufs, buf.name)
			pcall(vim.api.nvim_buf_delete, bufnr, {})
		end
	end
	print("Deleted: " .. vim.inspect(bufs))
end

vim.api.nvim_create_user_command("DeleteHiddenBuffers", DeleteHiddenBuffers, {
	desc = "Deletes hidden buffers"
})

-- [Create :Config to open the nvim config in a new tab]
vim.api.nvim_create_user_command("Config", function()
	vim.cmd("tabnew | tcd ~/.config/nvim | e init.lua | let t:tabname='cwd'")
end, {
	desc = "Opens the nvim config in a new tab"
})

require('bhugo.tabline')
