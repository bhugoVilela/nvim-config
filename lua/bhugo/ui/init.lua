local str_utils = require('bhugo.SplashScreen.lines')

local function set_border(matrix, width)
	local H, NW, NE, V, SW, SE = "═", "╔",  "╗", "║", "╚", "╝"
	local top = NW..str_utils.repeating(H, width-2)..NE
	local bottom = SW..str_utils.repeating(H, width-2)..SE
	matrix[1] = top
	matrix[#matrix] = bottom
end

function str_repl(str, x, c) 
	local pre = vim.fn.strcharpart(str, 0, x)
	local post = vim.fn.strcharpart(str, x + 1)
	return pre..c..post
end

---@class Text
---@field content string
---@field style Style
---@field computed Computed
local Text = {}
Text.__index = Text

function Text:new(str)
	return setmetatable({
		content = str,
		style = {},
		computed = {},
	}, self)
end

function Text:width()
	return vim.fn.strdisplaywidth(self.content)
end

function Text:height()
	return 1
end

---@class Style
---@field height number?
---@field width number?
---@field align 'center' | 'start' | 'end' | 'stretch'?
---@field justify 'center' | 'start' | 'end' | 'stretch'?
---@field x number?
---@field y number?
---@field overflow 'ellipsize' | 'hidden' | 'visible'?
---@field border boolean?

---@class Computed: Style
---@field absolute_x number?
---@field absolute_y number?

---@class Block
---@field content (Text|Block)[]
---@field style table
local Block = {}
Block.__index = Block

function Block:new(content)
	return setmetatable({
		content = content,
		style = table.remove(content),
		computed = {}
	}, self)
end

function Text:render(parent)
	self.computed.height = self:height()
	self.computed.width = self:width()
	return self
end

---@param parent Block?
function Block:render(parent)
	self.computed = vim.tbl_extend('force', self.computed, self.style)

	if parent == nil then
		self.computed.x = self.style.x or 1
		self.computed.y = self.style.y or 1
		self.computed.absolute_x = self.computed.x
		self.computed.absolute_y = self.computed.y
	end

	local border_height = self.style.border and 1 or 0
	local border_width = self.style.border and 1 or 0

	local content_height = 0
	local content_width = 0

	-- first pass
	for i, child in ipairs(self.content) do
		child.computed.x = (child.style.x or 1) + border_width
		child.computed.y = (child.style.y or 1) + content_height + border_height

		child:render(self)

		content_height = content_height + child.computed.height
		content_width = math.max(content_width, child.computed.width)
	end

	if not self.style.height then
		self.computed.height = content_height + (2 * border_height)
	end
	if not self.style.width then
		self.computed.width = content_width + (2 * border_width)
	end

	-- second pass
	for i, child in ipairs(self.content) do
		if child.computed.width ~= content_width then
			local offset = content_width - child.computed.width

			if self.computed.align == 'end' then
				child.computed.x = offset + border_width
			elseif self.computed.align == 'center' then
				child.computed.x = math.floor((content_width - child.computed.width) / 2) + 1
			end
		end
	end
	return self
end

---@return Lines
function Text:to_text()
	return { self.content }
end

---@param src Lines
---@param dest Lines
---@param x number
---@param y number
local function write_to(src, dest, x, y, max_width, max_height)
	local curr_y = y
	for i, line in ipairs(src) do
		if curr_y > max_height then
			break
		end
		local curr_x = x
		local len = vim.fn.strdisplaywidth(line)
		for i = 1, len, 1 do
			local char = vim.fn.strcharpart(line, i - 1, 1)
			if curr_x > max_width then
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

	for i, child in ipairs(self.content) do
		local x, y = child.computed.x, child.computed.y
		local child_matrix = child:to_text(parent_matrix)
		write_to(child_matrix, matrix, x, y, width, height)
	end


	if hasBorder then
		set_border(matrix, width)
	end

	return matrix
end

local Weekdays = Text:new('Mon Tue Wed Thu Fri Sat Sun')
local time = Text:new('09:13 am')
local widget2 = Block:new({
	Text:new("Hugo"),
	Text:new("Carolina"),
	{ dbg = 'widget2', border = true }
})

local widget = Block:new({
	Weekdays,
	time,
	widget2,
	{ dbg='root', border = true, align='end' }
})

-- widget2:render()
print(str_utils.to_string(widget:render():to_text()))

-- print(vim.inspect(widget2))
-- local text = widget:to_text()
-- print(vim.inspect(widget))
-- print(str_utils.to_string(text))



