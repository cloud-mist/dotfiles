--
--      ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
--      ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
--      ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
--      ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
--      ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
--      ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
--
--                                              MY_VIMRC
--
--

-- core
require("core.lazy")
require("core.lsp")

-- Basic
require("config.keymap")
require("config.basic")
require("config.compileRun")
require("config.alg")
require("config.mdp")
require("config.diag")

--
vim.g.python3_host_prog = "/usr/bin/python3"
vim.g.ruby_host_prog = "/usr/bin/ruby"
vim.g.loaded_perl_provider = 0 -- not load perl

--
-- viml
--
vim.cmd([[
colorscheme onedark 

" rainbow-ts
"hi rainbowcol1 guifg=#787878
" hi rainbowcol1 guifg=#708090

" 退出时将光标设为Beam
autocmd VimLeave * set guicursor=a:ver25
]])

vim.filetype.add({
	pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})

require("nvim-treesitter")
	.install({
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
	})
	:wait(300000)
