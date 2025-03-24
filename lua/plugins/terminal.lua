-- plugins related to terminals and shells
return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {},
    config = function()
      local Terminal = require('toggleterm.terminal').Terminal
      local terminals = {}

      -- This toggleterm keymap toggles a terminal per tabpage dir
      -- ie. all tabpages with the same cwd will open the same terminal
      -- tabpages on a different cwd will open another terminal
      vim.keymap.set({ 'n', 'i', 't' }, [[<c-\>]], function()
        local dir = vim.fn.getcwd(-1)
        local path = vim.fn.split(vim.fn.getcwd(-1), '/')
        local term = terminals[dir] or Terminal:new({
          hidden = true,
          dir = dir,
          display_name = path[#path],
          on_exit = function() terminals[dir] = nil end
        })
        terminals[dir] = term
        term:toggle(nil, 'float')
      end, { desc = 'Toggle tab terminal' })
    end
  }
}
