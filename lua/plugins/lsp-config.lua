return {
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "jedi_language_server", "basedpyright", "clangd" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config("lua_ls", {})
            vim.lsp.config("clangd", {})
            vim.lsp.config("basedpyright", {
                settings = {
                    basedpyright = {
                        analysis = {
                            typeCheckingMode = "off", -- "off" / "basic" / "standard" 
                        },
                    },
                },
            })--"jedi_language_server", {})
            vim.lsp.enable({ "lua_ls", "basedpyright", "clangd" })

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'i', 'n'}, '<C-g>', vim.lsp.buf.signature_help, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
            vim.keymap.set('n', '<leader>s', vim.diagnostic.open_float, {})

            -- Chat gpt
            vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, { desc = "Show references" })
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = "Rename symbol" })
            vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, { desc = "Go to implementation" })
            vim.keymap.set('n', '<leader>gt', vim.lsp.buf.type_definition, { desc = "Go to type definition" })

            -- Diagnostics navigation
            vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
            vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Next diagnostic" })

            -- Show all diagnostics in a quickfix list
            vim.keymap.set('n', '<leader>.', vim.diagnostic.setqflist, { desc = "Diagnostics to quickfix" })
        end
    }
}
