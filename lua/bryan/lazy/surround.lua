return {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            opts = {
                mappings = {
                    add = "S",
                    delete = "Sd",
                    find = "Sf",
                    find_left = "SF",
                    highlight = "Sh",
                    update_n_lines = "Sn",
                    replace = "Sr",
                },
            },
        })
    end
}
