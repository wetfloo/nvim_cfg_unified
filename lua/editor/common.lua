-- 0 is more reachable than ^, is sometimes useful

vim.keymap.set('n', '0', '^')
vim.keymap.set('n', '^', '0')

-- Make visual line indentation less painful

vim.keymap.set('x', '<', '<gv', { desc = 'Indent right' })
vim.keymap.set('x', '>', '>gv', { desc = 'Indent left' })

-- Yank/delete/change to the start of the line

vim.keymap.set('n', '<leader>Y', 'y0`]', { desc = '[Y]ank to the start of the line' })
vim.keymap.set('n', '<leader>C', 'c0', { desc = '[C]hange to the start of the line' })
vim.keymap.set('n', '<leader>D', 'd0', { desc = '[D]elete to the start of the line' })

-- Plus register made convenient

vim.keymap.set({ 'n', 'x' }, '<leader>y', '"+y', { desc = '[Y]ank to + register' })
vim.keymap.set({ 'n', 'x' }, '<leader>d', '"+d', { desc = '[D]elete to + register' })
vim.keymap.set({ 'n', 'x' }, '<leader>p', '"+p', { desc = '[P]aste from + register' })


-- Paste over the text without losing current unnamed register

vim.keymap.set('x', 'p', '"_dP')
