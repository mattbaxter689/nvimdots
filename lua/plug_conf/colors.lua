local M = {}

function M.everforest()
    require("everforest").setup({
        background = "hard",
        disable_italic_comments = true,
        -- transparent_background_level = 1
    })

    -- vim.cmd('colorscheme everforest')
end

function M.kanagawa()
    require("kanagawa").setup({
        theme = 'wave'
    })

    -- vim.cmd('colorscheme kanagawa')
end

-- add nightfox here
function M.nightfox()
    require("nightfox").setup({
        option = {
            module_default = false,
        },
        modules = {
            cmp = true,
            gitsigns = true,
            lsp_saga = true,
            nvimtree = true,
            telescope = true
        }
    })

    -- vim.cmd('colorscheme nightfox')
end

function M.everblush()
   require("everblush").setup()
end

function M.aquarium()
    -- vim.cmd("colorscheme aquarium")
end

function M.catppuccin()
    --[[ require("catppuccin").setup({
        flavour = "mocha",

    color_overrides = {
        mocha = {
          text = "#F4CDE9",
          subtext1 = "#DEBAD4",
          subtext0 = "#C8A6BE",
          overlay2 = "#B293A8",
          overlay1 = "#9C7F92",
          overlay0 = "#866C7D",
          surface2 = "#705867",
          surface1 = "#5A4551",
          surface0 = "#44313B",

          base = "#352939",
          mantle = "#211924",
          crust = "#1a1016",
        },
    },
  }) ]]

    -- vim.cmd("colorscheme base16-catppuccin")
end

function M.ashes()
    vim.cmd("hi NvimTreeWinSeparator guifg=NONE guibg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE")
    vim.cmd("colorscheme base16-ashes")
end

return M




