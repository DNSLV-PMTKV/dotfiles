return {
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      local api = require 'nvim-tree.api'
      vim.keymap.set('n', '<c-b>', api.tree.toggle)

      local function my_on_attach(bufnr)
        local function opts(desc)
          return {
            desc = 'nvim-tree: ' .. desc,
            buffer = bufnr,
            noremap = true,
            silent = true,
            nowait = true,
          }
        end

        -- default mappings
        api.config.mappings.default_on_attach(bufnr)

        -- custom mappings
        vim.keymap.set('n', '<c-b>', api.tree.toggle, opts 'Toggle')
        vim.keymap.set('n', '?', api.tree.toggle_help, opts 'Help')
      end

      require('nvim-tree').setup {
        on_attach = my_on_attach,
        open_on_tab = true,
        hijack_cursor = true,
        hijack_directories = {
          enable = false,
        },
        view = { width = 42 },
        filters = {
          custom = { '^.git$', '__pycache__' },
        },
        actions = {
          open_file = { quit_on_open = true },
          change_dir = { enable = false },
        },
        update_focused_file = {
          enable = true,
          update_cwd = true,
        },
        git = {
          enable = true,
          ignore = false,
        },
        renderer = {
          root_folder_label = false,
          indent_markers = {
            enable = true,
          },
          icons = {
            glyphs = {
              git = {
                unstaged = '',
                staged = 'S',
                unmerged = '',
                renamed = '➜',
                untracked = 'U',
                deleted = '',
                ignored = '◌',
              },
            },
          },
        },
        diagnostics = {
          enable = true,
          show_on_dirs = true,
          icons = {
            hint = '',
            info = '',
            warning = '',
            error = '',
          },
        },
      }
    end,
  },
}
