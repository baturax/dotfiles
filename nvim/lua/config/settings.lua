opt = vim.opt
o = vim.o
wo = vim.wo
g = vim.g
cmd = vim.cmd
lsp = vim.lsp
lspe = vim.lsp.enable
lspc = vim.lsp.config

--  Lsp Enable
lspe("lua_ls")
lspe("bashls")
lspe("jsonls")
lspe("yamlls")
lspe("clangd")
lspe("pyright")
lspe("gopls")
lspe("gomod")
lspe("html")
lspe("cssls")
lspe("vala_ls")
lspe("ts_ls")

--  Lsp Config
lspc("lua_ls", {})
lspc("bashls", {})
lspc("jsonls", {})
lspc("yamlls", {})
lspc("clangd", {})
lspc("pyright", {})
lspc("gopls", {})
lspc("gomod", {})
lspc("html", {})
lspc("cssls", {})
lspc("vala_ls", {})
lspc("ts_ls", {})

--  Number
wo.number = true

--  Colorscheme

--  Clipboard
opt.clipboard:append("unnamedplus")

--  Undo
opt.undofile = true

--  Scroll Off
opt.scrolloff = 10

--  Tab
o.tabstop = 2
o.expandtab = true
o.softtabstop = 2
o.shiftwidth = 2

--  Continue where left off
if vim.fn.has("autocmd") == 1 then
  vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = "*",
    callback = function()
      local line = vim.fn.line
      if line([['"]]) > 1 and line([['"]]) <= line("$") then
        vim.cmd('normal! g`"')
      end
    end
  })
end
