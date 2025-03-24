-- Tabline ================================================

-- This Tabline displays:
-- t:tabname when set
-- cwd when t:tabname='cwd'
-- parent_dir/file otherwise
function CustomTabLine()
  local function tabLabel(n)
    local tabname = vim.fn.gettabvar(n, 'tabname')
    if tabname == 'cwd' or tabname == 'pwd' then
      local cwd = vim.fn.getcwd(-1, n)
      return vim.fn.fnamemodify(cwd, ':t')
    elseif #tabname > 0 then
      return tabname
    end

    local buflist = vim.fn.tabpagebuflist(n)
    local winnr = vim.fn.tabpagewinnr(n)
    local full_bufname = vim.fn.bufname(buflist[winnr])
    local dir_name = vim.fn.fnamemodify(full_bufname, ':h:t')
    local file_name = vim.fn.fnamemodify(full_bufname, ':t')
    return dir_name .. '/' .. file_name
  end

  local s = ''
  local num_tabs = vim.fn.tabpagenr('$')
  for i = 1, num_tabs do
    local hl = (i == vim.fn.tabpagenr()) and '%#TabLineSel#' or '%#TabLine#'
    local label = tabLabel(i)
    s = s .. hl .. '%' .. i .. 'T' .. ' ' .. label .. ' '
  end
  if num_tabs > 1 then
    s = s .. '%#TabLineFill#%T' .. '%=%#TabLine#%999Xx'
  end
  return s
end

vim.o.tabline = '%!v:lua.CustomTabLine()'
