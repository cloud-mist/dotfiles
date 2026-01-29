return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && yarn install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
		vim.g.mkdp_auto_start = 0
		vim.g.mkdp_auto_close = 1
		vim.g.mkdp_refresh_slow = 0
		vim.g.mkdp_command_for_global = 1
		vim.g.mkdp_open_to_the_world = 1
		vim.g.mkdp_open_ip = ""
		vim.g.mkdp_browser = "firefox"
		vim.g.mkdp_echo_preview_url = 0
		vim.g.mkdp_browserfunc = ""
		vim.g.mkdp_preview_options = {
			mkit = {},
			katex = {},
			uml = {},
			maid = {},
			disable_sync_scroll = 0,
			sync_scroll_type = "middle",
			hide_yaml_meta = 1,
			sequence_diagrams = {},
			flowchart_diagrams = {},
			content_editable = false,
			toc = {},
		}
		vim.g.mkdp_markdown_css = ""
		vim.g.mkdp_highlight_css = ""
		vim.g.mkdp_port = ""
		vim.g.mkdp_page_title = "「${name}」"
	end,
	ft = { "markdown" },
}
