local ascii = require('bhugo.SplashScreen.ascii')

--- This module provides utility functions to
--- manipulate strings in a way that's easy to
--- create a UI
local M = {}

--- @alias Lines string[]

--- Repeat a string n times
--- @param str string
--- @param n number
--- @return string
function M.repeating(str, n)
	local res = ""
	for i = 1, n, 1 do
		res = res..str
	end
	return res
end

--- Get the total width of a string
--- Doesn't look for new lines
--- @param lines string | Lines
--- @return number
function M.get_max_width(lines)
	local max = 0
	if type(lines) == 'string' then
		return vim.fn.strdisplaywidth(lines)
	end
	for _, line in ipairs(lines) do
		local width = vim.fn.strdisplaywidth(line)
		if width > max then
			max = width
		end
	end
	return max
end

--- Concatenates two strings vertically
--- @param lines1 Lines
--- @param lines2 Lines
--- @return Lines
function M.concat_v(lines1, lines2)
	local res = {}
	for _, line in ipairs(lines1) do
		table.insert(res, line)
	end
	for _, line in ipairs(lines2) do
		table.insert(res, line)
	end
	return res
end

--- Concatenates two boxed strings vertically
--- @param lines_1 Lines
--- @param lines_2 Lines
---@return Lines
function M.box_concat_v(lines_1, lines_2)
	if M.get_max_width(lines_1) ~= M.get_max_width(lines_2) then
		error("Cannot merge two boxes with different widths")
	end
	local width = M.get_max_width(lines_1)
	local res = {}

	local separator = "╠"..M.repeating('═', width-2).."╣"

	for i = 1, #lines_1 - 1, 1 do
		table.insert(res, lines_1[i])
	end
	table.insert(res, separator)
	for i = 2, #lines_2, 1 do
		table.insert(res, lines_2[i])
	end
	return res
end

--- Concatenates two strings horizontally
--- (ie. concatenates each line)
---@param lines1 Lines
---@param lines2 Lines?
---@param separator string?
---@return Lines
function M.concat_h(lines1, lines2, separator)
	separator = separator or " "
	local lines = {}
	for _, line in ipairs(lines1) do
		table.insert(lines, line)
	end

	if not lines2 then
		return lines
	end

	if #lines1 < #lines2 then
		for i = 1, #lines2 - #lines1, 1 do
			table.insert(lines, "")
		end
	end

	for i, line in ipairs(lines2) do
		lines[i] = lines[i]..separator..line
	end
	return lines
end

--- Concatenates two boxed strings horizontally
--- @param lines1 Lines
--- @param lines2 Lines
--- @return Lines
function M.box_concat_h(lines_1, lines_2)
	local fst_line = lines_1[1]
	fst_line = vim.fn.substitute(fst_line,'.$', '╦', '')
	lines_1[1] = fst_line

	local lst_line = lines_1[#lines_1]
	lst_line = vim.fn.substitute(lst_line,'.$', '╩', '')
	lines_1[#lines_1] = lst_line

	for i, line in ipairs(lines_2) do
		lines_2[i] = vim.fn.substitute(line, '^.', '', '')
	end

	return M.concat_h(lines_1, lines_2, '')
end

---Returns the ascii art for a given number
--- if `n` is a string the following chars can be included: 0123456789:
---@param n number | string
---@return Lines
function M.get_number(n)
	if n == 0 then
		return ascii.zero
	end

	local str = '' .. n
	local lines = nil

	for i = 1, #str, 1 do
		local c = str:sub(i, i)
		if not lines then
			lines = M.concat_h(ascii[c], nil)
		else
			lines = M.concat_h(lines, ascii[c])
		end
	end
	return lines
end

---Converts a `Lines` (array of lines) to string
---@param lines Lines
---@return string
function M.to_string(lines)
	local res = ""
	for _, value in ipairs(lines) do
		res = res..value..'\n'
	end
	return res
end

---Surrounds a `Lines` (array of lines) in a box
---@param lines Lines
---@param opts { h_padding: number?, v_padding: number? }
---@return Lines
function M.surround(lines, opts)
	opts = opts or { }
	local h_padding = opts.h_padding or 0
	local v_padding = opts.v_padding or 0

	local H = "═"
	local NW = "╔"
	local NE = "╗"
	local V = "║"
	local SW = "╚"
	local SE = "╝"

	local width = M.get_max_width(lines)

	local h_line = ""
	for i = 1, width, 1 do
		h_line = h_line..H
	end

	local v_padding_str = M.repeating(" ", width)
	local v_padding_table = {}
	for i = 0, v_padding - 1, 1 do
		table.insert(v_padding_table, v_padding_str)
	end

	local res = {}
	table.insert(res, h_line)
	res = M.concat_v(res, v_padding_table)
	res = M.concat_v(res, lines)
	res = M.concat_v(res, v_padding_table)
	table.insert(res, h_line)

	local h_padding_str = M.repeating(" ", h_padding)
	local h_padding_str_2 = M.repeating(H, h_padding)

	for i = 1, #res, 1 do
		local line = res[i]
		if #line < width then
			line = line..M.repeating(' ', width - #line)
		end
		if i == 1 then
			line = NW..h_padding_str_2..line..h_padding_str_2..NE
		elseif i == #res then
			line = SW..h_padding_str_2..line..h_padding_str_2..SE
		else
			line = V..h_padding_str..line..h_padding_str..V
		end
		res[i] = line
	end

	return res
end

---Creates a new string with the given width and `str` centered
---@param str string
---@param width number
---@return string
function M.center_str(str, width)
	if width <= #str then
		return str
	end
	local int = width - #str
	local padding = math.floor((int) / 2)
	local ws = M.repeating(" ", padding)
	if padding % 2 == 1 then
		str = " "..str
	end
	return ws..str..ws
end

---Makes all lines have the same width
---(width of the longest line)
---@param lines Lines
---@return Lines
function M.normalized(lines)
	local width = M.get_max_width(lines)
	local res = {}
	for index, line in ipairs(lines) do
		table.insert(res, line)
		local left = width - #line
		if left > 0 then
			line = line..M.repeating(' ', left)
			res[index] = line
		end
	end
	return res
end

---Split the lines into multiple columns with a max_height
---@param lines Lines
---@param opts { max_height: number?, separator?: string}
---@return Lines
function M.to_columns(lines, opts)
	opts = opts or {}
	local max_height = opts.max_height or 10
	local separator = opts.separator or " "
	local i = 1
	local row_count = 1
	local res = {}

	while i <= #lines do
		local line = lines[i]
		if i <= max_height then
			table.insert(res, lines[i])
			goto continue
		end
		res[row_count] = res[row_count] .. separator .. line
	    ::continue::
		i = i + 1
		row_count = row_count + 1
		if row_count > max_height then
			row_count = 1
			res = M.normalized(res)
		end
	end
	res = M.normalized(res)
	return res
end

---fills a table with empty lines inplace
---@param lines Lines
---@param n number
---@return Lines
function M.fill(lines, n)
	while #lines < n do
		table.insert(lines, "")
	end
	return lines
end

return M

