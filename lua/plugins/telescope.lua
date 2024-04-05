return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>fw", LazyVim.telescope("live_grep"), desc = "Grep (Root Dir)", remap = true },
    { "<leader>/", nil },
  },
}
