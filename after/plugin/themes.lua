local function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "normalFloat", { bg = "none" })
end

local function rosePineTheme()
    vim.cmd('colorscheme rose-pine')
    ColorMyPencils()
end

local function catppuccinTheme()
    local catppuccin = require("catppuccin")
    catppuccin.setup({
        flavour = "macchiato", -- latte, frappe, macchiato, mocha
        transparent_background = true,
        term_colors = true,
    })

    vim.cmd.colorscheme("catppuccin")
end

local function materialTheme()
    local material = require('material')
    material.setup{}

    vim.g.material_style = "darker"
    vim.cmd.colorscheme("material")
end

vim.opt.termguicolors = true

catppuccinTheme()
