local map = vim.keymap.set

map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')
map('n', '<A-0>', '<Cmd>BufferLast<CR>')

map({"n", "i"}, "<A-w>", "<Cmd>bdelete!<Cr>")

map({"n", "i"}, "<A-e>", "<Cmd>Neotree toggle<Cr>")
map({"n", "i"}, "<A-S-e>", "<Cmd>Yazi<Cr>")


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
