-- Holds all configuration for LSPs

-- Ensure these are installed on startup
local ensure_installed = {
  "eslint",
  "lua_ls",
  "jsonls"
}

-- Setup buffer keybindings on LspAttach
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('my.lsp', {}),
  callback = function(args)
    local bufnr = args.buf
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
    local nmap = function(keys, func, desc)
      if desc then
        desc = 'LSP: ' .. desc
      end

      vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end

    nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
    nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ctions')
    nmap('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
    nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
    nmap('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
    nmap('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')
    nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols,
      '[D]ocument [S]ymbols')
    nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols,
      '[W]orkspace [S]ymbols')
    nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
    nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')
    nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

    vim.keymap.set("n", "<leader>FF", function()
      local filetype = vim.o.filetype
      local formatterFiletypes = require('formatter.config').values.filetype
      if formatterFiletypes[filetype] ~= nil then
        vim.cmd [[FormatWrite]]
      else
        vim.lsp.buf.format()
      end
    end, { desc = '[F]ormat [F]ile' })
    vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
      vim.lsp.buf.format()
    end, { desc = 'Format current buffer with LSP' })
    -- nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
    -- nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
    -- nmap('<leader>wl', function()
    --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    -- end, '[W]orkspace [L]ist Folders')
    --
  end
})

return {
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
  },
  { -- lspconfig holds a bunch of configs for LSPs
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      { 'j-hui/fidget.nvim', opts = {} }
    }
  },
  {
    -- mason is brilliant is solves a bunch of problems for me:
    -- 1. A single place to look for LSPs
    -- 2. Let's me see when there are updates and what changed
    -- 3. Installs the LSPs automatically for me
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = ensure_installed
      })
    end
  },
  {
    "davidmh/mdx.nvim",
    dependencies = {"nvim-treesitter/nvim-treesitter"}
  },
  {
    'mrcjkb/haskell-tools.nvim',
    version = '^6', -- Recommended
    lazy = false,   -- This plugin is already lazy
    init = function()
      vim.g.haskell_tools = {
        tools = {
          log = {
            level = vim.log.levels.DEBUG
          }
        }
      }
    end,
    config = function()
      local ht = require('haskell-tools')
      vim.g.haskell_tools = {
        tools = {
          repl = {
            handler = 'toggleterm'
          }
        },
        hls = {
          on_attach = function(client, bufnr)
            local opts = { noremap = true, silent = true, buffer = bufnr, }
            -- haskell-language-server relies heavily on codeLenses,
            -- so auto-refresh (see advanced configuration) is enabled by default
            vim.keymap.set('n', '<space>cl', vim.lsp.codelens.run, opts)
            -- Hoogle search for the type signature of the definition under the cursor
            vim.keymap.set('n', '<space>hs', ht.hoogle.hoogle_signature, opts)
            -- Evaluate all code snippets
            vim.keymap.set('n', '<space>ea', ht.lsp.buf_eval_all, opts)
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action,
              { desc = 'Haskell [C]ode [A]ctions', buffer = bufnr, silent = true, noremap = true })
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename,
              { desc = 'Rename', buffer = bufnr, silent = true, noremap = true })
            -- Toggle a GHCi repl for the current package
            vim.keymap.set('n', '<leader>rf', function()
              ht.repl.toggle(vim.api.nvim_buf_get_name(0))
            end, opts)
            vim.keymap.set('n', '<leader>rq', ht.repl.quit, opts)
          end,
        },
      }
      vim.keymap.set('n', '<leader>hr', function()
        local filetype = vim.bo.filetype
        if filetype == "haskell" then
          ht.repl.toggle()
          vim.cmd "wincmd j"
        elseif #filetype == 0 then
          vim.cmd "q"
        end
      end, { desc = "toggle Haskell Repl" })
    end
  }
}
