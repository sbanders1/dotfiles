vim.g.mapleader = ' '
vim.keymap.set('n', '<Tab>', '<C-w>w')
vim.keymap.set('n', '<leader>w', ':w<cr>')
vim.keymap.set('n', '<leader>p', '"_dP')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', '<S-n>', '<S-n>zz')
vim.keymap.set('n', '<C-s>', '<Esc>:w<cr>')
vim.keymap.set('i', '<C-s>', '<Esc>:w<cr>li')
vim.keymap.set('n', 'gl', '$')
vim.keymap.set('n', 'gh', '^')

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('t', '<C-v><Esc>', '<Esc>')
vim.keymap.set('t', '<C-w><Tab>', '<C-\\><C-n><C-w>w')

