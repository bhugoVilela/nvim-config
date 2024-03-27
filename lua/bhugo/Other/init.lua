--[[
-- This plugin allows you to alternate between files given a context
-- It looks at the current file and tries to find related develoment files
-- ie. index.jsx -> index.scss
-- To add new options see how view_and_style works
--
-- I wrote this when I was first learning nvim and lua, honestly it could do with a rewrite
]]

local M = {}
local utils = require('bhugo.Other.utils')

-- this is an addon, 
-- it returns { execute: a function that executes the parsing, extensions: a table with extensions on which this will run }
local function view_and_style()
	local styles = {
		css = true,
		scss = true,
		sass = true
	}
	local views = {
		html = true,
		js = true,
		jsx = true,
		ts = true,
		tsx = true,
		svelte = true,
		trueish = false
	}

	local acceptable_names = {
		index = true,
		style = true,
		styles = true
	}

	local extensions = utils.merge_tables(views, styles)

	local PRIORITY_MOD_NAME = 100
	local PRIORITY_MOD_EXT = 10
	local PRIORITY_DEFAULT = 1

	local function execute(folder, file, name, extension)
		if not extensions[extension] then
			return {}
		end

		local extension_glob = ''
		if styles[extension] then
			extension_glob = utils.concat_keys(views)
		else
			extension_glob = utils.concat_keys(styles)
		end

		local results = vim.split(vim.fn.globpath(folder, '*.{' .. extension_glob .. '}', 1, 0), '\n') or {}
		local result_priority = {}

		utils.ifilter_inplace(results, function(value)
			local _, value_name, _ = utils.split_path(value)
			return value_name == name or acceptable_names[value_name]
		end)

		for _, result in ipairs(results) do
			local _, match_name, extension = utils.split_path(result)
			local priority = PRIORITY_DEFAULT

			if match_name == name then
				priority = priority + PRIORITY_MOD_NAME
			end

			if styles[extension] then
				if extension == 'scss' or extension == 'sass' then
					priority = priority + PRIORITY_MOD_EXT
				end
			end
			result_priority[result] = priority
		end

		table.sort(results, function(a, b)
			return result_priority[a] > result_priority[b]
		end)
		return results
	end

	return {
		extensions = extensions,
		execute = execute
	}
end

function M.find_other()
	local path = vim.fn.expand('%:p')
	local parent, name, extension = utils.split_path(path)

	-- TODO eventually iterate over plugins
	local plugin = view_and_style()
	if not plugin.extensions[extension] then
		return {}
	end
	local results = plugin.execute(parent, file, name, extension)

	return results
end

function M.open_other()
	local results = M.find_other()
	if results == nil or #results == 0 or results[1] == nil then
		vim.print('No other file found')
		return
	end
	local path = results[1]

	vim.cmd('e ' .. path)
end

function M.list_others()
	local results = M.find_other()
	if results == nil or #results == 0 then
		vim.print('No other file found')
		return
	end
	vim.ui.select(results, {
		prompt = 'Select a file:',
		format_item = function(item)
			return vim.fn.fnamemodify(item, ':t')
		end
	}, function(choice)
		if choice ~= nil then
			vim.cmd('e ' .. choice)
		end
	end)
end

function Other()
	M.other()
end

vim.api.nvim_create_user_command('Other', function(_)
	M.open_other()
end, { desc = 'Open Other/Alternate development file' })

vim.api.nvim_create_user_command('OtherList', function(_)
	M.list_others()
end, { desc = 'List Other/Alternate development file' })

return M
