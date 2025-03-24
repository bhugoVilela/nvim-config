return {
  {
    'stevearc/oil.nvim',
    opts = {
      keymaps = {
        ['<C-l>'] = 'actions.select',
        ['<C-h>'] = 'actions.parent',
        ['<C-v>'] = 'actions.select_vsplit',
        ['<C-s>'] = 'actions.select_split',
      }
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    init = function()
      -- overwrite Ex with Oil
      vim.api.nvim_create_user_command('Explore', 'Oil', { desc = 'launch Oil' })
    end
  },
}
