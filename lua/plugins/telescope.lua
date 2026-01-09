return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require("telescope.builtin")
            local opts = { noremap = true, silent = true }

            vim.keymap.set("n", "<leader>ff", function()
                local ok = pcall(builtin.git_files, { show_untracked = true })
                if not ok then
                    builtin.find_files()
                end
            end, opts)
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, opts)
            vim.keymap.set("n", "<leader>fb", builtin.buffers, opts)
            vim.keymap.set("n", "<leader>fh", builtin.help_tags, opts)
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            -- This is your opts table
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                            -- even more opts
                        }
                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    }
}
