return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		open_mapping = [[<A-=>]],
		hide_numbers = true,
		shade_terminals = true,
		start_in_insert = true,
		insert_mappings = true,
		terminal_mappings = true,
		persist_size = true,
		direction = "float",
		close_on_exit = true,
		float_opts = {
			border = "curved",
			width = 100,
			height = 25,
			title_pos = "center",
		},
	},
}
