local gh = require('bhugo.utils').gh

vim.pack.add({
	gh('nvim-lua/plenary.nvim'),
	-- Fuzzy Finder Algorithm which requires local dependencies to be built (see plugins/hooks.lua).
	-- NOTE: If you are having trouble with this installation,
	--       refer to the README for telescope-fzf-native for more instructions.
	gh('nvim-telescope/telescope-fzf-native.nvim'),
	-- route vim.ui.select (ie. code actions) through telescope
	gh('nvim-telescope/telescope-ui-select.nvim'),
	{ src = gh('nvim-telescope/telescope.nvim'), version = 'v0.2.0' },
})

require('telescope').setup {
	defaults = {
		default_file_explorer = true,
		mappings = {
			i = {
				['<C-u>'] = false,
				["<C-l>"] = require('telescope.actions').select_default,
				["<C-k>"] = require('telescope.actions').move_selection_previous,
				["<C-j>"] = require('telescope.actions').move_selection_next,
				["<C-d>"] = require('telescope.actions').delete_buffer,
				["<C-Q>"] = require('telescope.actions').smart_send_to_qflist + require('telescope.actions').open_qflist,
			},
			n = {
				['jk'] = require('telescope.actions').close,
				['<C-Q>'] = require('telescope.actions').smart_send_to_qflist + require('telescope.actions').open_qflist,
				['q'] = require('telescope.actions').smart_send_to_qflist + require('telescope.actions').open_qflist,
			}
		},
	},
	extensions = {
		['ui-select'] = {
			require('telescope.themes').get_dropdown(),
		},
	},
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
require('telescope').load_extension('ui-select')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[f]ind [f]iles' })
vim.keymap.set('n', '<leader>pf', builtin.git_files, { desc = 'find git files' })
vim.keymap.set('n', '<leader>pg', builtin.live_grep,
	{ desc = '[p]roject [g]rep, find in project' })
vim.keymap.set('n', '<leader>bg', function() builtin.live_grep({ grep_open_files = true }) end,
	{ desc = '[b]uffer [g]rep, find in open buffers' })
vim.keymap.set('n', '<leader>po',
	function() builtin.live_grep { grep_open_files = true, prompt_title = 'Live Grep in Open Files' } end,
	{ desc = '[p]roject grep in [o]pen files' })
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, { desc = '[f]ind [r]eferences' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[f]ind [b]uffers' })
vim.keymap.set('n', '<leader>fH', builtin.keymaps, { desc = '[f]ind [h]elp keymaps' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[f]ind [h]elp tags' })
vim.keymap.set('n', '<leader>fsd', builtin.lsp_document_symbols,
	{ desc = 'find document symbols' })
vim.keymap.set('n', '<leader>fsw', builtin.lsp_workspace_symbols,
	{ desc = 'find workspace symbols' })
vim.keymap.set("n", "<leader>gd", builtin.lsp_definitions,
	{ desc = '[g]o (find) to [d]efinition' })
vim.keymap.set("n", "<leader>fl", builtin.resume,
	{ desc = '[f]ind [l]ast, opens last telescope result' })
vim.keymap.set("n", "<leader>fc", builtin.command_history, { desc = '[f]ind [c]ommand history' })
vim.keymap.set("n", "<leader>fm", builtin.marks, { desc = '[f]ind [m]arks' })
vim.keymap.set("n", "<leader>fq", builtin.quickfix, { desc = '[f]ind quickfix' })
vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[f]ind current [w]ord' })
vim.keymap.set('n', '<leader>/', function()
	builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
		winblend = 10,
		previewer = false,
	})
end, { desc = '[/] Fuzzily search in current buffer' })
