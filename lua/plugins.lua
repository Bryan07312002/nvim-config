local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup({ function(use)
  use 'wbthomason/packer.nvim'

  -- plugins go here
  -- use { 'shaunsingh/oxocarbon.nvim', run = './install.sh' }
  -- use {
  -- 'B4mbus/oxocarbon-lua.nvim',
  --  branch = 'lualine'
  -- }

--- Surround
  --use({
    --"kylechui/nvim-surround",
    --tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    --config = function()
    --  require("nvim-surround").buffer_setup({
          -- Configuration here, or leave empty to use defaults
   --   })
  --  end
 -- })

  -- ColorSchemes
  use {'tiagovla/tokyodark.nvim', opt=true}
  use 'navarasu/onedark.nvim'
  use 'sainnhe/everforest'
  use 'sainnhe/sonokai'
  use 'sainnhe/edge'
  use 'rhysd/vim-color-spring-night'
  use 'karoliskoncevicius/sacredforest-vim'
  use { "lifepillar/vim-gruvbox8", opt = true }
  use { "sainnhe/gruvbox-material", opt = true }
  use { "shaunsingh/nord.nvim", opt = true }
  use { "NTBBloodbath/doom-one.nvim", opt = true }
  use { "EdenEast/nightfox.nvim", opt = true }
  use { "rebelot/kanagawa.nvim", opt = true }
  use { "catppuccin/nvim", as = "catppuccin", opt = true }

  use {'xiyaowong/nvim-transparent', config = function ()
    require("transparent").setup({
      enable = true, -- boolean: enable transparent
      extra_groups = { -- table/string: additional groups that should be cleared
        -- In particular, when you set it to 'all', that means all available groups

        -- example of akinsho/nvim-bufferline.lua
        "BufferLineTabClose",
        "BufferlineBufferSelected",
        "BufferLineFill",
        "BufferLineBackground",
        "BufferLineSeparator",
        "BufferLineIndicatorSelected",
      },
      exclude = {}, -- table: groups you don't want to clear
    })
  end}

  use {'p00f/nvim-ts-rainbow', config= function ()
    require("nvim-treesitter.configs").setup {
      highlight = {
          -- ...
      },
      -- ...
      rainbow = {
        enable = true,
        -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
      }
    }
  end}
  --
  use { 'glepnir/dashboard-nvim' } -- dashboard

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
  use "rafamadriz/friendly-snippets"
  use 'neovim/nvim-lspconfig' -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  -- use 'github/copilot.vim'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  } -- comments

  use { 'declancm/cinnamon.nvim',
    config = function()
      require('cinnamon').setup()
    end
  } -- smooth roll

  -- rust stuff
  use 'simrat39/rust-tools.nvim'
  use 'mfussenegger/nvim-dap'
end,
  config = {
    display = {
      open_fn = require('packer.util').float,
    }
  } })
