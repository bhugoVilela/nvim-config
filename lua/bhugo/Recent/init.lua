--- This module provides utilites for keeping track of recent folders
local M = {}

local take = require('bhugo.SplashScreen.utils').take
local map = require('bhugo.SplashScreen.utils').map
local Path = require('plenary.path')

local file_name = 'cwd.json'
local function get_root_path()
	return vim.g.bhugo_recent_dir_path or vim.fn.stdpath('data') .. '/bhugo/recent'
end
local function get_limit()
	return vim.g.bhugo_recent_limit or 5
end

local function load_recent_cwd()
	local path = Path:new(get_root_path()..'/'..file_name)
	local ok, content = pcall(Path.read, path)
	if not ok then
		return {}
	end
	return vim.json.decode(content)
end

---list MRU files/folders
---@param limit number max number of items returned
---@param type 'file' | 'folder' | 'cwd'
---@return string[]
function M.load_recent(limit, type)
	type = type or 'file'

	if type == 'cwd' then
		local res = load_recent_cwd()
		res = map(res, function(path) return vim.fn.fnamemodify(path, ':~') end)
		return take(res, limit)
	end

	local mru = {}
	local i = 1
	while #mru < math.min(limit, #vim.v.oldfiles) do
		local path_str = vim.v.oldfiles[i]
		local path = Path:new(path_str)
		local isValid = type == 'file' and path:is_file() or path:is_dir()
		if isValid then
			local entry = vim.fn.fnamemodify(path_str, ':~')
			table.insert(mru, entry)
		end
		i = i + 1
	end
	return mru
end



--- Add CWD to the list of recent folders
function M.add_cwd(list, save, defer_save)
	list = list or load_recent_cwd()
	local cwd = vim.fn.getcwd()
	local new_list = {}
	for _, value in ipairs(list) do
		if value ~= cwd then
			table.insert(new_list, value)
		end
	end
	table.insert(new_list, cwd)

	new_list = take(new_list, get_limit())

	if save then
		function execute()
			local path = Path:new(get_root_path()..'/'..file_name)
			local json = vim.json.encode(new_list)
			pcall(Path.write, path, json, 'w')
		end
		if not defer_save or defer_save == 0 then
			execute()
		else
			vim.defer_fn(execute, defer_save)
		end
	end
	return new_list
end

---forces shada to be read so that v:oldfiles is set
function M.setup()
	local root_path = Path:new(get_root_path())
	if not root_path:exists() then
		root_path:mkdir({ parents = true })
	end
	vim.cmd('rshada')
end

M.setup()

return M
