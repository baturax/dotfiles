return {
  "romgrk/barbar.nvim",

  dependencies = {
    "lewis6991/gitsigns.nvim",
    "nvim-tree/nvim-web-devicons"
  },

  opts = {
    animation = true,
    icons = {
      gitsigns = {
      added = {enabled = true, icon = '+'},
      changed = {enabled = true, icon = '~'},
      deleted = {enabled = true, icon = '-'},
    },

    }
  }
}
