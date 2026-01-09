return {
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp', -- LSP source
        },
        config = function()
            local cmp = require('cmp')
            cmp.setup({
                mapping = {
                    ['<C-n>'] = cmp.mapping.complete(),
                    ['<C-p>'] = cmp.mapping.abort(),
                    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
                    ['<Down>'] = cmp.mapping.select_next_item(),
                    ['<Up>'] = cmp.mapping.select_prev_item(),
                },
                sources = {
                    { name = 'nvim_lsp' },
                },
                window = {
                    -- completion = cmp.config.window.bordered(),
                    -- documentation = cmp.config.window.bordered(),
                    border = "rounded",
                },
                completion = {
                    border = "rounded",
                }
            })
        end,
    },
}

