local function set_file_template()
	local ft = vim.bo.filetype
	local lines = {}
	local cursor_pos = { 1, 0 }

	if ft == "go" then
		lines = {
			"package main",
			"",
			'import ("bufio";"fmt";"os";"strconv")',
			"",
			"func main() {",
			"    defer ot.Flush()",
			"    ",
			"}",
			"",
			"// --- 快读模板 ---",
			"var (",
			"    ot = bufio.NewWriter(os.Stdout)",
			"    in = bufio.NewScanner(os.Stdin)",
			")",
			"",
			"func init() {",
			"    in.Buffer(make([]byte, 1024*1024), 1024*1024)",
			"    in.Split(bufio.ScanWords)",
			"}",
			"",
			"func rS() string  { in.Scan(); return in.Text() }",
			"func rnI() int     { i, _ := strconv.Atoi(rS()); return i }",
			"func rnF() float64 { f, _ := strconv.ParseFloat(rS(), 64); return f }",
		}
		cursor_pos = { 7, 4 }
	elseif ft == "cpp" then
		lines = {
			"#include <iostream>",
			"using namespace std;",
			"",
			"int main() {",
			"    ",
			"    return 0;",
			"}",
		}
		cursor_pos = { 5, 4 }
	end

	if #lines > 0 then
		vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
		vim.api.nvim_win_set_cursor(0, cursor_pos)
	end
end

-- 映射空格 + cv
vim.keymap.set("n", "<leader>cv", set_file_template, { desc = "Insert Balanced Template" })
