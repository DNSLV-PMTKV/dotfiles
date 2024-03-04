return {
  'github/copilot.vim',
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.cmd [[imap <silent><script><expr> <C-n> copilot#Accept("\<CR>")]]
  end,
}
