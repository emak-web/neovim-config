return {
    "blazkowolf/gruber-darker.nvim",
    config = function()
        require("gruber-darker").setup({
            terminal_colors = false,
            bold = true,
            invert = {
                signs = false,
                tabline = false,
                visual = false,
            },
            italic = {
                strings = false,
                comments = false,
                operators = false,
                folds = false,
            },
            undercurl = true,
            underline = true,
        })
    end
}
