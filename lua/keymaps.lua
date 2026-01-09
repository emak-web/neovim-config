local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)

vim.keymap.set("i", "<C-a>", "<C-x><C-o>", opts)

vim.keymap.set({"n", "x"}, "<leader>d", '"_d', opts)
vim.keymap.set({"n", "x"}, "<leader>x", '"_x', opts)
vim.keymap.set({"n", "x"}, "<leader>p", '"+p', opts)
vim.keymap.set({"n", "x"}, "<leader>P", '"+P', opts)
vim.keymap.set({"n", "x"}, "<leader>y", '"+y', opts)

vim.keymap.set("x", "p", '"_dP', opts)
vim.keymap.set("x", "P", '"_dP', opts)

vim.keymap.set("x", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("x", "K", ":m '<-2<CR>gv=gv", opts)

vim.keymap.set("n", "<leader>w", ":update<CR>", opts)
vim.keymap.set("n", "<leader>q", ":quit<CR>", opts)
vim.keymap.set("n", "<leader>a", ":qa<CR>", opts)

vim.keymap.set("n", "<leader>t", ":te<CR>", opts)
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], opts)

vim.keymap.set("n", "ss", ":split<CR>", opts)
vim.keymap.set("n", "sv", ":vsplit<CR>", opts)

vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)

vim.keymap.set("n", "<leader>h", ":vertical resize -5<CR>", opts)
vim.keymap.set("n", "<leader>l", ":vertical resize +5<CR>", opts)
vim.keymap.set("n", "<leader>j", ":resize -3<CR>", opts)
vim.keymap.set("n", "<leader>k", ":resize +3<CR>", opts)
vim.keymap.set("n", "<leader>=", "<C-w>=", opts)

vim.keymap.set("n", "H", ":bp<CR>", opts)
vim.keymap.set("n", "L", ":bn<CR>", opts)
vim.keymap.set("n", "<leader>bd", ":bd<CR>", opts)

