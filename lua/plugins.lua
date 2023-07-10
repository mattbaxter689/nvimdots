local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local function get_setup(conf_name)
    return function(_plugin, _opts)
        local mod = string.format("plug_conf.%s", conf_name)
        require(mod)
    end
end

local opts = {}

local plugins = {
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = get_setup("nvimtree")
    },

    -- {
    --     'nvim-lualine/lualine.nvim',
    --     config = get_setup("lualine")
    -- },

    {
        "nvim-treesitter/nvim-treesitter",
        config = get_setup("treesitter")
    },

    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = get_setup("toggleterm")
    },
    {
        'numToStr/Comment.nvim',
        config = get_setup("comment")
    },

    -- Indent Blankline
    {
        "lukas-reineke/indent-blankline.nvim",
        config = get_setup("blankline")
    },

    {
        'akinsho/bufferline.nvim',
        version = "v3.*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = get_setup("bufferline")
    },
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'onsails/lspkind.nvim' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        },
        config = get_setup("lsp")
    },
    --Using this for the lualine status
    {
        'nvim-telescope/telescope.nvim',
        version = '0.1.1',
        -- or                            , branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } },
        config = get_setup("telescope")
    },
    -- Colorschemes
    {
        "neanias/everforest-nvim",
        priority = 1000,
        config = require("plug_conf.colors").everforest,
    },
    {
        'rmehri01/onenord.nvim',
        priority = 1000,
        config = require("plug_conf.colors").onenord,
    },
    {
        "catppuccin/nvim", name = "catppuccin",
        priority = 1000,
        config = require("plug_conf.colors").catppuccin
    },
    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            -- require 'nordic' .load()
        end
    },
    {
        "EdenEast/nightfox.nvim",
        priority = 1000,
        config  = require("plug_conf.colors").nightfox
    },
    -- For transparent background
    {
        'xiyaowong/transparent.nvim',
        config = get_setup("transparent")
    },
    {
        'lewis6991/gitsigns.nvim',
        config = get_setup("gitsigns")
    },
    -- For latex in neovim
    {
        'lervag/vimtex',
        config = get_setup("vimtex")
    },
    {
        'freddiehaddad/feline.nvim',
        config = get_setup("feline")
    },
    {
        'j-hui/fidget.nvim',
        config = get_setup("fidget")
    },
}

require("lazy").setup(plugins)
