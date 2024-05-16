local str_utils = require('bhugo.SplashScreen.lines')
local utils = require('bhugo.SplashScreen.utils')
local ascii = require('bhugo.SplashScreen.ascii')
local Block = require('bhugo.ui.block')
local set_border = require('bhugo.ui.utils').set_border
local str_repl = require('bhugo.ui.utils').str_repl

local hl_orange = 'CurSearch'
local hl_green = 'DevIconCsv'
local hl_blue = 'DevIconCss'
local hl_pink = 'DevIconCPlusPlus'
local hl_grey = 'Cursor'

local function new_self(...)
	local class, arg1, arg2, arg3 = ...
	local new_table = {}
	for _, value in ipairs(arg1 or {}) do
		table.insert(new_table, value)
	end
	if arg2 then table.insert(new_table, arg2) end
	if arg3 then table.insert(new_table, arg3) end
	return class:new(new_table)
end


---@class Span
---@field content string
---@field style Style
---@field computed Computed
---@field tag 'Text'
local Span = {}
Span.__index = Span

setmetatable(Span, {
	__call = new_self
})

function Span:new(content)
	return setmetatable({
		content = content[1],
		style = content[2] or {},
		computed = {},
		tag = 'Text'
	}, self)
end

setmetatable(Block, {
	__call = new_self
})

function Block:new(content)
	return setmetatable({
		content = content,
		style = table.remove(content),
		computed = {},
		tag = 'Block'
	}, self)
end

function Block:from_lines(lines, style)
	local content = {}
	for _, line in ipairs(lines) do
		table.insert(content, Span:new({ line }))
	end
	table.insert(content, style)
	return Block:new(content)
end

function Span:render(parent)
	self.computed.height = 1
	self.computed.width = vim.fn.strdisplaywidth(self.content)
	self.computed.depth = (((parent or {}).computed or {}).depth or 1) + 1
	self.computed.highlight = self.style.highlight or parent.computed.highlight
	return self
end

---@param parent Block?
function Block:render(parent)
	self.computed = vim.tbl_extend('force', self.computed, self.style)
	self.computed.depth = (((parent or {}).computed or {}).depth or 1) + 1
	self.computed.position = self.computed.position or 'relative'
	self.computed.gap = self.computed.gap or 0
	self.computed.orientation = self.computed.orientation or 'vertical'

	self.computed.highlight = self.style.highlight or ((parent or {}).computed or {}).highlight

	if parent == nil then
		self.computed.x = self.style.x or 0
		self.computed.y = self.style.y or 0
	end

	local border_height = self.style.border and 1 or 0
	local border_width = self.style.border and 1 or 0
	self.computed.border_height = border_height
	self.computed.border_width = border_width

	self.computed.content_height = 0
	self.computed.content_width = 0

	local vertical = self.computed.orientation ~= 'horizontal'
	local horizontal = self.computed.orientation == 'horizontal'

	-- first pass
	for i, child in ipairs(self.content) do
		child.computed.order = i
		child.computed.x = (child.style.x or 0) + (horizontal and self.computed.content_width or 0)
		child.computed.y = (child.style.y or 0) + (vertical and self.computed.content_height or 0)

		child:render(self)

		if vertical then
			self.computed.content_height = self.computed.content_height + child.computed.height
			self.computed.content_width = math.max(
				self.computed.content_width,
				child.computed.width
			)
			if i < #self.content then
				self.computed.content_height = self.computed.content_height + self.computed.gap
			end
		else
			self.computed.content_width = self.computed.content_width + child.computed.width
			self.computed.content_height = math.max(
				self.computed.content_height,
				child.computed.height
			)
			if i < #self.content then
				self.computed.content_width = self.computed.content_width + self.computed.gap
			end
		end
	end

	if not self.style.height then
		self.computed.height = self.computed.content_height + (2 * border_height)
	else
		self.computed.height = self.style.height
		if self.style.boxSizing == 'contentBox' then
			self.computed.height = self.computed.height + (2 * border_height)
		end
	end
	if not self.style.width then
		self.computed.width = self.computed.content_width + (2 * border_width)
	else
		if self.style.boxSizing == 'contentBox' then
			self.computed.width = self.computed.width + (2 * border_width)
		end
	end

	self.computed.content_width = self.computed.width - (2 * border_height)
	self.computed.content_height = self.computed.height - (2 * border_height)

	self.computed.content_box = {
		minX = border_width,
		minY = border_height,
		maxX = border_width + self.computed.content_width,
		maxY = border_height + self.computed.content_height
	}


	-- second pass
	for i, child in ipairs(self.content) do
		-- if child.computed.width ~= self.computed.content_width then
		local h_offset = self.computed.content_width - child.computed.width
		local v_offset = self.computed.content_height - child.computed.height
		if self.computed.align == 'end' then
			if vertical then
				child.computed.x = h_offset
			else
				child.computed.y = v_offset
			end
		elseif self.computed.align == 'center' then
			if vertical then
				child.computed.x = math.floor(h_offset / 2)
			else
				child.computed.y = math.floor(v_offset / 2)
			end
			if self.style.dbg == 'dp' then
				print(self.computed.content_width)
			end
		end
		-- end
		if child.computed.position == 'absolute' then
			if child.style.x then
				child.computed.x = child.style.x
			end
			if child.style.y then
				child.computed.y = child.style.y
			end
		else
			child.computed.x = (child.computed.x or 0) + (child.style.x or 0)
			child.computed.y = (child.computed.y or 0) + (child.style.y or 0)
		end
	end

	return self
end

function compute_absolute_positions(element, parent)
	if parent == nil then
		element.computed.absolute_x = 0
		element.computed.absolute_y = 0
	else
		local vertical = parent.computed.orientation == 'vertical'
		if parent.computed.align == 'stretch' then
			if vertical then
				element.computed.width = parent.computed.content_width
			else
				element.computed.height = parent.computed.content_height
			end
		end
		element.computed.absolute_x = parent.computed.absolute_x + parent.computed.content_box.minX + element.computed.x
		element.computed.absolute_y = parent.computed.absolute_y + parent.computed.content_box.minY + element.computed.y
	end
	if element.tag == 'Text' then
		return
	end
	for index, child in ipairs(element.content) do
		child:compute_absolute_positions(element)
	end
end

Block.compute_absolute_positions = compute_absolute_positions
Span.compute_absolute_positions = compute_absolute_positions


---@return Lines
function Span:to_text()
	return { self.content }
end

---@param src Lines
---@param dest Lines
---@param x number
---@param y number
local function write_to(src, dest, x, y, bounding_box)
	x = x + 1
	y = y + 1
	local curr_y = math.max(y, bounding_box.minY)

	for i, line in ipairs(src) do
		if curr_y > bounding_box.maxY then
			break
		end
		local curr_x = math.max(x, bounding_box.minX)
		local len = vim.fn.strdisplaywidth(line)
		for i = 1, len, 1 do
			local char = vim.fn.strcharpart(line, i - 1, 1)
			if curr_x > bounding_box.maxX then
				break
			end
			dest[curr_y] = str_repl(dest[curr_y], curr_x, char)
			curr_x = curr_x + 1
		end
		curr_y = curr_y + 1
	end
	return dest
end

---@param parent_matrix string[]?
function Block:to_text(parent_matrix)
	local width, height = self.computed.width, self.computed.height
	local matrix = parent_matrix or (width and height and str_utils.square(width, height) or {})
	local hasBorder = self.style.border
	local content_box = self.computed.content_box

	for i, child in ipairs(self.content) do
		local x, y = child.computed.x, child.computed.y
		x = content_box.minX + x
		y = content_box.minY + y

		local child_matrix = child:to_text(parent_matrix)
		write_to(child_matrix, matrix, x, y, self.computed.content_box)
	end


	if hasBorder then
		set_border(matrix, width)
	end

	return matrix
end


---@param element Block | Span
---@param y number
local function intersects(element, y)
	local min_y = element.computed.absolute_y
	local height = element.computed.height
	return min_y <= y and (min_y + height) > y
end

---@param element Block | Span
---@return number?, number?, (Block | Span)? ret child's (minX, maxX, child)
local function get_next_child_start(element, x, y)
	local children = element.content
	local next_child, start_x = nil, x
	local min_x = element.computed.absolute_x + element.computed.width

	if element.tag == 'Text' then
		return nil, nil, nil
	end

	for _, child in ipairs(children) do
		if intersects(child, y) then
			local child_x = child.computed.absolute_x
			if child_x >= start_x and child_x < min_x then
				next_child = child
				min_x = child_x
			end
			-- TODO handle overlaps
		end
	end
	if next_child then
		return next_child.computed.absolute_x, (next_child.computed.absolute_x + next_child.computed.width), next_child
	end
	return nil, nil, nil
end

---@param element Block | Span
local function get_highlight_chunks(element)
	local children = element.content
	local min_x = element.computed.absolute_x
	local max_x = min_x + element.computed.width
	local min_y = element.computed.absolute_y
	local max_y = min_y + element.computed.height - 1
	local chunks = {}

	if element.tag == 'Text' then
		return {
			{ min_y, min_x, max_x, element }
		}
	end

	-- todo sort accordingly
	for row = min_y, max_y, 1 do
		local start = min_x
		while start < max_x + 1 do
			local child_start, child_end, child = get_next_child_start(element, start, row)
			if child_start then
				table.insert(chunks, { row, start, child_start, element })
			end
			if not child_start then
				table.insert(chunks, { row, start, max_x, element })
				goto continue
			end
			start = child_end
		end
		::continue::
	end

	if element.tag == 'Block' then
		for _, child in ipairs(children) do
			for _, chunk in ipairs(get_highlight_chunks(child)) do
				table.insert(chunks, chunk)
			end
		end
	end

	return chunks
end
-- widget2:render()
-- str_utils.to_string(widget:render():to_text())
-- print(vim.inspect(widget))
--
-- local list = get_element_list(widget)
-- list = utils.map(list, function(it) return it.style.dbg end)
-- print(vim.inspect(list))

function render_to_buffer(buf_nr, elem)
	-- local ns = vim.api.nvim_create_namespace('myui')
	elem:render()
	elem:compute_absolute_positions(nil)
	local highlights = get_highlight_chunks(elem)
	local text = elem:to_text()

	vim.cmd [[:set ve=all]]

	vim.api.nvim_buf_set_lines(buf_nr, 0, -1, false, text)

	add_highlights(buf_nr, highlights)

	vim.cmd [[:set ve=]]
end

function add_highlights(buf_nr, highlights)
	local ns = vim.api.nvim_create_namespace('myui')
	vim.api.nvim_buf_clear_namespace(buf_nr, ns, 0, -1)

	table.sort(highlights, function(a, b)
		return a[1] < b[1]
	end)
	local cur_line, content = nil, nil
	for _, highlight in ipairs(highlights) do
		local line, start, finish, elem = unpack(highlight, 1, 4)
		if line ~= cur_line then
			cur_line = line
			content = vim.api.nvim_buf_get_lines(buf_nr, line, line + 1, false)[1]
		end
		local byte_start = vim.fn.byteidx(content, start)
		local byte_finish = vim.fn.byteidx(content, finish)
		-- print(line, content, start, finish, byte_start, byte_finish)

		if elem.computed.highlight and elem.computed.highlight ~= 'none' then
			vim.api.nvim_buf_set_extmark(buf_nr, ns, line, byte_start, {
				end_row = line,
				end_col = byte_finish,
				hl_group = elem.computed.highlight
			})
		end
	end
	-- print(vim.inspect(highlights))
end

-- widget:render()
-- widget:compute_absolute_positions(nil)

-- render_to_buffer(26, widget)
-- print(vim.inspect(get_highlight_chunks(widget3)))


-- Define Components and Style

function WeekdaySelector(today)
	local days = { "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun" }

	local week_days = utils.map(days, function(it)
		return Span { it, { highlight = 'none' } }
	end)

	local selectedEl = Block:new({
		Span{ days[today] },
		Span{ 'TODAY' },
		Span{ 'X' },
		{ align = 'center', highlight = hl_green }
	})

	week_days[today] = selectedEl

	local selector = Block(week_days, { dbg='week' })

	selector.style.highlight = hl_blue
	selector.style.border = true
	selector.style.orientation = 'horizontal'
	selector.style.gap = 1
	return selector
end


function Clock(time)
	local lines = str_utils.get_number(time)

	return Block:from_lines(lines, {
		highlight = hl_green
	})
end


function Widget(time, weekday)
	local clock = Clock(time)
	local weekday_selector = WeekdaySelector(weekday)

	return Block:new({
		clock,
		weekday_selector,
		{ align = 'center' , border = true, highlight = hl_pink }
	})
end

function on_attach(buf_nr)
	local idx = 1
	local time = vim.fn.strftime('%H:%M')

	render_to_buffer(buf_nr, Widget(time, idx))

	vim.keymap.set('n', '<Down>', function()
		idx = idx + 1
		local elem = Widget(time, idx)
		render_to_buffer(buf_nr, elem)
	end, {})
	vim.keymap.set('n', '<Up>', function()
		idx = idx - 1
		local elem = Widget(time, idx)
		render_to_buffer(buf_nr, elem)
	end, {})
end

on_attach(21)

return {
	Span = Span,
	render_to_buffer = render_to_buffer
}
