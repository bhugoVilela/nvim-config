local zero = {
	"███████",
	"██   ██",
	"██   ██",
	"██   ██",
	"███████"
}

local one = {
	"     ██",
	"     ██",
	"     ██",
	"     ██",
	"     ██"
}

local two = {
	"███████",
	"     ██",
	"███████",
	"██     ",
	"███████"
}

local three = {
	"███████",
	"     ██",
	"███████",
	"     ██",
	"███████"
}

local four = {
	"██   ██",
	"██   ██",
	"███████",
	"     ██",
	"     ██"
}

local five = {
	"███████",
	"██     ",
	"███████",
	"     ██",
	"███████"
}

local six = {
	"███████",
	"██     ",
	"███████",
	"██   ██",
	"███████"
}

local seven = {
	"███████",
	"     ██",
	"     ██",
	"     ██",
	"     ██"
}

local eight = {
	"███████",
	"██   ██",
	"███████",
	"██   ██",
	"███████"
}

local nine = {
	"███████",
	"██   ██",
	"███████",
	"     ██",
	"     ██"
}

local colon = {
	"    ",
	" ██ ",
	"    ",
	" ██ ",
	"    "
}

local ascii = {
	zero, one, two, three, four, five, six, seven, eight, nine
}
ascii['0'] = zero
ascii['1'] = one
ascii['2'] = two
ascii['3'] = three
ascii['4'] = four
ascii['5'] = five
ascii['6'] = six
ascii['7'] = seven
ascii['8'] = eight
ascii['9'] = nine
ascii[':'] = colon

return ascii

