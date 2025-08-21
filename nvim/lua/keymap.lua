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

-- Better vertical movements
keymap('n', '<C-u>', '<C-u>zz', opts)
keymap('n', '<C-d>', '<C-d>zz', opts)
keymap('n', 'n', 'nzzzv', opts)
keymap('n', 'N', 'Nzzzv', opts)
keymap('n', '}', '}zzzv', opts)
keymap('n', '{', '{zzzv', opts)

-- Close buffers
vim.api.nvim_set_keymap(
  'n',
  '<C-w>',
  ':Bdelete<CR>',
  { noremap = true, nowait = true, silent = true }
)

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

-- Format document
keymap('n', '<C-f>', ':lua vim.lsp.buf.format { async = true }<CR>', opts)

-- better indenting
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- disable recording macros
keymap('n', 'q', '<Nop>', opts)
keymap('n', 'Q', '<Nop>', opts)
