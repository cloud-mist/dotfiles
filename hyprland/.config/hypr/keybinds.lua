-- === F-func ===
hl.bind("F1", hl.dsp.exec_cmd("~/.config/hypr/scripts/dunst-volume.sh toggle"))
hl.bind("F2", hl.dsp.exec_cmd("~/.config/hypr/scripts/dunst-volume.sh 5%-"))
hl.bind("F3", hl.dsp.exec_cmd("~/.config/hypr/scripts/dunst-volume.sh 5%+"))

hl.bind("F4", hl.dsp.exec_cmd("zen"))

hl.bind("F8", hl.dsp.exec_cmd("~/.config/hypr/scripts/swww2.sh"))

hl.bind("F10", hl.dsp.exec_cmd("hyprlock"))
hl.bind("F11", hl.dsp.exec_cmd('rofi -modi "emoji:rofimoji" -show emoji'))
hl.bind("F12", hl.dsp.exec_cmd("lx-music-desktop"))

hl.bind("Print", hl.dsp.exec_cmd('grim -g "$(slurp)" - | wl-copy'))
hl.bind("CTRL + Print", hl.dsp.exec_cmd("hyprshot -m region"))

-- === Basic ===
hl.bind("SUPER + return", hl.dsp.exec_cmd("foot"))
hl.bind("SUPER + space", hl.dsp.exec_cmd("rofi -show drun"))

hl.bind("SUPER + W", hl.dsp.window.close())
hl.bind("SUPER + SHIFT + Q", hl.dsp.exit())

hl.bind("SUPER + S", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
hl.bind("SUPER + T", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
hl.bind("SUPER + TAB", hl.dsp.focus({ last = true }))

hl.bind("SUPER + P", hl.dsp.window.pseudo())
hl.bind("SUPER + H", hl.dsp.window.pin())
hl.bind("SUPER + J", hl.dsp.layout("togglesplit"))

-- === focus  move ===
hl.bind("SUPER + n", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + i", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + u", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + e", hl.dsp.focus({ direction = "down" }))

-- === workspace switch ===
hl.bind("SUPER + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind("SUPER + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind("SUPER + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind("SUPER + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind("SUPER + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind("SUPER + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind("SUPER + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind("SUPER + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind("SUPER + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind("SUPER + 0", hl.dsp.focus({ workspace = 10 }))

-- 把当前焦点窗口移到另一个workspace
hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind("SUPER + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind("SUPER + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind("SUPER + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind("SUPER + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

-- 切换workspace（已使用）
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + BracketRight", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + BracketLeft", hl.dsp.focus({ workspace = "e-1" }))

-- 在一个workspace里，交换窗口
hl.bind("SUPER + mouse:272", hl.dsp.window.drag())
hl.bind("SUPER + mouse:273", hl.dsp.window.resize())

hl.bind("SUPER + SHIFT + N", hl.dsp.window.move({ direction = "l" }))
hl.bind("SUPER + SHIFT + I", hl.dsp.window.move({ direction = "r" }))
hl.bind("SUPER + SHIFT + U", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT + E", hl.dsp.window.move({ direction = "d" }))

-- 在一个workspace里轮换焦点 TODO:
hl.bind("SUPER + SHIFT + C", hl.dsp.window.cycle_next({ prev = true }))
hl.bind("SUPER + C", hl.dsp.window.cycle_next({ next = true }))

-- resize窗口大小(binde: repeated binds)
hl.bind("SUPER + right", hl.dsp.window.resize({ x = 50, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + left", hl.dsp.window.resize({ x = -50, y = 0, relative = true }), { repeating = true })
hl.bind("SUPER + up", hl.dsp.window.resize({ x = 0, y = -50, relative = true }), { repeating = true })
hl.bind("SUPER + down", hl.dsp.window.resize({ x = 0, y = 50, relative = true }), { repeating = true })
