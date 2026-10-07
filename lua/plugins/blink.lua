return {
  {
      'saghen/blink.cmp',
      dependencies = { 'rafamadriz/friendly-snippets' },
      version = '*',
      build = 'cargo build --release',
      opts = {
        sources = {
          default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
          providers = {
            lazydev = {
              name = "LazyDev",
              module = "lazydev.integrations.blink",
              -- make lazydev completions top priority (see `:h blink.cmp`)
              score_offset = 100,
            },
          },
        },
        keymap = {
          preset = 'default',
          ['<C-j>'] = { 'select_next', 'fallback' },
          ['<C-k>'] = { 'select_prev', 'fallback' },
          ['<C-l>'] = { 'accept', 'fallback' },
        },

        cmdline = {
          keymap = { preset = 'inherit' },
          completion = { menu = { auto_show = true } },
        },
        fuzzy = { implementation = "rust" },
        signature = { enabled = true },

        completion = {
          documentation = { auto_show = true, auto_show_delay_ms = 500 },
          ghost_text = { enabled = true },
          menu = {
            auto_show = true,
          }
        }

      },
      opts_extend = { "sources.default" },
    }
}
