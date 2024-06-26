---@alias Alignment '"center"' | '"start"' | '"end"' | '"stretch"'
---@alias Orientation "'vertical'" | "'horizontal'"
---@alias Position "'relative'" | "'absolute'"

---@class Style
---@field height number?
---@field width number?
---@field align Alignment?
---@field justify Alignment?
---@field x number? x offset from content_box
---@field y number? y offest from content_box
---@field overflow 'ellipsize' | 'hidden' | 'visible'?
---@field border boolean?
---@field boxSizing 'borderBox' | 'contentBox'? defaults to borderBox
---@field highlight string? highlight group name
---@field orientation Orientation? 
---@field position Position?  defaults to relative, affects how x and y affect positioning
---@field gap number?  defaults to relative, affects how x and y affect positioning

---@class Computed: Style
---@field absolute_x number?
---@field absolute_y number?
---@field border_width number?  default = 1
---@field border_height number? default = 1
---@field content_width number? width of content box
---@field content_height number? height of content box
---@field content_box { minX: number, maxX: number, minY: number, maxY: number }?
---@field depth number?
---@field order number?
---@field height number? element height as if it's borderBox
---@field width number? element width as if it's borderBox
