return {
  {
    'nvim-treesitter/nvim-treesitter',
    -- build = ':TSUpdate',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      'axelvc/template-string.nvim',
    },
    config = function()
      local treesitter = require 'nvim-treesitter.configs'

      treesitter.setup {
        ensure_installed = 'all',
        highlight = { enable = true, additional_vim_regex_highlighting = false },
      }

      require('template-string').setup {}
    end,
  },
}
