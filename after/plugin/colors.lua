require("everforest").setup({
	background = "hard",
	disable_italic_comments = true,
})

-- Oh-lucy
vim.g.oh_lucy_italic_comments = false
vim.g.oh_lucy_italic_keywords = false
vim.g.oh_lucy_italic_variables = false
vim.g.oh_lucy_transparent_background = true

vim.opt.fillchars:append { eob = " " }

-- Material
vim.g.material_style = "deep ocean"
require("material").setup({
	lualine_style = "stealth"
})

-- tokyonight
require("tokyonight").setup({
    style = "moon",
    terminal_colors = true,
})

--Catppuccin
require("catppuccin").setup({
    color_overrides = {
        mocha = {
            rosewater = "#F5E0DC",
            flamingo = "#F2CDCD",
            mauve = "#DDB6F2",
            pink = "#F5C2E7",
            red = "#F28FAD",
            maroon = "#E8A2AF",
            peach = "#F8BD96",
            yellow = "#FAE3B0",
            green = "#ABE9B3",
            blue = "#96CDFB",
            sky = "#89DCEB",
            teal = "#B5E8E0",
            lavender = "#C9CBFF",

            text = "#D9E0EE",
            subtext1 = "#BAC2DE",
            subtext0 = "#A6ADC8",
            overlay2 = "#C3BAC6",
            overlay1 = "#988BA2",
            overlay0 = "#6E6C7E",
            surface2 = "#6E6C7E",
            surface1 = "#575268",
            surface0 = "#302D41",

            base = "#1E1E2E",
            mantle = "#1A1826",
            crust = "#161320",
        }
    },
})

-- vim.cmd.colorscheme "catppuccin"
-- vim.cmd.colorscheme "everforest"
-- vim.cmd.colorscheme "carbonfox"
-- vim.cmd.colorscheme "duskfox"
vim.cmd.colorscheme "oh-lucy-evening"


-- Adding custom color randomizer function here
-- follow from the primeagen example with colourmypencils
