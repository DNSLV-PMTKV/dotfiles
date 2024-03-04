local opt = vim.opt

opt.number = true
opt.signcolumn = 'yes'
opt.cursorline = true

opt.clipboard:append 'unnamedplus'
opt.mouse:append 'a'

opt.scrolloff = 7
opt.sidescrolloff = 7

opt.smartcase = true
opt.splitbelow = true

opt.termguicolors = true

opt.swapfile = false
opt.autoread = true
vim.bo.autoread = true

opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.autoindent = true
opt.wrap = true

opt.updatetime = 100
