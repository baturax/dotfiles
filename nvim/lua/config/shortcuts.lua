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

map({"n", "i"}, "<A-w>", "<Cmd>bp | bd #<Cr>")

map({"n", "i"}, "<A-e>", "<Cmd>Neotree toggle<Cr>")
map({"n", "i"}, "<A-S-e>", "<Cmd>Yazi<Cr>")


map({"n", "i"}, '<A-Right>', '<cmd>wincmd l<cr>')
map({"n", "i"}, '<A-Left>', '<cmd>wincmd h<cr>')
map({"n", "i"}, '<A-Up>', '<cmd>wincmd j<cr>')
map({"n", "i"}, '<A-Down>', '<cmd>wincmd k<cr>')

map({"n", "i", "t"}, '<A-t>', '<cmd>FloatermToggle<cr>')
map({"n", "i", "t"}, '<A-q>', '<cmd>FloatermToggle<cr>')


map({"n", "i"}, "<C-Down>", "<C-e>")
map({"n", "i"}, "<C-Up>", "<C-y>")

map('n', ':', '<cmd>FineCmdline<CR>')

neoscroll = require('neoscroll')
local keymap = {
  ["<C-Up>"] = function() neoscroll.scroll(-0.1, { move_cursor=false; duration = 100 }) end;
  ["<C-Down>"] = function() neoscroll.scroll(0.1, { move_cursor=false; duration = 100 }) end;

}
local modes = { 'n', 'v', 'x' }
for key, func in pairs(keymap) do
  map(modes, key, func)
end
