
require('bufferline').setup {
  options = {
	diagnostics = "nvim_lsp",
	offsets = {
		{
			filetype = "NvimTree",
			text = "File Explorer",
			highlight = "Directory",
			text_align = "left"
		}
    },
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = true,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    enforce_regular_tabs = false,
    always_show_bufferline = true,
  }
}

vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true})
vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true})
vim.api.nvim_set_keymap("n", "mn", ":BufferLineMoveNext<CR>", { noremap = true})
vim.api.nvim_set_keymap("n", "mp", ":BufferLineMovePrev<CR>", { noremap = true})
vim.api.nvim_set_keymap("n", "<leader>x", ":bdelete<CR>", { noremap = true})
