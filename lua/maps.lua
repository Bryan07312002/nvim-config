local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

--save file
keymap.set('n', '<C-s>', ':w<CR>')
keymap.set('v', '<C-s>', '<Esc>:w<CR>')
keymap.set('i', '<C-s>', '<Esc>:w<CR>')

keymap.set('n', 'q', ':wq<CR>')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Change Tabs
keymap.set('n', '<C-l>', ':bn<CR>')
keymap.set('n', '<C-h>', ':bf<CR>')
-- Close tab
keymap.set('n', '<C-k>k', ':bdelete<CR>')

-- Split window
keymap.set('n', '<C-w>l', ':vsplit<Return><C-w>w')


-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Telescope
keymap.set('n', '<Space>ff', ':Telescope file_browser<CR>')

-- File tree
keymap.set("n", "<Space>o", ":NvimTreeToggle<CR>", { silent = true })

-- Format code
keymap.set("n", "<C-f>", ":lua vim.lsp.buf.format()<CR>", { silent = true })

-- To go to normal mode
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "kj", "<ESC>")
