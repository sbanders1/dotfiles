local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>?', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>??', builtin.builtin, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>cs', builtin.colorscheme, {})
vim.keymap.set('n', '<leader>op', builtin.vim_options, {})
vim.keymap.set('n', '<leader>ma', builtin.keymaps, {})
vim.keymap.set('n', '<leader>ft', builtin.filetypes, {})
vim.keymap.set('n', '<leader>ts', builtin.treesitter, {})
vim.keymap.set('n', '<leader>pl', builtin.planets, {})
vim.keymap.set('n', '<leader>co', builtin.commands, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})





