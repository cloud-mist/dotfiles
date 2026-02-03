-- :h MiniSurround.config.
return {
	"nvim-mini/mini.surround",
	version = "*",
	event = "InsertEnter",
	config = function()
		require("mini.surround").setup({
			mappings = { -- 添加可以选中，如果删除、替换是选中的话，sd的d就把内容给删除了,sr也同样
				add = "sa",
				delete = "sd",
				replace = "sr",
				find = "sf", -- Find surrounding (to the right)
				find_left = "sF", -- Find surrounding (to the left)
				highlight = "sh", -- Highlight surrounding
			},
			respect_selection_type = false,

			search_method = "nearest",
		})
	end,
}

-- add， 选中-> sa+符号,  sa + 区域 + 符号
-- delete, sd + 符号， 会把最近的删除
-- replace， sr + 旧符号 + 新符号， 会把最近的旧符号剔除
-- highlight相当于操作前确认是不是你想删除的符号
