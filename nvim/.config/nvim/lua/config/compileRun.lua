---   Compile & Run  ---
vim.cmd([[
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
		exec "w"
		if &filetype == 'c'
				set splitbelow
				exec "!gcc % -o %<"
				:sp
				:res -5
				:term ./%<
        elseif &filetype == 'zig'
                set splitbelow
                :sp
                :res -5
                :term zig build run
		elseif &filetype == 'cpp'
				set splitbelow
				exec "!clang++ -std=c++17 -stdlib=libc++ % -Wall -o %<"
				:sp
				:res -5
				:term ./%<
		elseif &filetype == 'sh'
				:!bash %
		elseif &filetype == 'python'
				set splitbelow
				:sp
				:res -5
				:term python3 %
		elseif &filetype == 'lua'
				set splitbelow
				:sp
				:res -5
				:term lua %
		elseif &filetype == 'html'
				silent! exec "!".g:mkdp_browser." % &"
		elseif &filetype == 'markdown'
				exec "MarkdownPreview"
		elseif &filetype == 'asciidoc'
				silent! exec "!brave % &"
		elseif &filetype == 'rust'
				set splitbelow
				:sp
				:res -5
				:term cargo run -q
		elseif &filetype == 'tex'
				silent! exec "VimtexStop"
				silent! exec "VimtexCompile"
		elseif &filetype == 'go'
				set splitbelow
				:sp
                :res -5
				:term go run .
        elseif &filetype == 'javascript'
                set splitbelow
                :sp
                :res -5
                :term node %
        elseif &filetype == 'perl'
                set splitbelow
                :sp
                :res -5
                :term perl %
		endif
endfunc

]])
