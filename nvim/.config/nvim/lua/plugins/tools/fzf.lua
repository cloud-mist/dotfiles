return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	vim.keymap.set("n", "<leader>ff", function()
		vim.cmd("tabnew")
		require("fzf-lua").files()
	end),
	vim.keymap.set("n", "<leader>fb", function()
		require("fzf-lua").builtin()
	end),
	vim.keymap.set("n", "<leader>fk", function()
		require("fzf-lua").keymaps()
	end),
	vim.keymap.set("n", "<leader>fg", function()
		require("fzf-lua").live_grep()
	end),
	vim.keymap.set("n", "<leader>fq", function()
		require("fzf-lua").quickfix()
	end),
	vim.keymap.set("n", "<leader>fd", function()
		require("fzf-lua").diagnostics_document()
	end),
	vim.keymap.set("n", "<leader>fh", function()
		require("fzf-lua").helptags()
	end),
}
