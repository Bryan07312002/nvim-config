return {
    "ray-x/lsp_signature.nvim",
    --event = "VeryLazy",
    config = function()
        if vim.fn.hlexists("LspSignatureActiveParameter") == 0 then
            vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { link = "Underlined" })
        end

        require("lsp_signature").setup({
            bind = false,                       -- Disable automatic binding
            hint_enable = false,                -- Disable floating hints
            hi_parameter = false,               -- Disable parameter highlighting
            handler_opts = { border = "none" }, -- Optional: Adjust border style
            floating_window = false,            -- Disable auto popup
            toggle_key = nil,                   -- No automatic toggle key
            select_signature_key = nil,         -- Disable cycling signatures
        })

        vim.keymap.set("i", "<C-s>", function()
            require("lsp_signature").toggle_float_win()
        end, { silent = true, noremap = true, desc = "Toggle signature help" })
    end
}
