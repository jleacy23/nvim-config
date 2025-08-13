-- Claude Code integration keybindings
local keymap = vim.keymap

-- Claude Code shortcuts
keymap.set('n', '<leader>cc', '<cmd>ClaudeCode<CR>', {desc = 'Open Claude Code'})
keymap.set('n', '<leader>ca', '<cmd>ClaudeAsk<CR>', {desc = 'Ask Claude about current file'})
keymap.set('v', '<leader>ce', '<cmd>ClaudeExplain<CR>', {desc = 'Explain selected code'})
keymap.set('n', '<leader>cf', '<cmd>ClaudeFix<CR>', {desc = 'Fix current file with Claude'})
keymap.set('n', '<leader>cr', '<cmd>ClaudeRefactor<CR>', {desc = 'Refactor current file'})
keymap.set('v', '<leader>cr', '<cmd>ClaudeRefactor<CR>', {desc = 'Refactor selected code'})
keymap.set('n', '<leader>ct', '<cmd>ClaudeTest<CR>', {desc = 'Generate tests for current file'})
keymap.set('n', '<leader>cd', '<cmd>ClaudeDoc<CR>', {desc = 'Generate documentation'})