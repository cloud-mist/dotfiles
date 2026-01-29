local languages = {
	"c",
	"lua",
	"rust",
	"go",
	"ocaml",
	"gleam",
	"odin",
	"c3",
	"python",
	"vim",
	"vimdoc",
	"query",
	"fish",
	"html",
	"hyprlang",
	"css",
	"scss",
	"bash",
}

return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",
	},
	{
		"MeanderingProgrammer/treesitter-modules.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		opts = {
			ensure_installed = languages,
			fold = { enable = false },
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<CR>",
					node_incremental = "<CR>",
					scope_incremental = "<Nop>",
					node_decremental = "<A-CR>",
				},
			},
		},
	},
}
