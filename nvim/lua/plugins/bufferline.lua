return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'buffers',
        offsets = { { filetype = 'NvimTree', text = 'File Explorer' } },
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        show_close_icon = false,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        diagnostics = 'nvim_lsp',
        diagnostics_update_in_insert = true,
        sort_by = 'insert_at_end',
      },
      highlights = {
        buffer_selected = { italic = false, bold = true },
        diagnostic_selected = { italic = false },
        warning_diagnostic_selected = { italic = false },
        error_diagnostic_selected = { italic = false },
        hint_selected = { italic = false },
        pick_selected = { italic = false },
        pick_visible = { italic = false },
        pick = { italic = false },
      },
    }
  end,
}
