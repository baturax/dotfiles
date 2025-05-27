local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map({"n", "i"}, "<A-1>", "<Cmd>buffer 1<Cr>")
map({"n", "i"}, "<A-2>", "<Cmd>buffer 2<Cr>")
map({"n", "i"}, "<A-3>", "<Cmd>buffer 3<Cr>")
map({"n", "i"}, "<A-4>", "<Cmd>buffer 4<Cr>")
map({"n", "i"}, "<A-5>", "<Cmd>buffer 5<Cr>")
map({"n", "i"}, "<A-6>", "<Cmd>buffer 6<Cr>")
map({"n", "i"}, "<A-7>", "<Cmd>buffer 7<Cr>")
map({"n", "i"}, "<A-8>", "<Cmd>buffer 8<Cr>")
map({"n", "i"}, "<A-9>", "<Cmd>buffer 9<Cr>")

map({"n", "i"}, "<A-w>", "<Cmd>bdelete!<Cr>")

map({"n", "i"}, "<A-e>", "<Cmd>Neotree toggle<Cr>")

vim.keymap.set({"n", "i"}, '<A-Right>', '<cmd>wincmd l<cr>')
vim.keymap.set({"n", "i"}, '<A-Left>', '<cmd>wincmd h<cr>')
vim.keymap.set({"n", "i"}, '<A-Up>', '<cmd>wincmd j<cr>')
vim.keymap.set({"n", "i"}, '<A-Down>', '<cmd>wincmd k<cr>')

vim.api.nvim_set_keymap('i', '<C-Down>', '<C-E>', { noremap = true, silent = true })

vim.keymap.set({"n", "i"}, "<C-Down>", "<C-e>")
vim.keymap.set({"n", "i"}, "<C-Up>", "<C-y>")

neoscroll = require('neoscroll')
local keymap = {
  ["<C-Up>"] = function() neoscroll.scroll(-0.1, { move_cursor=false; duration = 100 }) end;
  ["<C-Down>"] = function() neoscroll.scroll(0.1, { move_cursor=false; duration = 100 }) end;

}
local modes = { 'n', 'v', 'x' }
for key, func in pairs(keymap) do
  vim.keymap.set(modes, key, func)
end
