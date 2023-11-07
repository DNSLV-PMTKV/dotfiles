local status_ok, onedark = pcall(require, 'onedark')
if not status_ok then
  return
end

-- OneDark styles: dark, darker, cool, deep, warm, warmer, light
onedark.setup {
  style = 'dark',
  code_style = {
    comments = 'none',
  },
}
onedark.load()
