local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.enable_tab_bar = false
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.window_decorations = "TITLE|RESIZE"
config.window_background_opacity = 0.8
config.macos_window_background_blur = 30

-- Windows
config.win32_system_backdrop = "Acrylic"

-- Linux https://github.com/wezterm/wezterm/issues/4962
config.enable_wayland = false

return config
