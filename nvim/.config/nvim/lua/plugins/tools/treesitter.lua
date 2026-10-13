return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({ "rust", "go", "dart", "c", "cpp", "python", "javascript" }):wait(10000)
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "*",
			callback = function(ev)
				-- 尝试自动启动当前 buffer 的 treesitter
				pcall(vim.treesitter.start, ev.buf)
			end,
		})
	end,
}
