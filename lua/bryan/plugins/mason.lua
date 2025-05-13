return {
    "mason-org/mason.nvim",
    config=function()
        require("mason").setup()
    end,
    handlers = {
        volar = function()
            local lspconfig = require('lspconfig')

            lspconfig.volar.setup {
                -- add filetypes for typescript, javascript and vue
                filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
                init_options = {
                    vue = {
                        -- disable hybrid mode
                        hybridMode = false,
                    },
                },
            }
        end,
    }
}
