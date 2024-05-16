local reload = require('plenary.reload').reload_module
reload('bhugo.ui.init')
local Block = require('bhugo.ui.block')
local Span = require('bhugo.ui.init').Span
local render_to_buffer = require('bhugo.ui.init').render_to_buffer
local buf_nr = 21
local str_utils = require('bhugo.SplashScreen.lines')

function Clock(time)
	local lines = str_utils.get_number(time)

	return Block:from_lines(lines, {
		highlight = '@class',
		border = true
	})
end

local day = Block {
	Span { '29th March 2024', { dbg = 'day' } },
	{ border = true, align = 'center', highlight = 'DevIconAac', dbg='dp' }
}

local lhs = Block {
	Clock('10:00'),
	day,
	{ align = 'stretch' }
}

local rhs = Block {
	Span { "OS: MacOS" },
	Span { "TERM: iTerm" },
	Span { "mem: 32GB" },
	{ border = true, highlight = '@function.builtin' }
}

local wrapper = Block {
	lhs,
	rhs,
	{ orientation = 'horizontal', align = 'stretch' }
}

render_to_buffer(buf_nr, wrapper)
