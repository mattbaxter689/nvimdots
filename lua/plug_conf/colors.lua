local M = {}

function M.everforest()
    require("everforest").setup({
        background = "hard",
        disable_italic_comments = true,
        -- transparent_background_level = 1
    })

    -- vim.cmd('colorscheme everforest')
end

function M.catppuccin()
    require("catppuccin").setup({
        flavour = "macchiato",
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
			},
		},
        integrations = {
            treesitter = true,
            native_lsp = {
				enabled = true,
				virtual_text = {
					errors = { "italic" },
					hints = { "italic" },
					warnings = { "italic" },
					information = { "italic" },
				},
				underlines = {
					errors = { "underline" },
					hints = { "underline" },
					warnings = { "underline" },
					information = { "underline" },
				},
			},
            bufferline = true,
            cmp = true,
            gitsigns = true,
            indent_blankline = { enabled = true, colored_indent_levels = false },
            lsp_saga = true,
            mason = true,
            nvimtree = true,
            telescope = true,
        },
    })

    -- vim.cmd("colorscheme catppuccin")

end

function M.nordic()
    require("nordic").load()
end

function M.bamboo()
    require("bamboo").setup({})

    -- vim.cmd("colorscheme bamboo")
end

function M.nord()
    require("nord").set()

    vim.cmd("colorscheme nord")
end

function M.nightfox()
    local specs = {
        carbonfox = {
            syntax = {
                keyword = "pink"
            }
        }
    }
    require("nightfox").setup({
        specs = specs
    })
    -- vim.cmd("colorscheme carbonfox")
end

return M




