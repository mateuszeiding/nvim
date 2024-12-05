function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { sp = "#C80A95" })
    vim.api.nvim_set_hl(0, "StatusLine", { bg = "#D3D3D3", fg = "#000000" })
    vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "none", fg = "#F5F5F5" })
    vim.api.nvim_set_hl(0, "LineNrAbove", { bg = "none", fg = "#ADD8E6" })
    vim.api.nvim_set_hl(0, "LineNrBelow", { bg = "none", fg = "#ADD8E6" })
    vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none", fg = "#F8F8FF" })
end

ColorMyPencils()
