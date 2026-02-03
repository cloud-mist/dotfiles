return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("ibl").setup({
			exclude = { filetypes = { "markdown", "dashboard", "vimdoc" } },
			indent = {
				char = "│",
				tab_char = "│",
			},
			scope = { show_start = false, show_end = false },
		})
	end,
}
