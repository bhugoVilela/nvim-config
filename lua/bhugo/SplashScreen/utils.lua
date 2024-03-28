local M = {}
local uv = vim.loop

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

function M.filter(src, fn)
	local new_list = {}
	for index, value in ipairs(src) do
		local keep = fn(value, index)
		if keep then
			table.insert(new_list, value)
		end
	end
	return new_list
end

---Execute a command a return the stdout
---@param command string command to execute
---@return string stdout
function M.execute(command)
	local output = vim.fn.system(command)
	output = string.sub(output, 1, #output - 1)
	return output
end

-- Creating a simple setInterval wrapper
function M.setInterval(interval, callback)
	local timer = uv.new_timer()
	timer:start(interval, interval, function()
		callback()
	end)
	return timer
end

-- And clearInterval
function M.clearInterval(timer)
	timer:stop()
	timer:close()
end

return M
