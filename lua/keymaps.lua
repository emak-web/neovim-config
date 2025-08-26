local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("i", "<C-a>", "<C-x><C-o>")

vim.keymap.set({"n", "x"}, "d", '"_d')
vim.keymap.set({"n", "x"}, "dd", '"_dd')

vim.keymap.set("n", "<leader>w", ":update<Return>", opts)
vim.keymap.set("n", "<leader>q", ":quit<Return>", opts)
vim.keymap.set("n", "<leader>a", ":qa<Return>", opts)

vim.keymap.set("n", "ss", ":split<Return>", opts)
vim.keymap.set("n", "sv", ":vsplit<Return>", opts)

vim.keymap.set("n", "<C-j>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-i>", "<C-w>k")
vim.keymap.set("n", "<C-k>", "<C-w>j")

