require('basics')
require('telescope-config')
require('colors')
require('vgit').setup()
require'nvim-tree'.setup {
}

require('null-ls').setup({
  sources = {
    require('null-ls').builtins.diagnostics.eslint,
    require('null-ls').builtins.completion.spell,
    require('null-ls').builtins.diagnostics.flake8,
    require('null-ls').builtins.diagnostics.staticcheck,
    require('null-ls').builtins.formatting.black,
    require('null-ls').builtins.formatting.fixjson,
    require('null-ls').builtins.formatting.gofmt,
    require('null-ls').builtins.formatting.goimports,
    require('null-ls').builtins.formatting.isort,
    require('null-ls').builtins.formatting.prettier,
  },
})

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'folke/tokyonight.nvim'
	use 'tpope/vim-commentary'
  use 'github/copilot.vim'
  use 'jose-elias-alvarez/null-ls.nvim'
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

