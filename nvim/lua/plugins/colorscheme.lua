return {
  -- 'olimorris/onedarkpro.nvim',
  'navarasu/onedark.nvim',
  priority = 1000,
  config = function()
    require('onedark').setup {
      code_style = {
        comments = 'none',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none',
      },
    }
    vim.cmd.colorscheme 'onedark'
  end,
}
