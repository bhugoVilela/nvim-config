local Test = {}
Test.__index = Test
setmetatable(Test, {
  __call = function(...) return Test:new(...) end
})

function Test:new() 
  return setmetatable({}, self)
end

function Test:print() 
  print('yo')
end

Test()
