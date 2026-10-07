local m = {}

function m.setup()
	Lib = {
		IsLinux = function()
			return vim.uv.os_uname().sysname == 'Linux'
		end,

		IsMac = function()
			return vim.uv.os_uname().sysname == 'Darwin'
		end,

		WhenOs = function(table)
			local entry = table[vim.uv.os_uname().sysname]
			if not entry then return end
			return entry()
		end
	}
end

--- Shorthand for a GitHub plugin url, ie. gh('stevearc/oil.nvim')
function m.gh(repo)
	return 'https://github.com/' .. repo
end

return m
