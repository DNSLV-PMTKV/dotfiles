local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
	return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup({
	open_on_tab = true,
	hijack_directories = {
		enable = false,
	},
	hijack_cursor = true,
	update_focused_file = {
		enable = true,
	},
	renderer = {
		root_folder_modifier = ":t",
		icons = {
			webdev_colors = true,
			glyphs = {
				git = {
					unstaged = "",
					staged = "S",
					unmerged = "",
					renamed = "➜",
					untracked = "U",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	git = {
		enable = true,
		ignore = false,
		-- timeout = 500,
	},
	view = {
		centralize_selection = true,
		width = 42,
		side = "left",
		mappings = {
			list = {
				{ key = "h", cb = tree_cb("close_node") },
				{ key = "v", cb = tree_cb("vsplit") },
			},
		},
	},
	actions = {
		change_dir = {
			enable = false,
		},
		open_file = {
			quit_on_open = false,
		},
	},
	filters = {
		custom = { "node_modules", "__pycache__" },
	},
})

nvim_tree.open()
