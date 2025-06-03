return {
  "saghen/blink.cmp",

  dependencies = {
    "rafamadriz/friendly-snippets",
  },

  version = '1.*',

  opts = {
    keymap = {
      preset = "super-tab"
    },

    appearance = {
      nerd_font_variant = 'normal'
    },

    completion = {
      menu = {
        auto_show = true,
        border = "rounded"
      },

      list = {
        selection = {
          preselect = false,
          auto_insert = true
        }
      },

      documentation = {
        auto_show = true,
        auto_show_delay_ms = 100,

        window = {
          border = "rounded"
        },
      },
    },

    signature = {
      enabled = true,
      window = {
        border = "rounded"
      }
    },

    sources = {
      default = {
        'lsp',
        'path',
        'snippets',
        'buffer'
      },
    },

    fuzzy = {
      implementation = "prefer_rust_with_warning"
    },
  },

  opts_extend = {
    "sources.default"
  }

}
