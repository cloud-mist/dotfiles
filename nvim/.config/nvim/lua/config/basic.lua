local options = {
	termguicolors = true,
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	expandtab = true,
	--
	autoindent = true,
	scrolloff = 8,
	--
	number = true,
	relativenumber = true,
	cursorline = true,
	--
	wrap = true,
	signcolumn = "yes",
	foldmethod = "marker",
	foldmarker = "<<<,>>>",
	--
	showcmd = true,
	wildmenu = true,
	showmode = false,
	hlsearch = true,
	ignorecase = true,
	smartcase = true,
	pumheight = 10,
	mouse = "a",
	--
	fileencodings = {
		-- <<<
		"ucs - bom",
		"utf - 8",
		"utf - 16",
		"gbk",
		"big5",
		"gb18030",
		"latin1",
		-- >>>
	},
}
for k, v in pairs(options) do
	vim.opt[k] = v
end

-- file type
vim.filetype.add({
	extension = {
		fs = "fsharp",
		fsx = "fsharp",
		fsi = "fsharp",
	},
	pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

vim.diagnostic.config({ virtual_text = false })

-- var
vim.g.python3_host_prog = "/usr/bin/python3"
vim.g.ruby_host_prog = "/usr/bin/ruby"
vim.g.loaded_perl_provider = 0 -- not load perl

-- beam cursor
vim.cmd([[
    autocmd VimLeave * set guicursor=a:ver25
]])
