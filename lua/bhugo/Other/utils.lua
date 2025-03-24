local utils = {}

function utils.concat_keys(obj)
	local keys = {}
	for key in pairs(obj) do
		table.insert(keys, key)
	end
	return table.concat(keys, ',')
end

function utils.merge_tables(a, b)
	local c = {}
	for key, value in pairs(a) do
		c[key] = value
	end

	for key, value in pairs(b) do
		c[key] = value
	end
	return c
end

function utils.split_path(full_path)
	local parent = vim.fn.fnamemodify(full_path, ':h')
	local file = full_path:match("^.*/(.+)$")
	local name, extension = file:match("([^.]*).(.*)")

	return parent, name, extension
end

function utils.filter_by(table, predicate)
	local new_table = {}
	for key, value in pairs(table) do
		if (predicate(key, value)) then
			new_table[key] = value
		end
	end
	return new_table
end

function utils.ifilter_inplace(arr, func)
	local new_index = 1
	local size_orig = #arr
	for old_index, v in ipairs(arr) do
		if func(v, old_index) then
			arr[new_index] = v
			new_index = new_index + 1
		end
	end
	for i = new_index, size_orig do arr[i] = nil end
end

return utils
