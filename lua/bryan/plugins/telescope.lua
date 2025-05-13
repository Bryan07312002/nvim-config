return {
    'nvim-telescope/telescope.nvim',
    commit = 'b4da76b',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set(
            'n',
            '<leader>fw',
            function()
                local word = vim.fn.expand("<cword>")
                builtin.grep_string({ search = word })
            end)

        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
        vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<CR>', { desc = "Goto References" })
        vim.keymap.set('n', 'gi', '<cmd>Telescope lsp_implementations<CR>', { desc = "Goto Implementations" })
        vim.keymap.set("n", "gd", '<cmd>Telescope lsp_definitions<CR>', { desc = "Goto Definitions" })
    end
}
