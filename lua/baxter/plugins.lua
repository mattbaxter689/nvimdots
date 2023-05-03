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

local plugins = {
 	  { 'kyazdani42/nvim-tree.lua', dependencies = {
      		'kyazdani42/nvim-web-devicons', -- optional, for file icon
    		},
    		config = function() require'nvim-tree'.setup {} end
	},

	 'nvim-lualine/lualine.nvim',

	 {"nvim-treesitter/nvim-treesitter"},

	 {"akinsho/toggleterm.nvim", tag = "*"},

	 'steelsojka/pears.nvim',

	 {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	},

	-- Indent Blankline
     "lukas-reineke/indent-blankline.nvim",

	 {'akinsho/bufferline.nvim', tag = "v3.*", dependencies = 'nvim-tree/nvim-web-devicons'},
	 'Yazeed1s/oh-lucy.nvim',

	 {
	'VonHeikemen/lsp-zero.nvim',
		dependencies = {
    -- LSP Support
		{'neovim/nvim-lspconfig'},
		{'williamboman/mason.nvim'},
		{'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-buffer'},
		{'hrsh7th/cmp-path'},
		{'saadparwaiz1/cmp_luasnip'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'hrsh7th/cmp-nvim-lua'},

    -- Snippets
		{'L3MON4D3/LuaSnip'},
		{'rafamadriz/friendly-snippets'},
	}
},
	--Using this for the lualine status
	 'marko-cerovac/material.nvim',

	 {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
	},

	 "neanias/everforest-nvim",

	 { "catppuccin/nvim", as = "catppuccin" },
     {'nyoom-engineering/oxocarbon.nvim'},
     "EdenEast/nightfox.nvim",
     'folke/tokyonight.nvim',

    -- For transparent background
     'xiyaowong/transparent.nvim',
     'lewis6991/gitsigns.nvim',
 }

local opts = {}

require("lazy").setup(plugins, opts)
