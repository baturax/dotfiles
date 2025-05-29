return {

  {
    'altermo/ultimate-autopair.nvim',
    event={'InsertEnter','CmdlineEnter'},
    branch='v0.6', --recommended as each new version will have breaking changes
    opts={
        --Config goes here
    },
  },

  {
    "windwp/nvim-ts-autotag"
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
    "romgrk/barbar.nvim",
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
    },

  }

}
