vim.g.mapleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- For splitting terminal
vim.api.nvim_set_keymap("n", "<leader>sh", ":hsplit | term<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>sv", ":vsplit | term<CR>", {noremap = true})

-- for general navigation
vim.api.nvim_set_keymap("", "<C-J>", "<C-W><C-J>", { noremap = true })
vim.api.nvim_set_keymap("", "<C-K>", "<C-W><C-K>", { noremap = true })
vim.api.nvim_set_keymap("", "<C-L>", "<C-W><C-L>", { noremap = true })
vim.api.nvim_set_keymap("", "<C-H>", "<C-W><C-H>", { noremap = true })

-- for terminal, going to normal mode
local opts = {noremap = true}
vim.api.nvim_set_keymap('t', '<esc>', [[<C-\><C-n>]], opts)
vim.api.nvim_set_keymap('t', 'jk', [[<C-\><C-n>]], opts)
vim.api.nvim_set_keymap('t', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
vim.api.nvim_set_keymap('t', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
vim.api.nvim_set_keymap('t', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
vim.api.nvim_set_keymap('t', '<C-l>', [[<C-\><C-n><C-W>l]], opts)

-- to get into normal mode
vim.api.nvim_set_keymap("i", "jh", "<Esc>", { noremap = true })
