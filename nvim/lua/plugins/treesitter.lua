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
        auto_install = true,
        highlight = { enable = true, additional_vim_regex_highlighting = false },
        indent = { enable = true },
      }

      require('template-string').setup {}
    end,
  },
}
