return {
  "polirritmico/monokai-nightasty.nvim",
  config = function ()
    vim.opt.background = "dark" -- default to dark or light style

require("monokai-nightasty").setup(opts) -- ...and then load the theme:
require("monokai-nightasty").load()

-- As an alternative, pass the options directly into load and it will run setup
-- the first time it is executed:
require("monokai-nightasty").load(opts)
  end
}


