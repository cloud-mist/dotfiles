vim.cmd([[
map <Space>cv :call SetTitle()<CR>
func SetTitle()
	if &filetype == 'go'
		let l = 0
		let l = l + 1 | call setline(l,'package main')
		let l = l + 1 | call setline(l,'import ("bufio";"fmt";"io";"os";"strconv")')
		let l = l + 1 | call setline(l,'func main(){')
		let l = l + 1 | call setline(l,'    defer ot.Flush()')
		let l = l + 1 | call setline(l,'')
		let l = l + 1 | call setline(l,'}')
		let l = l + 1 | call setline(l,'//<<<')
		let l = l + 1 | call setline(l,'var (')
		let l = l + 1 | call setline(l,'	ot = bufio.NewWriter(os.Stdout)')
		let l = l + 1 | call setline(l,'	in = bufio.NewScanner(os.Stdin)')
		let l = l + 1 | call setline(l,')')
		let l = l + 1 | call setline(l,'')
		let l = l + 1 | call setline(l,'func init() { in.Split(bufio.ScanWords) }')
		let l = l + 1 | call setline(l,'func rS() string  { in.Scan(); return in.Text() }')
		let l = l + 1 | call setline(l,'func rnI() int     { i, _ := strconv.Atoi(rS()); return i }')
		let l = l + 1 | call setline(l,'func rnF() float64 { f, _ := strconv.ParseFloat(rS(), 64); return f }')
		let l = l + 1 | call setline(l,'//>>>')
    elseif &filetype == 'cpp'
		let l = 0
		let l = l + 1 | call setline(l,'#include<iostream>')
		let l = l + 1 | call setline(l,'')
		let l = l + 1 | call setline(l,'using namespace std;')
		let l = l + 1 | call setline(l,'')
		let l = l + 1 | call setline(l,'int main(){')
		let l = l + 1 | call setline(l,'')
		let l = l + 1 | call setline(l,'}')
	endif
endfunc
]])
