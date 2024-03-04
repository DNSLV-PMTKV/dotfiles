return {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require 'lspconfig'

    local signs = {
      { name = 'DiagnosticSignError', text = '' },
      { name = 'DiagnosticSignWarn', text = '' },
      { name = 'DiagnosticSignHint', text = '' },
      { name = 'DiagnosticSignInfo', text = '' },
    }

    for _, sign in ipairs(signs) do
      vim.fn.sign_define(
        sign.name,
        { texthl = sign.name, text = sign.text, numhl = '' }
      )
    end

    local config = {
      virtual_text = false,
      signs = {
        active = signs,
      },
      update_in_insert = false,
      underline = true,
      severity_sort = true,
      float = {
        focusable = false,
        style = 'minimal',
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
      },
    }

    vim.diagnostic.config(config)

    vim.lsp.handlers['textDocument/hover'] =
      vim.lsp.with(vim.lsp.handlers.hover, {
        border = 'rounded',
        width = 60,
        focusable = false,
      })

    vim.lsp.handlers['textDocument/signatureHelp'] =
      vim.lsp.with(vim.lsp.handlers.signature_help, {
        border = 'rounded',
        width = 60,
      })

    local function lsp_keymaps(bufnr)
      local opts = { noremap = true, silent = true }
      vim.api.nvim_buf_set_keymap(
        bufnr,
        'n',
        'gD',
        '<cmd>lua vim.lsp.buf.declaration()<CR>',
        opts
      )
      vim.api.nvim_buf_set_keymap(
        bufnr,
        'n',
        'gd',
        '<cmd>lua vim.lsp.buf.definition()<CR>',
        opts
      )
      vim.api.nvim_buf_set_keymap(
        bufnr,
        'n',
        'K',
        '<cmd>lua vim.lsp.buf.hover()<CR>',
        opts
      )
      vim.api.nvim_buf_set_keymap(
        bufnr,
        'n',
        'gi',
        '<cmd>lua vim.lsp.buf.implementation()<CR>',
        opts
      )
      vim.api.nvim_buf_set_keymap(
        bufnr,
        'n',
        '<leader>rn',
        '<cmd>lua vim.lsp.buf.rename()<CR>',
        opts
      )
      vim.api.nvim_buf_set_keymap(
        bufnr,
        'n',
        'gr',
        '<cmd>lua vim.lsp.buf.references()<CR>',
        opts
      )
      vim.api.nvim_buf_set_keymap(
        bufnr,
        'n',
        '<leader>d',
        '<cmd>lua vim.diagnostic.open_float()<CR>',
        opts
      )
      vim.api.nvim_buf_set_keymap(
        bufnr,
        'n',
        '[d',
        '<cmd>lua vim.diagnostic.goto_prev()<CR>',
        opts
      )
      vim.api.nvim_buf_set_keymap(
        bufnr,
        'n',
        ']d',
        '<cmd>lua vim.diagnostic.goto_next()<CR>',
        opts
      )
      vim.api.nvim_buf_set_keymap(
        bufnr,
        'n',
        '<leader>q',
        '<cmd>lua vim.diagnostic.setloclist()<CR>',
        opts
      )
    end

    local on_attach = function(_, bufnr)
      lsp_keymaps(bufnr)
    end

    -- lua
    lspconfig.lua_ls.setup {
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
        },
      },
    }
  end,
}