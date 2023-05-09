require("Comment").setup()

vim.api.nvim_set_keymap("n", "<leader>/", "<Cmd>lua require('Comment.api').toggle.linewise.current()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>/", "<Cmd>lua require('Comment.api').toggle.linewise.current()<CR>", { noremap = true, silent = true })
