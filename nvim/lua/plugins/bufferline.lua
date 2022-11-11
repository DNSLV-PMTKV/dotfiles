local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup({
	options = {
		mode = "buffers",
		offsets = { { filetype = "NvimTree", text = "Explorer", padding = 1 } },
		show_buffer_icons = true,
		modified_icon = "",
		show_buffer_close_icons = false,
		show_close_icon = false,
		show_tab_indicators = true,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		enforce_regular_tabs = true,
		always_show_bufferline = true,
		tab_size = 21,
		separator_style = "thin",
	},
	highlights = {
		separator = {
			fg = "#073642",
			bg = "#002b36",
		},
		separator_selected = {
			fg = "#073642",
		},
		background = {
			fg = "#657b83",
			bg = "#002b36",
		},
		buffer_selected = {
			italic = false,
			fg = "#fdf6e3",
			bold = true,
		},
		fill = {
			bg = "#21252b",
		},
	},
})
