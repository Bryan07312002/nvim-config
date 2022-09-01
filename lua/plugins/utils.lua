-- For web Icons
require'nvim-web-devicons'.setup {
  override = {
   zsh = {
     icon = "",
     color = "#428850",
     cterm_color = "65",
     name = "Zsh"
   }
  };
  default = true;
}
require'nvim-web-devicons'.get_icons()

require "staline".setup {
  sections = {
    left = {' ','-mode',' ', 'lsp' },
    mid = {'file_name', 'branch'},
    right = {'-line_column' }
  },
  mode_colors = {
    n = "#2bbb4f",
    i = "#986fec",
    c = "#e27d60",
    v = "#4799eb",   -- etc..
  },
  defaults = {
    true_colors = false,
    line_column = " [%l/%L] :%c  ", 
    branch_symbol = " ",
    fg="black",
  }
}

if extension == "cpp" or extension == "hpp" or extension == "h" then
  this_lsp = '-lsp_name'
else
  this_lsp = '-file_size'
end

-- Autopairs
require('nvim-autopairs').setup({
  enable_check_bracket_line = false
})

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

    ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
    -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,
    disable = { },
    additional_vim_regex_highlighting = false,
  },
}

require'colorizer'.setup()

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

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.opt.termguicolors = true
require("bufferline").setup{}

require('gitsigns').setup()
