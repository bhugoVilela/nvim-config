local str_utils = require('bhugo.SplashScreen.lines')

---@class Span
---@field content (string | Span)[]
---@field hl string?
local Span = {}
Span.__index = Span

--- Create new Span
---@param content string | (string | Span)[]
---@param hl string? highlight group
---@return Span
function Span:new(content, hl)
	return setmetatable({
		content = type(content) == 'string' and { content } or content,
		hl = hl
	}, self)
end

function Span:to_string()
	local res = ""
	for index, value in ipairs(self.content) do
		if type(value) == 'string' then
			res = res .. value
		else
			res = res .. value:to_string()
		end
	end
	return res
end

function Span:width()
	local total = 0
	for _, item in ipairs(self.content) do
		if type(item) == 'string' then
			total = total + vim.fn.strdisplaywidth(item)
		else
			total = total + item:width()
		end
	end
	return total
end

---@class Block
---@field content Span[]
---@field hl string
---@field padding { h: number, v: number, hl: string }
---@field border { visible: boolean, hl?: string }
local Block = {}
Block.__index = Block

function Block:new(content, hl)
	return setmetatable({
		content = content,
		hl = hl,
		padding = { h = 0, v = 0 },
		border = { visible = false }
	}, self)
end

function Block:width()
	local max = 0
	for _, span in ipairs(self.content) do
		max = math.max(span:width(), max)
	end
	return max
end

function Block:flatten()
	local v = self.padding.v
	if v > 0 then
		local new_content = {}
		for i = 1, v, 1 do
			table.insert(new_content, Span:new(""))
		end
		for index, item in ipairs(self.content) do
			table.insert(new_content, item)
		end
		for i = 1, v, 1 do
			table.insert(new_content, Span:new(""))
		end

		self.content = new_content
	end

	local h = self.padding.h
	if h > 0 then
		for _, span in ipairs(self.content) do
			local left_padding = Span:new(str_utils.repeating(" ", h), self.padding.hl)
			local right_padding = Span:new(str_utils.repeating(" ", h), self.padding.hl)
			table.insert(span.content, 1, left_padding)
			table.insert(span.content, right_padding)
		end
	end

	if self.border.visible then
		local hl = self.border.hl
		local NW, NE, SW,SE = Span:new('╔', hl), Span:new('╗', hl), Span:new('╚', hl), Span:new('╝', hl)
		local H, V = Span:new('═', hl), Span:new('║', hl)
		local max_width = self:width()
		local top_border = Span:new(str_utils.repeating(H.content[1], max_width), hl)
		local bottom_border = Span:new(str_utils.repeating(H.content[1], max_width), hl)
		table.insert(self.content, 1, top_border)
		table.insert(self.content, bottom_border)
		table.insert(self.content[1].content, 1, NW)
		table.insert(self.content[1].content, NE)
		table.insert(self.content[#self.content].content, 1, SW)
		table.insert(self.content[#self.content].content, SE)
		for i = 2, #self.content - 1, 1 do
			local span = self.content[i]
			local width = span:width()
			if width < max_width  then
				local filler = str_utils.repeating(" ", max_width - width)
				table.insert(span.content, filler)
			end
			table.insert(span.content, V)
			table.insert(span.content, 1, V)
		end
	end
	return self
end

function Block:to_string()
	local str = ""
	for index, line in ipairs(self.content) do
		if index == 1 then
			str = str .. line:to_string()
		else
			str = str .. "\n" .. line:to_string()
		end
	end
	return str
end

local day = Span:new("26")
local month = Span:new("May")
local year = Span:new("2023")

local date = Span:new({ day, " ", month, " ", year })

local date_block = Block:new({ date })
date_block.padding.v = 0 
date_block.padding.h = 1 
date_block.border.visible = true

print(date_block:flatten():to_string())

