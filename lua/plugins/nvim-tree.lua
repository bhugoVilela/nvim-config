-- nvim-tree, sidebar file explorer
-- I would love nothing more than replace this with oil
-- but alas, oil has no support for a treeview and this comes in handy sometimes
return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      on_attach = function(bufnr)
        -- TODO spend some time to make the keybindings more alike oil
        require('nvim-tree.api').config.mappings.default_on_attach(bufnr)
        vim.keymap.set('n', 'l', require('nvim-tree.api').node.open.edit,
          { buffer = bufnr, desc = 'nvim-tree: open file', noremap = true, silent = true, nowait = true })
      end,
      hijack_netrw = false,
      update_focused_file = {
        enable = true,
        update_cwd = false,
      },
      view = {
        adaptive_size = false,
        centralize_selection = true,
        preserve_window_proportions = false,
        width = 30,
        side = "left",
        float = {
          enable = false,
          quit_on_focus_loss = true
        }
      },
      actions = {
        open_file = {
          quit_on_open = true
        }
      }
    }
  }
}
