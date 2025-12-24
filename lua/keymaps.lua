local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)

vim.keymap.set("i", "<C-a>", "<C-x><C-o>", opts)

vim.keymap.set({"n", "x"}, "d", '"_d', opts)
--vim.keymap.set({"n", "x"}, "p", '"_dP', opts)

vim.keymap.set("n", "<leader>w", ":update<Return>", opts)
vim.keymap.set("n", "<leader>q", ":quit<Return>", opts)
vim.keymap.set("n", "<leader>a", ":qa<Return>", opts)
vim.keymap.set("n", "<leader>t", ":te<Return>", opts)
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], opts)

vim.keymap.set("n", "ss", ":split<Return>", opts)
vim.keymap.set("n", "sv", ":vsplit<Return>", opts)

vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)

vim.keymap.set("n", "<leader>h", ":vertical resize -2<Return>", opts)
vim.keymap.set("n", "<leader>l", ":vertical resize +2<Return>", opts)
vim.keymap.set("n", "<leader>j", ":resize -2<Return>", opts)
vim.keymap.set("n", "<leader>k", ":resize +2<Return>", opts)
vim.keymap.set("n", "<leader>=", "<C-w>=", opts)

vim.keymap.set("n", "H", ":bn<CR>", opts)
vim.keymap.set("n", "L", ":bp<CR>", opts)
vim.keymap.set("n", "<leader>bd", ":bd<CR>", opts)
