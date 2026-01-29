---   Compile & Run  ---
local function run_in_bottom_term()
	vim.cmd("w") -- 运行前保存
	local ft = vim.bo.filetype
	local Terminal = require("toggleterm.terminal").Terminal

	-- 语言命令映射
	local commands = {
		c = "gcc % -o %< && ./%<",
		cpp = "clang++ -std=c++17 -stdlib=libc++ % -Wall -o %< && ./%<",
		zig = "zig build run",
		python = "python3 %",
		lua = "lua %",
		rust = "cargo run -q",
		go = "go run .",
		javascript = "node %",
		perl = "perl %",
		sh = "bash %",
	}

	local cmd = commands[ft]

	if cmd then
		local run_term = Terminal:new({
			hide_number = false,
			cmd = cmd,
			direction = "horizontal",
			size = 18,
			close_on_exit = false, -- 运行完保留窗口查看结果
			on_open = function(term)
				vim.cmd("stopinsert")
				vim.wo[term.window].number = true
			end,
		})
		run_term:toggle()
	elseif ft == "markdown" then
		vim.cmd("MarkdownPreview")
	else
		print("该类型未定义运行逻辑: " .. ft)
	end
end

vim.keymap.set("n", "<F5>", run_in_bottom_term, { desc = "ToggleTerm Bottom Runner" })
