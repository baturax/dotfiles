return {
   {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
   },

   {
      "mong8se/actually.nvim"
   },

   {
      "stevearc/dressing.nvim"
   },

   {
      "farmergreg/vim-lastplace"
   },

   {
      "fedepujol/bracketpair.nvim"
   },

   {
      "nvim-telescope/telescope.nvim", tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function ()
         require("telescope").setup {
            pickers = {
               colorscheme = {
                  enable_preview = true
               }
            }
         }
      end

   },

   {
      "romgrk/barbar.nvim",
      dependencies = {
         "lewis6991/gitsigns.nvim",
         "nvim-tree/nvim-web-devicons"
      },
      init = function () end,
      opts = {
         animation = true,

      },
      version = "^1.0.0",
   },

   {
      "nvim-telescope/telescope-file-browser.nvim",
      dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
   },

   {
      "shortcuts/no-neck-pain.nvim",
      config = function ()
         require("no-neck-pain").setup({
            width = 150
         })
      end
   },

   {
      "TheLeoP/powershell.nvim",
      opts = {
         bundle_path = '/opt/powershell-editor-services'
      }
   },

   {
      "kdheepak/lazygit.nvim",
      dependencies = {
         "nvim-lua/plenary.nvim"
      }
   },

   {
      "Aasim-A/scrollEOF.nvim",
      event = {
         "CursorMoved",
         "WinScrolled"
      },
      config = function ()
         require("scrollEOF").setup()
         
      end
   }

}

