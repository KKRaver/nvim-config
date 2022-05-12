require('basics')
require('telescope-config')
require('colors')
require('vgit').setup()
require'nvim-tree'.setup {
}

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'folke/tokyonight.nvim'
	use 'tpope/vim-commentary'
  use 'github/copilot.vim'
	use {
	    'nvim-lualine/lualine.nvim',
	    requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
	use {
	    'nvim-telescope/telescope.nvim',
	    requires = { {'nvim-lua/plenary.nvim'} }
	}
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons',},
    tag = 'nightly'
  }
  use {
    'tanvirtin/vgit.nvim',
    requires = {'nvim-lua/plenary.nvim'}
  }
end)

