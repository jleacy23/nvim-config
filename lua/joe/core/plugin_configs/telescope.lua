local telescope = require('telescope')

telescope.setup {
  defaults = {
    path_display = { "smart" },
    mappings = {
      i = {
        ["<C-j>"] = "move_selection_next",   -- move down in list
        ["<C-k>"] = "move_selection_previous", -- move up in list
      },
    },
  },
}

-- Keybindings for common actions
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep,  { desc = "Live grep" })
vim.keymap.set('n', '<leader>fb', builtin.buffers,    { desc = "List buffers" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags,  { desc = "Search help" })
vim.keymap.set('n', '<leader>fr', builtin.oldfiles,   { desc = "Recent files" })
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = "Diagnostics" })

