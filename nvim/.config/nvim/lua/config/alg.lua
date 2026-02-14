local function set_file_template()
	local ft = vim.bo.filetype
	local lines = {}
	local cursor_pos = { 1, 0 }

	if ft == "go" then
		lines = {
			"package main",
			"",
			"import (",
			'    "bufio"',
			'    "os"',
			'    "strconv"',
			")",
			"",
			"func main() {",
			"    defer out.Flush()",
			"    ",
			"}",
			"",
			"func writeInts(q []int) {",
			"    for i, v := range q {",
			"        out.WriteString(strconv.Itoa(v))",
			"        if i == len(q)-1 { out.WriteByte('\\n') } else { out.WriteByte(' ') }",
			"    }",
			"}",
			"",
			"// --- 快讀模板 ---",
			"var (",
			"    out = bufio.NewWriterSize(os.Stdout, 1 << 16)",
			"    in  = bufio.NewScanner(os.Stdin)",
			")",
			"",
			"func init() {",
			"    in.Buffer(make([]byte, 1 << 20), 1 << 20)",
			"    in.Split(bufio.ScanWords)",
			"}",
			"",
			"func rS() string  { in.Scan(); return in.Text() }",
			"func rI() int     { i, _ := strconv.Atoi(rS()); return i }",
			"func rF() float64 { f, _ := strconv.ParseFloat(rS(), 64); return f }",
		}
		cursor_pos = { 11, 4 }
	end

	if #lines > 0 then
		vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
		vim.api.nvim_win_set_cursor(0, cursor_pos)
	end
end

-- 映射空格 + cv
vim.keymap.set("n", "<leader>cv", set_file_template, { desc = "Insert Balanced Go Template" })
