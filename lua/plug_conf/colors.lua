local M = {}

function M.everforest()
    require("everforest").setup({
        background = "hard",
        disable_italic_comments = true,
        -- transparent_background_level = 1
    })

    -- vim.cmd('colorscheme everforest')
    -- vim.api.nvim_set_hl(0, "NvimTreeNormal", { fg = "#d3c6aa", bg = "#272e33"})
    -- vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { fg = "#d3c6aa", bg = "#272e33"})

end

function M.catppuccin()
    require("catppuccin").setup({
        flavour = "mocha",
        color_overrides = {
			-- mocha = {
   --              rosewater = "#ffc9c9",
   --              flamingo = "#ff9f9a",
   --              pink = "#ffa9c9",
   --              mauve = "#df95cf",
   --              lavender = "#a990c9",
   --              red = "#ff6960",
   --              maroon = "#f98080",
   --              peach = "#f9905f",
   --              yellow = "#f9bd69",
   --              green = "#b0d080",
   --              teal = "#a0dfa0",
   --              sky = "#a0d0c0",
   --              sapphire = "#95b9d0",
   --              blue = "#89a0e0",
   --              text = "#e0d0b0",
   --              subtext1 = "#d5c4a1",
   --              subtext0 = "#bdae93",
   --              overlay2 = "#928374",
   --              overlay1 = "#7c6f64",
   --              overlay0 = "#665c54",
   --              surface2 = "#504844",
   --              surface1 = "#3a3634",
   --              surface0 = "#252525",
   --              base = "#151515",
   --              mantle = "#0e0e0e",
   --              crust = "#080808",
   --          },
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

    vim.cmd("colorscheme catppuccin")

end

function M.nordic()
    require("nordic").load()
end

function M.onenord()
    -- require("onenord").setup()

    -- vim.cmd("colorscheme onenord")
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

function M.vscode()
    require("vscode").setup({
        transparent = false,
        disable_nvimtree_background = false
    })
    
    local c = require('vscode.colors').get_colors()
    -- vim.api.nvim_set_hl(0, "NvimTreeNormal", { fg = c.vscFront, bg = c.vscBack})
    -- vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { fg = c.vscFront, bg = c.vscBack})

    -- require('vscode').load()
end

function M.tokyonight()
    require("tokyonight").setup({
        style = "moon",
    })
    -- vim.cmd("colorscheme tokyonight")
end

return M




