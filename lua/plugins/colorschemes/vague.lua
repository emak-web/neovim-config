return {
    "vague-theme/vague.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other plugins
    config = function()
        require("vague").setup({
            transparent = true, -- don't set background
            -- disable bold/italic globally in `style`
            bold = false,
            italic = false,
            style = {
                -- "none" is the same thing as default. But "italic" and "bold" are also valid options
                boolean = "bold",
                number = "none",
                float = "none",
                error = "bold",
                comments = "italic",
                conditionals = "none",
                functions = "none",
                headings = "bold",
                operators = "none",
                strings = "italic",
                variables = "none",

                -- keywords
                keywords = "none",
                keyword_return = "italic",
                keywords_loop = "none",
                keywords_label = "none",
                keywords_exception = "none",

                -- builtin
                builtin_constants = "bold",
                builtin_functions = "none",
                builtin_types = "bold",
                builtin_variables = "none",
            },
            -- plugin styles where applicable
            -- make an issue/pr if you'd like to see more styling options!
            plugins = {
                cmp = {
                    match = "bold",
                    match_fuzzy = "bold",
                },
                dashboard = {
                    footer = "italic",
                },
                lsp = {
                    diagnostic_error = "bold",
                    diagnostic_hint = "none",
                    diagnostic_info = "italic",
                    diagnostic_ok = "none",
                    diagnostic_warn = "bold",
                },
                neotest = {
                    focused = "bold",
                    adapter_name = "bold",
                },
                telescope = {
                    match = "bold",
                },
            },

            -- Override highlights or add new highlights
            on_highlights = function(highlights, colors) end,

            -- Override colors
            colors = {
                -- Background / UI
                bg          = "#1f1f1f",
                inactiveBg  = "#262626",
                line        = "#2a2a2a",
                visual      = "#333333",
                floatBorder = "#444444",

                -- Base text
                fg          = "#d6d6d0",
                comment     = "#7a7a7a",

                -- Structural language elements (ORANGE)
                keyword     = "#c57a4a",
                type        = "#c57a4a",
                operator    = "#c57a4a",

                -- Brackets & punctuation (white on purpose)
                property    = "#d6d6d0",
                parameter   = "#d6d6d0",
                constant    = "#d6d6d0",
                builtin     = "#d6d6d0",

                -- Values / calls
                string      = "#aeb66b", -- green
                number      = "#cf90aa", -- pink
                func        = "#7fa9c6", -- light blue

                -- UI feedback (quiet)
                search      = "#3a2f25",
                error       = "#d07a7a",
                warning     = "#cfa86b",
                hint        = "#d6d6d0",

                -- Diffs
                plus        = "#d6d6d0",
                delta       = "#d6d6d0",
            }

        })
        -- vim.cmd("colorscheme vague")
    end
}
