return {

  {
    "kdheepak/lazygit.nvim"
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      {"3rd/image.nvim", opts = {}},
    },
    opts = {
      window = {
        width = 20
      }
    }
  },

  {
    "karb94/neoscroll.nvim",
  },

  {
    "folke/which-key.nvim",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate"
  }

}
