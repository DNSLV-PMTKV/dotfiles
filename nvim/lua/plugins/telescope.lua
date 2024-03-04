return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local actions = require 'telescope.actions'
    local keymap = vim.keymap.set
    local opts = { noremap = true, silent = true }

    keymap(
      'n',
      '<C-p>',
      ':Telescope find_files hidden=true no_ignore=true<CR>',
      opts
    )
    keymap('n', '<leader>f', ':Telescope live_grep<CR>', opts)
    keymap('n', '<leader>r', ':Telescope resume<CR>', opts)
    keymap('n', '<leader>b', ':Telescope buffers <CR>', opts)
    keymap('n', '<leader>/', ':Telescope current_buffer_fuzzy_find <CR>', opts)
    keymap('n', '<leader>gr', ':Telescope lsp_references<CR>', opts)

    require('telescope').setup {
      defaults = {
        mappings = {
          i = {
            ['esc'] = actions.close,
          },
        },
        prompt_prefix = ' ',
        selection_caret = ' ',
        path_display = { 'absolute' },
        file_ignore_patterns = {
          '__pycache__',
          'lazy-lock.json',
          '*-lock',
          '*-lock.yaml',
          'htmlcov',
          'media',
          'static',
          'node_modules',
          'assets',
          'dist',
          '.git',
          '.pytest_cache',
          'android',
          'ios',
          '.expo',
        },
        sorting_strategy = 'ascending',
        layout_config = {
          horizontal = {
            prompt_position = 'top',
          },
          vertical = {
            mirror = false,
          },
          width = 0.8,
          height = 0.9,
          preview_cutoff = 120,
        },
        color_devicons = true,
        set_env = { ['COLORTERM'] = 'truecolor' },
      },
    }
  end,
}
