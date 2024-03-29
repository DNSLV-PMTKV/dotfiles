local opt = vim.opt

vim.opt.shortmess:append("c")

opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
opt.completeopt = { "menuone", "noselect" } -- cmp
opt.encoding = "utf-8"                      -- the encoding written to a file
opt.ignorecase = true                       -- ignore case in search patterns
opt.showtabline = 2                         -- always show tabs
opt.smartcase = true                        -- smart case
opt.splitbelow = true                       -- force all horizontal splits to go below current window
opt.splitright = true                       -- force all vertical splits to go to the right of current window
opt.swapfile = false                        -- creates a swapfile
opt.termguicolors = true                    -- true colors
opt.expandtab = true                        -- convert tabs to spaces
opt.shiftwidth = 4                          -- number of spaces inserted for each indentation
opt.tabstop = 4                             -- number of inserted spaces for a tab
opt.cursorline = true                       -- highlight the current line
opt.number = true                           -- set numbered lines
opt.numberwidth = 4                         -- set number column width to 2 {default 4}
opt.signcolumn = "yes"                      -- always show the sign column
opt.wrap = true                             -- display lines as one long line
opt.scrolloff = 7                           -- start scrolling when there are 7 lines left to end of view
opt.showmode = false                        -- disable mode in comand line
opt.autoindent = true                       -- uses the indent from the previous line.
opt.smartindent = true
opt.updatetime = 100                        -- faster completion (4000ms default)
opt.showcmd = false                         -- Don't show the command in the last line
