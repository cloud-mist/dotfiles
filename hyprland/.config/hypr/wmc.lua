-- ---------------  WM相关 -------------------------
--
-- https://wiki.hyprland.org/Configuring/Variables/
-- general decoration animation
--

hl.curve("myBezier", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 7,
	bezier = "myBezier",
})
hl.animation({
	leaf = "windowsOut",
	enabled = true,
	speed = 7,
	bezier = "default",
	style = "popin 80%",
})
hl.animation({
	leaf = "border",
	enabled = true,
	speed = 10,
	bezier = "default",
})
hl.animation({
	leaf = "borderangle",
	enabled = true,
	speed = 8,
	bezier = "default",
})
hl.animation({
	leaf = "fade",
	enabled = true,
	speed = 7,
	bezier = "default",
})
hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 6,
	bezier = "default",
})

hl.config({
	general = {
		layout = "dwindle",
		-- layout = "scrolling",
		gaps_in = 3,
		gaps_out = 7.5,
		border_size = 2,
		col = {
			active_border = "rgba(9cc8ffff)",
			inactive_border = "rgba(707070ff)",
		},
	},
	decoration = {
		blur = {
			enabled = false,
			size = 3,
			passes = 1,
			new_optimizations = false,
		},
		rounding = 6,
		shadow = {
			enabled = true,
			range = 40,
			render_power = 4,
			offset = { 0, 5 },
			color = "rgba(00000028)",
		},
	},
	animations = {
		enabled = true,
	},
	dwindle = {
		-- pseudotile = true # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
		preserve_split = true, -- you probably want this
		force_split = 2,
	},
	scrolling = {
		fullscreen_on_one_column = true,
		column_width = 0.5,
		focus_fit_method = 1, -- fit
	},

	misc = {
		on_focus_under_fullscreen = 1,
		render_unfocused_fps = 30,
		vrr = 1, -- 可变刷新率 hyprctl systeminfo
	},
	ecosystem = {
		no_update_news = true,
		no_donation_nag = true,
	},
})
