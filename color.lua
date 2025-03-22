local type_params = {
      fg = "string",
      bg = "string",
      sp = "string",
      blend = "number",
      bold = "boolean",
      standout = "boolean",
      underline = "boolean",
      undercurl = "boolean",
      underdouble = "boolean",
      underdotted = "boolean",
      underdashed = "boolean",
      strikethrough = "boolean",
      italic = "boolean",
      reverse = "boolean",
      nocombine = "boolean",
      link = "string",
      ctermfg = "string",
      ctermbg = "string",
      cterm = "string",
}

local function parse_highlights(bufnr)
    if vim.bo.filetype ~= 'coloredit' then return end

    local live_highlights = {}
    local highlights = {}
    local theme_name = nil

    for line_nr = 1, vim.api.nvim_buf_line_count(0) do
        local line = vim.api.nvim_buf_get_lines(0, line_nr - 1, line_nr, false)[1]
        local next_line = vim.api.nvim_buf_get_lines(0, line_nr, line_nr + 1, false)[1] or ''
        local link = next_line:match('%s+ links to (%S+)')

        if string.sub(line, 1, 2) == '--' then
              if theme_name == nil then
                  theme_name = line:match('--%s*Theme:%s+(%S+)')
              end
              local hl_name = 'Comment'
              table.insert(live_highlights, {0, -1, hl_name, line_nr - 1, 0, -1})
              goto continue
        end

        local hl_name, hl_definition = line:match('(%S+)%s+xxx (.*)')

        if hl_name and hl_definition then
            local properties = {}

            if link then
              properties.link = link
            end

            local linkTo = hl_definition:match('links to (%S+)')

            if linkTo then
              properties.link = linkTo
            end

            for key, value in hl_definition:gmatch('(%a+)=([%w#]+)') do
                if key == 'guifg' then
                  key = 'fg'
                elseif key == 'guibg' then
                  key = 'bg'
                elseif key == 'guisp' then
                  key = 'sp'
                end
                if value:match('^%d+$') then
                  value=tonumber(value)
                end
                if type_params[key] == 'number' then
                  value = tonumber(value)
                elseif type_params[key] == 'boolean' then
                  value = value == 'true' or value == 'True'
                end
                if (key == 'gui') then
                  for subvalue in (value or ''):gmatch('([^,]+),*') do
                    properties[subvalue] = true
                  end
                elseif (key == 'cterm') then
                  new_value = {}
                  for subvalue in (value or ''):gmatch('([^,]+),*') do
                    new_value[subvalue] = true
                  end
                  properties[key] = new_value
                else
                  properties[key] = value
                end
            end

            highlights[hl_name] = properties
            table.insert(live_highlights, {0, -1, hl_name, line_nr - 1, 0, #hl_name })
        end
        ::continue::
    end
    return highlights, live_highlights, theme_name
end

local function update_highlights()
  local highlights, _, _ = parse_highlights(0)
  for name, value in pairs(highlights) do
    vim.api.nvim_set_hl(0, name, value)
  end
end

local function apply_live_highlights()
  local highlights, live_highlights = parse_highlights(0)

  for index, value in ipairs(live_highlights or {}) do
      vim.api.nvim_buf_add_highlight(value[1], value[2], value[3], value[4], value[5], value[6])
  end
end

local function on_buffer_update()
  update_highlights()
  apply_live_highlights()
end


      --• {val}    Highlight definition map, accepts the following keys:
      --• fg: color name or "#RRGGBB", see note.
      --• bg: color name or "#RRGGBB", see note.
      --• sp: color name or "#RRGGBB"
      --• blend: integer between 0 and 100
      --• bold: boolean
      --• standout: boolean
      --• underline: boolean
      --• undercurl: boolean
      --• underdouble: boolean
      --• underdotted: boolean
      --• underdashed: boolean
      --• strikethrough: boolean
      --• italic: boolean
      --• reverse: boolean
      --• nocombine: boolean
      --• link: name of another highlight group to link to, see
      --|:hi-link|.
      --• default: Don't override existing definition |:hi-default|
      --• ctermfg: Sets foreground of cterm color |ctermfg|
      --• ctermbg: Sets background of cterm color |ctermbg|
      --• cterm: cterm attribute map, like |highlight-args|. If not
      --set, cterm attributes will match those from the attribute
      --map documented above.
      --• force: if true force update the highlight group when it
      --exists.

local colorEditGroup = vim.api.nvim_create_augroup("ColorEdit", { clear = true })

-- Create an autocmd to trigger on BufRead and BufNewFile
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.coloredit",
    group = colorEditGroup,
    callback = on_buffer_update
})

-- Create an autocmd to trigger on BufEnter
vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
    pattern = "*",
    group = colorEditGroup,
    callback = function()
        if vim.bo.filetype == 'coloredit' then
            on_buffer_update()
        end
    end
})


-- this function should create a colors folder in '.config/nvim' or wherever the config is located
local function create_color_dir()
    local uv = vim.loop
    local config_path = vim.fn.stdpath('config')
    local colors_dir_path = config_path .. '/colors'
    uv.fs_mkdir(colors_dir_path, 511)
end

local function create_color_theme(bufnr)
  bufnr = bufnr or 0
  local highlights, _, theme_name = parse_highlights(bufnr or 0)

  if theme_name == nil then
    error("Missing theme_name, add -- Theme: <theme_name> to the file")
  end

  local content = ''
  -- content = 'local ns_id = vim.api.nvim_create_namespace("'..theme_name..'")'
  content = 'local ns_id = 0'
  content = content..'\n'..'vim.o.termguicolors = true'
  content = content..'\n'..'vim.g.colors_name = "'..theme_name..'"'

  for name, value in pairs(highlights) do
    local line = 'vim.api.nvim_set_hl(ns_id, "'..name..'", '..vim.inspect(value)..')'
    content = content..'\n'..line
  end

  local uv = vim.loop
  local config_path = vim.fn.stdpath('config')
  local colors_dir_path = config_path .. '/colors'
  local theme_path = colors_dir_path..'/'..theme_name..'.lua'

  print(theme_path)
  local fd = uv.fs_open(theme_path, 'w+', 511)

  uv.fs_write(fd, content)
  uv.fs_close(fd)
end

vim.api.nvim_create_user_command('ExportTheme', function() 
  create_color_dir()
  create_color_theme()
end, {
  desc='Export colortheme'
})
