--[[
Todo.nvim - A simple project-aware todo list plugin for Neovim

This plugin provides a centralized todo list system where todo files are stored in
~/.todo.nvim/ and can be shared across multiple projects. Projects can specify which
todo file they use by creating a .nvim.notes file in their root directory containing
the note name (e.g., "company.md"). If no .nvim.notes file is found, it defaults to
"general.md".

Usage:
- Call require("bhugo.Todo").setup() in your init.lua to initialize
- Use :Todo to open the current project's todo file in a floating window
- Press 'q' or <Esc> to close the floating window

The plugin automatically updates the active todo file when you change directories.
--]]

local M = {}

-- Configuration constants
local TODO_DIR = vim.fn.expand("~/.todo.nvim")
local NOTES_FILE = ".nvim.notes"
local DEFAULT_NOTE_NAME = "general"
local NOTE_EXTENSION = ".md"
local DEFAULT_CONTENT = "# Todo\n\n"

-- Current todo file path
local current_todo_file = nil

-- Find .nvim.notes file by walking up from cwd
local function find_notes_file()
	local cwd = vim.fn.getcwd()
	local path = cwd

	local notes_file = path .. "/" .. NOTES_FILE
	if vim.fn.filereadable(notes_file) == 1 then
		return notes_file
	end

	return nil
end

-- Read the note name from .nvim.notes file
local function get_note_name()
	local notes_file = find_notes_file()
	if not notes_file then
		return DEFAULT_NOTE_NAME
	end

	local file = io.open(notes_file, "r")
	if not file then
		return DEFAULT_NOTE_NAME
	end

	local note_name = file:read("*line")
	file:close()

	-- Trim whitespace
	if note_name then
		note_name = note_name:match("^%s*(.-)%s*$")
	end

	return note_name or DEFAULT_NOTE_NAME
end

-- Get the full path to the current todo file
local function get_todo_file_path()
	local note_name = get_note_name()
	if not note_name then
		return nil
	end

	-- Ensure note_name has the correct extension
	if not note_name:match("%.md$") then
		note_name = note_name .. NOTE_EXTENSION
	end

	-- Ensure todo directory exists
	vim.fn.mkdir(TODO_DIR, "p")

	return TODO_DIR .. "/" .. note_name
end

-- Update current todo file based on cwd
local function update_todo_file()
	current_todo_file = get_todo_file_path()
end

-- Open todo file in a floating window
function M.open_todo()
	if not current_todo_file then
		current_todo_file = get_todo_file_path()
	end

	-- Create the file if it doesn't exist
	if vim.fn.filereadable(current_todo_file) == 0 then
		local file = io.open(current_todo_file, "w")
		if file then
			file:write(DEFAULT_CONTENT)
			file:close()
		end
	end

	-- Calculate floating window size
	local width = math.floor(vim.o.columns * 0.8)
	local height = math.floor(vim.o.lines * 0.8)
	local row = math.floor((vim.o.lines - height) / 2)
	local col = math.floor((vim.o.columns - width) / 2)

	-- Create a new unlisted buffer
	local buf = vim.api.nvim_create_buf(false, false)

	-- Set buffer options
	vim.api.nvim_buf_set_option(buf, "bufhidden", "wipe")
	vim.api.nvim_buf_set_option(buf, "buflisted", false)

	-- Set the buffer name and load the file
	vim.api.nvim_buf_set_name(buf, current_todo_file)
	vim.api.nvim_buf_call(buf, function()
		vim.cmd("silent! edit")
	end)

	-- Create floating window
	local win = vim.api.nvim_open_win(buf, true, {
		relative = "editor",
		width = width,
		height = height,
		row = row,
		col = col,
		style = "minimal",
		border = "rounded",
	})

	-- Set window options
	vim.api.nvim_win_set_option(win, "wrap", true)
	vim.api.nvim_win_set_option(win, "linebreak", true)

	-- Add keybinding to close the window
	vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = buf, silent = true })
	vim.keymap.set("n", "<Esc>", "<cmd>close<cr>", { buffer = buf, silent = true })
end

-- Setup function
function M.setup()
	-- Update todo file on startup
	update_todo_file()

	-- Watch for directory changes
	vim.api.nvim_create_autocmd("DirChanged", {
		pattern = "*",
		callback = function()
			update_todo_file()
		end,
	})

	-- Create the :Todo command
	vim.api.nvim_create_user_command("Todo", function()
		M.open_todo()
	end, {})
end

return M
