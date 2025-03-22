--[[
-- Kickstart.nvim
-- This is my version of kickstart.nvim
--]]

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

Lib = {
  IsLinux = function()
    return vim.loop.os_uname().sysname == 'Linux'
  end,

  IsMac = function()
    return vim.loop.os_uname().sysname == 'Darwin'
  end,

  WhenOs = function(table)
    local entry = table[vim.loop.os_uname().sysname]
    if not entry then return end
    return entry()
  end
}

-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

local function DAP_CONFIGURE()
  for _, language in ipairs({ "typescript", "javascript", "typescriptreact", "javascriptreact" }) do
    require("dap").configurations[language] = {
      {
        name = 'Debug on chrome (localhost:5173)',
        type = "pwa-chrome",
        request = "launch",
        url = 'http://localhost:5173',
        webRoot = "${workspaceFolder}"
      },
      {
        name = "Launch Current Node File",
        type = "pwa-node",
        request = "launch",
        program = "${file}",
        cwd = "${workspaceFolder}",
      },
      {
        name = "Launch typescript project",
        type = "pwa-node",
        preLaunchTask = "tsc",
        request = "launch",
        program = "${workspaceFolder}/dist/index.js", --"${file}",
        cwd = "${workspaceFolder}",
        sourceMaps = true,
        outFiles = {
          '${workspaceFolder}/dist/*.js'
        },
        resolveSourceMapLocations = {
          '${workspaceFolder}/dist/**/*.js',
          '${workspaceFolder}/dist/*.js'
        }
      },
      {
        name = "Attach Nodemon",
        type = "pwa-node",
        request = "attach",
        processId = require 'dap.utils'.pick_process,
        restart = true,
        protocol = "inspector",
        cwd = "${workspaceFolder}",
      },
      {
        name = "Attach Node",
        type = "pwa-node",
        request = "attach",
        processId = require 'dap.utils'.pick_process,
        cwd = "${workspaceFolder}",
      },
      {
        name = "Debug Jest Tests",
        type = "pwa-node",
        request = "launch",
        -- trace = true, -- include debugger info
        runtimeExecutable = "node",
        runtimeArgs = {
          "./node_modules/jest/bin/jest.js",
          "--runInBand",
        },
        rootPath = "${workspaceFolder}",
        cwd = "${workspaceFolder}",
        console = "integratedTerminal",
        internalConsoleOptions = "neverOpen",
      }
    }
  end
end

-- [[ Configure plugins ]]
require('lazy').setup({
  {
    -- 'bhugovilela/palette.nvim', version='0.1.0'
    dir = '/Users/bhugo/code/nvim-plugins/palette.nvim'
  },
  -- {
  --   dir = '/Users/bhugo/code/nvim-plugins/Secrets/'
  -- },
  {
    'mrcjkb/haskell-tools.nvim',
    version = '^4', -- Recommended
    lazy = false, -- This plugin is already lazy
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
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Haskell [C]ode [A]ctions', buffer = bufnr, silent = true, noremap = true })
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
        end, { desc = "toggle Haskell Repl"})
    end
  },
  {
    'bettervim/yugen.nvim'
  },
  { 'tpope/vim-dadbod' },
  { 'kristijanhusak/vim-dadbod-completion' },
  { 'kristijanhusak/vim-dadbod-ui' },
  {
    'mhartington/formatter.nvim',
    opts = (function()
      local prettier = function()
        return {
          exe = "prettier",
          args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0) },
          try_node_modules = true,
          stdin = true
        }
      end

      return {
        logging = true,
        filetype = {
          typescriptreact = { prettier },
          typescript = { prettier },
          javascript = { prettier },
          javascriptreact = { prettier },
          json = { prettier }
        }
      }
    end)()
  },
  {
    -- ChatGPT
    "robitx/gp.nvim",
    config = function()
      require('gp').setup {
        openai_api_key = { "cat", (vim.fn.expand("~").."/.config/.openai_api_key") }
      }
    end,
    cmd = {
      "GpChatNew", "GpChatPaste", "GpChatToggle", "GpChatFinder", "GpChatDelete",
      "GpRewrite", "GpAppend", "GpPrepend", "GpEnew", "GpNew", "GpVnew", "GpTabnew",
      "GpPopup", "GpImplement", "GpContext", "GpAgent", "GpNextAgent", "GpImage", "GpImageAgent",
      "GpStop", "GpInspectPlugin"
    }
  },
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
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },
  {
    -- DAP
    'mfussenegger/nvim-dap',
    config = function()
      DAP_CONFIGURE()
    end
  },
  {
    'mxsdev/nvim-dap-vscode-js',
    dependencies = {
      'mfussenegger/nvim-dap',
      'microsoft/vscode-js-debug',
    },
    opts = {
      adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost', 'chrome' }
    }
  },
  {
    'theHamsta/nvim-dap-virtual-text',
    opts = {},
    dependencies = {
      'mfussenegger/nvim-dap'
    }
  },
  {
    "microsoft/vscode-js-debug",
    run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
  },
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
  { -- better UI for vim pickers
    'stevearc/dressing.nvim',
    opts = {},
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
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      require('toggleterm').setup({})
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
  },
  -- {
  --   'nvim-ts-autotag',
  --   version = '*',
  --   opts = {}
  -- },
  {
    'nvim-focus/focus.nvim',
    version = '*',
    opts = {
      ui = {
        signcolumn = false
      }
    },
    -- config = function()
    --   require('focus').setup()
    -- end
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {
        on_attach = function(bufnr)
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
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  {
    "jiaoshijie/undotree",
    dependencies = "nvim-lua/plenary.nvim",
    config = true,
    keys = { -- load the plugin only when using it's keybinding:
      { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
    },
  },
  { -- LSP
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
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    commit = 'b356f2c',
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',

      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp-signature-help'
    },
  },
  {
    'folke/which-key.nvim',
    opts = {}
  },
  {
    -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
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
            gs.next_hunk()
          end)
          return '<Ignore>'
        end, { expr = true, desc = 'Jump to next hunk' })

        map({ 'n', 'v' }, '[c', function()
          if vim.wo.diff then
            return '[c'
          end
          vim.schedule(function()
            gs.prev_hunk()
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
        map('n', '<leader>hs', gs.stage_hunk, { desc = 'git stage hunk' })
        map('n', '<leader>hr', gs.reset_hunk, { desc = 'git reset hunk' })
        map('n', '<leader>hS', gs.stage_buffer, { desc = 'git Stage buffer' })
        map('n', '<leader>hu', gs.undo_stage_hunk, { desc = 'undo stage hunk' })
        map('n', '<leader>hR', gs.reset_buffer, { desc = 'git Reset buffer' })
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
        map('n', '<leader>td', gs.toggle_deleted, { desc = 'toggle git show deleted' })

        -- Text object
        map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>', { desc = 'select git hunk' })
      end,
    },
  },
  {
    -- Theme inspired by Atom
    'navarasu/onedark.nvim',
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'onedark'
    end,
  },
  {
    'rmehri01/onenord.nvim',
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'onenord'
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'catppuccin-macchiato'
    end,
  },
  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    config = function()
      require('ibl').setup({})
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      -- vim.defer_fn(function()
      --   vim.cmd.colorscheme("rose-pine-main")
      --   vim.cmd("hi IblIndent guifg=#201F30")
      --   vim.cmd("hi IblScope guifg=#302E48")
      --   vim.cmd("hi clear netrwMarkFile")
      --   vim.cmd("hi link netrwMarkFile CurSearch")
      --   require('ibl').update({})
      -- end, 1)
    end,
  },
  -- {
  --   'echasnovski/mini.statusline',
  --   version = false,
  --   opts = {}
  -- },
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    opts = {
      sections = {
        lualine_c = {
          { '%<.../%{expand(\'%:h:t\')}/%{expand(\'%:t\')}' }
        },
        lualine_x = { 'filetype' }
      },
      inactive_sections = {
        lualine_c = {
          { '%<.../%{expand(\'%:h:t\')}/%{expand(\'%:t\')}' }
        }
      }
    },
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },
  {
    'numToStr/Comment.nvim',
    opts = {}
  },
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- Fuzzy Finder Algorithm which requires local dependencies to be built.
      -- Only load if `make` is available. Make sure you have the system
      -- requirements installed.
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
    },
  },
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },
})

-- [[ Setting options ]]
vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.wrap = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.wo.signcolumn = "yes"
vim.opt.updatetime = 50
vim.g.mapleader = " "
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.mouse = ""
vim.opt.swapfile = false
vim.o.completeopt = 'menuone,noselect'
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldtext = "v:lua.vim.treesitter.foldtext()"
vim.opt.foldlevelstart = 9999
vim.api.nvim_create_user_command('W', ':w', {})
vim.g.netrw_banner = 0
vim.g.netrw_localcopydircmd = 'cp -r'
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.tildeop = true

-- [[ Neovide ]]
-- Allow clipboard copy paste in neovim
vim.g.neovide_input_use_logo = 1
vim.api.nvim_set_keymap('', '<D-v>', '"+p<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })

if vim.g.neovide then
  vim.o.guifont = "MesloLGL Nerd Font Mono:h17:#e-subpixelantialias:#h-none"
  vim.o.guifont = "MesloLGS NF:h17:#e-subpixelantialias:#h-none"
end

-- [[ keymaps ]]
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex, { desc = 'open netrw' })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = 'Move lines down' })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = 'Move lines up' })
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = 'Paste without losing current clipboard' })
vim.keymap.set({ "n", "v" }, "<leader>y", "\"*y", { desc = 'Yank to system clipboard' })
vim.keymap.set("n", "<leader>Y", "\"*Y", { desc = 'Yank to system clipboard' })
vim.keymap.set("n", "<C-h>", "^", { desc = '^' })
vim.keymap.set("n", "<C-l>", "$", { desc = '^' })
vim.keymap.set("i", "<C-h>", "^", { desc = '^' })
vim.keymap.set("i", "<C-l>", "$", { desc = '^' })
vim.keymap.set("v", "<C-h>", "^", { desc = '^' })
vim.keymap.set("v", "<C-l>", "$", { desc = '^' })
-- map jk to escape; esc to NOOP
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "jk", "<C-\\><C-n>", { desc = 'escape' })
vim.keymap.set("i", "jk", "<Esc>", { desc = 'escape' })
vim.keymap.set("n", "<C-p>", "<C-^>", { desc = 'jump to alternate file' })
-- use . to apply latest normal cmd to selection
vim.keymap.set("x", ".", ":normal .<cr>", { desc = 'Apply . to selection' })
vim.keymap.set("n", "<leader>w", ":w<cr>")
vim.keymap.set("n", "<C-w>e", "20<C-w>>", { desc = 'expand window horizontaly' })
vim.keymap.set("n", "<C-w>E", "20<C-w><", { desc = 'shrink window horizontaly' })
vim.keymap.set("n", "<S-Q>", "") -- disable Ex mode
-- folds
vim.keymap.set("n", "zf1", ":set foldlevel=0<cr>")
vim.keymap.set("n", "zf2", ":set foldlevel=1<cr>")
vim.keymap.set("n", "zf3", ":set foldlevel=2<cr>")
vim.keymap.set("n", "zf4", ":set foldlevel=3<cr>")
-- diagnostic
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR }) end,
  { desc = 'go to next error diagnostic' })
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR }) end,
  { desc = 'go to prev error diagnostic' })
vim.keymap.set('n', '<leader>gl', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
vim.keymap.set("n", "-", vim.cmd.Ex)
vim.keymap.set("n", "<leader>nn", ":NvimTreeFocus<CR>", { desc = 'Focus Nvim Tree' })
vim.keymap.set("n", "<leader>nt", ":NvimTreeToggle<CR>", { desc = 'Toggle Nvim Tree' })
vim.keymap.set("n", "<leader>nf", ":NvimTreeFindFile<CR>", { desc = 'Find file on Nvim Tree' })

vim.keymap.set("n", "<S-Enter>", "<cmd>cn<cr>")

require('bhugo.Other')
vim.keymap.set("n", "<leader>,a", ":Other<CR>", { silent = true })
vim.keymap.set("n", "<leader>,A", ":OtherList<CR>", { silent = true })

vim.keymap.set("n", "gx", function()
  require('bhugo.xref').jump_to_xref()
end, { silent = true, desc = "Jump to the xref (file:line:col) below the cursor on the alternate window " })

vim.keymap.set("v", "gx", function()
  require('bhugo.xref').jump_to_visual_xref()
end, { silent = true, desc = "Jump to the xref (file:line:col) in visual selection" })

-- [[ Highlight on yank ]]
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({ timeout = 200 })
  end,
  group = highlight_group,
  pattern = '*',
})


-- overwrite Ex with Oil
vim.api.nvim_create_user_command('Explore', 'Oil', { desc = 'launch Oil' })

-- [[ Configure Telescope ]]
require('telescope').setup {
  defaults = {
    default_file_explorer = true,
    mappings = {
      i = {
        ['<C-u>'] = false,
        ["<C-l>"] = require('telescope.actions').select_default,
        ["<C-k>"] = require('telescope.actions').move_selection_previous,
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-d>"] = require('telescope.actions').delete_buffer,
        ["<C-Q>"] = require('telescope.actions').smart_send_to_qflist + require('telescope.actions').open_qflist,
      },
      n = {
        ['jk'] = require('telescope.actions').close,
        ['<C-Q>'] = require('telescope.actions').smart_send_to_qflist + require('telescope.actions').open_qflist,
        ['q'] = require('telescope.actions').smart_send_to_qflist + require('telescope.actions').open_qflist,
      }
    },
  },
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

local function telescope_keymaps()
  local builtin = require('telescope.builtin')
  vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[f]ind [f]iles' })
  vim.keymap.set('n', '<leader>pf', builtin.git_files, { desc = 'find git files' })
  vim.keymap.set('n', '<leader>pg', builtin.live_grep, { desc = '[p]roject [g]rep, find in project' })
  vim.keymap.set('n', '<leader>bg', function() builtin.live_grep({ grep_open_files = true }) end,
    { desc = '[b]uffer [g]rep, find in open buffers' })
  vim.keymap.set('n', '<leader>po',
    function() builtin.live_grep { grep_open_files = true, prompt_title = 'Live Grep in Open Files' } end,
    { desc = '[p]roject grep in [o]pen files' })
  vim.keymap.set('n', '<leader>fr', builtin.lsp_references, { desc = '[f]ind [r]eferences' })
  vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[f]ind [b]uffers' })
  vim.keymap.set('n', '<leader>fH', builtin.keymaps, { desc = '[f]ind [h]elp keymaps' })
  vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[f]ind [h]elp tags' })
  vim.keymap.set('n', '<leader>fsd', builtin.lsp_document_symbols, { desc = 'find document symbols' })
  vim.keymap.set('n', '<leader>fsw', builtin.lsp_workspace_symbols, { desc = 'find workspace symbols' })
  vim.keymap.set("n", "<leader>gd", builtin.lsp_definitions, { desc = '[g]o (find) to [d]efinition' })
  vim.keymap.set("n", "<leader>fl", builtin.resume, { desc = '[f]ind [l]ast, opens last telescope result' })
  vim.keymap.set("n", "<leader>fc", builtin.command_history, { desc = '[f]ind [c]ommand history' })
  vim.keymap.set("n", "<leader>fm", builtin.marks, { desc = '[f]ind [m]arks' })
  vim.keymap.set("n", "<leader>fq", builtin.quickfix, { desc = '[f]ind quickfix' })
  vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[f]ind current [w]ord' })
  vim.keymap.set('n', '<leader>/', function()
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      winblend = 10,
      previewer = false,
    })
  end, { desc = '[/] Fuzzily search in current buffer' })
end
telescope_keymaps()

-- [[ Configure Treesitter ]]
-- Defer Treesitter setup after first render to improve startup time of 'nvim {filename}'
vim.defer_fn(function()
  require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "typescript", "svelte" },

    auto_install = true,

    highlight = { enable = true },
    autotag = { enable = true },
    indent = { enable = true },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = '<c-space>',
        node_incremental = '<c-space>',
        scope_incremental = '<c-s>',
        node_decremental = '<M-space>',
      },
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ['aa'] = '@parameter.outer',
          ['ia'] = '@parameter.inner',
          ['af'] = '@function.outer',
          ['if'] = '@function.inner',
          ['ac'] = '@class.outer',
          ['ic'] = '@class.inner',
        },
      },
      move = {
        enable = true,
        set_jumps = true, -- whether to set jumps in the jumplist
        goto_next_start = {
          [']m'] = '@function.outer',
          [']]'] = '@class.outer',
        },
        goto_next_end = {
          [']M'] = '@function.outer',
          [']['] = '@class.outer',
        },
        goto_previous_start = {
          ['[m'] = '@function.outer',
          ['[['] = '@class.outer',
        },
        goto_previous_end = {
          ['[M'] = '@function.outer',
          ['[]'] = '@class.outer',
        },
      },
      swap = {
        enable = true,
        swap_next = {
          ['<leader>a'] = '@parameter.inner',
        },
        swap_previous = {
          ['<leader>A'] = '@parameter.inner',
        },
      },
    },
  }
end, 0)

-- [[ Configure LSP ]]
--  This function gets run when an LSP connects to a particular buffer.
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
  nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
  nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
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

-- document existing key chains
-- require('which-key').register {
--   ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
--   ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
--   ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
--   ['<leader>h'] = { name = 'Git [H]unk', _ = 'which_key_ignore' },
--   ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
--   ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
--   ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
--   ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
-- }
-- register which-key VISUAL mode
-- required for visual <leader>hs (hunk stage) to work
-- require('which-key').register({
--   ['<leader>'] = { name = 'VISUAL <leader>' },
--   ['<leader>h'] = { 'Git [H]unk' },
-- }, { mode = 'v' })

-- mason-lspconfig requires that these setup functions are called in this order
-- before setting up the servers.
require('mason').setup()
require('mason-lspconfig').setup()

-- Enable the following language servers
--  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
--  If you want to override the default filetypes that your language server will attach to you can
--  define the property 'filetypes' to the map in question.
local servers = {
  -- clangd = {},
  -- gopls = {},
  -- pyright = {},
  -- rust_analyzer = {},
  -- html = { filetypes = { 'html', 'twig', 'hbs'} },

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
  },
  ltex = {
    cmd = { "JAVA_HOME='/Users/bhugo/Library/Java/JavaVirtualMachines/openjdk-17.0.2/Contents/Home' ltex-ls" },
    filetypes = { "markdown", "text" },
  }
}

-- Setup neovim lua configuration
require('neodev').setup()

-- nvim-cmp supports additional completion capabilities, so broadcast that to servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- Ensure the servers above are installed
local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers),
}

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

-- [[ Configure nvim-cmp ]]
-- See `:help cmp`
local cmp = require 'cmp'
local luasnip = require 'luasnip'
require('luasnip.loaders.from_vscode').lazy_load()
luasnip.config.setup {}

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  completion = {
    completeopt = 'menu,menuone,noinsert',
  },
  mapping = cmp.mapping.preset.insert {
    ['<C-k>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    ['<C-j>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
    ['<C-l>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete({}),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'path' },
    { name = "nvim_lsp_signature_help" }
  },
}
-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline({
    ['<C-l>'] = { c = cmp.mapping.confirm({ select = true }) },
    ['<C-k>'] = { c = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }) },
    ['<C-j>'] = { c = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }) },
  }),
  sources = {
    { name = 'buffer' }
  }
})
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline({
    ['<C-l>'] = { c = cmp.mapping.confirm({ select = true }) },
    ['<C-k>'] = { c = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }) },
    ['<C-j>'] = { c = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }) },
  }),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Disable focus (window automatic resizing) when certain windows are open
local function setupFocus()
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
end
setupFocus()

-- configure netrw mappings
vim.cmd [[
  augroup netrw_mapping
    autocmd!
    autocmd FileType netrw nmap <buffer> l <Enter>
    autocmd FileType netrw nmap <buffer> h -
  augroup end
]]

-- [ Delete Hidden Buffers ]
function DeleteHiddenBuffers()
  local allbufs = vim.fn.getbufinfo()
  local bufs = {}
  for idx, buf in ipairs(allbufs) do
    local bufnr = buf.bufnr
    local isTerm = vim.api.nvim_buf_get_option(bufnr, 'buftype') == 'terminal'
    if buf.listed == 1 and buf.hidden == 1 and buf.loaded == 1 and buf.changed == 0 and not isTerm then
      table.insert(bufs, buf.name)
      pcall(vim.api.nvim_buf_delete, bufnr, {})
    end
  end
  print("Deleted: " .. vim.inspect(bufs))
end

vim.api.nvim_create_user_command("DeleteHiddenBuffers", DeleteHiddenBuffers, {
  desc = "Deletes hidden buffers"
})



-- POSH ---
local augroup = vim.api.nvim_create_augroup('Posh', { clear = true })

vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  group = augroup,
  pattern = "*.posh",
  callback = function(_)
    vim.api.nvim_buf_set_option(0, "filetype", "posh")
    vim.api.nvim_win_set_option(0, "conceallevel", 2)
    -- vim.api.nvim_buf_set_option(0, "conceallevel", "2")
    vim.cmd [[set cms=#%s]]
  end,
  desc = 'disable focus autoresize for filetypes'
})

--- DAP MENU ---
local function dap_menu()
  vim.ui.select({
    "Toggle Breakpoint",
    "Conditional Breakpoint",
    "Continue",
    "New Session",
    "Next",
    "Into",
    "Out",
    "Exit",
    "Repl",
  }, {}, function(choice)
    local dap = require('dap')
    if (choice == "Toggle Breakpoint") then
      dap.toggle_breakpoint()
    elseif choice == "Conditional Breakpoint" then
      vim.ui.input({ prompt = "Condition:" }, function(input)
        dap.toggle_breakpoint(input or "")
      end)
    elseif choice == "Continue" then
      dap.continue()
      -- require("dap").configurations[language] = {
    elseif choice == "New Session" then
      local ft = vim.api.nvim_buf_get_option(0, 'filetype')
      local configs = dap.configurations[ft]
      local names = {}
      local configsPerName = {}
      for i, obj in ipairs(configs) do
        table.insert(names, obj.name)
        configsPerName[obj.name] = obj
      end
      vim.ui.select(names, { prompt = "Select a base" }, function(name)
        if not name then return end
        local config = configsPerName[name]
        print(vim.inspect(config))
        local clone = vim.tbl_deep_extend('keep', {}, config)
        vim.ui.input({ prompt = 'comma separated args:' }, function(argStr)
          local args = vim.split(argStr, ',', { plain = true })
          clone.args = args
          clone.name = name .. ' with ' .. argStr
          table.insert(dap.configurations[ft], clone)
          print('running: ' .. vim.inspect(clone))
          dap.run(clone)
        end)
      end)
      print(ft)
    elseif choice == "Next" then
      dap.step_over()
    elseif choice == "Into" then
      dap.step_into()
    elseif choice == "Out" then
      dap.step_out()
    elseif choice == "Exit" then
      dap.close()
    elseif choice == "Repl" then
      dap.repl.open()
    end
  end)
end

vim.keymap.set("n", ",d", function() dap_menu() end, { desc = "open dap menu" })

-- -- DASHBOARD / SPLASHSCREEN
-- local showSplashScreen = require('bhugo.SplashScreen')
-- showSplashScreen()

require('bhugo.Recent').add_cwd(nil, true, 5000)

function CloneHighlightAndMakeBold(group_name, target_group)
  local hl = vim.api.nvim_get_hl(0, { name = group_name })
  hl.bold = true
  vim.api.nvim_set_hl(0, target_group, hl)
end

--TULA
vim.api.nvim_create_augroup('Tula', { clear = true })
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = "*.tula",
  callback = function()
    -- CloneHighlightAndMakeBold("Keyword", "boldKeyword")
    vim.cmd [[setfiletype tula]]
    vim.cmd [[setlocal syntax=tula]]
    vim.cmd [[setlocal commentstring=--%s]]
    vim.cmd [[set conceallevel=2]]
    vim.cmd [[hi link Conceal Keyword]]
    -- CloneHighlightAndMakeBold("Keyword", "Conceal")
  end
})

vim.api.nvim_create_user_command("Config", function()
  vim.cmd("tabnew | tcd ~/.config/nvim | e init.lua | let t:tabname='cwd'")
end, {
  desc = "Opens the nvim config in a new tab"
})

vim.cmd [[autocmd FileType markdown setlocal spell]]

--Interpret
vim.cmd [[
  autocmd FileType javascript let b:interpreter = "node"
  autocmd FileType python let b:interpreter = "python"
]]

vim.keymap.set("x", "<leader>rr", function()
  local start_pos = vim.fn.getpos("v")
  local end_pos = vim.fn.getpos(".")

  local start_line = start_pos[2]
  local start_col = start_pos[3]
  local end_line = end_pos[2]
  local end_col = end_pos[3]

  local lines = vim.fn.getline(start_line, end_line)

  if #lines == 1 then
    lines[1] = string.sub(lines[1], start_col, end_col)
  else
    lines[1] = string.sub(lines[1], start_col)
    lines[#lines] = string.sub(lines[#lines], 1, end_col)
  end

  -- Join the lines into a single JavaScript expression
  local selected_text = table.concat(lines, "\n")

  -- Execute node with the selected text
  local result = vim.fn.system({ 'node', '-p', selected_text })

  -- Print the result
  vim.api.nvim_echo({ { result, 'Normal' } }, false, {})
end, { desc = 'run (interpret) current selection' })

vim.keymap.set("n", "<leader>rr", function()
  local interpreter = vim.b.interpreter or "node"
  vim.cmd(string.format('w | w ! %s %%', interpreter))
end, { desc = "run (interpret) current file" })

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
