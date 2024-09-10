return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'folke/todo-comments.nvim',
  },
  config = function()
    local telescope = require 'telescope'
    local actions = require 'telescope.actions'

    local keymap = vim.keymap.set
    local function opts(desc)
      return {
        desc = 'Telescope: ' .. desc,
        noremap = true,
        silent = true,
        nowait = true,
      }
    end

    keymap(
      'n',
      '<C-p>',
      ':Telescope find_files hidden=true no_ignore=true<CR>',
      opts 'Find files'
    )
    keymap('n', '<leader>fr', ':Telescope oldfiles<CR>', opts 'Recent files')
    keymap('n', '<leader>ff', ':Telescope live_grep<CR>', opts 'Live grep')
    keymap('n', '<leader>fb', ':Telescope buffers <CR>', opts 'Buffers')
    keymap('n', '<leader>ft', '<cmd>TodoTelescope<cr>', opts 'Find todos')
    keymap('n', '<leader>R', ':Telescope resume<CR>', opts 'Resume')
    keymap(
      'n',
      '<leader>/',
      ':Telescope current_buffer_fuzzy_find <CR>',
      opts 'Current buffer fuzyz find'
    )
    keymap(
      'n',
      '<leader>gr',
      ':Telescope lsp_references<CR>',
      opts 'Lsp references'
    )

    telescope.setup {
      defaults = {
        mappings = {
          i = {
            ['esc'] = actions.close,
            ['<C-k>'] = actions.move_selection_previous,
            ['<C-j>'] = actions.move_selection_next,
          },
        },
        path_display = { 'smart' },
        sorting_strategy = 'ascending',
        layout_config = { prompt_position = 'top' },
        file_ignore_patterns = {
          '__pycache__',
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
          'vendor',
        },
      },
    }
  end,
}
