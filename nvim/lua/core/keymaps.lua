local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)

-- Close buffers
keymap("n", "<C-w>", ":Bdelete<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- NvimTree
keymap("n", "<C-b>", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<C-p>", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>f", ":Telescope live_grep<CR>", opts)

-- Gitsign
keymap("n", "<leader>gb", ":Gitsign toggle_current_line_blame<CR>", opts)
keymap("n", "<leader>gp", ":Gitsign preview_hunk<CR>", opts)
keymap("n", "<leader>gadd", ":Gitsign stage_hunk<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", ":noh<CR>", opts)

-- Vertical split
keymap("n", "<C-\\>", "<Esc>:vs<CR>", opts)
keymap("n", "gv", ":vs | lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "gh", ":split | lua vim.lsp.buf.definition()<CR>", opts)

-- Format document
keymap("n", "<C-f>", ":lua vim.lsp.buf.format { async = true }<CR>", opts)
