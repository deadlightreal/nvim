vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	use {
		"hrsh7th/nvim-cmp",
  		"hrsh7th/cmp-nvim-lsp",  -- LSP source for nvim-cmp
  		"hrsh7th/cmp-buffer",    -- Buffer source for nvim-cmp
  		"hrsh7th/cmp-path",      -- Path source for nvim-cmp
  		"hrsh7th/cmp-cmdline",
	}
	use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }
	use 'scottmckendry/cyberdream.nvim'
end)
