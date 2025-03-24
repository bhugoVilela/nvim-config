-- Holds all configuration for LSPs

-- More can be installed through Mason
local servers = {
  eslint = {},
  lua_ls = {
    Lua = {
      workspace = { checkThirdParty = false },
      telemetry = { enable = false },
      -- NOTE: toggle below to ignore Lua_LS's noisy `missing-fields` warnings
      -- diagnostics = { disable = { 'missing-fields' } },
    },
  },
  jsonls = {
    filetypes = { 'json', 'jsonc' },
  }
}

return {
  { -- lspconfig holds a bunch of configs for LSPs
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      { 'j-hui/fidget.nvim', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },
  {
    -- mason is brilliant is solves a bunch of problems for me:
    -- 1. A single place to look for LSPs
    -- 2. Let's me see when there are updates and what changed
    -- 3. Installs the LSPs automatically for me
    'williamboman/mason.nvim',
    config = function()
      -- runs on every LSP attach
      -- configures keymaps
      local on_attach = function(_, bufnr)
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

      require('mason').setup()
      require('mason-lspconfig').setup()
      require('neodev').setup()
      local mason_lspconfig = require('mason-lspconfig')

      -- nvim-cmp supports additional completion capabilities, so broadcast that to servers
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

      mason_lspconfig.setup {
        ensure_installed = vim.tbl_keys(servers),
      }

      -- Sets ups mason-lspconfig to fetch the correct lspconfig
      -- foreach server installed through Mason
      local mason_lspconfig = require 'mason-lspconfig'
      mason_lspconfig.setup_handlers {
        function(server_name)
          require('lspconfig')[server_name].setup {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = servers[server_name],
            filetypes = (servers[server_name] or {}).filetypes,
          }
        end,
      }
    end
  },
  {
    'mrcjkb/haskell-tools.nvim',
    version = '^4', -- Recommended
    lazy = false,   -- This plugin is already lazy
    init = function ()
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
      vim.api.nvim_create_augroup('HaskellKeymaps', { clear = true })
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'haskell',
        group = 'HaskellKeymaps',
        callback = function()
          local bufnr = vim.api.nvim_get_current_buf()
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
          -- Toggle a GHCi repl for the current package
          -- Toggle a GHCi repl for the current buffer
          vim.keymap.set('n', '<leader>rf', function()
            ht.repl.toggle(vim.api.nvim_buf_get_name(0))
          end, opts)
          vim.keymap.set('n', '<leader>rq', ht.repl.quit, opts)
        end
      })
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
