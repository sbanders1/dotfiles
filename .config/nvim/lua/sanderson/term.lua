-- autocmd BufWinEnter,WinEnter term://* startinsert

vim.api.nvim_command([[
    autocmd TermOpen * startinsert
    ]])
