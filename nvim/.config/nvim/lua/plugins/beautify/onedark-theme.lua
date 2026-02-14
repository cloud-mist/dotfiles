return {
	"navarasu/onedark.nvim",
	priority = 1000,

	config = function()
		require("onedark").setup({
			toggle_style_key = "<leader>ts",
			toggle_style_list = { "darker", "deep", "warmer" },

			code_style = {
				comments = "none",
				keywords = "none",
				functions = "italic",
				strings = "none",
				variables = "none",
			},
			highlights = {
				["@number"] = { fmt = "bold" },
			},
		})
		require("onedark").load()
	end,
}
