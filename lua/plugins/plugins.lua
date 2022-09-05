vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
---- Icons
  use 'terroo/vim-simple-emoji'
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'
---- Themes
  use 'navarasu/onedark.nvim'
---- User Experience
  use 'tamton-aquib/staline.nvim'
  use 'NvChad/nvim-colorizer.lua'
  use 'xiyaowong/nvim-transparent'
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  use 'kyazdani42/nvim-tree.lua'
  use {'declancm/cinnamon.nvim', config = function() require('cinnamon').setup() end}
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
      require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  }
---- Completition
  use 'windwp/nvim-autopairs'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'saadparwaiz1/cmp_luasnip'
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
---- LSP
  use 'neovim/nvim-lspconfig'
  use 'ray-x/lsp_signature.nvim'
  use 'onsails/lspkind-nvim'
---- Git
  use {'lewis6991/gitsigns.nvim',}
---- Text Highlight
  use 'nvim-treesitter/nvim-treesitter'
  use 'p00f/nvim-ts-rainbow'
---- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
---- Utils
  use 'winston0410/range-highlight.nvim'
  use {'nvim-telescope/telescope.nvim',requires = {{'nvim-lua/plenary.nvim'}}}
  use 'lukas-reineke/indent-blankline.nvim'
  use 'tpope/vim-surround'
end)
