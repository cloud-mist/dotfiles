---   Compile & Run  ---
local function run_in_bottom_term()
	vim.cmd("w")
	local ft = vim.bo.filetype
	local Terminal = require("toggleterm.terminal").Terminal

	-- 语言命令映射
	local file = vim.fn.expand("%")
	local output = vim.fn.expand("%:r")
	local commands = {
		c = string.format("gcc -std=c11 -Wall %s -o %s; and ./%s", file, output, output), -- for fish
		cpp = string.format("clang++ -std=c++17 -stdlib=libc++ %s -Wall -o %s; and ./%s", file, output, output),
		python = string.format("python3 %s", file),
		lua = string.format("lua %s", file),
		javascript = string.format("node %s", file),
		perl = string.format("perl %s", file),
		sh = string.format("bash %s", file),
		rust = "cargo run -q",
		go = "go run .",
		zig = "zig build run",
		html = string.format("firefox %s", file),
	}

	local cmd = commands[ft]

	if ft == "html" then
		vim.fn.jobstart(cmd, { detach = true })
		print("已在 Firefox 中开启预览")
	elseif ft == "markdown" then
		vim.cmd("MarkdownPreview")
	elseif cmd then
		local run_term = Terminal:new({
			hide_number = false,
			cmd = cmd,
			direction = "horizontal",
			size = 18,
			close_on_exit = false,
			on_open = function(term)
				vim.cmd("stopinsert")
				vim.wo[term.window].number = true
			end,
		})
		run_term:toggle()
	else
		print("该类型未定义运行逻辑: " .. ft)
	end
end

vim.keymap.set("n", "<F5>", run_in_bottom_term, { desc = "compile run" })
