vim.g.mapleader = ' '

local keymap = vim.keymap

keymap.set('i', 'jk', '<ESC>', {desc = 'Exit insert mode with jk'})
keymap.set('n', '<leader>nh', ':nohl<CR>', {desc = 'Clear search highlights'})

--increment and decrement numbers
keymap.set('n', '<leader>+', '<C-a>') --increment
keymap.set('n', '<leader>-', '<C-x>') --decrement

--window management
keymap.set('n', '<leader>sv', '<C-w>v', {desc = 'Split Window Vertically'}) --split vertical
keymap.set('n', '<leader>sh', '<C-w>s', {desc = 'Split Window Horizontally'}) --split horizontal
keymap.set('n', '<leader>se', '<C-w>=', {desc = 'Equal Size Panes'}) --equal size panes
keymap.set('n', '<leader>sx', '<cmd>close<CR>', {desc = 'Close Pane'}) --close pane

--tabs
keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', {desc = 'Open New Tab'}) --open new tab
keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', {desc = 'Close Current Tab'}) --close current tab
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', {desc = 'Move to Next Tab'}) --next tab
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>',{desc = 'Move to Prev Tab'}) --prev tab
keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', {desc = 'Open Buffer in New Tab'}) --open buffer in new tab

-- Copy to system clipboard
keymap.set({"n", "v"}, "<leader>y", '"+y', { desc = "Yank to clipboard" })
keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank line to clipboard" })

-- Paste from system clipboard
keymap.set({"n", "v"}, "<leader>p", '"+p', { desc = "Paste from clipboard" })
keymap.set("n", "<leader>P", '"+P', { desc = "Paste before from clipboard" })

-- File explorer
keymap.set('n', '<leader>ee', ':leftabove 30vs! .<CR>', { noremap = true, silent = true })


