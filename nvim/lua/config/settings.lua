vim.g.mapleader = " "

vim.o.tabstop = 3
vim.o.expandtab = true 
vim.o.softtabstop = 3 
vim.o.shiftwidth = 3

vim.opt.clipboard:append("unnamedplus")
vim.opt.undofile = true
vim.wo.number = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.opt.tabpagemax=50

vim.cmd("NoNeckPain")

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

local modes = { "n", "i" }

for i = 1, 9 do
  map(modes, "<A-" .. i .. ">", "<Cmd>BufferGoto " .. i .. "<CR>", opts)
end

map(modes, "<A-w>", "<Cmd>BufferClose<CR>", opts)

map("i", "<A-e>", "<Esc>:Telescope file_browser path=%:p:h select_buffer=true<CR>", opts)
map("n", "<A-e>", "<Cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>", opts)

