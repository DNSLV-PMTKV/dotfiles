vim.g.mapleader = ' '

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap('n', '<leader>a', 'ggVG')

-- Navigate windows
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Navigate buffers
keymap('n', '<S-l>', ':BufferLineCycleNext<CR>', opts)
keymap('n', '<S-h>', ':BufferLineCyclePrev<CR>', opts)

-- Resize windows with arrows
keymap('n', '<C-Up>', ':resize -2<CR>', opts)
keymap('n', '<C-Down>', ':resize +2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Add undo break-points
keymap('i', ',', ',<c-g>u', opts)
keymap('i', '.', '.<c-g>u', opts)
keymap('i', ';', ';<c-g>u', opts)

-- Move text up and down
keymap('n', '<A-j>', ':m .+1<CR>==', opts)
keymap('n', '<A-k>', ':m .-2<CR>==', opts)
keymap('v', '<A-j>', ':m .+1<CR>==', opts)
keymap('v', '<A-k>', ':m .-2<CR>==', opts)
keymap('x', '<A-j>', ":move '>+1<CR>gv-gv", opts)
keymap('x', '<A-k>', ":move '<-2<CR>gv-gv", opts)

-- Clear highlights
keymap('n', '<Esc>', ':noh <CR>', opts)

-- Vertical split
keymap('n', '<C-\\>', '<Esc>:vs<CR>', opts)
keymap('n', 'gv', ':vs | lua vim.lsp.buf.definition()<CR>', opts)
keymap('n', 'gh', ':split | lua vim.lsp.buf.definition()<CR>', opts)

keymap('v', 'p', 'pgvy', opts)

-- Delete whole word with backspace
keymap('i', '<C-H>', '<C-W>', opts)

-- better indenting
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)
