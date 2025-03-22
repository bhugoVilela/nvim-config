local Path = require('plenary.path')

function Path:mkdirp()
	self:mkdir({ parents = true })
	return self
end

function Path:expanded()
	return Path:new(self:expand())
end

function open_note(name, opts)
	opts = opts or {}
	name = name or "default"
	--- @type string
	local path = opts.path or vim.g.bhugo_notes_path
	local ext = opts.ext or vim.g.bhugo_notes_ext

	if not path then
		print("Unable to find path to notes")
		return false
	end
	path = Path:new(path):expanded()
	path:mkdirp()

	local note_path = path.filename + '/' + name + '.' + ext

	if Path:new(note_path):exists() then
		-- exists
	else
		-- doesn't exist
	end
end

function create_buffer(note_path)
	local buffer = vim.api.nvim_create_buf(false, false)
	local stats = vim.api.nvim_list_uis()[1]
	local ed_width = stats.width
	local ed_height = stats.height
	local width = math.floor(ed_width / 2)
	local height = math.floor(ed_height / 2)
	vim.api.nvim_open_win(buffer, true, {
		relative = 'editor',
		width = width,
		height = height,
		row = math.floor((ed_height - height) / 2),
		col = math.floor((ed_width - width) / 2)
	})
	vim.cmd("edit "..note_path)
end

--- @param path string
function mkdirp(path)
	Path:new(path):mkdir({ parents = true })
end


-- create_buffer("~/notes/test.js")
-- Old Internet
-- HTML Form =====-HTTP Post-====> Server
-- Browser <=====-HTTP Response-==== Server

