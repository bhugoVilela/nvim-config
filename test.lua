local utf8 = require('bhugo.utf'):init()
-- local sub = string.sub
local sub = function(str, start)
  return vim.fn.strcharpart(str, start)
end
local H, NW, NE, V, SW, SE = "═", "╔",  "╗", "║", "╚", "╝"
local str = H..H..H
local new = sub(str, 1)..V..sub(str, 3)
print(str)
print(new)
