local m = {}

function m.installLazy()
	Lib = {
		IsLinux = function()
			return vim.loop.os_uname().sysname == 'Linux'
		end,

		IsMac = function()
			return vim.loop.os_uname().sysname == 'Darwin'
		end,

		WhenOs = function(table)
			local entry = table[vim.loop.os_uname().sysname]
			if not entry then return end
			return entry()
		end
	}

	-- [[ Install `lazy.nvim` plugin manager ]]
	local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
	if not vim.loop.fs_stat(lazypath) then
		vim.fn.system {
			'git',
			'clone',
			'--filter=blob:none',
			'https://github.com/folke/lazy.nvim.git',
			'--branch=stable', -- latest stable release
			lazypath,
		}
	end
	vim.opt.rtp:prepend(lazypath)
end

return m
