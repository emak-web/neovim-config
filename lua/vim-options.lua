vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set cursorline")

vim.opt.smartindent = true

vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down" })
vim.keymap.set("n", "<C-j>", "<C-w>h", { desc = "Left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Right window" })
vim.keymap.set("i", "<C-a>", "<C-x><C-o>", { desc = "Auto complete" })
--vim.keymap.set({"n", "x"}, "d", '"_d', { desc = "No copy when deleting" })
--vim.keymap.set({"n", "x"}, "dd", '"_dd', { desc = "No copy when deleting" })


vim.g.have_nerd_font = false

vim.o.number = true
vim.o.mouse = 'a'

vim.o.showmode = false

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.inccommand = 'split'
vim.o.cursorline = true
vim.o.scrolloff = 10

