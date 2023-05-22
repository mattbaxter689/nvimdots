vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.belloff= "all"
vim.opt.cursorline = false
vim.opt.wildmenu = true
vim.opt.syntax = "on"
vim.opt.textwidth = 80
vim.opt.encoding = "UTF-8"
vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.background = "dark" --dont need to use this for nightfox
vim.opt.showmode = false
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
