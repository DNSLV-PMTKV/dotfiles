return {
  'olimorris/onedarkpro.nvim',
  priority = 1000,
  config = function()
    require('onedarkpro').setup {
      options = {
        cursorline = true,
      },
      plugins = {
        nvim_tree = false,
        telescope = false,
      },
    }
    vim.cmd.colorscheme 'onedark'
  end,
}
