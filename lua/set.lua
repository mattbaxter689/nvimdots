vim.o.number = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true
vim.o.expandtab = true
vim.o.belloff= "all"
vim.o.cursorline = false
vim.o.wildmenu = true
vim.o.syntax = "on"
vim.o.textwidth = 80
vim.o.encoding = "UTF-8"
vim.o.showmatch = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.termguicolors = true
vim.o.background = "dark" --dont need to use this for nightfox
vim.o.showmode = false
vim.g.vimtex_view_method = 'Skim'
vim.g.autoindent = true
vim.g.smartindent = true
vim.opt.laststatus=3

vim.opt.fillchars = {
    eob = " ",
    vert = " "
}

vim.opt.shell = "/usr/local/bin/fish"

--enable mouse just in case
vim.opt.mouse = 'a'
