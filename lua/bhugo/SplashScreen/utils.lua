local M = {}

function M.take(src, n)
	local new_table = {}
	for i = 1, math.min(n, #src), 1 do
		table.insert(new_table, src[i])
	end
	return new_table
end

function M.map(src, fn)
	local new_list = {}
	for index, value in ipairs(src) do
		local value = fn(value, index)
		table.insert(new_list, value)
	end
	return new_list
end

return M
