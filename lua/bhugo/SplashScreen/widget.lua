---This module provides a widget with time, day and some system stats
local M = {}

local Holidays = require('bhugo.SplashScreen.holidays')
local utils = require('bhugo.SplashScreen.utils')
local execute = utils.execute
local str_utils = require('bhugo.SplashScreen.lines')
local get_max_width = str_utils.get_max_width
local concat_v = str_utils.concat_v
local box_concat_v = str_utils.box_concat_v
local box_concat_h = str_utils.box_concat_h
local get_number = str_utils.get_number
local surround = str_utils.surround
local center_str = str_utils.center_str

---Creates the time widget:
---╔══════════════════════════════════════╦
---║     Mon Tue Wed Thu Fri Sat Sun      ║
---║ ███████ ███████           ██ ███████ ║
---║      ██      ██  ██       ██      ██ ║
---║ ███████ ███████           ██ ███████ ║
---║ ██           ██  ██       ██      ██ ║
---║ ███████ ███████           ██ ███████ ║
---╠══════════════════════════════════════╣
---║             26 March 2024            ║
---╚══════════════════════════════════════╩
---@return Lines
local function get_time_widget()
	local h_padding = 1
	local timestr = vim.fn.strftime('%H:%M')
	local time = get_number(timestr)

	local clock_width = get_max_width(time)
	local week = "Mon Tue Wed Thu Fri Sat Sun"
	week = center_str(week, clock_width)

	local upper = concat_v({ week }, time )
	upper = surround(upper, { h_padding = h_padding })

	local weekday = vim.fn.strftime('%d %B %Y')
	weekday = center_str(weekday, clock_width)

	local lower = { weekday }

	local holidays = Holidays.get_curr_and_next_holiday(Holidays.get_holidays().holidays)
	local holidayStr = nil
	local holidayStr2 = nil
	if holidays.todayHoliday then
		holidayStr = 'TODAY: '..holidays.todayHoliday.name
	elseif holidays.nextHoliday then
		holidayStr = 'Next Holiday: '..holidays.nextHoliday.name
		local plural = holidays.nextHoliday.daysUntil > 1 and 's' or ''
		holidayStr2 = holidays.nextHoliday.startDate..' '..'(in '..holidays.nextHoliday.daysUntil..' day'..plural..')'
	end

	if holidayStr then
		holidayStr = center_str(holidayStr, clock_width)
		lower = concat_v(lower, { holidayStr })
		if holidayStr2 then
			holidayStr2 = center_str(holidayStr2, clock_width)
			lower = concat_v(lower, { holidayStr2 })
		end
	end

	lower = str_utils.ellipsizedToWidth(lower, clock_width)
	lower = str_utils.normalized(lower, clock_width)
	lower = surround(lower, { h_padding = h_padding })

	local res = box_concat_v(upper, lower)

	return res
end

---Creates the system stats widget:
---╦══════════════════════════════════════════╗
---║ bhugo@Hugos-MBP-2                        ║
---║ Shell: zsh 5.9 (x86_64-apple-darwin23.0) ║
---║ Terminal: iTerm.app                      ║
---║ NVIM: 0.9.2                              ║
---║ OS: macOS 14.1.1                         ║
---╩══════════════════════════════════════════╝
---@param height number target height
---@return Lines
local function get_sys_widget(height)
	local hostname = execute('hostname -f')
	local user = execute('whoami')
	local user_host = user..'@'..hostname
	local shell = 'Shell: '..execute('$SHELL --version')
	local term = 'Terminal: '..execute('echo $TERM_PROGRAM')
	local nvim_version = vim.version()
	nvim_version = 'NVIM: '..nvim_version.major..'.'..nvim_version.minor..'.'..nvim_version.patch
	local os_version = 'OS: '..Lib.WhenOs {
		Linux = function() return execute([[cat /etc/os-release | grep PRETTY_NAME | sed 's/.*="\(.*\)"/\1/']]) end,
		Darwin = function() return execute([[sw_vers | head -n 2 | awk '{ print $2 }' | xargs]]) end
	}

	local lines = {
		user_host,
		shell,
		term,
		nvim_version,
		os_version
	}
	

	-- padding needed to match target height
	local bottom_padding = height - #lines - 2

	for i = 1, bottom_padding, 1 do
		table.insert(lines, "")
	end

	local res = surround(lines, { h_padding = 1 })
	return res
end

--- Creates the full widget (time + sys stats)
---@return Lines
function M.get_full_widget()
	local time_widget = get_time_widget()
	local sys_widget = get_sys_widget(#time_widget)
	return box_concat_h(time_widget, sys_widget)
end

return M
