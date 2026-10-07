return {
  { 'bettervim/yugen.nvim' },
  { 'rose-pine/neovim',     name = 'rose-pine' },
  { 'rmehri01/onenord.nvim' },
  { 'zenbones-theme/zenbones.nvim', 
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.zenbones_compat = 1
      vim.cmd.colorscheme('zenbones')
    end
  }
}
