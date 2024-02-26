local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
  return
end

local actions = require 'telescope.actions'

telescope.setup {
  defaults = {
    prompt_prefix = ' ',
    selection_caret = ' ',
    path_display = { 'absolute' },
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
      '.expo'
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
