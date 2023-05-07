require("transparent").setup()

vim.api.nvim_set_keymap("n", "<leader>et", ":TransparentToggle<CR>", { noremap = true })

vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, { "NvimTreeNormal" })
-- vimscript: let g:transparent_groups = extend(get(g:, 'transparent_groups', []), ["ExtraGroup"])
