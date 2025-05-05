local opt = vim.opt
local o = vim.o
local g=vim.g

g.mapleader = " "

o.tabstop = 3
o.expandtab = true 
o.softtabstop = 3 
o.shiftwidth = 3

opt.clipboard:append("unnamedplus")
opt.undofile = true
vim.wo.number = true
loaded_netrw = 1
g.loaded_netrwPlugin = 1
opt.termguicolors = true
opt.shortmess:append "sI"
opt.shortmess:append "sI"
opt.scrolloff = 10

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

vim.keymap.set('n', '<A-Right>', '<C-w>l')
vim.keymap.set('n', '<A-Left>', '<C-w>h')

