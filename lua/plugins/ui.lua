-- Plugins that affect nvim's UI
local gh = require('bhugo.utils').gh

vim.pack.add({
  gh('miversen33/sunglasses.nvim'),
  { src = gh('nvim-focus/focus.nvim'), version = vim.version.range('*') },
  gh('lewis6991/gitsigns.nvim'),
  gh('lukas-reineke/indent-blankline.nvim'),
})

require('sunglasses').setup({
  filter_type = "SHADE",
  filter_percent = .30
})

-- [[ focus: automatically resize buffers ]]
require('focus').setup({
  ui = {
    signcolumn = false,
    relativenumber = true,
    number = true
  },
  autoresize = {
    minwidth = 20,
    minheight = 10
  }
})
-- disables focus when entering certain filetypes
local ignore_filetypes = { 'NvimTree', 'dapui_watches', 'dapui_stacks', 'dapui_breakpoints', 'dapui_scopes' }

local augroup = vim.api.nvim_create_augroup('FocusDisable', { clear = true })

vim.api.nvim_create_autocmd('BufWinEnter', {
  group = augroup,
  callback = function(_)
    if vim.tbl_contains(ignore_filetypes, vim.bo.filetype) then
      vim.g.focus_disable = true
    end
  end,
  desc = 'disable focus autoresize for filetypes'
})

vim.api.nvim_create_autocmd('BufWinLeave', {
  group = augroup,
  callback = function(ev)
    if not vim.tbl_contains(ignore_filetypes, vim.bo[ev.buf].filetype) then
      return
    end
    local shouldReenable = true
    local windows = vim.api.nvim_list_wins()
    for i = 1, #windows, 1 do
      local bufnr = vim.api.nvim_win_get_buf(windows[i])
      if bufnr == ev.buf then
        goto continue
      end
      if (vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype)) then
        shouldReenable = false
        break
      end
      ::continue::
    end
    vim.g.focus_disable = not shouldReenable
  end,
  desc = 'disable focus autoresize for filetypes'
})

-- [[ gitsigns: adds git related signs to the gutter, as well as utilities for managing changes ]]
require('gitsigns').setup({
  -- See `:help gitsigns.txt`
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map({ 'n', 'v' }, ']c', function()
      if vim.wo.diff then
        return ']c'
      end
      vim.schedule(function()
        gs.nav_hunk('next')
      end)
      return '<Ignore>'
    end, { expr = true, desc = 'Jump to next hunk' })

    map({ 'n', 'v' }, '[c', function()
      if vim.wo.diff then
        return '[c'
      end
      vim.schedule(function()
        gs.nav_hunk('prev')
      end)
      return '<Ignore>'
    end, { expr = true, desc = 'Jump to previous hunk' })

    -- Actions
    -- visual mode
    map('v', '<leader>hs', function()
      gs.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
    end, { desc = 'stage git hunk' })
    map('v', '<leader>hr', function()
      gs.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
    end, { desc = 'reset git hunk' })
    -- normal mode
    -- stage_hunk toggles: on an already staged hunk it unstages it (replaces undo_stage_hunk)
    map('n', '<leader>hs', gs.stage_hunk, { desc = 'git stage/unstage hunk' })
    -- map('n', '<leader>hr', gs.reset_hunk, { desc = 'git reset hunk' })
    map('n', '<leader>hS', gs.stage_buffer, { desc = 'git Stage buffer' })
    -- map('n', '<leader>hR', gs.reset_buffer, { desc = 'git Reset buffer' })
    map('n', '<leader>hp', gs.preview_hunk, { desc = 'preview git hunk' })
    map('n', '<leader>hb', function()
      gs.blame_line { full = false }
    end, { desc = 'git blame line' })
    map('n', '<leader>hd', gs.diffthis, { desc = 'git diff against index' })
    map('n', '<leader>hD', function()
      gs.diffthis '~'
    end, { desc = 'git diff against last commit' })

    -- Toggles
    map('n', '<leader>tb', gs.toggle_current_line_blame, { desc = 'toggle git blame line' })
    map('n', '<leader>td', gs.preview_hunk_inline, { desc = 'git show deleted (inline hunk preview)' })

    -- Text object
    map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>', { desc = 'select git hunk' })
  end,
})

-- [[ indent-blankline: add indentation guides even on blank lines ]]
require('ibl').setup({})

-- Set lualine as statusline
-- vim.pack.add({ gh('nvim-lualine/lualine.nvim') })
-- require('lualine').setup({
--   sections = {
--     lualine_c = {
--       { '%<.../%{expand(\'%:h:t\')}/%{expand(\'%:t\')}' }
--     },
--     lualine_x = { 'filetype' }
--   },
--   inactive_sections = {
--     lualine_c = {
--       { '%<.../%{expand(\'%:h:t\')}/%{expand(\'%:t\')}' }
--     }
--   }
-- })
