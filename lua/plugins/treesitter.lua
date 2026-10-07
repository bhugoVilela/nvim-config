-- Configures treesitter text objects
return {
	{
		'nvim-treesitter/nvim-treesitter',

		branch = "main",

		dependencies = {
			'nvim-treesitter/nvim-treesitter-textobjects',
		},

		lazy = false,

		build = ':TSUpdate',

		opts = {
			ensure_installed = { 
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"javascript",
				"typescript",
				"svelte",
				"haskell",
			},

			auto_install = true,
			highlight = { enable = true },
			autotag = { enable = true },
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = '<c-space>',
					node_incremental = '<c-space>',
					scope_incremental = '<c-s>',
					node_decremental = '<M-space>',
				},
			},
			textobjects = {},
		}
	},

	{
		'nvim-treesitter/nvim-treesitter-textobjects',
		branch = "main",
		init = function()
			require('nvim-treesitter-textobjects').setup {
				select = {
					lookahead = true,
				},

				move = {
					set_jumps = true
				}
			}
			local select = require("nvim-treesitter-textobjects.select").select_textobject
			vim.keymap.set({ "x", "o" }, "af", function() select("@function.outer", "textobjects") end)
			vim.keymap.set({ "x", "o" }, "if", function() select("@function.inner", "textobjects") end)
			vim.keymap.set({ "x", "o" }, "aa", function() select("@parameter.outer", "textobjects") end)
			vim.keymap.set({ "x", "o" }, "ia", function() select("@parameter.inner", "textobjects") end)
			vim.keymap.set({ "x", "o" }, "ac", function() select("@class.outer", "textobjects") end)
			vim.keymap.set({ "x", "o" }, "ic", function() select("@class.inner", "textobjects") end)
			vim.keymap.set({ "x", "o" }, "as", function() select("@local.scope", "locals") end)

			local swap = require("nvim-treesitter-textobjects.select")
			vim.keymap.set("n", "<leader>a", function() swap.swap_next "@parameter.inner" end)
			vim.keymap.set("n", "<leader>A", function() swap.swap_previous "@parameter.outer" end)

			local move = require("nvim-treesitter-textobjects.move")
			vim.keymap.set({ "n", "x", "o" }, "]m", function()
				move.goto_next_start("@function.outer", "textobjects")
			end)
			vim.keymap.set({ "n", "x", "o" }, "]]", function()
				move.goto_next_start("@class.outer", "textobjects")
			end)
			-- You can also pass a list to group multiple queries.
			vim.keymap.set({ "n", "x", "o" }, "]o", function()
				move.goto_next_start({ "@loop.inner", "@loop.outer" }, "textobjects")
			end)
			-- You can also use captures from other query groups like `locals.scm` or `folds.scm`
			vim.keymap.set({ "n", "x", "o" }, "]s", function()
				move.goto_next_start("@local.scope", "locals")
			end)
			vim.keymap.set({ "n", "x", "o" }, "[s", function()
				move.goto_previous_start("@local.scope", "locals")
			end)
			vim.keymap.set({ "n", "x", "o" }, "]S", function()
				move.goto_next_end("@local.scope", "locals")
			end)
			vim.keymap.set({ "n", "x", "o" }, "[S", function()
				move.goto_previous_end("@local.scope", "locals")
			end)
			vim.keymap.set({ "n", "x", "o" }, "]z", function()
				move.goto_next_start("@fold", "folds")
			end)
			vim.keymap.set({ "n", "x", "o" }, "]M", function()
				move.goto_next_end("@function.outer", "textobjects")
			end)
			vim.keymap.set({ "n", "x", "o" }, "][", function()
				move.goto_next_end("@class.outer", "textobjects")
			end)
			vim.keymap.set({ "n", "x", "o" }, "[m", function()
				move.goto_previous_start("@function.outer", "textobjects")
			end)
			vim.keymap.set({ "n", "x", "o" }, "[[", function()
				move.goto_previous_start("@class.outer", "textobjects")
			end)
			vim.keymap.set({ "n", "x", "o" }, "[M", function()
				move.goto_previous_end("@function.outer", "textobjects")
			end)
			vim.keymap.set({ "n", "x", "o" }, "[]", function()
				move.goto_previous_end("@class.outer", "textobjects")
			end)
		end,
	},

}
