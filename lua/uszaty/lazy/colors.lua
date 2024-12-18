function ColorMyPencils(color)
	color = color or "rose-pine-moon"
	vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg= "none", sp = "#C80A95" })
    vim.api.nvim_set_hl(0, "StatusLine", { bg = "#D3D3D3", fg = "#000000" })
    vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "ColorColumn", { fg = "#ADD8E6", underline = true })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "none", fg = "#F5F5F5" })
    vim.api.nvim_set_hl(0, "LineNrAbove", { bg = "none", fg = "#ADD8E6" })
    vim.api.nvim_set_hl(0, "LineNrBelow", { bg = "none", fg = "#ADD8E6" })
    vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none", fg = "#F8F8FF" })
    vim.api.nvim_set_hl(0, "VertSplit", { bg = "none", fg = "none" })
end

return {

    {
        "erikbackman/brightburn.vim",
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        config = function()
            require("gruvbox").setup({
                terminal_colors = true, -- add neovim terminal colors
                undercurl = true,
                underline = false,
                bold = true,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    operators = false,
                    folds = false,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                invert_intend_guides = false,
                inverse = true, -- invert background for search, diffs, statuslines and errors
                contrast = "", -- can be "hard", "soft" or empty string
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = false,
            })
        end,
    },
    {
        "folke/tokyonight.nvim",
        config = function()
            ColorMyPencils()
            require("tokyonight").setup({
                transparent = true, -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
                styles = {
                    comments = { italic = false },
                    keywords = { italic = false },
                },
            })
        end
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                styles = {
                    italic = false,
                },
            })

            ColorMyPencils();
        end
    },


}
