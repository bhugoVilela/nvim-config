local str_utils = require('bhugo.SplashScreen.lines')
local M = {}

function M.set_border(matrix, width)
	local H, NW, NE, V, SW, SE = "═", "╔", "╗", "║", "╚", "╝"
	local top = NW .. str_utils.repeating(H, width - 2) .. NE
	local bottom = SW .. str_utils.repeating(H, width - 2) .. SE
	matrix[1] = top
	matrix[#matrix] = bottom
	for i = 2, #matrix - 1, 1 do
		local line = matrix[i]
		matrix[i] = V .. vim.fn.strcharpart(line, 1, vim.fn.strdisplaywidth(line) - 2) .. V
	end
end

function M.str_repl(str, x, c)
	x = x - 1
	local pre = vim.fn.strcharpart(str, 0, x)
	local post = vim.fn.strcharpart(str, x + 1)
	return pre .. c .. post
end

return M
