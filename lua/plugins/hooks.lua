-- Build steps for plugins, run by vim.pack after a plugin is installed or updated.
-- Must be required before the first vim.pack.add() so it also fires on install.

local builds = {
	['telescope-fzf-native.nvim'] = function(path)
		if vim.fn.executable('make') == 1 then
			vim.system({ 'make' }, { cwd = path }):wait()
		end
	end,
	['markdown-preview.nvim'] = function(path)
		vim.system({ 'yarn', 'install' }, { cwd = path .. '/app' }):wait()
	end,
	['nvim-treesitter'] = function(_, active, kind)
		-- fresh installs get their parsers from install() in plugins/treesitter.lua
		if kind ~= 'update' then return end
		if not active then vim.cmd.packadd('nvim-treesitter') end
		require('nvim-treesitter').update()
	end,
}

vim.api.nvim_create_autocmd('PackChanged', {
	group = vim.api.nvim_create_augroup('my.pack', { clear = true }),
	callback = function(ev)
		local data = ev.data
		local build = builds[data.spec.name]
		if build and (data.kind == 'install' or data.kind == 'update') then
			build(data.path, data.active, data.kind)
		end
	end,
})
