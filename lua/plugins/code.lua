-- Plugins that are related to code editting

return {

  { -- multi cursors
    -- TODO: multicursor.nvim seems more promising
    'mg979/vim-visual-multi'
  },
  {
    "nvim-lua/plenary.nvim"
  },
  {
    'tpope/vim-fugitive',
  },
  {
    'tpope/vim-sleuth',
  },
  {
    'LunarVim/bigfile.nvim',
  },
  {
    'anuvyklack/pretty-fold.nvim',
    config = function()
      require('pretty-fold').setup {
        ft_ignore = { 'palette-nvim' }
      }
    end,
    event = 'VeryLazy'
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  {
    'numToStr/Comment.nvim',
    opts = {}
  },
}
