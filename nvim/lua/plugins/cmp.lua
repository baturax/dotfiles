return {

  {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',
    opts = {
      keymap = { preset = 'super-tab' },
      appearance = { nerd_font_variant = "normal" },
      completion = { documentation = { auto_show = true } },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
      fuzzy = { implementation = "prefer_rust_with_warning" }
    },
    opts_extend = { "sources.default" }
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = { 'saghen/blink.cmp' },
    opts = {
      servers = {
        lua_ls = {},
        bashls = {},
        pyright = {},
        clangd = {},
        ts_ls = {},
        html = {},
        rust_analyzer = {},
        gopls = {},
        jsonls = {},
        yamlls = {}
      }
    },
    config = function()
      local capabilities = require('blink.cmp').get_lsp_capabilities()
      local lspconfig = require('lspconfig')

      lspconfig['lua_ls'].setup({ capabilities = capabilities })
      lspconfig['bashls'].setup({ capabilities = capabilities })
      lspconfig['pyright'].setup({ capabilities = capabilities })
      lspconfig['clangd'].setup({ capabilities = capabilities })
      lspconfig['ts_ls'].setup({ capabilities = capabilities })
      lspconfig['html'].setup({ capabilities = capabilities })
      lspconfig['rust_analyzer'].setup({ capabilities = capabilities })
      lspconfig['gopls'].setup({ capabilities = capabilities })
      lspconfig['jsonls'].setup({ capabilities = capabilities })
      lspconfig['yamlls'].setup({ capabilities = capabilities })

    end
  }
}
