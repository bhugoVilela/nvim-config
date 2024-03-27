--[[
-- an xref is a string with the format path:line:col
-- this module provides functions to jump to a location pointed to
-- by an xref
--]]

local M = {}
-- (init.lua:1:5)
-- (lua/bhugo/xref.lua:65:5)

local function getVisualLineSelection()
	local buf = vim.api.nvim_get_current_buf();
	local start_pos = vim.api.nvim_buf_get_mark(buf, "<")
	local end_pos = vim.api.nvim_buf_get_mark(buf, ">")

	return start_pos[1], start_pos[2], end_pos[2]
end

--- jumps to xref in visual seletion
function M.jump_to_visual_xref()
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<ESC>", true, true, true), 'n', true)
	vim.schedule(function()
		local line, start, endd = getVisualLineSelection()
		local file, line, col = M.get_x_ref(line, start, endd)

		-- switch to alternate window
		vim.cmd [[wincmd p]]

		-- open buffer
		vim.schedule(function()
			vim.cmd("edit " .. file)
		end)

		-- place cursor
		vim.schedule(function()
			vim.fn.cursor({ line, col })
		end)
	end)
end

--- Returns the components in an x_ref
--- if the params are nil it will look for the xref under the cursor
--- @param line? number line number
--- @param start? number start col number
--- @param endd? number end col number
--- @return string, number, number
function M.get_x_ref(line, start, endd)
	local needs_to_calculate = start == nil or endd == nil or line == nil
	local ref = nil

	if needs_to_calculate then
		line = vim.api.nvim_get_current_line()
		local col = start or vim.fn.col('.')
		start, endd = col, col

		while start > 0 do
			local char = line:sub(start, start)
			if char == ' ' or char == '\t' then
				start = start + 1
				break
			end
			start = start - 1
		end

		while endd < #line do
			local char = line:sub(endd, endd)
			if char == ' ' or char == '\t' then
				endd = endd - 1
				break
			end
			endd = endd + 1
		end
	else
		local buf = vim.api.nvim_get_current_buf()
		-- get string from line number
		line = vim.api.nvim_buf_get_lines(buf, line - 1, line, true)[1]
		-- get only text from start to endd
		ref = line:sub(start + 1, endd + 1)
	end

	ref = ref or line:sub(start, endd)

	local parts = {}
	for word in ref:gmatch('([^:]+)') do
		table.insert(parts, word)
	end

	if #parts ~= 3 then
		error("Unable to parse xref", 1)
		return
	end

	local file, line, col = parts[1], tonumber(parts[2]), tonumber(parts[3])

	if line == nil or col == nil then
		error("Unable to parse xref, line or col is not a number", 1)
		return
	end

	return file, line, col
end

--- Jumps to xref under cursor
function M.jump_to_xref()
	local file, line, col = M.get_x_ref()

	-- switch to alternate window
	vim.cmd [[wincmd p]]

	-- open buffer
	vim.schedule(function()
		vim.cmd("edit " .. file)
	end)

	-- place cursor
	vim.schedule(function()
		vim.fn.cursor({ line, col })
	end)
end

return M
