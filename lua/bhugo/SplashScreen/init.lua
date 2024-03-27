local Path = require("plenary.path")
local splashscreen = '/Users/bhugo/.config/nvim/splashscreen.txt'
local str_utils = require('bhugo.SplashScreen.lines')
local widget = require('bhugo.SplashScreen.widget')
local take = require('bhugo.SplashScreen.utils').take
local MRU_LIMIT = 5
local Recent = require('bhugo.Recent')

local MRU_FOLDERS_TITLE = 'Recent Folders:'
local MRU_FILES_TITLE = 'Recent Files:'

local function list_mru_folders()
	local res = Recent.load_recent(MRU_LIMIT, 'cwd')
	return res
end

local function list_mru_files()
	vim.cmd('rshada')
	return Recent.load_recent(MRU_LIMIT, 'file')
end

local function get_curr_win_width()
	local win_id = vim.api.nvim_get_current_win()
	local width = vim.api.nvim_win_get_width(win_id)
	return width
end

---Converts a list of strings into a list with the following format:
--- [idx] string
--- @return Lines
local function get_list_lines(start_idx, lines, title)
	local new_table = {
		title,
	}
	for idx, value in ipairs(lines) do
		local line = "[" .. start_idx .. "] " .. value
		table.insert(new_table, line)
		start_idx = start_idx + 1
	end
	return new_table
end

--- Returns the padding needed to be applied so
--- that a string with `content_width` width is centered
--- @param content_width number
local function get_padding(content_width)
	local total_width = get_curr_win_width() - 10
	local padding = 0
	if content_width < total_width then
		padding = (total_width - content_width) / 2
	end
	return padding
end

--- Applies padding to the beginning and end of each line inplace.
--- @param lines Lines
--- @param padding number
local function apply_padding(lines, padding)
	local padding_str = ""
	for i = 1, padding, 1 do
		padding_str = padding_str .. ' '
	end
	for index, line in ipairs(lines) do
		lines[index] = padding_str .. line
	end
end

---@return Lines
local function empty_lines(n)
	local lines = {}
	for i = 1, n, 1 do
		table.insert(lines, "")
	end
	return lines
end


---Lists all plugins installed by lazy directly and transitively
---@return Lines
local function list_plugins()
	local plugins = require('lazy').plugins()
	local names = {}
	for index, value in ipairs(plugins) do
		if type(value[1]) == 'string' then
			local name = vim.fn.substitute(value[1], '.*/', '', '')
			if name == 'nvim' or name == 'vim' or name == 'neovim' then
				name = value[1]
			end
			table.insert(names, name)
		else
			local name = value.name
			if name then
				table.insert(names, 'local:'..name)
			end
		end
	end
	table.sort(names)
	return names
end

---Draws the splashscreen on the buffer
local function redraw(buf_nr)
	vim.api.nvim_buf_set_option(buf_nr, 'modifiable', true)
	local ok, logo_str = pcall(Path.read, Path:new(splashscreen))

	local logo = vim.fn.split(logo_str, '\n', false)
	local width = vim.fn.strdisplaywidth(logo[1])
	local padding = get_padding(width)
	local separator = empty_lines(3)
	local folders_list = list_mru_folders()
	local folders = get_list_lines(0, list_mru_folders(), MRU_FOLDERS_TITLE)
	local files = get_list_lines(#folders_list, list_mru_files(), MRU_FILES_TITLE)
	local num_entries = math.max(#folders, #files)
	str_utils.fill(folders, num_entries)
	str_utils.fill(files, num_entries)

	local lines = {}

	local widget = widget.get_full_widget()
	apply_padding(widget, get_padding(vim.fn.strdisplaywidth(widget[1])))

	local plugins = list_plugins()
	plugins = str_utils.to_columns(plugins, { max_height = 8 })
	plugins = str_utils.surround(plugins, { h_padding = 1 })
	apply_padding(plugins, get_padding(vim.fn.strdisplaywidth(plugins[1])))

	lines = str_utils.concat_v(lines, empty_lines(1))
	apply_padding(logo, padding)
	lines = str_utils.concat_v(lines, logo)
	lines = str_utils.concat_v(lines, empty_lines(1))
	lines = str_utils.concat_v(lines, widget)
	lines = str_utils.concat_v(lines, empty_lines(1))
	local folders_padding = vim.fn.strdisplaywidth(folders[1])
	local cursor_line = #lines + 2
	local cursor_col = get_padding(folders_padding) + 1

	folders = str_utils.normalized(folders)
	files = str_utils.normalized(files)
	
	local recent = str_utils.concat_h(folders, files, ' ')
	apply_padding(recent, get_padding(str_utils.get_max_width(recent)))
	lines = str_utils.concat_v(lines, recent)
	-- apply_padding(folders, get_padding(folders_padding))
	-- lines = str_utils.concat_v(lines, folders)
	-- lines = str_utils.concat_v(lines, { "" })
	-- apply_padding(files, get_padding(folders_padding))
	-- lines = str_utils.concat_v(lines, files)
	lines = str_utils.concat_v(lines, empty_lines(1))

	lines = str_utils.concat_v(lines, plugins)

	vim.api.nvim_buf_set_lines(buf_nr, 0, -1, false, lines)

	vim.api.nvim_buf_set_option(buf_nr, 'modifiable', false)
	return { buf_nr = buf_nr, cursor_line = math.floor(cursor_line), cursor_col = math.floor(cursor_col) }
end

---Creates the splashscreen buffer
local function createBuffer()
	local buf_nr = vim.api.nvim_create_buf(false, true)
	vim.api.nvim_buf_set_option(buf_nr, 'filetype', 'splashscreen')
	return redraw(buf_nr)
end

---Displays the buffer on the window
local function display_buffer(buffer_data)
	local curr_win = vim.api.nvim_get_current_win()
	vim.api.nvim_win_set_buf(curr_win, buffer_data.buf_nr)
	vim.api.nvim_win_set_cursor(0, { buffer_data.cursor_line, buffer_data.cursor_col })
end

---Creates splashscreen syntax rules
local function syntax()
	vim.cmd [[syntax match xSplashLogoFg /█/]]
	vim.cmd [[syntax match xSplashLogoBg /\v[═╝╔╗║╚╦╩╠╣]/]]
	vim.cmd [[syntax match xSplashLogoOptionNumber /\v\[[0-9]\]/  nextgroup=xSplashLogoOptionContent skipwhite ]]
	vim.cmd [[syntax match xSplashLogoOptionContent /\v.{-}\ze(\[|$)/ contained]]
	vim.cmd [[syntax match xSplashWeekday /Tue/]]
	-- vim.cmd [[syntax region xSplashLogoOptionContent start=/\v(\b|~?\/)(\w+\/)*\w+(\.\w+)*\/*\b/ end=/\v(\n|\s)/]]
	-- vim.cmd [[syntax match xSplashLogoOptionContent /\v(\b|~?\/)(\w+\/)*\w+(\.\w+)*\/*\b/ ]]

end

---Creates splashscreen highlights
local function highlight()
	vim.cmd('highlight SplashLogoFg guifg=#EBBCBA')
	vim.cmd('highlight SplashLogoBg guifg=#D36C68')
	vim.cmd('highlight SplashLogoOptionNumber guifg=#D36C68')
	vim.cmd('highlight SplashLogoOptionContent guifg=#EBBCBA')
	vim.cmd('highlight SplashWeekday guifg=#EBBCBA')

	vim.cmd [[highlight link xSplashLogoFg SplashLogoFg]]
	vim.cmd [[highlight link xSplashLogoBg SplashLogoBg]]
	vim.cmd [[highlight link xSplashLogoOptionContent SplashLogoOptionContent]]
	vim.cmd [[highlight link xSplashLogoOptionNumber SplashLogoOptionNumber]]
	vim.cmd [[highlight link xSplashLogoOptionBracket SplashLogoOptionBracket]]
	vim.cmd [[highlight link xSplashWeekday SplashWeekday]]
	vim.cmd [[highlight link xSplashConceal Conceal]]

	-- Cursor CursorLine Normal
end

--- extracts the path under the cursor
--- TODO find easier way to do this
local function extract_option()
	local cursor = vim.api.nvim_win_get_cursor(0)
	local cur_row, cur_col = cursor[1], cursor[2]
	local line = vim.api.nvim_get_current_line()

	local i = cur_col
	while i >= 1 and line:sub(i, i) ~= '[' do
		i = i - 1
	end

	if line:sub(i, i) ~= '[' then
		return nil
	end

	local j = i
	local escaping = false
	local in_num = true
	local path_start = nil
	while j < #line do
		local char = line:sub(j,j)
		if in_num and char ~= ' ' then
			goto continue
		end
		if (in_num and char == ' ') then
			in_num = false
			path_start = j + 1
			goto continue
		end
		if char == '\\' then
			escaping = true
			goto continue
		end
		if (char == ' ' and not escaping) or char == '\n' or char == '\t' then
			break
		end
		escaping = false
	    ::continue::
		j = j + 1
	end

	while line:sub(j,j) == ' ' do
		j = j - 1
	end

	print(line:sub(j,j) == ' ')
	return line:sub(path_start, j)
end

--- Handle when a directory or file is selected
local function handleSelect()
	local match = extract_option()
	print("'"..match.."'")
	-- if match ~= nil and #match > 0 then
	-- 	local path = Path:new(Path:new(match):expand())
	-- 	local full_path = path:expand()
	-- 	if path:is_dir() then
	-- 		vim.cmd.cd(full_path)
	-- 		local tree = require('nvim-tree.api').tree
	-- 		tree.change_root(full_path)
	-- 		tree.open({})
	-- 	else
	-- 		vim.cmd.e(match)
	-- 	end
	-- end
end

local function setupKeymaps(buffer_data)
	vim.keymap.set('n', '<C-l>', handleSelect, { buffer = buffer_data.buf_nr })
	vim.keymap.set('n', '<Cr>', handleSelect, { buffer = buffer_data.buf_nr })
end

---Shows the dashboard if vim.argc() is 0 or if forced
local function showSplashScreen(force)
	if vim.fn.argc(-1) == 0 or force then
		local buffer_data = createBuffer()
		display_buffer(buffer_data)
		vim.defer_fn(function()
			vim.api.nvim_buf_call(buffer_data.buf_nr, function()
				syntax()
				highlight()
				setupKeymaps(buffer_data)
			end)
		end, 1)
	end
end

vim.api.nvim_create_user_command('Splashscreen', function() 
	showSplashScreen(true)
end, {
	desc = "Display the splash screen"
})

return showSplashScreen
