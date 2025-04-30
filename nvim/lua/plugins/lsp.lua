return {
  'neovim/nvim-lspconfig',
  config = function()
    local capabilities = require('blink.cmp').get_lsp_capabilities()
    local lspconfig = require('lspconfig')

    lspconfig['lua_ls'].setup({
      capabilities = capabilities,
    })

   lspconfig['clangd'].setup({
      capabilities = capabilities,
    })

    lspconfig['vala_ls'].setup({
      capabilities = capabilities,
    })


  end,
}
