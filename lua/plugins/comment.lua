-- gcc        " comment current line
-- gcj        " comment current line + next line
-- gcip       " comment paragraph
-- v + gc     " comment selection
-- gbc        " block comment current line
return {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    config = function()
      require("Comment").setup()
    end
}
