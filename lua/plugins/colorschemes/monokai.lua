return {
    "loctvl842/monokai-pro.nvim",
    config = function()
        require("monokai-pro").setup({
            transparent_background = true,
            terminal_colors = false,
            devicons = false, -- highlight the icons of `nvim-web-devicons`
            styles = {
                comment = { italic = false },
                keyword = { italic = false }, -- any other keyword
                type = { italic = false }, -- (preferred) int, long, char, etc
                storageclass = { italic = false }, -- static, register, volatile, etc
                structure = { italic = false }, -- struct, union, enum, etc
                parameter = { italic = false }, -- parameter pass in function
                annotation = { italic = false },
                tag_attribute = { italic = false }, -- attribute of tag in reactjs
            },
            filter = "classic", -- classic | octagon | pro | machine | ristretto | spectrum
            -- Enable this will disable filter option
            day_night = {
                enable = false, -- turn off by default
                day_filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum
                night_filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
            },
            inc_search = "background", -- underline | background
            background_clear = {
                "float_win",
                "toggleterm",
                "telescope",
                -- "which-key",
                "renamer",
                "notify",
                -- "nvim-tree",
                "neo-tree",
                "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
            },-- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
            plugins = {
                bufferline = {
                    underline_selected = false,
                    underline_visible = false,
                },
                indent_blankline = {
                    context_highlight = "default", -- default | pro
                    context_start_underline = false,
                },
            },
            ---@param c Colorscheme
            override = function(c) end,
            ---@param cs Colorscheme
            ---@param p ColorschemeOptions
            ---@param Config MonokaiProOptions
            ---@param hp Helper
            override = function(cs, p, Config, hp) end,

            -- --- @param filter "classic" 

            -- overridePalette = function(filter)
            --     return {
            --         -- Backgrounds
            --         dark2       = "#161613",
            --         dark1       = "#1d1e19",
            --         background  = "#1f1f1f",
            --
            --         -- KEEP from your original
            --         text        = "#fdfff1",
            --
            --         -- Accents (re-wired to match what your theme actually does)
            --         accent1     = "#c57a4a", -- keywords + operators/symbols -> ORANGE (was pink)
            --         accent2     = "#aeb66b", -- strings -> GREEN (was orange)
            --         accent3     = "#c57a4a", -- extra structural accent -> ORANGE (safe fallback)
            --         accent4     = "#7fa9c6", -- functions -> BLUE (was green)
            --         accent5     = "#c57a4a", -- types -> ORANGE (was blue)
            --         accent6     = "#cf90aa", -- numbers -> PINK (use for literals/consts if theme does)
            --
            --         -- KEEP dimmed set (comments + UI greys)
            --         dimmed1     = "#c0c1b5",
            --         dimmed2     = "#919288",
            --         dimmed3     = "#6e7066",
            --         dimmed4     = "#57584f",
            --         dimmed5     = "#3b3c35",
            --     }
            -- end
        })

        vim.cmd("colorscheme monokai-pro")
    end
}
