#!/usr/bin/env lua

-- 执行 Shell 命令并获取输出内容
local function exec_cmd(cmd)
	local handle = io.popen(cmd)
	local result = handle:read("*a")
	handle:close()
	return result
end

-- 检查进程是否存在
local pids = exec_cmd("pgrep -f lx-music-desktop")

if pids == "" or pids == nil then
	-- 未启动：后台启动程序
	os.execute("lx-music-desktop >/dev/null 2>&1 &")
else
	-- 已启动：发送 Hyprland 指令聚焦到对应窗口
	os.execute("hyprctl dispatch focuswindow 'class:^(lx-music-desktop|lx-music)$'")
end
