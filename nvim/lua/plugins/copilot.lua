vim.g.copilot_no_tab_map = true
vim.cmd[[imap <silent><script><expr> <C-n> copilot#Accept("\<CR>")]]
-- vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
