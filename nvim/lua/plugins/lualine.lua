local lualine_ok, lualine = pcall(require, 'lualine')
if not lualine_ok then
  return
end

local diagnostics = {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  sections = { 'error', 'warn', 'info', 'hint' },
  colored = true,
  update_in_insert = true,
  always_visible = true,
}

local spaces = function()
  return 'spaces: ' .. vim.api.nvim_buf_get_option(0, 'shiftwidth')
end

lualine.setup {
  options = {
    icons_enabled = true,
    components_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {},
    globalstatus = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = { diagnostics, { 'filename', path = 1 } },
    lualine_x = { 'filetype' },
    lualine_y = { spaces },
    lualine_z = { 'location' },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {},
  },
  extensions = { 'fugitive', 'nvim-tree' },
}
