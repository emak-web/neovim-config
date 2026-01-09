vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.title = false
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

vim.api.nvim_create_autocmd({"TermOpen", "BufEnter", "WinEnter"}, {
  pattern = "term://*",
  callback = function()
    -- stop the “jump”
    vim.opt_local.scrolloff = 0
    vim.opt_local.sidescrolloff = 0

    -- make terminal behave like a terminal
    vim.opt_local.wrap = false
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.cursorline = false
    vim.opt_local.signcolumn = "no"

    vim.cmd("normal! G")
  end,
})

