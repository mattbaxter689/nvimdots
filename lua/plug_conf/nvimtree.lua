require("nvim-tree").setup()

vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true})
vim.api.nvim_set_keymap("n", "<C-r>", ":NvimTreeRefresh<CR>", { noremap = true})
