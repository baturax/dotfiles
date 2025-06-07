map = vim.keymap.set
n = "n"
i = "i"
t = "t"
ni = {n, i}
nit = {n, i, t}

--  Change Tabs
map(nit, '<A-Right>', '<cmd>wincmd l<cr>')
map(nit, '<A-Left>', '<cmd>wincmd h<cr>')
map(nit, '<A-Up>', '<cmd>wincmd k<cr>')
map(nit, '<A-Down>', '<cmd>wincmd j<cr>')

--  Fine CmdLine
map(n, ":", "<Cmd>FineCmdline<Cr>")

--  Float terminal
map(nit, "<A-q>", "<Cmd>FloatermToggle<Cr>")

-- Neo-Tree
map(nit, "<A-e>", "<Cmd>Yazi<Cr>")

--  Yazi
map(nit, "<A-S-e>", "<Cmd>Yazi<Cr>")

--  Change Buffer
map(nit, "<A-1>", "<Cmd>BufferGoto 1<Cr>")
map(nit, "<A-2>", "<Cmd>BufferGoto 2<Cr>")
map(nit, "<A-3>", "<Cmd>BufferGoto 3<Cr>")
map(nit, "<A-4>", "<Cmd>BufferGoto 4<Cr>")
map(nit, "<A-5>", "<Cmd>BufferGoto 5<Cr>")
map(nit, "<A-6>", "<Cmd>BufferGoto 6<Cr>")
map(nit, "<A-7>", "<Cmd>BufferGoto 7<Cr>")
map(nit, "<A-8>", "<Cmd>BufferGoto 8<Cr>")
map(nit, "<A-9>", "<Cmd>BufferGoto 9<Cr>")
map(nit, "<A-0>", "<Cmd>BufferLast<Cr>")

--  Close Buffer
map(nit, "<A-w>", "<Cmd>BufferClose<Cr>")

--  Scroll
map(nit, "<C-Down>", "<C-e>")
map(nit, "<C-Up>", "<C-y>")

--  Delete
map(ni, "<C-Del>", "<Esc>dw")
map(ni, "<C-BS>", "<C-w>")

neoscroll = require('neoscroll')
local keymap = {
  ["<C-Up>"] = function() neoscroll.scroll(-0.1, { move_cursor=false; duration = 100 }) end;
  ["<C-Down>"] = function() neoscroll.scroll(0.1, { move_cursor=false; duration = 100 }) end;
}
for key, func in pairs(keymap) do
  map(nit, key, func)
end
