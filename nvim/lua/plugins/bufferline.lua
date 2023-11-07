local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup({
	options = {
		mode = "buffers",
		offsets = { { filetype = "NvimTree", text = "File Explorer" } },
		show_buffer_icons = true,
		show_buffer_close_icons = false,
		show_close_icon = false,
		show_tab_indicators = true,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		enforce_regular_tabs = false,
		always_show_bufferline = true,
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = true,
    sort_by = "insert_at_end"
		-- tab_size = 21,
		-- separator_style = "thin",
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
		-- 	separator = {
		-- 		fg = "#073642",
		-- 		bg = "#002b36",
		-- 	},
		-- 	separator_selected = {
		-- 		fg = "#073642",
		-- 	},
		-- 	background = {
		-- 		fg = "#657b83",
		-- 		bg = "#002b36",
		-- 	},
		-- buffer_selected = {
		-- 	italic = false,
		-- 	fg = "#fdf6e3",
		-- 	bold = true,
		-- },
		-- 	fill = {
		-- 		bg = "#21252b",
		-- 	},
	},
})
