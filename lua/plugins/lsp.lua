-- Holds all configuration for LSPs
local gh = require('bhugo.utils').gh

-- Ensure these are installed on startup
local ensure_installed = {
  "eslint",
  "lua_ls",
  "jsonls"
}

-- LSP servers to enable. Configs come from nvim-lspconfig, merged with lsp/<name>.lua in this repo.
-- hls is not listed: haskell-tools starts it on its own.
local servers = {
  "lua_ls",
  "ts_ls",
  "eslint",
  "jsonls",
  "cssls",
}

-- Servers whose binary is not managed by mason; only enabled when the binary exists
local optional_servers = {
  "somesass_ls",
  "testlang",
}

vim.g.haskell_tools = {
  tools = {
    log = {
      level = vim.log.levels.DEBUG
    },
    repl = {
      handler = 'toggleterm'
    }
  },
  hls = {
    on_attach = function(client, bufnr)
      local ht = require('haskell-tools')
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

vim.pack.add({
  gh('folke/lazydev.nvim'),
  -- lspconfig holds a bunch of configs for LSPs
  gh('neovim/nvim-lspconfig'),
  -- mason is brilliant is solves a bunch of problems for me:
  -- 1. A single place to look for LSPs
  -- 2. Let's me see when there are updates and what changed
  -- 3. Installs the LSPs automatically for me
  gh('mason-org/mason.nvim'),
  gh('mason-org/mason-lspconfig.nvim'),
  -- Useful status updates for LSP
  gh('j-hui/fidget.nvim'),
  gh('nvim-treesitter/nvim-treesitter'),
  gh('davidmh/mdx.nvim'),
  { src = gh('mrcjkb/haskell-tools.nvim'), version = vim.version.range('6') },
})

require('lazydev').setup({})
require('fidget').setup({})
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = ensure_installed,
  -- servers are enabled explicitly below
  automatic_enable = false,
})

for _, name in ipairs(optional_servers) do
  local cmd = (vim.lsp.config[name] or {}).cmd
  if type(cmd) == 'table' and vim.fn.executable(cmd[1]) == 1 then
    table.insert(servers, name)
  end
end
vim.lsp.enable(servers)

vim.keymap.set('n', '<leader>hr', function()
  local filetype = vim.bo.filetype
  if filetype == "haskell" then
    require('haskell-tools').repl.toggle()
    vim.cmd "wincmd j"
  elseif #filetype == 0 then
    vim.cmd "q"
  end
end, { desc = "toggle Haskell Repl" })

-- Setup buffer keybindings on LspAttach
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('my.lsp', {}),
  callback = function(args)
    local bufnr = args.buf
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
    -- TODO revisit: Neovim 0.11+ ships default LSP keymaps that overlap most of these
    -- (grn rename, gra code action, grr references, gri implementation, grt type definition,
    -- gO document symbols, K hover, <C-s> signature help in insert mode). See `:h lsp-defaults`.
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
