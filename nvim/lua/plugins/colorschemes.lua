return {

	{
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      config = function()
         vim.cmd([[colorscheme sherbet]])
      end,
   },

   {
      "catppuccin/nvim",
      name = "catppuccin",
      priority = 1000
   },

   {
      "mountain-theme/vim"
   },

   {
      "lewpoly/sherbet.nvim"
   }

}
