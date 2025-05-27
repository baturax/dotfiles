return {

  {
    "RRethy/vim-illuminate",
    config = function()
      require('illuminate').configure({
        providers = {
          'treesitter',
          'lsp',
          'regex'
        },
      })
    end
  },

  {
    "lambdalisue/vim-suda"
  },

  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {
        '*',
        css = {rgb_fn = true},
    }
  },

  {
    "mikavilpas/yazi.nvim",
    opts = {
      floating_window_scaling_factor = 0.5,
      yazi_floating_window_winblend = 70
    }
  },

  {
    "mbbill/undotree"
  }

}
