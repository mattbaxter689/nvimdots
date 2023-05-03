vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional
      },
      config = function()
        require("nvim-tree").setup {}
      end
    }

	use 'nvim-lualine/lualine.nvim'

	use {"nvim-treesitter/nvim-treesitter"}

	use {"akinsho/toggleterm.nvim", tag = "*"}

	use 'steelsojka/pears.nvim'

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	-- Indent Blankline
    use "lukas-reineke/indent-blankline.nvim"

	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
	use 'Yazeed1s/oh-lucy.nvim'

	use {
	'VonHeikemen/lsp-zero.nvim',
		requires = {
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
}
	--Using this for the lualine status
	use 'marko-cerovac/material.nvim'

	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}

	use "neanias/everforest-nvim"

	use { "catppuccin/nvim", as = "catppuccin" }
    use {'nyoom-engineering/oxocarbon.nvim'}
    use "EdenEast/nightfox.nvim"
    use 'folke/tokyonight.nvim'

    -- For transparent background
    use 'xiyaowong/transparent.nvim'
    use 'lewis6991/gitsigns.nvim'
end)
