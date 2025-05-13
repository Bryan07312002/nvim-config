return {
    "kylechui/nvim-surround",
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
