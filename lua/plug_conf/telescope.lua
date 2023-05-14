require("telescope").setup({
    defaults = {
        layout_config = {
            width = 0.8,
            prompt_position = "top",
            preview_cutoff = 120,
        },
        layout_strategy = "horizontal",
        sorting_strategy = "descending",
    },
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
