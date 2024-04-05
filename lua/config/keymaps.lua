-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Helper function for mappings
local map = vim.keymap.set
-- Escape to normal mode

map("i", "jk", [[<C-\><C-n>]], {
  desc = "Normal mode",
  noremap = true,
  silent = true,
})

map("i", "kj", [[<C-\><C-n>]], {
  desc = "Normal mode",
  noremap = true,
  silent = true,
})
