return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    require('mason').setup {
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    }

    require('mason-lspconfig').setup {
      -- list of servers for mason to install
      ensure_installed = {
        'ts_ls',
        'html',
        'cssls',
        'tailwindcss',
        'lua_ls',
        'pyright',
      },
    }

    require('mason-tool-installer').setup {
      ensure_installed = {
        'ruff',

        -- LSP
        'pyright',
        'ts_ls',
        'lua-language-server',
        'ruff-lsp',

        -- Linters
        'eslint_d',
        'flake8',

        -- Formatters
        'stylua',
        'prettierd',
        'isort',
        'black',
      },
    }
  end,
}
