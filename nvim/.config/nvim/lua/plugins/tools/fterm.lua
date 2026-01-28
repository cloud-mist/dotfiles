return {
	"numToStr/FTerm.nvim",
	config = function()
		require("FTerm").setup({
			border = "double",
			dimensions = { height = 0.8, width = 0.7 },
		})
	end,
	vim.keymap.set("n", "<A-=>", '<CMD>lua require("FTerm").toggle()<CR>'),
	vim.keymap.set("t", "<A-=>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>'),
}
