map = vim.keymap.set
n = "n"
i = "i"
t = "t"
ni = {n, i}
nit = {n, i, t}

--  Fine CmdLine
--map(n, ":", "<Cmd>FineCmdline<Cr>")

--  Float terminal
map(nit, "<A-q>", "<Cmd>FloatermToggle<Cr>")

--  Yazi
map(nit, "<A-e>", "<Cmd>Yazi<Cr>")

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

neoscroll = require('neoscroll')
local keymap = {
  ["<C-Up>"] = function() neoscroll.scroll(-0.1, { move_cursor=false; duration = 100 }) end;
  ["<C-Down>"] = function() neoscroll.scroll(0.1, { move_cursor=false; duration = 100 }) end;
}
for key, func in pairs(keymap) do
  vim.keymap.set(nit, key, func)
end
