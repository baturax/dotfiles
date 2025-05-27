return {

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true
  },

  {
    "mong8se/actually.nvim",
    dependencies =  {"stevearc/dressing.nvim"}
  },

  {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      pickers = {
        colorscheme = {
          enable_preview = true
        }
      }
    }
  },

  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    opts = {
      options = {
      }
    }
  }

}
