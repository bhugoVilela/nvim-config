local Path = require('plenary.path')
local utils = require('bhugo.SplashScreen.utils')
local root_dir = vim.fn.stdpath('data') .. '/bhugo'
local data_path = root_dir .. '/holidays.json'

---@class Holiday
---@field name string
---@field startDate string
---@field quality string
---@field daysUntil number?

---@class HolidaysDTO
---@field year string
---@field holidays Holiday[]

local function daysUntil(dateA, dateB)
	local timestampA, timestampB = Lib.WhenOs {
		Linux = function()
				return utils.execute("date -d '"..dateA.." 00:00' +%s"), utils.execute("date -d '"..dateB.." 00:00' +%s")
		end,
		Darwin = function() 
				return utils.execute("date -jf '%Y-%m-%d' '"..dateA.."' '+%s'"), utils.execute("date -jf '%Y-%m-%d' '"..dateB.."' '+%s'")
		end
	}
	local diff = math.abs(timestampA - timestampB)
	local diffInDays = math.ceil(diff / (24 * 60 * 60))
	return diffInDays
end

---@return HolidaysDTO?
local function load_holidays_from_fs()
	local path = Path:new(data_path)
	local ok, content = pcall(Path.read, path)
	if not ok then
		return nil
	end
	return vim.json.decode(content)
end

---Saves holidays to fs
---@param year string
---@param holidays Holiday[]
---@return HolidaysDTO
local function save_holidays(year, holidays)
	local root_path = Path:new(root_dir)
	local file_path = Path:new(data_path)
	local obj = { year = year, holidays = holidays }
	local str = vim.json.encode(obj)

	root_path:mkdir({ parents = true })
	file_path:write(str, 'w')

	return obj
end

---Fetch holidays from the given year
---@param year string
---@return HolidaysDTO
local function fetch_holidays(year)
	year = year or vim.fn.strftime('%Y')
	local from = year .. '-01-01'
	local to = year .. '-12-31'
	local cmd =
	"curl -s -X GET 'https://openholidaysapi.org/PublicHolidays?countryIsoCode=PT&languageIsoCode=PT&validFrom=" ..
	from .. "&validTo=" .. to .. "' -H 'accept: text/json' | jq '[.[] | { name: .name[0].text, startDate, quality }]'"
	local holidays = utils.execute(cmd)
	local ok, holidays = pcall(vim.json.decode, holidays)
	if not ok then
		error('Failed to fetch public holidays')
	end
	holidays = utils.filter(holidays, function(holiday) return holiday.quality == "Mandatory" end)
	table.sort(holidays, function(a, b)
		return a.startDate < b.startDate
	end)
	return { year = year, holidays = holidays }
end

---Fetches holidays from API if the ones in fs are outdated
---@return HolidaysDTO
local function update_holidays_if_needed()
	local holidays = load_holidays_from_fs()
	local thisYear = vim.fn.strftime('%Y')
	if holidays == nil or thisYear ~= holidays.year then
		print('Locally cached holidays were outdated, fetching new ones')
		holidays = fetch_holidays()
		return save_holidays(holidays.year, holidays.holidays)
	end
	return holidays
end

---returns holidays, fetching from API if needed
---@return HolidaysDTO
local function get_holidays()
	return update_holidays_if_needed()
end

---@param holidays Holiday[]
---@return { todayHoliday: Holiday?, nextHoliday: Holiday? }
local function get_curr_and_next_holiday(holidays, day)
	local today = day or vim.fn.strftime('%Y-%m-%d')
	table.sort(holidays, function(a, b)
		return a.startDate < b.startDate
	end)

	local todayHoliday, nextHoliday = nil, nil
	for _, holiday in ipairs(holidays) do
		if holiday.startDate == today then
			todayHoliday = holiday
		elseif holiday.startDate > today then
			nextHoliday = holiday
			nextHoliday.daysUntil = daysUntil(nextHoliday.startDate, today)
			break
		end
	end

	return {
		todayHoliday = todayHoliday,
		nextHoliday = nextHoliday
	}
end

return {
	get_curr_and_next_holiday = get_curr_and_next_holiday,
	get_holidays = get_holidays,
	daysUntil = daysUntil
}
