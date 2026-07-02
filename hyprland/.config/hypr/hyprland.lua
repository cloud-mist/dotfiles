-- Autostart
hl.on("hyprland.start", function()
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
	hl.exec_cmd("fcitx5 -d --replace")
	hl.exec_cmd("waybar & dunst & clash-verge & hypridle")
	hl.exec_cmd("~/.config/hypr/scripts/swww.sh")
	hl.exec_cmd("xrdb -merge ~/.Xresources")
end)

-- FUCK NVIDIA
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

hl.env("NVD_BACKEND", "direct")
hl.env("GDK_SCALE", "2")
hl.env("XCURSOR_SIZE", "24")

hl.config({
	cursor = {
		no_hardware_cursors = true,
	},

	xwayland = {
		force_zero_scaling = true,
	},
})

-- monitor
hl.monitor({ output = "", mode = "3840x2160@160Hz", position = "auto", scale = 2 })

-- source
require("input")
require("wmc")
require("keybinds")
require("rules")
