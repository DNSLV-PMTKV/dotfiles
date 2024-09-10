-- return {
--   'github/copilot.vim',
--   config = function()
--     vim.cmd [[imap <silent><script><expr> <C-m> copilot#Accept("\<CR>")]]
--     vim.g.copilot_no_tab_map = true
--
--     -- vim.keymap.set('i', '<C-m>', 'copilot#Accept("\\<CR>")', {
--     --   noremap = true,
--     --   silent = true,
--     --   expr = true,
--     --   replace_keycodes = false,
--     -- })
--   end,
-- }
return {
  'zbirenbaum/copilot.lua',
  event = 'InsertEnter',
  opts = {
    suggestion = {
      auto_trigger = true,
      keymap = {
        accept = '<C-l>',
        accept_line = '<M-l>',
        accept_word = '<M-k>',
        next = '<M-]>',
        prev = '<M-[>',
        dismiss = '<M-c>',
      },
    },
  },
}
