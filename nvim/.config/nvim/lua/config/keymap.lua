-- ⭐:help map-modes
--   :help vim.keymap.set
--   o-mode: e.g. y,d,etc. and this operator
--   x-mode: visual + select mode
--   v-mode: visual
--   t-mode: terminal mode
local keymap = vim.keymap

-- move(colemak)
keymap.set({ "n", "o", "x" }, "n", "h")
keymap.set({ "n", "o", "x" }, "e", "j")
keymap.set({ "n", "o", "x" }, "u", "k")
keymap.set({ "n", "o", "x" }, "i", "l")

-- move quickly
keymap.set({ "n", "o", "x" }, "U", "5k")
keymap.set({ "n", "o", "x" }, "E", "5j")
keymap.set({ "n", "o", "x" }, "W", "5w")
keymap.set({ "n", "o", "x" }, "B", "5b")

keymap.set({ "n", "o", "x" }, "N", "0") -- 移动到当前行首
keymap.set({ "n", "o", "x" }, "I", "$") -- 移动到当前行尾

-- insert
keymap.set({ "n", "v" }, "k", "i")
keymap.set({ "n", "v" }, "K", "I")

-- search
keymap.set("n", "-", "N")
keymap.set("n", "=", "n")

-- Indent
keymap.set("n", "<", "<<")
keymap.set("n", ">", ">>")

--
-- WINDOW
--

-- 分屏
keymap.set("n", "s", "<Nop>")
keymap.set("n", "si", ":set splitright<CR>:vsplit<CR>")
keymap.set("n", "sn", ":set nosplitright<CR>:vsplit<CR>:set splitright<CR>")
keymap.set("n", "su", ":set nosplitbelow<CR>:split<CR>:set splitbelow<CR>")
keymap.set("n", "se", ":set splitbelow<CR>:split<CR>")

-- 焦点移动
keymap.set("n", "<LEADER>u", "<C-w>k")
keymap.set("n", "<LEADER>e", "<C-w>j")
keymap.set("n", "<LEADER>n", "<C-w>h")
keymap.set("n", "<LEADER>i", "<C-w>l")

-- 窗口大小调整
keymap.set("n", "<up>", "<cmd>res -5<CR>")
keymap.set("n", "<down>", "<cmd>res +5<CR>")
keymap.set("n", "<left>", "<cmd>vertical resize+5<CR>")
keymap.set("n", "<right>", "<cmd>vertical resize-5<CR>")

-- 横竖切换
keymap.set("n", "sh", "<C-w>t<C-w>K")
keymap.set("n", "sv", "<C-w>t<C-w>H")

-- Tab标签
keymap.set("n", "tu", "<cmd>tabe<CR>")
keymap.set("n", "tn", "<cmd>-tabnext<CR>")
keymap.set("n", "ti", "<cmd>+tabnext<CR>")
keymap.set("n", "tmn", "<cmd>-tabmove<CR>")
keymap.set("n", "tmi", "<cmd>+tabmove<CR>")

--
-- OTHER
--
keymap.set("v", "Y", '"+y') -- copy to clipboard
keymap.set("n", "l", "u") -- undo, redo:C-r
keymap.set("n", "<LEADER><CR>", ":nohl<CR>") -- cancel highlight
keymap.set("n", "S", ":w<CR>") -- save
keymap.set("n", "Q", ":q<CR>") -- quit
keymap.set("t", "<Esc>", "<C-\\><C-n>") -- terminal-mode
keymap.set("n", "<C-g>", ":tabe<CR>:term lazygit<CR>") -- Lazygit

-- lsp
keymap.set("n", "gd", vim.lsp.buf.definition)
keymap.set("n", "gr", vim.lsp.buf.references)
keymap.set("n", "gh", vim.lsp.buf.hover)
keymap.set("n", "<space>rn", vim.lsp.buf.rename)
keymap.set("n", "<space>ca", vim.lsp.buf.code_action)

keymap.set("n", "<space>do", vim.diagnostic.open_float)
keymap.set("n", "[d", vim.diagnostic.goto_prev)
keymap.set("n", "]d", vim.diagnostic.goto_next)
keymap.set("n", "<space>ds", vim.diagnostic.setloclist)
