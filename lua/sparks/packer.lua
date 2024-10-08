-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
}

--use({

--	'rose-pine/neovim',
--	as = 'rose-pine',
--	config = function()
		--vim.cmd('colorscheme rose-pine')

	--end
--})

use({'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}})

use('theprimeagen/harpoon')
use('mbbill/undotree')

use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
use({'neovim/nvim-lspconfig'})
use({'hrsh7th/nvim-cmp'})
use({'hrsh7th/cmp-nvim-lsp'})
use({'mhanberg/elixir.nvim'})
use({'elixir-editors/vim-elixir'})
use 'wakatime/vim-wakatime'
use 'mfussenegger/nvim-lint'
use {
    "williamboman/mason.nvim"
}
use 'm4xshen/autoclose.nvim'
-- color themes
use { "catppuccin/nvim", as = "catppuccin" }
use {"dracula/vim",  as = "dracula"}
use "rebelot/kanagawa.nvim"
end)
