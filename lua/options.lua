vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.title = true
vim.opt.hlsearch = false
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.wrap = true
vim.opt.cursorline = true


vim.opt.smartindent = false
vim.opt.cindent = false

vim.o.signcolumn = 'yes'

vim.opt.fillchars = { eob = " " }

vim.opt.pumheight = 10

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "term://*",
  callback = function()
    vim.opt_local.scrolloff = 0
    vim.opt_local.sidescrolloff = 0
  end,
})
